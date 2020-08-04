EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "MODINT - spudpole interface module"
Date "2020-07-24"
Rev "V0.1"
Comp "PDJR <preeve@pdjr.eu>"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L modint-v1.0-rescue:M12-5PIN-Pdjr J3
U 1 1 5F1C814F
P 10200 4550
F 0 "J3" V 10139 4320 50  0000 R CNN
F 1 "NMEA" V 10230 4320 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 10200 4550 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 10200 4550 50  0001 C CNN
	1    10200 4550
	0    -1   1    0   
$EndComp
$Comp
L Interface_CAN_LIN:MCP2551-I-P U5
U 1 1 5F1D12F5
P 8000 4650
F 0 "U5" H 7650 5000 50  0000 C CNN
F 1 "MCP2551-I-P" H 8000 4650 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 8000 4150 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/devicedoc/21667d.pdf" H 8000 4650 50  0001 C CNN
	1    8000 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 5F1E6C5E
P 7300 5600
F 0 "R7" H 7400 5550 50  0000 C CNN
F 1 "10K" H 7450 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7230 5600 50  0001 C CNN
F 3 "~" H 7300 5600 50  0001 C CNN
	1    7300 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5F21EFF3
P 9100 5600
F 0 "R9" H 9000 5550 50  0000 C CNN
F 1 "100R" H 8950 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9030 5600 50  0001 C CNN
F 3 "~" H 9100 5600 50  0001 C CNN
	1    9100 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5F21F397
P 8700 5600
F 0 "R8" H 8800 5650 50  0000 C CNN
F 1 "100R" H 8850 5550 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8630 5600 50  0001 C CNN
F 3 "~" H 8700 5600 50  0001 C CNN
	1    8700 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5F233FC6
P 9100 5900
F 0 "C2" H 9050 5800 50  0000 R CNN
F 1 "560pF" H 9050 6000 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W4.4mm_P5.00mm" H 9138 5750 50  0001 C CNN
F 3 "~" H 9100 5900 50  0001 C CNN
	1    9100 5900
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 5F2499AC
P 8700 5900
F 0 "C1" H 8650 5800 50  0000 R CNN
F 1 "560pF" H 8650 6000 50  0000 R CNN
F 2 "Capacitor_THT:C_Disc_D7.5mm_W4.4mm_P5.00mm" H 8738 5750 50  0001 C CNN
F 3 "~" H 8700 5900 50  0001 C CNN
	1    8700 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 4550 8700 5450
Wire Wire Line
	8700 4550 9500 4550
Wire Wire Line
	9100 4750 9100 5450
Wire Wire Line
	9100 4750 9400 4750
Wire Wire Line
	7300 6200 7400 6200
Wire Wire Line
	9100 6200 9100 6050
Wire Wire Line
	7300 5750 7300 6200
Wire Wire Line
	7300 4450 7300 5450
Connection ~ 7300 6200
Wire Wire Line
	950  1350 850  1350
Wire Wire Line
	850  1350 850  1450
Wire Wire Line
	950  1450 850  1450
Connection ~ 850  1450
Wire Wire Line
	850  1450 850  1550
Wire Wire Line
	950  1550 850  1550
Connection ~ 850  1550
Wire Wire Line
	850  1550 850  1650
Wire Wire Line
	950  1650 850  1650
Connection ~ 850  1650
Wire Wire Line
	850  1650 850  1750
Wire Wire Line
	950  1750 850  1750
Connection ~ 850  1750
Wire Wire Line
	850  1750 850  1850
Wire Wire Line
	950  1850 850  1850
Connection ~ 850  1850
Wire Wire Line
	850  1850 850  1950
Wire Wire Line
	950  1950 850  1950
Connection ~ 850  1950
Wire Wire Line
	850  1950 850  2050
Wire Wire Line
	950  2050 850  2050
Connection ~ 850  2050
Wire Wire Line
	850  2050 850  2550
Wire Wire Line
	9600 4150 9100 4150
Wire Wire Line
	9100 4150 9100 3450
Wire Wire Line
	9100 3450 8500 3450
Wire Wire Line
	7500 3850 7400 3850
Wire Wire Line
	7400 3850 7400 4150
Connection ~ 8700 4550
Connection ~ 9100 4750
Wire Wire Line
	8500 4550 8700 4550
Wire Wire Line
	8500 4750 9100 4750
Wire Wire Line
	8000 4250 8000 4150
