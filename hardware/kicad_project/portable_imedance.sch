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
$Descr USLetter 11000 8500
encoding utf-8
Sheet 1 7
Title "Portable Impedance Tomography"
Date "2017-09-10"
Rev "NEW"
Comp "Ashton Johnson"
Comment1 "University of Alabama in Huntsville"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2950 1400 1000 1400
U 59B584EA
F0 "AD5933" 50
F1 "ad5933.sch" 50
F2 "SDA" B L 2950 1950 50 
F3 "SCL" B L 2950 2050 50 
F4 "MCLK" I L 2950 2250 50 
F5 "VIN" I R 3950 2250 50 
F6 "VOUT" O R 3950 1700 50 
$EndSheet
$Sheet
S 6250 1400 1400 1400
U 59B584EE
F0 "Receive Mux" 50
F1 "rx_mux.sch" 50
F2 "SEL0" I L 6250 2250 50 
F3 "SEL1" I L 6250 2350 50 
F4 "DRIVE" B L 6250 1700 50 
F5 "SENSE" I L 6250 1800 50 
F6 "EN" I L 6250 2500 50 
F7 "SHIELD_DRIVE" O L 6250 1550 50 
$EndSheet
$Sheet
S 2950 5850 2050 1200
U 59B5850F
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 4200 1400 1250 1400
U 59B59BDF
F0 "AD5933 Front End" 50
F1 "front_end.sch" 50
F2 "VOUT" I L 4200 1700 50 
F3 "VIN" I L 4200 2250 50 
F4 "DRIVE+" O R 5450 1700 50 
F5 "DRIVE-" O R 5450 2000 50 
F6 "SHIELD_DRIVE" O R 5450 1550 50 
F7 "SENSE+" I R 5450 1800 50 
F8 "SENSE-" I R 5450 2100 50 
$EndSheet
Wire Wire Line
	3950 1700 4200 1700
Wire Wire Line
	4200 2250 3950 2250
Wire Wire Line
	5450 1700 6250 1700
Wire Wire Line
	6250 1800 5450 1800
Wire Wire Line
	5450 2000 5800 2000
Wire Wire Line
	5800 2000 5800 3650
Wire Wire Line
	5800 3650 6250 3650
Wire Wire Line
	6250 3750 5700 3750
Wire Wire Line
	5700 3750 5700 2100
Wire Wire Line
	5700 2100 5450 2100
$Sheet
S 1200 1400 950  1400
U 59B68905
F0 "Contoller Interface" 50
F1 "ctrl_if.sch" 50
F2 "SDA" B R 2150 1950 50 
F3 "SCL" B R 2150 2050 50 
F4 "SEL0" O R 2150 2250 50 
F5 "SEL1" O R 2150 2350 50 
F6 "PD" O R 2150 2550 50 
$EndSheet
Wire Wire Line
	2950 1950 2150 1950
Wire Wire Line
	2950 2050 2150 2050
Wire Wire Line
	2150 2550 2350 2550
Wire Wire Line
	2350 2550 2350 3350
Wire Wire Line
	1900 3350 2350 3350
Wire Wire Line
	2350 3350 3600 3350
Text GLabel 1900 3350 0    50   Output ~ 0
POWER_DOWN
Wire Wire Line
	2150 2250 2600 2250
Wire Wire Line
	2600 2250 2600 4200
Wire Wire Line
	2600 4200 5950 4200
Wire Wire Line
	5950 4200 6250 4200
Wire Wire Line
	6250 2250 5950 2250
Wire Wire Line
	5950 2250 5950 4200
Connection ~ 5950 4200
Wire Wire Line
	2500 4300 6050 4300
Wire Wire Line
	6050 4300 6250 4300
Wire Wire Line
	2500 2350 2150 2350
Wire Wire Line
	6250 2350 6050 2350
Connection ~ 6050 4300
$Sheet
S 6250 3350 1400 1400
U 59B6F87D
F0 "Transmit Mux" 50
F1 "rx_mux.sch" 50
F2 "SEL0" I L 6250 4200 50 
F3 "SEL1" I L 6250 4300 50 
F4 "DRIVE" B L 6250 3650 50 
F5 "SENSE" I L 6250 3750 50 
F6 "EN" I L 6250 4450 50 
F7 "SHIELD_DRIVE" O L 6250 3500 50 
$EndSheet
Wire Wire Line
	6050 2350 6050 4300
Wire Wire Line
	2500 4300 2500 2350
Wire Wire Line
	5450 1550 6150 1550
Wire Wire Line
	6150 1550 6250 1550
Wire Wire Line
	6250 3500 6150 3500
Wire Wire Line
	6150 3500 6150 1550
Connection ~ 6150 1550
Wire Wire Line
	5550 2500 5550 3350
Wire Wire Line
	5550 3350 5550 4450
Wire Wire Line
	5550 2500 6250 2500
Wire Wire Line
	5550 4450 6250 4450
Connection ~ 5550 3350
$Comp
L 74AHC1G14 U?
U 1 1 59B73F98
P 3900 3350
F 0 "U?" H 3900 3650 50  0000 C CNN
F 1 "74AHC1G14" H 3900 3550 50  0000 C CNN
F 2 "" H 150 -200 50  0001 C CNN
F 3 "" H 150 -200 50  0001 C CNN
	1    3900 3350
	1    0    0    -1  
$EndComp
Connection ~ 2350 3350
Wire Wire Line
	5550 3350 4150 3350
$EndSCHEMATC
