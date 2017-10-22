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
LIBS:hc11
LIBS:intel
LIBS:interface
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:linear
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
Sheet 4 9
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
L GNDA #PWR012
U 1 1 59B67F27
P 9400 5850
F 0 "#PWR012" H 9450 5900 50  0001 C CNN
F 1 "GNDA" H 9450 5650 50  0000 C CNN
F 2 "" H 3700 900 50  0001 C CNN
F 3 "" H 3700 900 50  0001 C CNN
	1    9400 5850
	1    0    0    -1  
$EndComp
$Comp
L GNDD #PWR013
U 1 1 59B67F2D
P 9900 5850
F 0 "#PWR013" H 9950 5900 50  0001 C CNN
F 1 "GNDD" H 9950 5650 50  0000 C CNN
F 2 "" H 1750 200 50  0001 C CNN
F 3 "" H 1750 200 50  0001 C CNN
	1    9900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 5650 9900 5850
Wire Wire Line
	9400 5650 9900 5650
Wire Wire Line
	9400 5650 9400 5850
Wire Wire Line
	7000 1400 7000 1800
Connection ~ 7000 1550
$Comp
L +5V #PWR014
U 1 1 59B79177
P 7000 1400
F 0 "#PWR014" H 2150 200 50  0001 C CNN
F 1 "+5V" H 7050 1600 50  0000 C CNN
F 2 "" H 2150 350 50  0001 C CNN
F 3 "" H 2150 350 50  0001 C CNN
	1    7000 1400
	1    0    0    -1  
$EndComp
$Comp
L LD3985G25R_TSOT23 U5
U 1 1 59B7C03C
P 5000 5650
F 0 "U5" H 5000 6150 50  0000 C CNN
F 1 "LDS3985M25R" H 5000 6050 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:TSOT-23-5" H -1200 125 50  0001 C CIN
F 3 "" H -1200 -150 50  0001 C CNN
F 4 "LDS3985M25R" H 5000 5950 50  0001 C CNN "manf#"
F 5 "ST Microelectronics" H 6650 1400 50  0001 C CNN "mfg"
	1    5000 5650
	1    0    0    -1  
$EndComp
Text Notes 5600 4850 2    100  ~ 0
+2.5V REGULATOR
Wire Wire Line
	3950 5550 4700 5550
Wire Wire Line
	3950 5250 3950 5750
$Comp
L +2V5 #PWR015
U 1 1 59B7C40E
P 6250 5250
F 0 "#PWR015" H 6300 5300 50  0001 C CNN
F 1 "+2V5" H 6300 5450 50  0000 C CNN
F 2 "" H 100 150 50  0001 C CNN
F 3 "" H 100 150 50  0001 C CNN
	1    6250 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5550 6250 5550
Wire Wire Line
	6250 5250 6250 5750
$Comp
L C C8
U 1 1 59B7C4CC
P 5700 5900
F 0 "C8" H 5850 6000 50  0000 L CNN
F 1 "33n" H 5850 5900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 88  -200 50  0001 C CNN
F 3 "" H 50  -50 50  0001 C CNN
F 4 "VJ0402V333ZXJCW1BC" H 5850 5850 50  0001 L CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    5700 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5650 5700 5650
Wire Wire Line
	5700 5650 5700 5750
Wire Wire Line
	5000 5950 5000 6300
$Comp
L R R6
U 1 1 59B7C8D2
P 4450 5650
F 0 "R6" V 4800 5650 50  0000 C CNN
F 1 "1k" V 4700 5650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -470 1900 50  0001 C CNN
F 3 "" H -400 1900 50  0001 C CNN
F 4 "CRCW06031K00FKEA" V 4600 5650 50  0001 C CNN "manf#"
F 5 "KEMET" H 6650 1400 50  0001 C CNN "mfg"
	1    4450 5650
	0    1    -1   0   
$EndComp
Wire Wire Line
	4300 5650 4200 5650
Wire Wire Line
	4200 5650 4200 5550
Connection ~ 4200 5550
Wire Wire Line
	4600 5650 4700 5650
$Comp
L C C6
U 1 1 59B7CABA
P 3950 5900
F 0 "C6" H 3800 6000 50  0000 R CNN
F 1 "1u" H 3800 5900 50  0000 R CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -1662 -200 50  0001 C CNN
F 3 "" H -1700 -50 50  0001 C CNN
F 4 "VJ0603V105ZXQPW1BC" H 3800 5850 50  0001 R CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    3950 5900
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 59B7CCD1
P 6250 5900
F 0 "C10" H 6400 6000 50  0000 L CNN
F 1 "1u" H 6400 5900 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 638 -200 50  0001 C CNN
F 3 "" H 600 -50 50  0001 C CNN
F 4 "VJ0603V105ZXQPW1BC" H 6400 5850 50  0001 L CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    6250 5900
	1    0    0    -1  
$EndComp
Connection ~ 3950 5550
Connection ~ 6250 5550
Wire Wire Line
	3950 6050 3950 6200
Wire Wire Line
	3950 6200 6250 6200
Connection ~ 5000 6200
Wire Wire Line
	5700 6200 5700 6050
Wire Wire Line
	6250 6200 6250 6050
Connection ~ 5700 6200
Wire Wire Line
	7000 1550 8050 1550
Wire Wire Line
	8050 1550 8050 1300
$Comp
L VDD #PWR016
U 1 1 59C6B986
P 8050 1300
F 0 "#PWR016" H 0   -150 50  0001 C CNN
F 1 "VDD" H 8100 1500 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    8050 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5900 9650 5650
Connection ~ 9650 5650
$Comp
L GND #PWR017
U 1 1 59C6EBBB
P 9650 5900
F 0 "#PWR017" H 9700 5950 50  0001 C CNN
F 1 "GND" H 9700 5700 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    9650 5900
	1    0    0    -1  
$EndComp
$Comp
L VDDA #PWR018
U 1 1 59C6EF40
P 7500 1250
F 0 "#PWR018" H 100 -250 50  0001 C CNN
F 1 "VDDA" H 7550 1450 50  0000 C CNN
F 2 "" H 100 -100 50  0001 C CNN
F 3 "" H 100 -100 50  0001 C CNN
	1    7500 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1250 7500 1550
Connection ~ 7500 1550
Text GLabel 7000 1800 0    50   Input ~ 0
VCC
$Comp
L VCC #PWR019
U 1 1 59C8319B
P 7750 1550
F 0 "#PWR019" H -100 -150 50  0001 C CNN
F 1 "VCC" H 7800 1750 50  0000 C CNN
F 2 "" H -100 0   50  0001 C CNN
F 3 "" H -100 0   50  0001 C CNN
	1    7750 1550
	1    0    0    -1  
$EndComp
Connection ~ 7750 1550
$Comp
L VCC #PWR020
U 1 1 59D8A843
P 3950 5250
F 0 "#PWR020" H -3900 3550 50  0001 C CNN
F 1 "VCC" H 4000 5450 50  0000 C CNN
F 2 "" H -3900 3700 50  0001 C CNN
F 3 "" H -3900 3700 50  0001 C CNN
	1    3950 5250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR021
U 1 1 59D8B7C5
P 5000 6300
F 0 "#PWR021" H 5050 6350 50  0001 C CNN
F 1 "GND" H 5050 6100 50  0000 C CNN
F 2 "" H -50 -50 50  0001 C CNN
F 3 "" H -50 -50 50  0001 C CNN
	1    5000 6300
	1    0    0    -1  
$EndComp
$EndSCHEMATC
