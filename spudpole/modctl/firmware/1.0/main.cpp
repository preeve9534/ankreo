#include <Arduino.h>
#include <EEPROM.h>

#include <ActisenseReader.h>
#include <N2kMsg.h>
#include <N2kTypes.h>
#include <N2kMaretron.h>
#include <N2kGroupFunctionDefaultHandlers.h>
#include <NMEA2000_CAN.h>
#include <Seasmart.h>
#include <NMEA2000.h>
#include <NMEA2000_CompilerDefns.h>
#include <N2kGroupFunction.h>
#include <N2kDeviceList.h>
#include <N2kCANMsg.h>
#include <N2kStream.h>
#include <N2kMessagesEnumToStr.h>
#include <N2kMessages.h>
#include <N2kDef.h>

#include <string.h>

#include <NMEA2000_teensy.h>

#include <N2kSpudpole.h>

#include <EEPROM.h>

#include "../lib/arraymacros.h"
  
/**********************************************************************
 * MCU GPIO digital pin numbers.
 */

#define GPIO_INSTANCE_PINS (12,11,10,9,8,7,6,5)
#define GPIO_INSTANCE ARGN(7, GPIO_INSTANCE_PINS)
#define GPIO_W0_PRG_SWITCH 23
#define GPIO_W1_PRG_SWITCH 0
#define GPIO_W0_UP_SWITCH 13
#define GPIO_W0_DN_SWITCH 14
#define GPIO_W1_UP_SWITCH 15
#define GPIO_W1_DN_SWITCH 16
#define GPIO_PWR_RELAY 22
#define GPIO_W0_UP_RELAY 21
#define GPIO_W0_DN_RELAY 22
#define GPIO_W1_UP_RELAY 23
#define GPIO_W1_DN_RELAY 24
#define GPIO_TRANSMIT_LED 10
#define GPIO_CAN_TX 3
#define GPIO_CAN_RX 4

/**********************************************************************
 * EEPROMADDR permanent storage addresses
 */

#define EEPROMADDR_W0_INSTANCE 0
#define EEPROMADDR_W1_INSTANCE 1

/**********************************************************************
 * Miscellaneous
 */

#define STARTUP_CHECK_CYCLE_COUNT 3
#define STARTUP_CHECK_CYCLE_ON_PERIOD 250 // miliseconds
#define STARTUP_CHECK_CYCLE_OFF_PERIOD 250 // miliseconds
#define TRANSMIT_LED_TIMEOUT 200 // milliseconds
#define SWITCH_DEBOUNCE_INTERVAL 5 // milliseconds
#define SWITCH_PROCESS_INTERVAL 250 // milliseconds
#define RELAY_UPDATE_INTERVAL 330 // milliseconds

/**********************************************************************
 * LOCAL TYPES...
 */

enum OUTPUT_STATE_T { OSON, OSOFF, OSFLASH };

struct WINDLASS_T {
  unsigned char instance; 
  int upRelayGpio;
  int dnRelayGpio;
  OUTPUT_STATE_T upRelayState;
  OUTPUT_STATE_T dnRelayState;
};

union DEBOUNCED_SWITCHES_T {
  unsigned char states;
  struct {
    unsigned char W0Prog:1;
    unsigned char W1Prog:1;
    unsigned char W0Up:1;
    unsigned char W0Dn:1;
    unsigned char W1Up:1;
    unsigned char W1Dn:1;
  } state;
  DEBOUNCED_SWITCHES_T(): states(0) {};
};

/**********************************************************************
 * Declarations for local functions.
 */

unsigned char getPoleInstance();
void messageHandler(const tN2kMsg&);
void PGN128777(const tN2kMsg&);
void updateRelayOutput();
void setRelayOutput(int action = 0, long timeout = 0L);
void operateTransmitLED(unsigned long timeout = 0L);
void exerciseRelayOutputs(int, unsigned long, unsigned long);
void debounceSwitches(DEBOUNCED_SWITCHES_T &switches);
unsigned char debounce(unsigned char sample);
void processSwitches(DEBOUNCED_SWITCHES_T &switches, WINDLASS_T windlasses[]);
void updateRelayOutput(WINDLASS_T windlasses[]);
void transmitWindlassControl(unsigned char instance, unsigned char up, unsigned char down);