Connection ~ 7400 6200
Wire Wire Line
	7500 3450 7200 3450
Wire Wire Line
	7300 4450 7500 4450
Connection ~ 7400 4150
Wire Wire Line
	7400 4150 8000 4150
Wire Wire Line
	7400 4150 7400 6200
Wire Wire Line
	8000 5050 8000 5150
Wire Wire Line
	8000 5150 7200 5150
Wire Wire Line
	8700 6050 8700 6200
Connection ~ 8700 6200
Wire Wire Line
	8700 6200 9100 6200
Wire Wire Line
	10000 850  8900 850 
Wire Wire Line
	8900 850  8900 1300
Wire Wire Line
	8900 1300 9000 1300
Wire Wire Line
	8800 1200 8500 1200
Wire Wire Line
	9600 1700 9700 1700
Wire Wire Line
	9700 1700 9700 750 
Wire Wire Line
	9700 750  8600 750 
Connection ~ 8600 750 
Wire Wire Line
	9000 1700 8700 1700
Wire Wire Line
	8700 1700 8700 2250
Wire Wire Line
	8700 2250 7400 2250
$Comp
L Isolator:4N25 U1
U 1 1 5F7FBC77
P 2050 3450
F 0 "U1" H 2050 3350 50  0000 C CNN
F 1 "4N25" H 2050 3550 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 1850 3250 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 2050 3450 50  0001 L CNN
	1    2050 3450
	0    -1   -1   0   
$EndComp
$Comp
L Isolator:4N25 U2
U 1 1 5F7FEBC4
P 2600 3450
F 0 "U2" H 2600 3350 50  0000 C CNN
F 1 "4N25" H 2600 3550 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 2400 3250 50  0001 L CIN
F 3 "https://www.vishay.com/docs/83725/4n25.pdf" H 2600 3450 50  0001 L CNN
	1    2600 3450
	0    -1   -1   0   
$EndComp
$Comp
L Device:D D2
U 1 1 5F8F105A
P 2700 4000
F 0 "D2" H 2600 3950 50  0000 C CNN
F 1 "1N4148" H 2700 4100 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2700 4000 50  0001 C CNN
F 3 "~" H 2700 4000 50  0001 C CNN
	1    2700 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5F9FD6B3
P 2600 2700
F 0 "R4" V 2550 2850 50  0000 C CNN
F 1 "4K7" V 2700 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2530 2700 50  0001 C CNN
F 3 "~" H 2600 2700 50  0001 C CNN
	1    2600 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	9600 4350 8700 4350
Wire Wire Line
	8500 3850 8700 3850
Wire Wire Line
	8700 3850 8700 4350
$Comp
L Device:R R2
U 1 1 5FCC39A5
P 1500 4350
F 0 "R2" V 1450 4500 50  0000 C CNN
F 1 "3K3" V 1400 4350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1430 4350 50  0001 C CNN
F 3 "~" H 1500 4350 50  0001 C CNN
	1    1500 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5F1BE48F
P 2050 2700
F 0 "R3" V 2000 2850 50  0000 C CNN
F 1 "4K7" V 2150 2700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1980 2700 50  0001 C CNN
F 3 "~" H 2050 2700 50  0001 C CNN
	1    2050 2700
	-1   0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 5F1BE9CF
P 2150 4000
F 0 "D1" H 2050 3950 50  0000 C CNN
F 1 "1N4148" H 2150 4100 50  0000 C CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2150 4000 50  0001 C CNN
F 3 "~" H 2150 4000 50  0001 C CNN
	1    2150 4000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5F1BFA5C
P 1500 4150
F 0 "R1" V 1450 4300 50  0000 C CNN
F 1 "3K3" V 1600 4150 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 1430 4150 50  0001 C CNN
F 3 "~" H 1500 4150 50  0001 C CNN
	1    1500 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 5F1C2A8D
P 1150 2850
F 0 "J1" H 1250 2950 50  0000 L CNN
F 1 "SENSOR" H 1000 3050 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1150 2850 50  0001 C CNN
F 3 "~" H 1150 2850 50  0001 C CNN
	1    1150 2850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 1300 7800 1300
Wire Wire Line
	7800 1300 7800 950 
Wire Wire Line
	7800 950  9800 950 
Wire Wire Line
	9800 950  9800 1900
Wire Wire Line
	7050 1700 7600 1700
