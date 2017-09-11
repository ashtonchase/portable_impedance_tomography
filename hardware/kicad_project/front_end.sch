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
Sheet 6 7
Title "Portable Impedance Tomography"
Date "2017-09-10"
Rev "NEW"
Comp "Ashton Johnson"
Comment1 "University of Alabama in Huntsville"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2450 2200 0    50   Input ~ 0
VOUT
Text HLabel 2450 5550 0    50   Input ~ 0
VIN
$Comp
L C C?
U 1 1 59B59EE0
P 3300 2200
F 0 "C?" V 3000 2200 50  0000 C CNN
F 1 "33n" V 3100 2200 50  0000 C CNN
F 2 "" H -212 -150 50  0001 C CNN
F 3 "" H -250 0   50  0001 C CNN
	1    3300 2200
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59B59F74
P 3950 1800
F 0 "R?" H 4050 1850 50  0000 L CNN
F 1 "75k" H 4050 1800 50  0000 L CNN
F 2 "" V -120 50  50  0001 C CNN
F 3 "" H -50 50  50  0001 C CNN
	1    3950 1800
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR?
U 1 1 59B5A051
P 3950 1350
F 0 "#PWR?" H 0   -100 50  0001 C CNN
F 1 "+2V5" H 4000 1550 50  0000 C CNN
F 2 "" H 0   50  50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    3950 1350
	1    0    0    -1  
$EndComp
$Comp
L AD8130 U?
U 1 1 59B5A62B
P 6600 2450
F 0 "U?" H 6900 2600 50  0000 L CNN
F 1 "AD8130" H 6900 2300 50  0000 L CNN
F 2 "" H 2200 -50 50  0001 C CNN
F 3 "" H 2200 -50 50  0001 C CNN
	1    6600 2450
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5A890
P 7700 2450
F 0 "R?" V 7450 2450 50  0000 C CNN
F 1 "1k" V 7550 2450 50  0000 C CNN
F 2 "" V -170 0   50  0001 C CNN
F 3 "" H -100 0   50  0001 C CNN
	1    7700 2450
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 59B5A975
P 6600 1400
F 0 "#PWR?" H 0   -150 50  0001 C CNN
F 1 "+5V" H 6650 1600 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    6600 1400
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59B5AA83
P 7100 1650
F 0 "C?" H 7250 1700 50  0000 L CNN
F 1 "100n" H 7250 1650 50  0000 L CNN
F 2 "" H 438 0   50  0001 C CNN
F 3 "" H 400 150 50  0001 C CNN
	1    7100 1650
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B5AB04
P 7100 1900
F 0 "#PWR?" H -50 -250 50  0001 C CNN
F 1 "GNDA" H 7150 1700 50  0000 C CNN
F 2 "" H -50 0   50  0001 C CNN
F 3 "" H -50 0   50  0001 C CNN
	1    7100 1900
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5ABA2
P 8550 2450
F 0 "R?" V 8300 2450 50  0000 C CNN
F 1 "0" V 8400 2450 50  0000 C CNN
F 2 "" V 230 0   50  0001 C CNN
F 3 "" H 300 0   50  0001 C CNN
	1    8550 2450
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B5AC6E
P 6600 3200
F 0 "#PWR?" H 6650 3250 50  0001 C CNN
F 1 "GNDA" H 6650 3000 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    6600 3200
	1    0    0    -1  
$EndComp
$Comp
L OPA2836-RESCUE-portable_imedance U?
U 1 1 59B5BB84
P 6250 4000
F 0 "U?" H 6400 4150 50  0000 L CNN
F 1 "OPA2836" H 6500 3850 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-10_3x3mm_Pitch0.5mm" H 900 -850 50  0001 C CNN
F 3 "" H 950 -800 50  0001 C CNN
	1    6250 4000
	-1   0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5C2BA
P 7700 4300
F 0 "R?" V 7450 4300 50  0000 C CNN
F 1 "75" V 7550 4300 50  0000 C CNN
F 2 "" V -220 -300 50  0001 C CNN
F 3 "" H -150 -300 50  0001 C CNN
	1    7700 4300
	0    1    1    0   
