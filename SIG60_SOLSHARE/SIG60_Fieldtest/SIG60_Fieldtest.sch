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
L ARDUINO_NANO ARDUINO1
U 1 1 5A3D0EC5
P 2100 1950
F 0 "ARDUINO1" H 2100 2800 70  0000 C CNN
F 1 "ARDUINO_NANO" V 2100 1950 70  0000 C CNN
F 2 "Modules:Arduino_Nano" H 2100 1950 60  0001 C CNN
F 3 "" H 2100 1950 60  0000 C CNN
	1    2100 1950
	1    0    0    -1  
$EndComp
$Comp
L PLC_BOARD U1
U 1 1 5A3BAFAB
P 3750 2000
F 0 "U1" H 3750 1650 60  0000 C CNN
F 1 "PLC_BOARD" H 3750 2350 60  0000 C CNN
F 2 ".pretty:PLC_BOARD" H 3750 2000 60  0001 C CNN
F 3 "" H 3750 2000 60  0001 C CNN
	1    3750 2000
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 5A3BB8FE
P 2950 950
F 0 "#PWR?" H 2950 800 50  0001 C CNN
F 1 "+5V" H 2950 1090 50  0000 C CNN
F 2 "" H 2950 950 50  0001 C CNN
F 3 "" H 2950 950 50  0001 C CNN
	1    2950 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 950  2950 1500
Wire Wire Line
	2950 1500 2700 1500
$Comp
L +5V #PWR?
U 1 1 5A3BB97E
P 4650 950
F 0 "#PWR?" H 4650 800 50  0001 C CNN
F 1 "+5V" H 4650 1090 50  0000 C CNN
F 2 "" H 4650 950 50  0001 C CNN
F 3 "" H 4650 950 50  0001 C CNN
	1    4650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2250 4650 2250
Wire Wire Line
	4650 2250 4650 950 
$EndSCHEMATC
