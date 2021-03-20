EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "TSENSE - temperature sensor module"
Date "2020-09-16"
Rev "1.0"
Comp "PDJR <preeve@pdjr.eu>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 5F1E6C5E
P 7550 5000
F 0 "R1" H 7500 5000 50  0000 R CNN
F 1 "4K7" V 7550 5000 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7480 5000 50  0001 C CNN
F 3 "~" H 7550 5000 50  0001 C CNN
	1    7550 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 5F21EFF3
P 9000 4700
F 0 "R3" H 8950 4700 50  0000 R CNN
F 1 "100R" V 9000 4700 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8930 4700 50  0001 C CNN
F 3 "~" H 9000 4700 50  0001 C CNN
	1    9000 4700
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5F21F397
P 8750 4700
F 0 "R2" H 8950 4700 50  0000 R CNN
F 1 "100R" V 8750 4700 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8680 4700 50  0001 C CNN
F 3 "~" H 8750 4700 50  0001 C CNN
	1    8750 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5F233FC6
P 9000 5000
F 0 "C4" H 8900 5000 50  0000 R CNN
F 1 "560p" H 9000 5100 39  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 9038 4850 50  0001 C CNN
F 3 "~" H 9000 5000 50  0001 C CNN
	1    9000 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C3
U 1 1 5F2499AC
P 8750 5000
F 0 "C3" H 8850 5000 50  0000 L CNN
F 1 "560p" H 8750 5100 39  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 8788 4850 50  0001 C CNN
F 3 "~" H 8750 5000 50  0001 C CNN
	1    8750 5000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5F2B75CF
P 9300 2400
F 0 "R7" V 9400 2400 50  0000 C CNN
F 1 "200R" V 9300 2400 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9230 2400 50  0001 C CNN
F 3 "~" H 9300 2400 50  0001 C CNN
F 4 "0.125W" V 9400 2400 50  0001 C CNN "Power"
	1    9300 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:Polyfuse F1
U 1 1 5F2A4B92
P 9450 3100
F 0 "F1" V 9350 3100 50  0000 C CNN
F 1 "1A" V 9550 3100 39  0000 C CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 9500 2900 50  0001 L CNN
F 3 "~" H 9450 3100 50  0001 C CNN
	1    9450 3100
	0    1    1    0   
$EndComp
$Comp
L Converter_DCDC:TEC2-2411WI U3
U 1 1 5F3165C2
P 8700 3300
F 0 "U3" H 8700 3650 50  0000 C CNN
F 1 "TMR1-1211" H 8700 2950 39  0000 C CNN
F 2 "Converter_DCDC:Converter_DCDC_TRACO_TMR-xxxx_THT" H 8700 2950 50  0001 C CNN
F 3 "https://docs.rs-online.com/35f4/0900766b8172ef65.pdf" H 8700 2800 50  0001 C CNN
	1    8700 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 5F3B6D27
P 9600 2400
F 0 "D4" H 9600 2300 50  0000 C CNN
F 1 "PWR" H 9600 2500 39  0000 C CNN
F 2 "LED_THT:LED_D3.0mm_FlatTop" H 9600 2400 50  0001 C CNN
F 3 "https://docs.rs-online.com/0b77/0900766b814f5345.pdf" H 9600 2400 50  0001 C CNN
	1    9600 2400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5F37E57C
P 7350 4550
F 0 "C2" H 7150 4550 50  0000 L CNN
F 1 "100n" H 7500 4450 39  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 7388 4400 50  0001 C CNN
F 3 "~" H 7350 4550 50  0001 C CNN
	1    7350 4550
	1    0    0    -1  
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U2
U 1 1 5F1D12F5
P 8150 4400
F 0 "U2" H 8350 4750 50  0000 C CNN
F 1 "MCP2551-I-P" H 8400 4050 39  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8150 3900 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 8150 4400 50  0001 C CNN
	1    8150 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 5F38A0E7