$EndComp
$Comp
L R R?
U 1 1 59B5C329
P 8200 4550
F 0 "R?" H 8100 4500 50  0000 R CNN
F 1 "10k" H 8100 4550 50  0000 R CNN
F 2 "" V 280 -50 50  0001 C CNN
F 3 "" H 350 -50 50  0001 C CNN
	1    8200 4550
	-1   0    0    1   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B5C415
P 8200 4800
F 0 "#PWR?" H 8250 4850 50  0001 C CNN
F 1 "GNDA" H 8250 4600 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    8200 4800
	1    0    0    -1  
$EndComp
$Comp
L +2V5 #PWR?
U 1 1 59B5C50F
P 8650 3850
F 0 "#PWR?" H 4700 2400 50  0001 C CNN
F 1 "+2V5" H 8700 4050 50  0000 C CNN
F 2 "" H 4700 2550 50  0001 C CNN
F 3 "" H 4700 2550 50  0001 C CNN
	1    8650 3850
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5C562
P 9050 4000
F 0 "R?" V 8800 4000 50  0000 C CNN
F 1 "0" V 8900 4000 50  0000 C CNN
F 2 "" V 730 1550 50  0001 C CNN
F 3 "" H 800 1550 50  0001 C CNN
	1    9050 4000
	0    1    1    0   
$EndComp
Text Label 9400 2450 0    50   ~ 0
I_OUT
Text Label 9450 4000 0    50   ~ 0
I_IN
Text Label 9150 4300 0    50   ~ 0
SHIELD_DRIVE
$Comp
L GNDA #PWR?
U 1 1 59B5C9AB
P 6350 4550
F 0 "#PWR?" H 6400 4600 50  0001 C CNN
F 1 "GNDA" H 6400 4350 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    6350 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR?
U 1 1 59B5CA3D
P 5500 3150
F 0 "#PWR?" H 5550 3200 50  0001 C CNN
F 1 "+5V" H 5550 3350 50  0000 C CNN
F 2 "" H -850 -600 50  0001 C CNN
F 3 "" H -850 -600 50  0001 C CNN
	1    5500 3150
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59B5CA95
P 5500 3450
F 0 "C?" H 5650 3500 50  0000 L CNN
F 1 "100n" H 5650 3450 50  0000 L CNN
F 2 "" H -512 -350 50  0001 C CNN
F 3 "" H -550 -200 50  0001 C CNN
	1    5500 3450
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B5CB69
P 5500 3700
F 0 "#PWR?" H 0   -200 50  0001 C CNN
F 1 "GNDA" H 5550 3500 50  0000 C CNN
F 2 "" H 0   50  50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    5500 3700
	1    0    0    -1  
$EndComp
$Comp
L R R?
U 1 1 59B5CDC4
P 4650 4000
F 0 "R?" V 4400 4000 50  0000 C CNN
F 1 "1M" V 4500 4000 50  0000 C CNN
F 2 "" V -70 0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    4650 4000
	0    1    1    0   
$EndComp
$Comp
L C C?
U 1 1 59B5CE65
P 4300 3500
F 0 "C?" H 4450 3550 50  0000 L CNN
F 1 "1u" H 4450 3500 50  0000 L CNN
F 2 "" H -1712 -300 50  0001 C CNN
F 3 "" H -1750 -150 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L GNDA #PWR?
U 1 1 59B5CEB9
P 4300 3200
F 0 "#PWR?" H 4350 3250 50  0001 C CNN
F 1 "GNDA" H 4300 3000 50  0000 C CNN
F 2 "" H -2050 -1350 50  0001 C CNN
F 3 "" H -2050 -1350 50  0001 C CNN
	1    4300 3200
	-1   0    0    1   
$EndComp
$Comp
L R R?
U 1 1 59B5D078
P 4650 5150
F 0 "R?" V 4400 5150 50  0000 C CNN
F 1 "1M" V 4500 5150 50  0000 C CNN
F 2 "" V -70 1150 50  0001 C CNN
F 3 "" H 0   1150 50  0001 C CNN
	1    4650 5150
	0    1    1    0   