/**********************************************************************
 * PRODUCT INFORMATION
 * 
 * This poorly structured set of values is what NMEA expects a product
 * description to be shoe-horned into.
 */

#define PRODUCT_CERTIFICATION_LEVEL 1  // Or, indeed, this
#define PRODUCT_CODE 2
#define PRODUCT_FIRMWARE_VERSION "1.0"
#define PRODUCT_LEN 3                        // Power consumption as LEN * 50mA
#define PRODUCT_N2K_VERSION 2101             // God knows what this means
#define PRODUCT_SERIAL_CODE "14"
#define PRODUCT_TYPE "MODCTL"
#define PRODUCT_VERSION "1.0"              // Hardware version

/**********************************************************************
 * DEVICE INFORMATION
 * 
 * Because of NMEA's closed standard, most of this is fiction. Maybe it
 * can be made better with more research. In particular, even recent
 * releases of the NMEA function and class lists found using Google
 * don't discuss anchor systems, so the proper values for CLASS and
 * FUNCTION in this application are not known.  At the moment they are
 * set to 25 (network device) and 130 (PC gateway).
 * 
 * INDUSTRY_GROUP we can be confident about (4 says maritime). However,
 * MANUFACTURER_CODE is only allocated to subscribed NMEA members and,
 * unsurprisingly, an anonymous code has not been assigned: 2046 is
 * currently unused, so we adopt that.  
 * 
 * MANUFACTURER_CODE and UNIQUE_NUMBER together must make a unique
 * value on any N2K bus and an easy way to achieve this is just to
 * bump the device number for every software build and this is done
 * automatically by the build system.
 */

#define DEVICE_CLASS 25
#define DEVICE_FUNCTION 130
#define DEVICE_INDUSTRY_GROUP 4
#define DEVICE_MANUFACTURER_CODE 2046
#define DEVICE_UNIQUE_NUMBER 838

/**********************************************************************
 * N2K PGNs of messages transmitted by this program.
 */

const unsigned long TransmitMessages[] PROGMEM={ 0L };

//*********************************************************************************
// Some definitions for incoming message handling.   PGNs which are processed and
// the functions which process them must be declared here and registered in the
// NMEA2000Handlers jump vector.
//
typedef struct { unsigned long PGN; void (*Handler)(const tN2kMsg &N2kMsg); } tNMEA2000Handler;
void PGN128777(const tN2kMsg &N2kMsg);
tNMEA2000Handler NMEA2000Handlers[]={ {128777L, &PGN128777}, {0, 0} };

/**********************************************************************
 * GLOBAL VARIABLES
 */

DEBOUNCED_SWITCHES_T DEBOUNCED_SWITCHES;

WINDLASS_T WINDLASSES[2] = {
  { EEPROM.read(EEPROMADDR_W0_INSTANCE), GPIO_W0_UP_RELAY, GPIO_W0_DN_RELAY, OSOFF, OSOFF },
  { EEPROM.read(EEPROMADDR_W1_INSTANCE), GPIO_W1_UP_RELAY, GPIO_W1_DN_RELAY, OSOFF, OSOFF }
};

/**********************************************************************
 * MAIN PROGRAM
 */