P 5400 3350
F 0 "C1" V 5450 3300 50  0000 R CNN
F 1 "100nF" V 5350 3300 39  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 5438 3200 50  0001 C CNN
F 3 "~" H 5400 3350 50  0001 C CNN
	1    5400 3350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 3350 6050 3350
Wire Wire Line
	4850 2900 4550 2900
Wire Wire Line
	4550 2900 4550 3400
Wire Wire Line
	4850 3000 4750 3000
Wire Wire Line
	4750 3350 5250 3350
Wire Wire Line
	6050 3350 6050 3000
Wire Wire Line
	6050 3000 5950 3000
NoConn ~ 4850 2800
Wire Wire Line
	8650 4300 8750 4300
Wire Wire Line
	8650 4500 9000 4500
Wire Wire Line
	8750 4550 8750 4300
Wire Wire Line
	9000 4550 9000 4500
Wire Wire Line
	7550 5150 8150 5150
Connection ~ 7550 5150
Wire Wire Line
	8750 5150 9000 5150
Connection ~ 8750 5150
Wire Wire Line
	7650 4600 7550 4600
Wire Wire Line
	7550 4600 7550 4850
Wire Wire Line
	7350 4800 8150 4800
Wire Wire Line
	7350 3900 8150 3900
Wire Wire Line
	8150 3900 8150 4000
Connection ~ 7350 3900
Text Label 10000 4300 2    50   ~ 0
CAN_H
Text Label 10000 4500 2    50   ~ 0
CAN_L
Wire Notes Line
	6800 3800 10000 3800
Wire Notes Line
	10000 3800 10000 5250
Wire Notes Line
	10000 5250 6800 5250
Wire Notes Line
	6800 3800 6800 5250
Wire Wire Line
	9200 3100 9300 3100
Text Label 10000 3100 0    50   ~ 0
NET_S
Text Label 10000 3500 0    50   ~ 0
NET_C
Wire Notes Line
	7900 2900 10000 2900
Wire Notes Line
	10000 2900 10000 3700
Wire Notes Line
	10000 3700 7900 3700
Wire Notes Line
	7900 2900 7900 3700
Wire Wire Line
	6800 4300 7650 4300
Wire Wire Line
	8150 4800 8150 5150
Connection ~ 8150 4800
Connection ~ 8150 5150
Wire Wire Line
	8150 5150 8750 5150
NoConn ~ 7650 4500
NoConn ~ 9200 3300
Text Label 1450 5400 0    50   ~ 0
CAN_SCR
NoConn ~ 4850 1700
$Comp
L power:+5V #PWR010
U 1 1 5FC3AC81
P 7900 3100
F 0 "#PWR010" H 7900 2950 50  0001 C CNN
F 1 "+5V" V 7915 3228 50  0000 L CNN
F 2 "" H 7900 3100 50  0001 C CNN
F 3 "" H 7900 3100 50  0001 C CNN
	1    7900 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5FC3B74A
P 7900 3500
F 0 "#PWR011" H 7900 3250 50  0001 C CNN
F 1 "GND" V 7905 3372 50  0000 R CNN
F 2 "" H 7900 3500 50  0001 C CNN
F 3 "" H 7900 3500 50  0001 C CNN
	1    7900 3500
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 5FC442F6
P 6800 3900
F 0 "#PWR08" H 6800 3750 50  0001 C CNN
F 1 "+5V" V 6815 4028 50  0000 L CNN
F 2 "" H 6800 3900 50  0001 C CNN
F 3 "" H 6800 3900 50  0001 C CNN
	1    6800 3900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR09
U 1 1 5FC44BAE
P 6800 5150
F 0 "#PWR09" H 6800 4900 50  0001 C CNN
F 1 "GND" V 6800 4950 50  0000 C CNN
F 2 "" H 6800 5150 50  0001 C CNN
F 3 "" H 6800 5150 50  0001 C CNN
	1    6800 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	7900 3100 8200 3100