NoConn ~ 9600 4950
NoConn ~ 7500 4550
NoConn ~ 8500 3650
$Comp
L Pdjr:Teensy_3.2 U3
U 1 1 5F3C918B
P 5050 2650
F 0 "U3" H 5600 2917 50  0000 C CNN
F 1 "Teensy_3.2" H 5600 2826 50  0000 C CNN
F 2 "PDJR:Teensy30_31_32_LC" H 5050 2650 50  0001 C CNN
F 3 "" H 5050 2650 50  0001 C CNN
	1    5050 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	7200 3450 7200 5150
$Comp
L power:GND #PWR01
U 1 1 5F611C39
P 850 6450
F 0 "#PWR01" H 850 6200 50  0001 C CNN
F 1 "GND" H 855 6277 50  0000 C CNN
F 2 "" H 850 6450 50  0001 C CNN
F 3 "" H 850 6450 50  0001 C CNN
	1    850  6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  6200 850  6450
Wire Wire Line
	1550 1350 3950 1350
Wire Wire Line
	1550 1450 3950 1450
Wire Wire Line
	1550 1550 3950 1550
Wire Wire Line
	1550 1650 3950 1650
Wire Wire Line
	1550 1750 3950 1750
Wire Wire Line
	1550 1850 3950 1850
Wire Wire Line
	1550 1950 3950 1950
Wire Wire Line
	1550 2050 3950 2050
Connection ~ 850  6200
Wire Wire Line
	3950 2650 3150 2650
Wire Wire Line
	3150 2650 3150 750 
Wire Wire Line
	3150 750  2600 750 
Wire Wire Line
	1750 2850 1350 2850
Wire Wire Line
	1350 2750 1450 2750
Wire Wire Line
	1450 2750 1450 2550
Wire Wire Line
	1450 2550 850  2550
Connection ~ 850  2550
Wire Wire Line
	1350 2950 1850 2950
Wire Wire Line
	1850 2950 1850 2150
Wire Wire Line
	1850 2150 3950 2150
Wire Wire Line
	1650 4150 1950 4150
Wire Wire Line
	1950 3750 1950 4150
Wire Wire Line
	1950 4150 2150 4150
Connection ~ 1950 4150
Wire Wire Line
	2500 4350 2500 3750
Wire Wire Line
	2500 4350 2700 4350
Wire Wire Line
	2700 4350 2700 4150
Connection ~ 2500 4350
Wire Wire Line
	2050 2550 2050 750 
Connection ~ 2050 750 
Wire Wire Line
	2050 750  1750 750 
Wire Wire Line
	2600 2550 2600 750 
Connection ~ 2600 750 
Wire Wire Line
	2600 750  2050 750 
Wire Wire Line
	850  6200 2300 6200
Wire Wire Line
	2150 3750 2150 3800
Connection ~ 2150 3800
Wire Wire Line
	2150 3800 2150 3850
Wire Wire Line
	2150 3800 1850 3800
Wire Wire Line
	850  2550 850  6200
Wire Wire Line
	2050 3150 2050 2950
Wire Wire Line
	2600 3150 2600 2950
Wire Wire Line
	2150 3150 2150 3050
Wire Wire Line
	2150 3050 2300 3050
Wire Wire Line
	2300 3050 2300 6200
Connection ~ 2300 6200
Wire Wire Line
	2300 6200 2850 6200
Wire Wire Line
	2700 3150 2700 3050
Wire Wire Line
	2700 3050 2850 3050
Wire Wire Line
	2850 3050 2850 6200
Connection ~ 2850 6200
Wire Wire Line
	2050 2950 2150 2950
Wire Wire Line
	2150 2950 2150 2250
Wire Wire Line
	2150 2250 3950 2250
Connection ~ 2050 2950
Wire Wire Line
	2050 2950 2050 2850
Wire Wire Line
	2600 2950 2700 2950
Wire Wire Line
	2700 2950 2700 2350
Wire Wire Line
	2700 2350 3950 2350
Connection ~ 2600 2950
Wire Wire Line
	2600 2950 2600 2850
Connection ~ 3150 750 
Wire Wire Line
	7050 1150 7050 1700
Wire Wire Line
	9800 1900 10150 1900
Wire Wire Line
	7050 1150 6300 1150
Wire Wire Line
	2850 6200 5150 6200
Wire Wire Line
	7200 3450 7200 750 
Connection ~ 7200 3450
Connection ~ 7200 750 
Wire Wire Line
	7500 4750 5350 4750