void setup() {
  // Set pin modes...
  int ipins[GPIO_INSTANCE];
  for (unsigned int i = 0 ; i < ELEMENTCOUNT(ipins); i++) { pinMode(ipins[i], INPUT_PULLUP); }
  pinMode(GPIO_W0_PRG_SWITCH, INPUT_PULLUP);
  pinMode(GPIO_W1_PRG_SWITCH, INPUT_PULLUP);
  pinMode(GPIO_W0_UP_SWITCH, INPUT_PULLUP),
  pinMode(GPIO_W0_DN_SWITCH, INPUT_PULLUP),
  pinMode(GPIO_W1_UP_SWITCH, INPUT_PULLUP),
  pinMode(GPIO_W1_DN_SWITCH, INPUT_PULLUP),
  pinMode(GPIO_PWR_RELAY, OUTPUT);
  pinMode(GPIO_W0_UP_RELAY, OUTPUT);
  pinMode(GPIO_W0_DN_RELAY, OUTPUT);
  pinMode(GPIO_W0_UP_RELAY, OUTPUT);
  pinMode(GPIO_W0_DN_RELAY, OUTPUT);

    // Cycle outputs as startup check (probably means flash LEDs a few times)
  exerciseRelayOutputs(STARTUP_CHECK_CYCLE_COUNT, STARTUP_CHECK_CYCLE_ON_PERIOD, STARTUP_CHECK_CYCLE_OFF_PERIOD);

  NMEA2000.SetProductInformation(PRODUCT_SERIAL_CODE, PRODUCT_CODE, PRODUCT_TYPE, PRODUCT_FIRMWARE_VERSION, PRODUCT_VERSION, PRODUCT_LEN, PRODUCT_N2K_VERSION, PRODUCT_CERTIFICATION_LEVEL);
  
  NMEA2000.SetDeviceInformation(DEVICE_UNIQUE_NUMBER, DEVICE_FUNCTION, DEVICE_CLASS, DEVICE_MANUFACTURER_CODE, DEVICE_INDUSTRY_GROUP);

  NMEA2000.SetMode(tNMEA2000::N2km_ListenAndNode, 22); // Configure for sending and receiving.
  NMEA2000.EnableForward(false); // Disable all msg forwarding to USB (=Serial)
  NMEA2000.ExtendTransmitMessages(TransmitMessages); // Tell library which PGNs we transmit
  NMEA2000.SetMsgHandler(messageHandler);
  NMEA2000.Open();                             
}

/**********************************************************************
 * The process loop's work is fairly constrained.
 *
 * commandTimeout() ensures that any active UP or DOWN commands that
 *     have been received over N2K (and will have operated the output
 *     relays) are cancelled if they have timed out.
 * operateTransmitLED() similarly ensures that the TX LED which is
 *     turned on each time a status report is issued gets turned off
 *     a few hundred milliseconds later.
 * transmitStatus() makes sure that the module transmits windlass
 *     status PGNs at intervals appropriate to its current operating
 *     mode.
 * NMEA2000.parseMessages() processes any incoming control messages
 *     that may have arrived since the last turn around the loop.
 */

void loop() {
  debounceSwitches(DEBOUNCED_SWITCHES);
  processSwitches(DEBOUNCED_SWITCHES, WINDLASSES);
  NMEA2000.ParseMessages();
  updateRelayOutput(WINDLASSES);
}

/**********************************************************************
 * debounceSwitches() reads the current state of pins connected to
 * physical switches into <switches> and the debounces the recovered
 * values using debounce().
 */

void debounceSwitches(DEBOUNCED_SWITCHES_T &switches) {
  static unsigned long deadline = 0L;
  unsigned long now = millis();
  if (now > deadline) {
    switches.state.W0Prog = digitalRead(GPIO_W0_PRG_SWITCH);
    switches.state.W1Prog = digitalRead(GPIO_W1_PRG_SWITCH);
    switches.state.W0Up = digitalRead(GPIO_W0_UP_SWITCH);
    switches.state.W0Dn = digitalRead(GPIO_W0_DN_SWITCH);
    switches.state.W1Up = digitalRead(GPIO_W1_UP_SWITCH);
    switches.state.W1Dn = digitalRead(GPIO_W1_DN_SWITCH);
    switches.states = debounce(switches.states);
    deadline = (now + SWITCH_DEBOUNCE_INTERVAL);
  }
}

unsigned char debounce(unsigned char sample) {
  static unsigned char state, cnt0, cnt1;
  unsigned char delta;

  delta = sample ^ state;
  cnt1 = (cnt1 ^ cnt0) & (delta & sample);
  cnt0 = ~cnt0 & (delta & sample);
  state ^= (delta & ~(cnt0 | cnt1));
  return state;
}

