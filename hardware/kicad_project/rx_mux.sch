EESchema Schematic File Version 2
LIBS:portable_imedance-rescue
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:portable_imedance-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 7
Title "Portable Impedance Tomography"
Date "2017-09-10"
Rev "NEW"
Comp "Ashton Johnson"
Comment1 "University of Alabama in Huntsville"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ADG1209 U?
U 1 1 59B6BC3D
P 5950 3850
F 0 "U?" H 6200 4650 50  0000 C CNN
F 1 "ADG1209" H 5650 4650 50  0000 C CNN
F 2 "" H 300 1100 60  0001 C CNN
F 3 "" H 300 1100 60  0001 C CNN
	1    5950 3850
	-1   0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59B6BCF1
P 5950 2050
F 0 "#PWR?" H -50 -250 50  0001 C CNN
F 1 "+5V" H 6000 2250 50  0000 C CNN
F 2 "" H -50 -100 50  0001 C CNN
F 3 "" H -50 -100 50  0001 C CNN
	1    5950 2050
	-1   0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B6BD3A
P 5450 5000
F 0 "#PWR?" H 5500 5050 50  0001 C CNN
F 1 "GNDA" H 5500 4800 50  0000 C CNN
F 2 "" H -850 250 50  0001 C CNN
F 3 "" H -850 250 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
$Comp
L -5V #PWR?
U 1 1 59B6C16C
P 5950 5750
F 0 "#PWR?" H 6000 5800 50  0001 C CNN
F 1 "-5V" H 5950 5950 50  0000 C CNN
F 2 "" H -150 1150 50  0001 C CNN
F 3 "" H -150 1150 50  0001 C CNN
	1    5950 5750
	1    0    0    1   
$EndComp
Wire Wire Line
	5950 2050 5950 3050
Wire Wire Line
	5950 4650 5950 5750
Wire Wire Line
	6450 2400 6450 2250
Wire Wire Line
	6450 2250 5950 2250
Connection ~ 5950 2250
$Comp
L C C?
U 1 1 59B6C44C
P 6450 2550
F 0 "C?" H 6600 2600 50  0000 L CNN
F 1 "0.1u" H 6600 2550 50  0000 L CNN
F 2 "" H 38  -100 50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    6450 2550
	-1   0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B6C496
P 6450 2750
F 0 "#PWR?" H 50  0   50  0001 C CNN
F 1 "GNDA" H 6500 2550 50  0000 C CNN
F 2 "" H 50  250 50  0001 C CNN
F 3 "" H 50  250 50  0001 C CNN
	1    6450 2750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 2750 6450 2700
$Comp
L C C?
U 1 1 59B6C4DE
P 6400 5100
F 0 "C?" H 6550 5150 50  0000 L CNN
F 1 "0.1u" H 6550 5100 50  0000 L CNN
F 2 "" H 588 150 50  0001 C CNN
F 3 "" H 550 300 50  0001 C CNN
	1    6400 5100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 4950 6400 4750
Wire Wire Line
	6400 4750 5950 4750
Connection ~ 5950 4750
$Comp
L GNDA #PWR?
U 1 1 59B6C52F
P 6400 5400
F 0 "#PWR?" H 6450 5450 50  0001 C CNN
F 1 "GNDA" H 6450 5200 50  0000 C CNN
F 2 "" H 750 250 50  0001 C CNN
F 3 "" H 750 250 50  0001 C CNN
	1    6400 5400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6400 5400 6400 5250
Wire Wire Line
	5750 4650 5750 4850
Wire Wire Line
	5750 4850 5450 4850
Wire Wire Line
	5450 4850 5450 5000
Wire Wire Line
	4650 3650 5450 3650
Wire Wire Line
	6450 3250 7150 3250
Wire Wire Line
	6450 3350 7150 3350
Text HLabel 7150 3250 2    50   Input ~ 0
SEL0
Text HLabel 7150 3350 2    50   Input ~ 0
SEL1
Text HLabel 4650 3650 0    50   BiDi ~ 0
DRIVE
Text HLabel 4650 4450 0    50   Input ~ 0
SENSE
Wire Wire Line
	5450 4450 4650 4450
Wire Wire Line
	6450 3450 7150 3450
Text HLabel 7150 3450 2    50   Input ~ 0
EN
Wire Wire Line
	6450 3650 7800 3650
Wire Wire Line
	6450 3750 7950 3750
Wire Wire Line
	6450 3850 8100 3850
Wire Wire Line
	6450 3950 8250 3950