$EndComp
$Comp
L +2V5 #PWR?
U 1 1 59B5D0FE
P 5050 5050
F 0 "#PWR?" H 1100 3600 50  0001 C CNN
F 1 "+2V5" H 5100 5250 50  0000 C CNN
F 2 "" H 1100 3750 50  0001 C CNN
F 3 "" H 1100 3750 50  0001 C CNN
	1    5050 5050
	1    0    0    -1  
$EndComp
$Comp
L C C?
U 1 1 59B5D243
P 3500 5150
F 0 "C?" V 3200 5150 50  0000 C CNN
F 1 "1u" V 3300 5150 50  0000 C CNN
F 2 "" H -2512 1350 50  0001 C CNN
F 3 "" H -2550 1500 50  0001 C CNN
	1    3500 5150
	0    1    1    0   
$EndComp
$Comp
L OPA2836-RESCUE-portable_imedance U?
U 2 1 59B5D2EB
P 3700 4100
F 0 "U?" H 3850 4250 50  0000 L CNN
F 1 "OPA2836" H 3900 4000 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-10_3x3mm_Pitch0.5mm" H 100 -400 50  0001 C CNN
F 3 "" H 150 -350 50  0001 C CNN
	2    3700 4100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2450 2200 3150 2200
Wire Wire Line
	3950 1950 3950 2200
Wire Wire Line
	3450 2200 3950 2200
Wire Wire Line
	3950 2200 6200 2200
Wire Wire Line
	3950 1350 3950 1650
Connection ~ 3950 2200
Wire Wire Line
	7150 2450 7350 2450
Wire Wire Line
	7350 2450 7550 2450
Wire Wire Line
	6600 1400 6600 1450
Wire Wire Line
	6600 1450 6600 2100
Wire Wire Line
	6750 2150 6750 1700
Wire Wire Line
	6750 1700 6100 1700
Wire Wire Line
	6600 1450 7100 1450
Wire Wire Line
	7100 1450 7100 1500
Connection ~ 6600 1450
Wire Wire Line
	7100 1900 7100 1800
Wire Wire Line
	7850 2450 8050 2450
Wire Wire Line
	8050 2450 8400 2450
Wire Wire Line
	6600 2800 6600 3200
Wire Wire Line
	7350 2450 7350 3050
Wire Wire Line
	7350 3050 6000 3050
Wire Wire Line
	6000 3050 6000 2700
Wire Wire Line
	6000 2700 6200 2700
Connection ~ 7350 2450
Wire Wire Line
	4800 4000 5450 4000
Wire Wire Line
	5450 4000 5800 4000
Wire Wire Line
	5800 4000 5950 4000
Wire Wire Line
	6200 2600 5800 2600
Wire Wire Line
	5800 2600 5800 4000
Connection ~ 5800 4000
Wire Wire Line
	8050 2450 8050 3900
Wire Wire Line
	8050 3900 6550 3900
Connection ~ 8050 2450
Wire Wire Line
	6550 4100 7000 4100
Wire Wire Line
	7000 4100 7000 4300
Wire Wire Line
	5450 4300 7000 4300
Wire Wire Line
	7000 4300 7550 4300
Wire Wire Line
	7850 4300 8200 4300
Wire Wire Line
	8200 4300 9800 4300
Wire Wire Line
	8200 4300 8200 4400
Wire Wire Line
	8200 4800 8200 4700
Wire Wire Line
	8650 3850 8650 4000
Wire Wire Line
	8650 4000 8900 4000
Connection ~ 8200 4300
Wire Wire Line
	8700 2450 9800 2450
Wire Wire Line
	9200 4000 9800 4000
Wire Wire Line
	5450 4000 5450 4300
Connection ~ 7000 4300
Connection ~ 5450 4000
Wire Wire Line
	6350 4250 6350 4550
Wire Wire Line
	5500 3150 5500 3200
Wire Wire Line
	5500 3200 5500 3300
Wire Wire Line
	5500 3700 5500 3600
Wire Wire Line
	5500 3200 6350 3200