Wire Wire Line
	6800 3900 7350 3900
Wire Wire Line
	7900 3500 8200 3500
Wire Wire Line
	6800 5150 7550 5150
Text Label 6800 4300 0    50   ~ 0
CAN_RX
Text Label 5950 2500 0    50   ~ 0
CAN_RX
Text Label 6800 4200 0    50   ~ 0
CAN_TX
Wire Wire Line
	6800 4200 7650 4200
Text Label 5950 2600 0    50   ~ 0
CAN_TX
Wire Wire Line
	9700 5150 9700 4950
Wire Wire Line
	9700 4950 10000 4950
Wire Wire Line
	9700 5150 10400 5150
$Comp
L power:+5V #PWR03
U 1 1 606B2F50
P 2400 1450
F 0 "#PWR03" H 2400 1300 50  0001 C CNN
F 1 "+5V" V 2400 1650 50  0000 C CNN
F 2 "" H 2400 1450 50  0001 C CNN
F 3 "" H 2400 1450 50  0001 C CNN
	1    2400 1450
	0    1    1    0   
$EndComp
Text Label 2400 2250 0    50   ~ 0
SENSOR_T0
$Comp
L power:GND #PWR01
U 1 1 6084E21C
P 850 6800
F 0 "#PWR01" H 850 6550 50  0001 C CNN
F 1 "GND" H 855 6627 50  0000 C CNN
F 2 "" H 850 6800 50  0001 C CNN
F 3 "" H 850 6800 50  0001 C CNN
	1    850  6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 6090D237
P 4550 3400
F 0 "#PWR05" H 4550 3150 50  0001 C CNN
F 1 "GND" H 4555 3227 50  0000 C CNN
F 2 "" H 4550 3400 50  0001 C CNN
F 3 "" H 4550 3400 50  0001 C CNN
	1    4550 3400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 6090DC41
P 4750 3400
F 0 "#PWR06" H 4750 3250 50  0001 C CNN
F 1 "+5V" H 4765 3573 50  0000 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3400 4750 3350
Connection ~ 4750 3350
$Comp
L power:GND #PWR07
U 1 1 6096FBD9
P 6050 3400
F 0 "#PWR07" H 6050 3150 50  0001 C CNN
F 1 "GND" H 6055 3227 50  0000 C CNN
F 2 "" H 6050 3400 50  0001 C CNN
F 3 "" H 6050 3400 50  0001 C CNN
	1    6050 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3400 6050 3350
Connection ~ 6050 3350
$Comp
L power:GND #PWR02
U 1 1 6109972B
P 2400 1250
F 0 "#PWR02" H 2400 1000 50  0001 C CNN
F 1 "GND" V 2400 1050 50  0000 C CNN
F 2 "" H 2400 1250 50  0001 C CNN
F 3 "" H 2400 1250 50  0001 C CNN
	1    2400 1250
	0    -1   -1   0   
$EndComp
Text Notes 800  800  0    50   ~ 10
LM335 SENSOR INPUTS
Text Notes 10000 2900 2    50   ~ 10
12/5 V DC-DC CONVERTER
Text Notes 10000 3800 2    50   ~ 10
CAN INTERFACE
Wire Notes Line
	3100 800  800  800 
Wire Notes Line
	800  800  800  3650
Connection ~ 8750 4300
Wire Wire Line
	8750 4300 10200 4300
Connection ~ 9000 4500
Wire Wire Line
	9000 4500 10300 4500
Wire Notes Line
	8650 2250 10000 2250
Wire Notes Line
	10000 2250 10000 2550
Wire Notes Line
	10000 2550 8650 2550
Wire Notes Line
	8650 2550 8650 2250
Text Label 8650 2400 2    50   ~ 0
LED_PWR
Wire Wire Line
	8650 2400 9150 2400
Wire Wire Line
	9750 2400 10000 2400
