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
Sheet 1 9
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
S 8050 1400 1400 1400
U 59B584EE
F0 "Receive Mux" 50
F1 "rx_mux.sch" 50
F2 "SEL0" I L 8050 2250 50 
F3 "SEL1" I L 8050 2350 50 
F4 "DRIVE" B L 8050 1700 50 
F5 "SENSE" I L 8050 1800 50 
F6 "EN" I L 8050 2500 50 
F7 "SHIELD_DRIVE" O L 8050 1550 50 
$EndSheet
$Sheet
S 8050 5100 2050 1200
U 59B5850F
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 5050 1400 1250 1400
U 59B59BDF
F0 "AD5933 Front End" 50
F1 "front_end.sch" 50
F2 "VOUT" I L 5050 1700 50 
F3 "VIN" I L 5050 2250 50 
F4 "DRIVE_P" O R 6300 1700 50 
F5 "DRIVE_N" O R 6300 2000 50 
F6 "SHIELD_DRIVE" O R 6300 1550 50 
F7 "SENSE_P" I R 6300 1800 50 
F8 "SENSE_N" I R 6300 2100 50 
F9 "EN" I L 5050 2550 50 
$EndSheet
Wire Wire Line
	6300 2000 6650 2000
Wire Wire Line
	6650 2000 6650 3650
Wire Wire Line
	6550 3750 6550 2100
Wire Wire Line
	6550 2100 6300 2100
Wire Wire Line
	2700 1950 2950 1950
Wire Wire Line
	2800 2050 2950 2050
Wire Wire Line
	3350 3350 6400 3350
Wire Wire Line
	2900 4200 8050 4200
Wire Wire Line
	8050 2250 7750 2250
Wire Wire Line
	7750 2250 7750 4200
Connection ~ 7750 4200
Wire Wire Line
	3000 4300 8050 4300
Wire Wire Line
	8050 2350 7850 2350
Connection ~ 7850 4300
$Sheet
S 8050 3350 1400 1400
U 59B6F87D
F0 "Transmit Mux" 50
F1 "rx_mux.sch" 50
F2 "SEL0" I L 8050 4200 50 
F3 "SEL1" I L 8050 4300 50 
F4 "DRIVE" B L 8050 3650 50 
F5 "SENSE" I L 8050 3750 50 
F6 "EN" I L 8050 4450 50 
F7 "SHIELD_DRIVE" O L 8050 3500 50 
$EndSheet
Wire Wire Line
	7850 2350 7850 4300
Wire Wire Line
	7950 3500 8050 3500
Wire Wire Line
	7950 1300 7950 3500
Connection ~ 7950 1550
Wire Wire Line
	6400 2500 6400 4450
Wire Wire Line
	6400 2500 8050 2500
Wire Wire Line
	6400 4450 8050 4450
Connection ~ 6400 3350
$Sheet
S 1200 6150 900  1400
U 59C68715
F0 "Cypress BLE Headers" 50
F1 "cypress_headers.sch" 50
F2 "SDA" B R 2100 6550 50 
F3 "SCL" B R 2100 6650 50 
F4 "SEL0" O R 2100 6850 50 
F5 "SEL1" O R 2100 6950 50 
F6 "EN" O R 2100 7100 50 
F7 "P2.1" I R 2100 7400 50 
$EndSheet
$Sheet
S 1200 4600 900  1350
U 59C6AC09
F0 "Pmod 2x6 Header" 50
F1 "pmod.sch" 50
F2 "SDA" B R 2100 5100 50 
F3 "SCL" B R 2100 5200 50 
F4 "SEL0" O R 2100 5500 50 
F5 "SEL1" O R 2100 5600 50 
F6 "EN" O R 2100 5750 50 
$EndSheet
Wire Wire Line
	2700 1950 2700 6550
Wire Wire Line
	2700 5100 2100 5100
Wire Wire Line
	2100 5200 2800 5200
Wire Wire Line
	2800 2050 2800 6650
Wire Wire Line
	3000 5600 2100 5600