Wire Wire Line
	6350 3200 6350 3750
Connection ~ 5500 3200
Wire Wire Line
	4300 3200 4300 3350
Wire Wire Line
	4300 3650 4300 4000
Wire Wire Line
	4000 4000 4300 4000
Wire Wire Line
	4300 4000 4500 4000
Wire Wire Line
	5050 5050 5050 5150
Wire Wire Line
	5050 5150 4800 5150
Connection ~ 4300 4000
Wire Wire Line
	3650 5150 4200 5150
Wire Wire Line
	4200 5150 4500 5150
Wire Wire Line
	4000 4200 4200 4200
Wire Wire Line
	4200 4200 4200 5150
Connection ~ 4200 5150
Wire Wire Line
	3400 4100 2900 4100
Wire Wire Line
	2900 2650 2900 4100
Wire Wire Line
	2900 4100 2900 5150
Wire Wire Line
	2900 5150 3350 5150
Wire Wire Line
	2900 2650 5250 2650
Wire Wire Line
	5250 2650 5250 2300
Wire Wire Line
	5250 2300 6200 2300
Connection ~ 2900 4100
Text HLabel 9800 2450 2    50   Output ~ 0
DRIVE+
Text HLabel 9800 4000 2    50   Output ~ 0
DRIVE-
Text HLabel 9800 4300 2    50   Output ~ 0
SHIELD_DRIVE
Text Notes 7000 6450 0    50   ~ 0
Design Published in:\n\nR. Harder, A. Diedrich, J. S. Whitfield, M. S. Buchowski, J. B. Pietsch, \nand F. J. Baudenbacher, “Smart Multi-Frequency Bioelectrical \nImpedance Spectrometer for BIA and BIVA Applications,” \nIEEE Transactions on Biomedical Circuits and Systems, \nvol. 10, no. 4, pp. 912–919, Aug. 2016.\n
$Comp
L OPA2836-RESCUE-portable_imedance U?
U 1 1 59B5E445
P 6250 5550
F 0 "U?" H 6400 5700 50  0000 L CNN
F 1 "OPA2836" H 6500 5400 50  0000 L CNN
F 2 "Housings_SSOP:TSSOP-10_3x3mm_Pitch0.5mm" H 900 700 50  0001 C CNN
F 3 "" H 950 750 50  0001 C CNN
	1    6250 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 5450 9900 5450
Wire Wire Line
	6550 5650 9900 5650
Wire Wire Line
	5950 5550 2450 5550
$Comp
L GNDA #PWR?
U 1 1 59B5E97E
P 6350 5950
F 0 "#PWR?" H 6400 6000 50  0001 C CNN
F 1 "GNDA" H 6400 5750 50  0000 C CNN
F 2 "" H 0   1400 50  0001 C CNN
F 3 "" H 0   1400 50  0001 C CNN
	1    6350 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5800 6350 5950
$Comp
L +5V #PWR?
U 1 1 59B5EB99
P 6350 5200
F 0 "#PWR?" H 6400 5250 50  0001 C CNN
F 1 "+5V" H 6400 5400 50  0000 C CNN
F 2 "" H 0   1450 50  0001 C CNN
F 3 "" H 0   1450 50  0001 C CNN
	1    6350 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 5200 6350 5300
Text GLabel 5450 6050 0    50   Input ~ 0
POWER_DOWN
Wire Wire Line
	6150 5700 6150 6050
Wire Wire Line
	6150 6050 5450 6050
Text GLabel 6000 4550 0    50   Input ~ 0
POWER_DOWN
Wire Wire Line
	6000 4550 6150 4550
Wire Wire Line
	6150 4550 6150 4150
Text GLabel 6100 1700 0    50   Input ~ 0
POWER_DOWN
Text GLabel 3500 4450 0    50   Input ~ 0
POWER_DOWN
Wire Wire Line
	3500 4450 3600 4450
Wire Wire Line
	3600 4450 3600 4250
Text HLabel 9900 5450 2    50   Input ~ 0
SENSE+
Text HLabel 9900 5650 2    50   Input ~ 0
SENSE-
$EndSCHEMATC