$Comp
L power:GND #PWR015
U 1 1 5FFE90AB
P 10000 2400
F 0 "#PWR015" H 10000 2150 50  0001 C CNN
F 1 "GND" V 10000 2200 50  0000 C CNN
F 2 "" H 10000 2400 50  0001 C CNN
F 3 "" H 10000 2400 50  0001 C CNN
	1    10000 2400
	0    -1   -1   0   
$EndComp
Text Label 4850 2700 2    50   ~ 0
LED_PWR
Text Label 10000 4950 2    50   ~ 0
CAN_SCR
Wire Wire Line
	10400 3100 10400 3400
Wire Wire Line
	10400 3400 10500 3400
Wire Wire Line
	9600 3100 10400 3100
Wire Wire Line
	10500 3800 10400 3800
Wire Wire Line
	10400 3800 10400 5150
$Comp
L Connector:Screw_Terminal_01x05 J3
U 1 1 6069075F
P 10700 3600
F 0 "J3" H 10700 3900 50  0000 C CNN
F 1 "CAN" H 10700 3300 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MPT-0,5-5-2.54_1x05_P2.54mm_Horizontal" H 10700 3600 50  0001 C CNN
F 3 "~" H 10700 3600 50  0001 C CNN
	1    10700 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 3700 10300 3700
Wire Wire Line
	10300 3700 10300 4500
Wire Wire Line
	10500 3600 10200 3600
Wire Wire Line
	10200 3600 10200 4300
Wire Wire Line
	9200 3500 10500 3500
Wire Wire Line
	7350 4400 7350 3900
Wire Wire Line
	7350 4800 7350 4700
$Comp
L Device:R_Network08 RN1
U 1 1 605F0C25
P 1850 1750
F 0 "RN1" H 2238 1796 50  0000 L CNN
F 1 "2.2K" H 2238 1705 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP9" V 2325 1750 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1850 1750 50  0001 C CNN
	1    1850 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3800 1250 3800
Wire Wire Line
	1150 2350 1250 2350
Connection ~ 1250 2350
Wire Wire Line
	1150 2750 1250 2750
Connection ~ 1250 2750
Wire Wire Line
	1150 2950 1250 2950
Connection ~ 1250 2950
Wire Wire Line
	1250 2950 1250 2750
Wire Wire Line
	1150 3200 1250 3200
Connection ~ 1250 3200
Wire Wire Line
	1250 3200 1250 2950
Wire Wire Line
	1150 3400 1250 3400
Connection ~ 1250 3400
Wire Wire Line
	1250 3400 1250 3200
Wire Wire Line
	1150 2250 1450 2250
Wire Wire Line
	1450 2250 1450 1950
Wire Wire Line
	1550 2450 1550 1950
Wire Wire Line
	1150 2650 1650 2650
Wire Wire Line
	1650 2650 1650 1950
Wire Wire Line
	1150 2850 1750 2850
Wire Wire Line
	1750 2850 1750 1950
Wire Wire Line
	1150 3100 1850 3100
Wire Wire Line
	1850 3100 1850 1950
Wire Wire Line
	1150 3300 1950 3300
Wire Wire Line
	1950 3300 1950 1950
Wire Wire Line
	2050 3500 2050 1950
Wire Wire Line
	1150 3700 2150 3700
Wire Wire Line
	2150 3700 2150 1950
Wire Wire Line
	1450 2250 2400 2250
Connection ~ 1450 2250
Wire Wire Line
	1550 2450 2400 2450
Wire Wire Line
	1650 2650 2400 2650
Connection ~ 1650 2650
Wire Wire Line
	1750 2850 2400 2850
Connection ~ 1750 2850
Wire Wire Line
	1850 3100 2400 3100
Connection ~ 1850 3100
Wire Wire Line
	1950 3300 2400 3300
Connection ~ 1950 3300
Wire Wire Line
	2050 3500 2400 3500
Wire Wire Line
	2150 3700 2400 3700
