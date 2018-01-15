EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:arduinouno
LIBS:arduino
LIBS:PLC_Yamar
LIBS:SIG60_Fieldtest-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L PLC_BOARD U1
U 1 1 5A3BAFAB
P 3350 4550
F 0 "U1" V 3350 4200 60  0000 C CNN
F 1 "PLC_BOARD" H 3350 4900 60  0000 C CNN
F 2 ".pretty:PLC_BOARD" H 3350 4550 60  0001 C CNN
F 3 "" H 3350 4550 60  0001 C CNN
	1    3350 4550
	0    -1   -1   0   
$EndComp
$Comp
L ArduinoProMini U?
U 1 1 5A5607D3
P 3550 2900
F 0 "U?" H 3550 2900 60  0000 C CNN
F 1 "ArduinoProMini" H 3500 3000 60  0000 C CNN
F 2 "" H 3550 2900 60  0001 C CNN
F 3 "" H 3550 2900 60  0001 C CNN
	1    3550 2900
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 J?
U 1 1 5A561214
P 3350 5450
F 0 "J?" V 3350 5600 50  0000 C CNN
F 1 "CONN_01X02" V 3450 5450 50  0000 C CNN
F 2 "" H 3350 5450 50  0001 C CNN
F 3 "" H 3350 5450 50  0001 C CNN
	1    3350 5450
	0    1    1    0   
$EndComp
NoConn ~ 3000 2200
NoConn ~ 3100 2200
NoConn ~ 3200 2200
NoConn ~ 3300 2200
NoConn ~ 3400 2200
NoConn ~ 3500 2200
NoConn ~ 3900 2200
NoConn ~ 4000 2200
NoConn ~ 4100 2200
NoConn ~ 4400 2650
NoConn ~ 4400 3150
NoConn ~ 4100 3600
NoConn ~ 3900 3600
NoConn ~ 3700 3600
NoConn ~ 3600 3600
NoConn ~ 3500 3600
NoConn ~ 3400 3600
$Comp
L CONN_01X04 J?
U 1 1 5A5793DC
P 5600 3950
F 0 "J?" H 5600 4200 50  0000 C CNN
F 1 "CONN_01X04" V 5700 3950 50  0000 C CNN
F 2 "" H 5600 3950 50  0001 C CNN
F 3 "" H 5600 3950 50  0001 C CNN
	1    5600 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 5250 3300 5050
Wire Wire Line
	3400 5250 3400 5050
Wire Wire Line
	3100 3600 3100 4100
Wire Wire Line
	3200 3600 3200 4100
Wire Wire Line
	3300 3600 3300 4100
Wire Wire Line
	3400 4100 3400 3850
Wire Wire Line
	3400 3850 3800 3850
Wire Wire Line
	3800 3850 3800 3600
Wire Wire Line
	4000 3600 4000 3950
Wire Wire Line
	4000 3800 5400 3800
Wire Wire Line
	3600 4100 5400 4100
Wire Wire Line
	3500 4100 3500 3950
Wire Wire Line
	3500 3950 4000 3950
Connection ~ 4000 3800
NoConn ~ 4400 3050
NoConn ~ 4400 2950
NoConn ~ 4400 2850
NoConn ~ 4400 2750
Wire Wire Line
	5400 3900 5100 3900
Wire Wire Line
	5100 3900 5100 1900
Wire Wire Line
	5100 1900 3600 1900
Wire Wire Line
	3600 1900 3600 2200
Wire Wire Line
	5400 4000 4850 4000
Wire Wire Line
	4850 4000 4850 2050
Wire Wire Line
	4850 2050 3700 2050
Wire Wire Line
	3700 2050 3700 2200
NoConn ~ 3800 2200
$Comp
L CONN_01X01 J?
U 1 1 5A5C9B55
P 2700 4100
F 0 "J?" V 2700 4200 50  0000 C CNN
F 1 "CONN_01X01" V 2800 4100 50  0000 C CNN
F 2 "" H 2700 4100 50  0001 C CNN
F 3 "" H 2700 4100 50  0001 C CNN
	1    2700 4100
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 3600 3000 3800
Wire Wire Line
	3000 3800 2700 3800
Wire Wire Line
	2700 3800 2700 3900
$EndSCHEMATC