/**********************************************************************
 * Update <windlasses> from <switches> by se
 */

void processSwitches(DEBOUNCED_SWITCHES_T &switches, WINDLASS_T windlasses[]) {
  static unsigned long deadline = 0L;
  unsigned long now = millis();
  if (now > deadline) {
    if (!switches.state.W0Prog) {
      EEPROM.update(EEPROMADDR_W0_INSTANCE, (windlasses[0].instance = getPoleInstance()));
    }
    if (!switches.state.W1Prog) {
      EEPROM.update(EEPROMADDR_W1_INSTANCE, (windlasses[1].instance = getPoleInstance()));
    }
    if ((!switches.state.W0Up) || (!switches.state.W0Dn)) {
      transmitWindlassControl(windlasses[0].instance, switches.state.W0Up, switches.state.W0Dn);
    }
    if ((!switches.state.W1Up) || (!switches.state.W1Dn)) {
      transmitWindlassControl(windlasses[1].instance, switches.state.W1Up, switches.state.W1Dn);
    }
    deadline = (now + SWITCH_PROCESS_INTERVAL);
  }
}

void transmitWindlassControl(unsigned char instance, unsigned char up, unsigned char down) {
  if (up ^ down) { // Can't do both at once!

  }
}  

/**********************************************************************
 * getPoleInstance() returns the module instance address set by the
 * hardware DIP switches defined in GPIO_INSTANCE (the pin sequence
 * supplied must be lo-bit to hi-bit). If GPIO_INSTANCE is not defined
 * then returns 0.
 */

unsigned char getPoleInstance() {
  unsigned char instance = 0;
  #ifdef GPIO_INSTANCE
  int ipins[GPIO_INSTANCE]; 
  for (byte i = 0; i < ELEMENTCOUNT(ipins); i++) {
    instance = instance + (digitalRead(ipins[i]) << i);
  }
  #endif
  return(instance);
}

void messageHandler(const tN2kMsg &N2kMsg) {
  int iHandler;
  for (iHandler=0; NMEA2000Handlers[iHandler].PGN!=0 && !(N2kMsg.PGN==NMEA2000Handlers[iHandler].PGN); iHandler++);
  if (NMEA2000Handlers[iHandler].PGN!=0) {
    NMEA2000Handlers[iHandler].Handler(N2kMsg); 
  }
}

/**********************************************************************
 * PGN128777() parses the supplied N2K message and uses the contained
 * windlass operating status data to update the WINDLASSES global's
 * upRelayState and dnRelayState fields.
 */

void PGN128777(const tN2kMsg &N2kMsg) {
  unsigned char SID;
  unsigned char WindlassIdentifier;
  double RodeCounterValue;
  double WindlassLineSpeed;
  tN2kWindlassMotionStates WindlassMotionStatus;
  tN2kRodeTypeStates RodeTypeStatus;
  tN2kAnchorDockingStates AnchorDockingStatus;
  tN2kWindlassOperatingEvents WindlassOperatingEvents;

  if (ParseN2kPGN128777(N2kMsg, SID, WindlassIdentifier, RodeCounterValue, WindlassLineSpeed, WindlassMotionStatus, RodeTypeStatus, AnchorDockingStatus, WindlassOperatingEvents)) {
    for (int i = 0; i < 2; i++) {
      if ((WINDLASSES[i].instance != 0xFF) && (WINDLASSES[i].instance == WindlassIdentifier)) {
        if (AnchorDockingStatus == N2kDD482_FullyDocked) {
          // Set UP relay ON, DN relay off
          WINDLASSES[i].upRelayState = OSON;
          WINDLASSES[i].dnRelayState = OSOFF;
        } else {
          switch (WindlassMotionStatus) {
            case N2kDD480_DeploymentOccurring:
              // Set DN relay FLASHING
              WINDLASSES[i].upRelayState = OSOFF;
              WINDLASSES[i].dnRelayState = OSFLASH;
              break;
            case N2kDD480_RetrievalOccurring:
              WINDLASSES[i].upRelayState = OSFLASH;
              WINDLASSES[i].dnRelayState = OSOFF;
              break;
            default:
              WINDLASSES[i].upRelayState = OSOFF;
              WINDLASSES[i].dnRelayState = OSON;
              break;
          }
        }
      }
    }
  }
}