Connection ~ 2150 3700
Text Label 2400 2450 0    50   ~ 0
SENSOR_T1
Text Label 2400 2650 0    50   ~ 0
SENSOR_T2
Text Label 2400 2850 0    50   ~ 0
SENSOR_T3
Text Label 2400 3100 0    50   ~ 0
SENSOR_T4
Text Label 2400 3300 0    50   ~ 0
SENSOR_T5
Text Label 2400 3500 0    50   ~ 0
SENSOR_T6
Text Label 2400 3700 0    50   ~ 0
SENSOR_T7
Wire Wire Line
	1450 1550 1450 1450
Wire Wire Line
	1450 1450 2400 1450
Wire Wire Line
	1250 1250 2400 1250
Wire Wire Line
	1250 1250 1250 2350
Text Label 4850 1800 2    50   ~ 0
SENSOR_T0
Text Label 4850 1900 2    50   ~ 0
SENSOR_T1
Text Label 4850 2000 2    50   ~ 0
SENSOR_T2
Text Label 4850 2100 2    50   ~ 0
SENSOR_T3
Text Label 4850 2200 2    50   ~ 0
SENSOR_T4
Text Label 4850 2300 2    50   ~ 0
SENSOR_T5
Text Label 4850 2400 2    50   ~ 0
SENSOR_T6
Text Label 4850 2500 2    50   ~ 0
SENSOR_T7
$Comp
L Switch:SW_DIP_x08 SW2
U 1 1 605A9AEF
P 1150 6400
F 0 "SW2" H 1150 6950 50  0000 C CNN
F 1 "INSTANCE" H 1150 5950 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm" H 1150 6400 50  0001 C CNN
F 3 "~" H 1150 6400 50  0001 C CNN
	1    1150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6700 850  6800
Wire Wire Line
	850  6700 850  6600
Connection ~ 850  6700
Wire Wire Line
	850  6600 850  6500
Connection ~ 850  6600
Wire Wire Line
	850  6500 850  6400
Connection ~ 850  6500
Wire Wire Line
	850  6400 850  6300
Connection ~ 850  6400
Wire Wire Line
	850  6300 850  6200
Connection ~ 850  6300
Wire Wire Line
	850  6200 850  6100
Connection ~ 850  6200
Wire Wire Line
	850  6100 850  6000
Connection ~ 850  6100
Connection ~ 850  6000
Text Label 1450 6000 0    50   ~ 0
ADDR_0
Text Label 1450 6100 0    50   ~ 0
ADDR_1
Text Label 1450 6200 0    50   ~ 0
ADDR_2
Text Label 1450 6300 0    50   ~ 0
ADDR_3
Text Label 1450 6400 0    50   ~ 0
ADDR_4
Text Label 1450 6500 0    50   ~ 0
ADDR_5
Text Label 1450 6600 0    50   ~ 0
ADDR_6
Text Label 1450 6700 0    50   ~ 0
ADDR_7
Text Label 5950 1700 0    50   ~ 0
ADDR_0
Text Label 5950 1800 0    50   ~ 0
ADDR_1
Text Label 5950 1900 0    50   ~ 0
ADDR_2
Text Label 5950 2000 0    50   ~ 0
ADDR_3
Text Label 5950 2100 0    50   ~ 0
ADDR_4
Text Label 5950 2200 0    50   ~ 0
ADDR_5
Text Label 5950 2300 0    50   ~ 0
ADDR_6
Text Label 5950 2400 0    50   ~ 0
ADDR_7
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 60541E2C
P 1150 5400
F 0 "SW1" H 1150 5667 50  0000 C CNN
F 1 "SCR" H 1150 5576 50  0000 C CNN
F 2 "Button_Switch_THT:SW_DIP_SPSTx01_Slide_6.7x4.1mm_W7.62mm_P2.54mm_LowProfile" H 1150 5400 50  0001 C CNN
F 3 "~" H 1150 5400 50  0001 C CNN
	1    1150 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  5400 850  6000