Wire Wire Line
	5350 4750 5350 2150
Wire Wire Line
	5350 2150 5050 2150
Wire Wire Line
	5050 2250 5250 2250
Wire Wire Line
	5250 2250 5250 4850
Wire Wire Line
	5250 4850 7500 4850
Wire Wire Line
	7400 6200 8700 6200
NoConn ~ 2500 3150
NoConn ~ 1950 3150
NoConn ~ 3950 2450
NoConn ~ 3950 2550
NoConn ~ 5050 2550
NoConn ~ 5050 2450
NoConn ~ 5050 2350
NoConn ~ 5050 2050
NoConn ~ 5050 1950
NoConn ~ 5050 1850
NoConn ~ 5050 1750
NoConn ~ 5050 1650
NoConn ~ 4300 1000
NoConn ~ 4400 1000
NoConn ~ 4500 1000
NoConn ~ 4600 1000
NoConn ~ 4700 1000
Wire Wire Line
	5050 2650 5150 2650
Wire Wire Line
	5150 2650 5150 6200
Connection ~ 5150 6200
$Comp
L Device:Polyfuse_Small F1
U 1 1 5F1D6762
P 1750 2650
F 0 "F1" V 1800 2500 50  0000 L CNN
F 1 "100mA" V 1650 2500 50  0000 L CNN
F 2 "Fuse:Fuse_Littelfuse_395Series" H 1800 2450 50  0001 L CNN
F 3 "~" H 1750 2650 50  0001 C CNN
	1    1750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2850 1750 2750
$Comp
L Connector:Screw_Terminal_01x06 J4
U 1 1 5F2132D0
P 10350 1700
F 0 "J4" H 10430 1692 50  0000 L CNN
F 1 "RELAYS" H 10430 1601 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 10350 1700 50  0001 C CNN
F 3 "~" H 10350 1700 50  0001 C CNN
	1    10350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 1600 10000 1600
Wire Wire Line
	10000 1600 10000 850 
Wire Wire Line
	9900 1400 9600 1400
Wire Wire Line
	8500 1400 8900 1400
Wire Wire Line
	8900 1400 8900 2250
$Comp
L Connector:Screw_Terminal_01x04 J2
U 1 1 5F23EA21
P 1150 4250
F 0 "J2" H 1300 4350 50  0000 C CNN
F 1 "LIMIT" H 1150 4450 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1150 4250 50  0001 C CNN
F 3 "~" H 1150 4250 50  0001 C CNN
	1    1150 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2700 3750 2700 3800
Wire Wire Line
	2400 3800 2700 3800
Connection ~ 2700 3800
Wire Wire Line
	2700 3800 2700 3850
Wire Wire Line
	1350 4250 1850 4250
Wire Wire Line
	1850 4250 1850 3800
Wire Wire Line
	1650 4350 2500 4350
Wire Wire Line
	2400 3800 2400 4450
Wire Wire Line
	2400 4450 1350 4450
Wire Wire Line
	9900 1700 10150 1700
Wire Wire Line
	9900 1400 9900 1700
Wire Wire Line
	10150 1500 10100 1500
Wire Wire Line
	10100 1500 10100 1200
Wire Wire Line
	10100 1200 9600 1200
Wire Wire Line
	10150 1800 10000 1800
Wire Wire Line
	10000 2350 8800 2350
Wire Wire Line
	8800 1200 8800 2350
$Comp
L Transistor_BJT:2N2219 Q1
U 1 1 5F1E2715
P 6200 1350
F 0 "Q1" H 6390 1396 50  0000 L CNN
F 1 "2N2219" H 6390 1305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 6400 1275 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6200 1350 50  0001 L CNN
	1    6200 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5F1E307F
P 5850 1350
F 0 "R5" V 5750 1350 50  0000 C CNN
F 1 "1K" V 5850 1350 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 1350 50  0001 C CNN
F 3 "~" H 5850 1350 50  0001 C CNN
	1    5850 1350
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N2219 Q2
U 1 1 5F25123E
P 6200 1900
F 0 "Q2" H 6390 1946 50  0000 L CNN
F 1 "2N2219" H 6390 1855 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-39-3" H 6400 1825 50  0001 L CIN
F 3 "http://www.onsemi.com/pub_link/Collateral/2N2219-D.PDF" H 6200 1900 50  0001 L CNN
	1    6200 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5F251B1A
