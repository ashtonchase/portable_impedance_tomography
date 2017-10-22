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
Sheet 3 9
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
L ADG1209 U3
U 1 1 59B6BC3D
P 5950 3850
AR Path="/59B584EE/59B6BC3D" Ref="U3"  Part="1" 
AR Path="/59B6F87D/59B6BC3D" Ref="U9"  Part="1" 
F 0 "U3" H 6200 4650 50  0000 C CNN
F 1 "ADG1209" H 5950 3850 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 300 1100 60  0001 C CNN
F 3 "" H 300 1100 60  0001 C CNN
F 4 "ADG1209YRUZ" H 5650 3100 30  0001 C CNN "manf#"
F 5 "Analog Devices" H 5950 3850 60  0001 C CNN "mfg"
	1    5950 3850
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5950 2050 5950 3050
Wire Wire Line
	6450 2400 6450 2250
Wire Wire Line
	6450 2250 5950 2250
Connection ~ 5950 2250
$Comp
L C C5
U 1 1 59B6C44C
P 6450 2550
AR Path="/59B584EE/59B6C44C" Ref="C5"  Part="1" 
AR Path="/59B6F87D/59B6C44C" Ref="C20"  Part="1" 
F 0 "C5" H 6600 2650 50  0000 L CNN
F 1 "0.1u" H 6600 2550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 38  -100 50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
F 4 "VJ0603V104ZXQPW1BC" H 6600 2500 30  0001 L CNN "manf#"
F 5 "VISHAY" H 6450 2550 30  0001 C CNN "mfg"
	1    6450 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2750 6450 2700
Wire Wire Line
	5950 4800 5950 4650
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
L Conn_Coaxial J1
U 1 1 59B6D676
P 9450 1250
AR Path="/59B584EE/59B6D676" Ref="J1"  Part="1" 
AR Path="/59B6F87D/59B6D676" Ref="J9"  Part="1" 
F 0 "J1" H 9550 1250 50  0000 L CNN
F 1 "UMC" H 9550 1150 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 -1450 50  0001 C CNN
F 3 "" H 1700 -1450 50  0001 C CNN
F 4 "1909763-1" H 9800 1050 50  0001 C CNN "manf#"
F 5 "TE" H 9450 1250 50  0001 C CNN "mfg"
	1    9450 1250
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
$Comp
L Conn_Coaxial J2
U 1 1 59C83377
P 9450 1900
AR Path="/59B584EE/59C83377" Ref="J2"  Part="1" 
AR Path="/59B6F87D/59C83377" Ref="J10"  Part="1" 
F 0 "J2" H 9550 1900 50  0000 L CNN
F 1 "UMC" H 9550 1800 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 -800 50  0001 C CNN
F 3 "" H 1700 -800 50  0001 C CNN
F 4 "1909763-1" H 9800 1700 50  0001 C CNN "manf#"
F 5 "TE" H 9450 1900 50  0001 C CNN "mfg"
	1    9450 1900
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J3
U 1 1 59C833B1
P 9450 2400
AR Path="/59B584EE/59C833B1" Ref="J3"  Part="1" 
AR Path="/59B6F87D/59C833B1" Ref="J11"  Part="1" 
F 0 "J3" H 9550 2400 50  0000 L CNN
F 1 "UMC" H 9550 2300 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 -300 50  0001 C CNN
F 3 "" H 1700 -300 50  0001 C CNN
F 4 "1909763-1" H 9800 2200 50  0001 C CNN "manf#"
F 5 "TE" H 9450 2400 50  0001 C CNN "mfg"
	1    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J4