$Comp
L Device:R R5
U 1 1 6057CA79
P 9300 1700
F 0 "R5" V 9400 1700 50  0000 C CNN
F 1 "200R" V 9300 1700 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9230 1700 50  0001 C CNN
F 3 "~" H 9300 1700 50  0001 C CNN
F 4 "0.125W" V 9400 1700 50  0001 C CNN "Power"
	1    9300 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 6057CA7F
P 9600 1700
F 0 "D2" H 9600 1600 50  0000 C CNN
F 1 "INST" H 9600 1800 39  0000 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9600 1700 50  0001 C CNN
F 3 "https://docs.rs-online.com/0b77/0900766b814f5345.pdf" H 9600 1700 50  0001 C CNN
	1    9600 1700
	-1   0    0    1   
$EndComp
Wire Notes Line
	8650 1550 10000 1550
Wire Notes Line
	10000 1550 10000 1850
Wire Notes Line
	10000 1850 8650 1850
Wire Notes Line
	8650 1850 8650 1550
Text Label 8650 1700 2    50   ~ 0
LED_INSTANCE
Wire Wire Line
	8650 1700 9150 1700
Wire Wire Line
	9750 1700 10000 1700
$Comp
L power:GND #PWR013
U 1 1 6057CA8C
P 10000 1700
F 0 "#PWR013" H 10000 1450 50  0001 C CNN
F 1 "GND" V 10000 1500 50  0000 C CNN
F 2 "" H 10000 1700 50  0001 C CNN
F 3 "" H 10000 1700 50  0001 C CNN
	1    10000 1700
	0    -1   -1   0   
$EndComp
Text Label 5950 2800 0    50   ~ 0
LED_INSTANCE
$Comp
L Switch:SW_Push SW3
U 1 1 60587E3C
P 4150 2600
F 0 "SW3" H 4150 2885 50  0000 C CNN
F 1 "PRG" H 4150 2794 50  0000 C CNN
F 2 "Button_Switch_THT:KSA_Tactile_SPST" H 4150 2800 50  0001 C CNN
F 3 "~" H 4150 2800 50  0001 C CNN
	1    4150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 6058F22D
P 3950 2600
F 0 "#PWR04" H 3950 2350 50  0001 C CNN
F 1 "GND" H 3900 2600 50  0000 R CNN
F 2 "" H 3950 2600 50  0001 C CNN
F 3 "" H 3950 2600 50  0001 C CNN
	1    3950 2600
	1    0    0    -1  
$EndComp
$Comp
L pdjr:Teensy_3.2 U1
U 1 1 6054541D
P 5950 3000
F 0 "U1" H 6500 1433 50  0000 C CNN
F 1 "Teensy_3.2" H 6500 1524 50  0000 C CNN
F 2 "PDJR:Teensy30_31_32_LC" H 5950 3000 50  0001 C CNN
F 3 "" H 5950 3000 50  0001 C CNN
	1    5950 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	4750 3000 4750 3350
$Comp
L Device:R R4
U 1 1 6055BCD8
P 9300 1350
F 0 "R4" V 9400 1350 50  0000 C CNN
F 1 "200R" V 9300 1350 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9230 1350 50  0001 C CNN
F 3 "~" H 9300 1350 50  0001 C CNN
F 4 "0.125W" V 9400 1350 50  0001 C CNN "Power"
	1    9300 1350
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 6055BCDE
P 9600 1350
F 0 "D1" H 9600 1250 50  0000 C CNN
F 1 "SENS" H 9600 1450 39  0000 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9600 1350 50  0001 C CNN
F 3 "https://docs.rs-online.com/0b77/0900766b814f5345.pdf" H 9600 1350 50  0001 C CNN
	1    9600 1350
	-1   0    0    1   
$EndComp
Wire Notes Line
	8650 1200 10000 1200
Wire Notes Line
	10000 1200 10000 1500
Wire Notes Line
	10000 1500 8650 1500
Wire Notes Line
	8650 1500 8650 1200