P 5850 1900
F 0 "R6" V 5750 1900 50  0000 C CNN
F 1 "1K" V 5850 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 1900 50  0001 C CNN
F 3 "~" H 5850 1900 50  0001 C CNN
	1    5850 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 1700 6950 1700
Wire Wire Line
	6950 1700 6950 2250
Wire Wire Line
	5700 1900 5550 1900
Wire Wire Line
	6300 1550 6850 1550
Wire Wire Line
	6850 1550 6850 2100
Wire Wire Line
	6300 2100 6850 2100
Connection ~ 6850 2100
Wire Wire Line
	6850 2100 6850 6200
Wire Wire Line
	5150 6200 6850 6200
Connection ~ 6850 6200
Wire Wire Line
	6850 6200 7300 6200
$Comp
L Diode:1N4007 D3
U 1 1 5F2ADAA6
P 8200 2100
F 0 "D3" H 8300 2150 50  0000 C CNN
F 1 "1N4007" H 8200 2000 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 8200 1925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 8200 2100 50  0001 C CNN
	1    8200 2100
	-1   0    0    1   
$EndComp
$Comp
L Diode:1N4007 D4
U 1 1 5F2AF462
P 9300 2100
F 0 "D4" H 9400 2150 50  0000 C CNN
F 1 "1N4007" H 9300 2000 50  0000 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 9300 1925 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 9300 2100 50  0001 C CNN
	1    9300 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 2100 8500 2100
Wire Wire Line
	8500 2100 8500 1700
Wire Wire Line
	8050 2100 7900 2100
Wire Wire Line
	7900 2100 7900 1700
Wire Wire Line
	9150 2100 9000 2100
Wire Wire Line
	9000 2100 9000 1700
Wire Wire Line
	9450 2100 9600 2100
Wire Wire Line
	9600 2100 9600 1700
Wire Wire Line
	8900 2250 10100 2250
Wire Wire Line
	10000 1800 10000 2350
Wire Wire Line
	10100 2000 10150 2000
Wire Wire Line
	10100 2000 10100 2250
Wire Wire Line
	8500 1700 8600 1700
Wire Wire Line
	8600 1700 8600 750 
Wire Wire Line
	5050 1450 5550 1450
Wire Wire Line
	5050 1350 5700 1350
Wire Wire Line
	5550 1450 5550 1900
$Comp
L Device:R R10
U 1 1 5F2276F6
P 9500 5600
F 0 "R10" H 9400 5550 50  0000 C CNN
F 1 "120R" H 9350 5650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 9430 5600 50  0001 C CNN
F 3 "~" H 9500 5600 50  0001 C CNN
	1    9500 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 5250 9500 4550
Connection ~ 9500 4550
Wire Wire Line
	9500 4550 9600 4550
Wire Wire Line
	9500 5750 9500 5850
Wire Wire Line
	9500 5850 9400 5850
Wire Wire Line
	9400 5850 9400 4750
Connection ~ 9400 4750
Wire Wire Line
	9400 4750 9600 4750
$Comp
L Switch:SW_DIP_x09 SW1
U 1 1 5F24DA49
P 1250 1750
F 0 "SW1" H 1000 2200 50  0000 C CNN
F 1 "INSTANCE/TERM" H 1250 2326 50  0000 C CNN
F 2 "PDJR:DIP-18_297_ELL" H 1250 1750 50  0001 C CNN
F 3 "~" H 1250 1750 50  0001 C CNN
	1    1250 1750
	1    0    0    1   
$EndComp
Wire Wire Line
	9500 5250 750  5250
Wire Wire Line
	1750 2550 1750 750 
Wire Wire Line
	1550 2150 1650 2150
Wire Wire Line
	1650 2150 1650 2350
Wire Wire Line
	650  5350 9500 5350
Wire Wire Line
	9500 5350 9500 5450
Wire Wire Line
	750  2150 950  2150
Wire Wire Line
	750  2150 750  5250
Wire Wire Line
	1650 2350 650  2350
Wire Wire Line
	650  2350 650  5350
$Comp
L Device:LED D6
U 1 1 5F251E49
P 7600 1400
F 0 "D6" V 7639 1283 50  0000 R CNN
F 1 "LED" V 7548 1283 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 7600 1400 50  0001 C CNN
F 3 "~" H 7600 1400 50  0001 C CNN
	1    7600 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D5