Text Label 7050 3650 2    50   ~ 0
SA1
Text Label 7050 3750 2    50   ~ 0
SA2
Text Label 7050 3850 2    50   ~ 0
SA3
Text Label 7050 3950 2    50   ~ 0
SA4
$Comp
L Conn_Coaxial J?
U 1 1 59B6D676
P 9450 1250
F 0 "J?" H 9550 1250 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 1150 50  0000 L CNN
F 2 "" H 1700 -1450 50  0001 C CNN
F 3 "" H 1700 -1450 50  0001 C CNN
	1    9450 1250
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D72A
P 9450 1900
F 0 "J?" H 9550 1900 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 1800 50  0000 L CNN
F 2 "" H 1700 -800 50  0001 C CNN
F 3 "" H 1700 -800 50  0001 C CNN
	1    9450 1900
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D762
P 9450 2400
F 0 "J?" H 9550 2400 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 2300 50  0000 L CNN
F 2 "" H 1700 -300 50  0001 C CNN
F 3 "" H 1700 -300 50  0001 C CNN
	1    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D792
P 9450 2950
F 0 "J?" H 9550 2950 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 2850 50  0000 L CNN
F 2 "" H 1700 250 50  0001 C CNN
F 3 "" H 1700 250 50  0001 C CNN
	1    9450 2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D7C6
P 9450 4150
F 0 "J?" H 9550 4150 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 4050 50  0000 L CNN
F 2 "" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
	1    9450 4150
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D7F8
P 9450 4700
F 0 "J?" H 9550 4700 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 4600 50  0000 L CNN
F 2 "" H 1700 2000 50  0001 C CNN
F 3 "" H 1700 2000 50  0001 C CNN
	1    9450 4700
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D830
P 9450 5200
F 0 "J?" H 9550 5200 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 5100 50  0000 L CNN
F 2 "" H 1700 2500 50  0001 C CNN
F 3 "" H 1700 2500 50  0001 C CNN
	1    9450 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J?
U 1 1 59B6D88E
P 9450 5800
F 0 "J?" H 9550 5800 50  0000 L CNN
F 1 "Conn_Coaxial" H 9550 5700 50  0000 L CNN
F 2 "" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
	1    9450 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 3650 7800 1250
Wire Wire Line
	7800 1250 9300 1250
Wire Wire Line
	9300 1900 7950 1900
Wire Wire Line
	7950 1900 7950 3750
Wire Wire Line
	8100 3850 8100 2400
Wire Wire Line
	8100 2400 9300 2400
Wire Wire Line
	9300 2950 8250 2950
Wire Wire Line
	8250 2950 8250 3950
Wire Wire Line
	6450 4150 9300 4150
Wire Wire Line
	9300 4700 8250 4700
Wire Wire Line
	8250 4700 8250 4250
Wire Wire Line
	8250 4250 6450 4250
Wire Wire Line
	9300 5200 8100 5200
Wire Wire Line
	8100 5200 8100 4350
Wire Wire Line
	8100 4350 6450 4350
Wire Wire Line
	9300 5800 7950 5800
Wire Wire Line
	7950 5800 7950 4450
Wire Wire Line
	7950 4450 6450 4450
Text HLabel 8800 950  0    50   Output ~ 0
SHIELD_DRIVE
Wire Wire Line
	8800 950  9000 950 
Wire Wire Line
	9000 950  9000 6200
Wire Wire Line
	9000 6200 9450 6200
Wire Wire Line
	9450 6200 9450 6000
Wire Wire Line
	9450 5400 9450 5550
Wire Wire Line
	9450 5550 9000 5550
Connection ~ 9000 5550
Wire Wire Line
	9450 4900 9450 5000
Wire Wire Line
	9450 5000 9000 5000
Connection ~ 9000 5000
Wire Wire Line
	9450 4350 9450 4500
Wire Wire Line
	9450 4500 9000 4500
Connection ~ 9000 4500
Wire Wire Line
	9450 3150 9450 3300
Wire Wire Line
	9450 3300 9000 3300
Connection ~ 9000 3300
Wire Wire Line
	9450 2600 9450 2750
Wire Wire Line
	9450 2750 9000 2750
Connection ~ 9000 2750
Wire Wire Line
	9450 2100 9450 2200
Wire Wire Line
	9450 2200 9000 2200
Connection ~ 9000 2200
Wire Wire Line
	9450 1450 9450 1600
Wire Wire Line
	9450 1600 9000 1600
Connection ~ 9000 1600
$EndSCHEMATC