Text Label 8650 1350 2    50   ~ 0
LED_SENSOR
Wire Wire Line
	8650 1350 9150 1350
Wire Wire Line
	9750 1350 10000 1350
$Comp
L power:GND #PWR012
U 1 1 6055BCEB
P 10000 1350
F 0 "#PWR012" H 10000 1100 50  0001 C CNN
F 1 "GND" V 10000 1150 50  0000 C CNN
F 2 "" H 10000 1350 50  0001 C CNN
F 3 "" H 10000 1350 50  0001 C CNN
	1    10000 1350
	0    -1   -1   0   
$EndComp
Text Label 5950 2700 0    50   ~ 0
LED_SENSOR
$Comp
L Device:R R6
U 1 1 60582AA3
P 9300 2050
F 0 "R6" V 9400 2050 50  0000 C CNN
F 1 "200R" V 9300 2050 39  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9230 2050 50  0001 C CNN
F 3 "~" H 9300 2050 50  0001 C CNN
F 4 "0.125W" V 9400 2050 50  0001 C CNN "Power"
	1    9300 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 60582AA9
P 9600 2050
F 0 "D3" H 9600 1950 50  0000 C CNN
F 1 "SRCE" H 9600 2150 39  0000 C CNN
F 2 "LED_THT:LED_D1.8mm_W3.3mm_H2.4mm" H 9600 2050 50  0001 C CNN
F 3 "https://docs.rs-online.com/0b77/0900766b814f5345.pdf" H 9600 2050 50  0001 C CNN
	1    9600 2050
	-1   0    0    1   
$EndComp
Wire Notes Line
	8650 1900 10000 1900
Wire Notes Line
	10000 1900 10000 2200
Wire Notes Line
	10000 2200 8650 2200
Wire Notes Line
	8650 2200 8650 1900
Text Label 8650 2050 2    50   ~ 0
LED_SOURCE
Wire Wire Line
	8650 2050 9150 2050
Wire Wire Line
	9750 2050 10000 2050
$Comp
L power:GND #PWR014
U 1 1 60582AB6
P 10000 2050
F 0 "#PWR014" H 10000 1800 50  0001 C CNN
F 1 "GND" V 10000 1850 50  0000 C CNN
F 2 "" H 10000 2050 50  0001 C CNN
F 3 "" H 10000 2050 50  0001 C CNN
	1    10000 2050
	0    -1   -1   0   
$EndComp
Text Label 5950 2900 0    50   ~ 0
LED_SOURCE
Wire Wire Line
	4850 2600 4350 2600
$Comp
L Connector:Screw_Terminal_01x08 J1
U 1 1 6056B2EF
P 950 2550
F 0 "J1" H 950 2950 50  0000 C CNN
F 1 "Screw_Terminal_01x08" H 1100 3300 50  0001 C CNN
F 2 "PDJR:WAGO-250-108" H 950 2550 50  0001 C CNN
F 3 "~" H 950 2550 50  0001 C CNN
	1    950  2550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1250 2350 1250 2550
Wire Wire Line
	1150 2450 1550 2450
Connection ~ 1550 2450
Wire Wire Line
	1150 2550 1250 2550
Connection ~ 1250 2550
Wire Wire Line
	1250 2550 1250 2750
$Comp
L Connector:Screw_Terminal_01x08 J2
U 1 1 605A5007
P 950 3400
F 0 "J2" H 950 2900 50  0000 C CNN
F 1 "Screw_Terminal_01x08" H 1100 4150 50  0001 C CNN
F 2 "PDJR:WAGO-250-108" H 950 3400 50  0001 C CNN
F 3 "~" H 950 3400 50  0001 C CNN
	1    950  3400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1150 3500 2050 3500
Connection ~ 2050 3500
Wire Wire Line
	1250 3400 1250 3600
Wire Wire Line
	1150 3600 1250 3600
Connection ~ 1250 3600
Wire Wire Line
	1250 3600 1250 3800
$EndSCHEMATC