U 1 1 5F252943
P 7400 1400
F 0 "D5" V 7439 1283 50  0000 R CNN
F 1 "LED" V 7348 1283 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 7400 1400 50  0001 C CNN
F 3 "~" H 7400 1400 50  0001 C CNN
	1    7400 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R12
U 1 1 5F28093B
P 7600 1100
F 0 "R12" V 7500 1100 50  0000 C CNN
F 1 "1K" V 7600 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7530 1100 50  0001 C CNN
F 3 "~" H 7600 1100 50  0001 C CNN
	1    7600 1100
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 5F285FEA
P 7400 1100
F 0 "R11" V 7300 1100 50  0000 C CNN
F 1 "1K" V 7400 1100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7330 1100 50  0001 C CNN
F 3 "~" H 7400 1100 50  0001 C CNN
	1    7400 1100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 1550 7600 1700
Connection ~ 7600 1700
Wire Wire Line
	7600 1700 7900 1700
Wire Wire Line
	7400 1550 7400 2250
Connection ~ 7400 2250
Wire Wire Line
	7400 2250 6950 2250
Wire Wire Line
	7200 750  7400 750 
Wire Wire Line
	7400 950  7400 750 
Connection ~ 7400 750 
Wire Wire Line
	7400 750  7600 750 
Wire Wire Line
	7600 950  7600 750 
Connection ~ 7600 750 
Wire Wire Line
	7600 750  8600 750 
$Comp
L Pdjr:TEC2-2411WI U4
U 1 1 5F2BEACE
P 8000 3650
F 0 "U4" H 8000 4117 50  0000 C CNN
F 1 "TEC2-2411WI" H 8000 4026 50  0000 C CNN
F 2 "PDJR:TMR_2-2411WI" H 8000 3300 50  0001 C CNN
F 3 "https://www.tracopower.com/products/tec2wi.pdf" H 8000 3150 50  0001 C CNN
	1    8000 3650
	-1   0    0    -1  
$EndComp
$Comp
L Pdjr:SANYOU_SRD_Form_C K2
U 1 1 5F2A8B7E
P 9300 1500
F 0 "K2" V 9867 1500 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 9776 1500 50  0000 C CNN
F 2 "PDJR:RS_RELAY_476-757" H 9750 1450 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 9300 1500 50  0001 C CNN
	1    9300 1500
	0    1    -1   0   
$EndComp
Connection ~ 9000 1700
Connection ~ 9600 1700
Wire Wire Line
	9000 1400 9000 1300
Wire Wire Line
	9000 1200 9000 1300
Connection ~ 9000 1300
$Comp
L Pdjr:SANYOU_SRD_Form_C K1
U 1 1 5F2DB8E6
P 8200 1500
F 0 "K1" V 8767 1500 50  0000 C CNN
F 1 "SANYOU_SRD_Form_C" V 8676 1500 50  0000 C CNN
F 2 "PDJR:RS_RELAY_476-757" H 8650 1450 50  0001 L CNN
F 3 "http://www.sanyourelay.ca/public/products/pdf/SRD.pdf" H 8200 1500 50  0001 C CNN
	1    8200 1500
	0    1    -1   0   
$EndComp
Connection ~ 7900 1700
Connection ~ 8500 1700
Wire Wire Line
	7900 1400 7900 1300
Wire Wire Line
	7900 1200 7900 1300
Connection ~ 7900 1300
$Comp
L Device:R R13
U 1 1 5F2B75CF
P 5850 1050
F 0 "R13" V 5750 1050 50  0000 C CNN
F 1 "1K" V 5850 1050 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5780 1050 50  0001 C CNN
F 3 "~" H 5850 1050 50  0001 C CNN
	1    5850 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D7
U 1 1 5F2B7BB0
P 5550 1050
F 0 "D7" V 5589 933 50  0000 R CNN
F 1 "LED" V 5498 933 50  0000 R CNN
F 2 "LED_THT:LED_Rectangular_W3.0mm_H2.0mm" H 5550 1050 50  0001 C CNN
F 3 "~" H 5550 1050 50  0001 C CNN
	1    5550 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1550 5150 1550
Wire Wire Line
	5150 1550 5150 1050
Wire Wire Line
	3150 750  6100 750 
Wire Wire Line
	6000 1050 6100 1050
Wire Wire Line
	6100 1050 6100 750 
Connection ~ 6100 750 
Wire Wire Line
	6100 750  7200 750 
Wire Wire Line
	5150 1050 5400 1050
$EndSCHEMATC