/**********************************************************************
 * updateRelayOutput() processes the WINDLASSES variable, setting the
 * state of relay outputs dependent on the value of the upRelayState
 * and dnRelayState attributes. The function should be called from the
 * loop() and will operate at the inerval defined in
 * RELAY_UPDATE_INTERVAL.
 */

void updateRelayOutput(WINDLASS_T windlasses[]) {
  static unsigned long deadline = millis();
  unsigned long now = millis();
  if (now > deadline) {
    for (int i = 0; i < 2; i++) {
      switch (windlasses[i].upRelayState) {
        case OSON: digitalWrite(windlasses[i].upRelayGpio, HIGH); break;
        case OSOFF:  digitalWrite(windlasses[i].upRelayGpio, LOW);break;
        case OSFLASH: digitalWrite(windlasses[i].upRelayGpio, (digitalRead(windlasses[i].upRelayGpio) == HIGH)?LOW:HIGH); break;
      }
      switch (windlasses[i].dnRelayState) {
        case OSON: digitalWrite(windlasses[i].dnRelayGpio, HIGH); break;
        case OSOFF:  digitalWrite(windlasses[i].dnRelayGpio, LOW);break;
        case OSFLASH: digitalWrite(windlasses[i].dnRelayGpio, (digitalRead(windlasses[i].dnRelayGpio) == HIGH)?LOW:HIGH); break;
      }
    }
    deadline = (now + RELAY_UPDATE_INTERVAL);
  }
}

/**********************************************************************
 * The transmit LED is illuminated to indicate that the device has
 * power and occults on each NMEA transmit. operateTransmitLED()
 * switches the LED off and arranges to switch it on after a short,
 * defined, period.  The function requires the definition of
 * GPIO_TRANSMIT_LED and GPIO_TRANSMIT_LED_TITMEOUT.
 * 
 * A call to operateTransmitLED() should be made from loop() in order
 * to manage switching the LED.  A call to operateTransmitLED(timeout)
 *  will switch the LED off and arrange for it to be turned on after
 * <timeout> milliseconds.
 */

void operateTransmitLED(unsigned long timeout) {
  static unsigned long _end = 0L;
  #ifdef GPIO_TRANSMIT_LED
  switch (timeout) {
    case 0L:
      if ((_end) && (_end < millis())) {
        digitalWrite(GPIO_TRANSMIT_LED, LOW);
        _end = 0L;
      }
      break;
    default:
      digitalWrite(GPIO_TRANSMIT_LED, HIGH);
      _end = (millis() + timeout);
      break;      
  }
  #endif
}

/**********************************************************************
 * Exercise the relay outputs by turning them on for <onmillis>, off
 * for <offmillis> and repeating the whole thing <cycles> times.  Use
 * to indicate reboot and allow a check of whatever output devices are
 * connected to the relays.
 */

void exerciseRelayOutputs(int cycles, unsigned long onmillis, unsigned long offmillis) {
  for (int i = 0; i < cycles; i++) {
    digitalWrite(GPIO_PWR_RELAY, HIGH);
    digitalWrite(GPIO_W0_UP_RELAY, HIGH);
    digitalWrite(GPIO_W0_DN_RELAY, HIGH);
    digitalWrite(GPIO_W1_UP_RELAY, HIGH);
    digitalWrite(GPIO_W1_DN_RELAY, HIGH);
    delay(onmillis);
    digitalWrite(GPIO_PWR_RELAY, LOW);
    digitalWrite(GPIO_W0_UP_RELAY, LOW);
    digitalWrite(GPIO_W0_DN_RELAY, LOW);
    digitalWrite(GPIO_W1_UP_RELAY, LOW);
    digitalWrite(GPIO_W1_DN_RELAY, LOW);
    delay(offmillis);
  }
}



