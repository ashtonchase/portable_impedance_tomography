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
Sheet 2 9
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
L AD5933 U2
U 1 1 59B585BF
P 5900 3350
F 0 "U2" H 5300 3900 50  0000 L CNN
F 1 "AD5933" H 5850 3350 50  0000 L CNN
F 2 "Housings_SSOP:SSOP-16_5.3x6.2mm_Pitch0.65mm" H 50  -950 50  0001 C CNN
F 3 "" H -150 300 50  0001 C CNN
F 4 "AD5933YRSZ" H 6300 2800 50  0001 L CNN "manf#"
F 5 "Analog Devices" H 5900 3350 50  0001 C CNN "mfg"
	1    5900 3350
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 59B5871A
P 4450 2500
F 0 "R1" H 4350 2600 50  0000 R CNN
F 1 "4.7k" H 4350 2500 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -570 -200 30  0001 C CNN
F 3 "" H -500 -200 30  0001 C CNN
F 4 "CRCW06034K70FKEA" H 4350 2450 30  0001 R CNN "manf#"
F 5 "KEMET" H 4750 2500 30  0001 C CNN "mfg"
	1    4450 2500
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 59B58787
P 4750 2500
F 0 "R2" H 4850 2600 50  0000 L CNN
F 1 "4.7k" H 4850 2500 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V -270 -200 50  0001 C CNN
F 3 "" H -200 -200 50  0001 C CNN
F 4 "CRCW06034K70FKEA" H 4850 2450 30  0001 L CNN "manf#"
F 5 "KEMET" H 4750 2500 30  0001 C CNN "mfg"
	1    4750 2500
	1    0    0    -1  
$EndComp
Text HLabel 3950 2950 0    50   BiDi ~ 0
SDA
Text HLabel 3950 3050 0    50   BiDi ~ 0
SCL
$Comp
L C C2
U 1 1 59B5895F
P 6500 2200
F 0 "C2" H 6650 2250 50  0000 L CNN
F 1 "0.1uF" H 6650 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -412 -150 50  0001 C CNN
F 3 "" H -450 0   50  0001 C CNN
F 4 "VJ0603V104ZXQPW1BC" H 6850 2050 50  0001 C CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    6500 2200
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 59B58AC6
P 6100 1400
F 0 "C1" H 6250 1500 50  0000 L CNN
F 1 "0.1uF" H 6250 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -812 -950 50  0001 C CNN
F 3 "" H -850 -800 50  0001 C CNN
F 4 "VJ0603V104ZXQPW1BC" H 5400 1300 50  0001 L CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    6100 1400
	1    0    0    -1  
$EndComp
Text HLabel 3950 3450 0    50   Input ~ 0
MCLK
$Comp
L C C3
U 1 1 59B592F9
P 6650 1400
F 0 "C3" H 6800 1500 50  0000 L CNN
F 1 "10uF" H 6800 1400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H -262 -950 50  0001 C CNN
F 3 "" H -300 -800 50  0001 C CNN
F 4 "VJ0603V105ZXQPW1BC" H 6900 1300 50  0001 L CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    6650 1400
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 59B59804
P 7350 3250
F 0 "R4" V 7250 3250 50  0000 C CNN
F 1 "0" V 7350 3250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 230 0   50  0001 C CNN
F 3 "" H 300 0   50  0001 C CNN
F 4 "CRCW06030000Z0EA" V 7250 3600 50  0001 C CNN "manf#"
F 5 "VISHAY" H 6650 1400 50  0001 C CNN "mfg"
	1    7350 3250
	0    1    1    0   
$EndComp
Text Label 6650 3250 0    50   ~ 0
AD5933_RFB
Text Label 6900 3450 0    50   ~ 0
AD5933_VIN
Text HLabel 8750 3450 2    50   Input ~ 0
VIN
Text HLabel 7450 2950 2    50   Output ~ 0
VOUT
Text Label 6700 2950 0    50   ~ 0
AD5933_VOUT
Wire Wire Line
	6100 4300 6100 3950
