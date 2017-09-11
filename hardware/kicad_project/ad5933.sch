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
Sheet 2 7
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
L AD5933 U?
U 1 1 59B585BF
P 5900 3350
F 0 "U?" H 6350 3900 50  0000 L CNN
F 1 "AD5933" H 5300 3900 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-16_5.3x6.2mm_Pitch0.65mm" H 50  -950 50  0001 C CNN
F 3 "" H -150 300 50  0001 C CNN
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 59B5867D
P 6100 4300
F 0 "#PWR?" H 6150 4350 50  0001 C CNN
F 1 "GNDD" H 6150 4100 50  0000 C CNN
F 2 "" H 0   150 50  0001 C CNN
F 3 "" H 0   150 50  0001 C CNN
	1    6100 4300
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B586B7
P 5800 4300
F 0 "#PWR?" H 5850 4350 50  0001 C CNN
F 1 "GNDA" H 5850 4100 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    5800 4300
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5871A
P 4450 2500
F 0 "R?" H 4550 2550 50  0000 L CNN
F 1 "4.7k" H 4550 2500 50  0000 L CNN
F 2 "" V -570 -200 50  0001 C CNN
F 3 "" H -500 -200 50  0001 C CNN
	1    4450 2500
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B58787
P 4750 2500
F 0 "R?" H 4850 2550 50  0000 L CNN
F 1 "4.7k" H 4850 2500 50  0000 L CNN
F 2 "" V -270 -200 50  0001 C CNN
F 3 "" H -200 -200 50  0001 C CNN
	1    4750 2500
	1    0    0    -1  
$EndComp
Text HLabel 3950 2950 0    50   BiDi ~ 0
SDA
Text HLabel 3950 3050 0    50   BiDi ~ 0
SCL
$Comp
L C C?
U 1 1 59B5895F
P 6500 2200
F 0 "C?" H 6650 2250 50  0000 L CNN
F 1 "0.1uF" H 6650 2200 50  0000 L CNN
F 2 "" H -412 -150 50  0001 C CNN
F 3 "" H -450 0   50  0001 C CNN
	1    6500 2200
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR?
U 1 1 59B589B4
P 6500 2450
F 0 "#PWR?" H 0   -300 50  0001 C CNN
F 1 "GNDD" H 6550 2250 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59B58AC6
P 6100 1400
F 0 "C?" H 6250 1450 50  0000 L CNN
F 1 "0.1uF" H 6250 1400 50  0000 L CNN
F 2 "" H -812 -950 50  0001 C CNN
F 3 "" H -850 -800 50  0001 C CNN
	1    6100 1400
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B58B60
P 6100 1650
F 0 "#PWR?" H 0   -250 50  0001 C CNN
F 1 "GNDA" H 6250 1650 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Text HLabel 3950 3450 0    50   Input ~ 0
MCLK
$Comp
L C C?
U 1 1 59B592F9
P 6650 1400
F 0 "C?" H 6800 1450 50  0000 L CNN
F 1 "10uF" H 6800 1400 50  0000 L CNN
F 2 "" H -262 -950 50  0001 C CNN
F 3 "" H -300 -800 50  0001 C CNN
	1    6650 1400
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B59327
P 6650 1650
F 0 "#PWR?" H 550 -250 50  0001 C CNN
F 1 "GNDA" H 6800 1650 50  0000 C CNN
F 2 "" H 550 0   50  0001 C CNN
F 3 "" H 550 0   50  0001 C CNN
	1    6650 1650
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B59804
P 7350 3250
F 0 "R?" V 7100 3250 50  0000 C CNN
F 1 "0" V 7200 3250 50  0000 C CNN
F 2 "" V 230 0   50  0001 C CNN
F 3 "" H 300 0   50  0001 C CNN
	1    7350 3250
	0    1    1    0   
$EndComp
Text Label 6650 3250 0    50   ~ 0
AD5933_RFB
Text Label 6900 3450 0    50   ~ 0
AD5933_VIN
Text HLabel 8750 3450 2    50   Input ~ 0
VIN
Text HLabel 8750 2950 2    50   Output ~ 0
VOUT
Text Label 6700 2950 0    50   ~ 0
AD5933_VOUT
Wire Wire Line
	6100 4300 6100 3950
Wire Wire Line
	5800 3950 5800 4100
Wire Wire Line
	5800 4100 5800 4300
Wire Wire Line
	5700 3950 5700 4100
Wire Wire Line
	5700 4100 5800 4100
Connection ~ 5800 4100
Wire Wire Line
	3950 2950 4450 2950
Wire Wire Line
	4450 2950 5200 2950
Wire Wire Line
	3950 3050 4750 3050
Wire Wire Line
	4750 3050 5200 3050
Wire Wire Line
	6100 1900 6100 2750
Wire Wire Line
	4450 2650 4450 2950
Connection ~ 4450 2950
Wire Wire Line
	4750 2650 4750 3050
Connection ~ 4750 3050
Wire Wire Line
	4750 2350 4750 1900
Wire Wire Line
	4450 2350 4450 1900
Wire Wire Line
	6500 2350 6500 2450
Wire Wire Line
	6500 1900 6500 2050
Connection ~ 6100 1900
Wire Wire Line
	5800 900  5800 1150
Wire Wire Line
	5800 1150 5800 2600
Wire Wire Line
	5800 2600 5800 2750
Wire Wire Line
	5700 2750 5700 2600
Wire Wire Line
	5700 2600 5800 2600
Connection ~ 5800 2600
Wire Wire Line
	6100 1150 6100 1250
Connection ~ 5800 1150
Wire Wire Line
	6100 1650 6100 1550
Wire Wire Line
	5200 3450 3950 3450
Wire Wire Line
	6650 1650 6650 1550
Wire Wire Line
	6650 1150 6650 1250
Connection ~ 6100 1150
Wire Wire Line
	7200 3250 6600 3250
Wire Wire Line
	6600 3450 7700 3450
Wire Wire Line
	7700 3450 8750 3450
Wire Wire Line
	7700 3450 7700 3250
Wire Wire Line
	7700 3250 7500 3250
Connection ~ 7700 3450
Wire Wire Line
	6600 2950 8750 2950
Connection ~ 4450 1900
Connection ~ 4750 1900
Wire Wire Line
	4450 1900 4750 1900
Wire Wire Line
	4750 1900 5100 1900
Wire Wire Line
	5100 1900 6100 1900
Wire Wire Line
	6100 1900 6500 1900
$Comp
L +5V #PWR?
U 1 1 59B5F0AB
P 5800 900
F 0 "#PWR?" H 0   -150 50  0001 C CNN
F 1 "+5V" H 5850 1100 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    5800 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1150 5800 1150
Wire Wire Line
	5800 1150 6100 1150
Wire Wire Line
	6100 1150 6650 1150
$Comp
L R R?
U 1 1 59B7DACF
P 5100 1400
F 0 "R?" H 5200 1450 50  0000 L CNN
F 1 "0" H 5200 1400 50  0000 L CNN
F 2 "" V 80  -1300 50  0001 C CNN
F 3 "" H 150 -1300 50  0001 C CNN
	1    5100 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1250 5100 1150
Wire Wire Line
	5100 1550 5100 1900
Connection ~ 5100 1900
$EndSCHEMATC