Wire Wire Line
	2100 5500 2900 5500
Wire Wire Line
	2900 4200 2900 6850
Wire Wire Line
	3000 4300 3000 6950
Wire Wire Line
	2100 5750 3350 5750
Wire Wire Line
	3350 3350 3350 7100
Wire Wire Line
	2700 6550 2100 6550
Connection ~ 2700 5100
Wire Wire Line
	2800 6650 2100 6650
Connection ~ 2800 5200
Wire Wire Line
	2900 6850 2100 6850
Connection ~ 2900 5500
Wire Wire Line
	3000 6950 2100 6950
Connection ~ 3000 5600
Wire Wire Line
	3350 7100 2100 7100
Connection ~ 3350 5750
$Comp
L Conn_01x02 J20
U 1 1 59C70A2D
P 4250 1500
F 0 "J20" V 4250 1300 50  0000 R CNN
F 1 "Conn_01x02" V 4150 1300 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H -150 -200 50  0001 C CNN
F 3 "" H -150 -200 50  0001 C CNN
	1    4250 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 1700 3950 1700
Wire Wire Line
	4350 1700 5050 1700
$Comp
L Conn_01x02 J21
U 1 1 59C7114D
P 4250 2050
F 0 "J21" V 4250 1850 50  0000 R CNN
F 1 "Conn_01x02" V 4150 1850 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H -150 350 50  0001 C CNN
F 3 "" H -150 350 50  0001 C CNN
	1    4250 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4250 2250 3950 2250
Wire Wire Line
	4350 2250 5050 2250
$Comp
L Conn_01x02 J25
U 1 1 59C717B8
P 6950 3950
F 0 "J25" V 6950 3750 50  0000 R CNN
F 1 "Conn_01x02" V 6850 3750 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2550 2250 50  0001 C CNN
F 3 "" H 2550 2250 50  0001 C CNN
	1    6950 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	6550 3750 6950 3750
Wire Wire Line
	7050 3750 8050 3750
$Comp
L Conn_01x02 J24
U 1 1 59C72087
P 6950 3450
F 0 "J24" V 6950 3250 50  0000 R CNN
F 1 "Conn_01x02" V 6850 3250 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2550 1750 50  0001 C CNN
F 3 "" H 2550 1750 50  0001 C CNN
	1    6950 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6650 3650 6950 3650
Wire Wire Line
	7050 3650 8050 3650
$Comp
L Conn_01x02 J23
U 1 1 59C73098
P 6950 2000
F 0 "J23" V 6950 1800 50  0000 R CNN
F 1 "Conn_01x02" V 6850 1800 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2550 300 50  0001 C CNN
F 3 "" H 2550 300 50  0001 C CNN
	1    6950 2000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6300 1800 6950 1800
Wire Wire Line
	7050 1800 8050 1800
$Comp
L Conn_01x02 J22
U 1 1 59C730A0
P 6950 1500
F 0 "J22" V 6950 1300 50  0000 R CNN
F 1 "Conn_01x02" V 6850 1300 50  0000 R CNN
F 2 "Socket_Strips:Socket_Strip_Straight_1x02_Pitch2.54mm" H 2550 -200 50  0001 C CNN
F 3 "" H 2550 -200 50  0001 C CNN
	1    6950 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1700 6950 1700
Wire Wire Line
	7050 1700 8050 1700
Wire Wire Line
	6400 1550 6400 1300
Wire Wire Line
	6400 1300 7950 1300
Wire Wire Line
	6300 1550 6400 1550
Wire Wire Line
	7950 1550 8050 1550
Wire Wire Line
	4450 3350 4450 2550
Wire Wire Line
	4450 2550 5050 2550
Connection ~ 4450 3350
$Sheet
S 4100 7100 700  450 
U 59E76106
F0 "Auxiliary Analog Connector" 50
F1 "auxconn.sch" 50
F2 "AIN" O L 4100 7400 50 
$EndSheet
Wire Wire Line
	4100 7400 2100 7400
$EndSCHEMATC