Wire Wire Line
	5800 3950 5800 4300
Wire Wire Line
	5700 3950 5700 4100
Wire Wire Line
	5700 4100 5800 4100
Connection ~ 5800 4100
Wire Wire Line
	3950 2950 5200 2950
Wire Wire Line
	3950 3050 5200 3050
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
	4450 1650 4450 2350
Wire Wire Line
	6500 2350 6500 2450
Wire Wire Line
	6500 1900 6500 2050
Connection ~ 6100 1900
Wire Wire Line
	5800 900  5800 2750
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
	6600 3250 7200 3250
Wire Wire Line
	6600 3450 8750 3450
Wire Wire Line
	7700 3450 7700 3250
Wire Wire Line
	7700 3250 7500 3250
Connection ~ 7700 3450
Wire Wire Line
	6600 2950 7450 2950
Connection ~ 4450 1900
Connection ~ 4750 1900
$Comp
L VCC #PWR01
U 1 1 59D8AAB0
P 5800 900
F 0 "#PWR01" H 0   -150 50  0001 C CNN
F 1 "VCC" H 5850 1100 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    5800 900 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR02
U 1 1 59D8ACF0
P 6500 2450
F 0 "#PWR02" H 0   -300 50  0001 C CNN
F 1 "GND" H 6600 2350 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    6500 2450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 59D8AD56
P 6650 1650
F 0 "#PWR03" H 150 -1100 50  0001 C CNN
F 1 "GND" H 6750 1550 50  0000 C CNN
F 2 "" H 150 -850 50  0001 C CNN
F 3 "" H 150 -850 50  0001 C CNN
	1    6650 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 59D8AD8B
P 6100 1650
F 0 "#PWR04" H -400 -1100 50  0001 C CNN
F 1 "GND" H 6250 1550 50  0000 C CNN
F 2 "" H -400 -850 50  0001 C CNN
F 3 "" H -400 -850 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 59D8AE65
P 6100 4300
F 0 "#PWR05" H 6150 4350 50  0001 C CNN
F 1 "GND" H 6150 4100 50  0000 C CNN
F 2 "" H 300 -50 50  0001 C CNN
F 3 "" H 300 -50 50  0001 C CNN
	1    6100 4300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR06
U 1 1 59D8AE85
P 5800 4300
F 0 "#PWR06" H 5850 4350 50  0001 C CNN
F 1 "GND" H 5850 4100 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    5800 4300
	1    0    0    -1  
$EndComp
$Comp
L POT RV1
U 1 1 59E23FD8
P 8000 3100
F 0 "RV1" V 7650 3100 50  0000 C CNN
F 1 "20K" V 7750 3100 50  0000 C CNN
F 2 "Potentiometers:Potentiometer_Trimmer_Bourns_3214W" H 250 -250 50  0001 C CNN
F 3 "" H 250 -250 50  0001 C CNN
F 4 "3214W-2-203E" V 8000 3650 50  0000 C CNN "manf#"
F 5 "BOURNS" H 8000 3100 50  0001 C CNN "mfg"
	1    8000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3100 7150 3100
Wire Wire Line
	7150 3100 7150 3250
Connection ~ 7150 3250
Wire Wire Line
	8000 3250 8000 3450
Connection ~ 8000 3450
NoConn ~ 8150 3100
Text Notes 7900 3000 0    50   ~ 0
5-TURN
$Comp
L VCC #PWR07
U 1 1 59E27492
P 4450 1650
F 0 "#PWR07" H -1350 600 50  0001 C CNN
F 1 "VCC" H 4500 1850 50  0000 C CNN
F 2 "" H -1350 750 50  0001 C CNN
F 3 "" H -1350 750 50  0001 C CNN
	1    4450 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 1900 4450 1900
Wire Wire Line
	5800 1150 6650 1150
Wire Wire Line
	5800 1900 6500 1900
Connection ~ 5800 1900
$EndSCHEMATC