U 1 1 59C833E5
P 9450 2950
AR Path="/59B584EE/59C833E5" Ref="J4"  Part="1" 
AR Path="/59B6F87D/59C833E5" Ref="J12"  Part="1" 
F 0 "J4" H 9550 2950 50  0000 L CNN
F 1 "UMC" H 9550 2850 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 250 50  0001 C CNN
F 3 "" H 1700 250 50  0001 C CNN
F 4 "1909763-1" H 9800 2750 50  0001 C CNN "manf#"
F 5 "TE" H 9450 2950 50  0001 C CNN "mfg"
	1    9450 2950
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J5
U 1 1 59C83419
P 9450 4150
AR Path="/59B584EE/59C83419" Ref="J5"  Part="1" 
AR Path="/59B6F87D/59C83419" Ref="J13"  Part="1" 
F 0 "J5" H 9550 4150 50  0000 L CNN
F 1 "UMC" H 9550 4050 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 1450 50  0001 C CNN
F 3 "" H 1700 1450 50  0001 C CNN
F 4 "1909763-1" H 9800 3950 50  0001 C CNN "manf#"
F 5 "TE" H 9450 4150 50  0001 C CNN "mfg"
	1    9450 4150
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J6
U 1 1 59C834C7
P 9450 4700
AR Path="/59B584EE/59C834C7" Ref="J6"  Part="1" 
AR Path="/59B6F87D/59C834C7" Ref="J14"  Part="1" 
F 0 "J6" H 9550 4700 50  0000 L CNN
F 1 "UMC" H 9550 4600 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 2000 50  0001 C CNN
F 3 "" H 1700 2000 50  0001 C CNN
F 4 "1909763-1" H 9800 4500 50  0001 C CNN "manf#"
F 5 "TE" H 9450 4700 50  0001 C CNN "mfg"
	1    9450 4700
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J7
U 1 1 59C834FF
P 9450 5200
AR Path="/59B584EE/59C834FF" Ref="J7"  Part="1" 
AR Path="/59B6F87D/59C834FF" Ref="J15"  Part="1" 
F 0 "J7" H 9550 5200 50  0000 L CNN
F 1 "UMC" H 9550 5100 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 2500 50  0001 C CNN
F 3 "" H 1700 2500 50  0001 C CNN
F 4 "1909763-1" H 9800 5000 50  0001 C CNN "manf#"
F 5 "TE" H 9450 5200 50  0001 C CNN "mfg"
	1    9450 5200
	1    0    0    -1  
$EndComp
$Comp
L Conn_Coaxial J8
U 1 1 59C8353B
P 9450 5800
AR Path="/59B584EE/59C8353B" Ref="J8"  Part="1" 
AR Path="/59B6F87D/59C8353B" Ref="J16"  Part="1" 
F 0 "J8" H 9550 5800 50  0000 L CNN
F 1 "UMC" H 9550 5700 50  0000 L CNN
F 2 "Connectors_Molex:Molex_Microcoaxial_RF" H 1700 3100 50  0001 C CNN
F 3 "" H 1700 3100 50  0001 C CNN
F 4 "1909763-1" H 9800 5600 50  0001 C CNN "manf#"
F 5 "TE" H 9450 5800 50  0001 C CNN "mfg"
	1    9450 5800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 59D8B402
P 6450 2750
AR Path="/59B584EE/59D8B402" Ref="#PWR08"  Part="1" 
AR Path="/59B6F87D/59D8B402" Ref="#PWR036"  Part="1" 
F 0 "#PWR036" H 50  -300 50  0001 C CNN
F 1 "GND" H 6500 2550 50  0000 C CNN
F 2 "" H 50  -50 50  0001 C CNN
F 3 "" H 50  -50 50  0001 C CNN
	1    6450 2750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 59D8B4EC
P 5950 4800
AR Path="/59B584EE/59D8B4EC" Ref="#PWR09"  Part="1" 
AR Path="/59B6F87D/59D8B4EC" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6000 4850 50  0001 C CNN
F 1 "GND" H 6000 4600 50  0000 C CNN
F 2 "" H 500 -250 50  0001 C CNN
F 3 "" H 500 -250 50  0001 C CNN
	1    5950 4800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 59D8B514
P 5450 5000
AR Path="/59B584EE/59D8B514" Ref="#PWR010"  Part="1" 
AR Path="/59B6F87D/59D8B514" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 5500 5050 50  0001 C CNN
F 1 "GND" H 5500 4800 50  0000 C CNN
F 2 "" H 0   -50 50  0001 C CNN
F 3 "" H 0   -50 50  0001 C CNN
	1    5450 5000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR011
U 1 1 59D8B5C2
P 5950 2050
AR Path="/59B584EE/59D8B5C2" Ref="#PWR011"  Part="1" 
AR Path="/59B6F87D/59D8B5C2" Ref="#PWR039"  Part="1" 
F 0 "#PWR039" H 0   -100 50  0001 C CNN
F 1 "VCC" H 6000 2250 50  0000 C CNN
F 2 "" H 0   50  50  0001 C CNN
F 3 "" H 0   50  50  0001 C CNN
	1    5950 2050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
