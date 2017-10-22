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
Sheet 9 9
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
L Conn_01x03 J18
U 1 1 59E762E9
P 6800 3500
F 0 "J18" H 6750 3150 50  0000 C CNN
F 1 "Conn_01x03" H 6750 3250 50  0000 C CNN
F 2 "" H 1150 150 50  0001 C CNN
F 3 "" H 1150 150 50  0001 C CNN
F 4 "68001-403HLF" H 6800 3500 60  0001 C CNN "manf#"
	1    6800 3500
	1    0    0    1   
$EndComp
$Comp
L GND #PWR046
U 1 1 59E764D5
P 6450 3750
F 0 "#PWR046" H 6500 3800 50  0001 C CNN
F 1 "GND" H 6500 3550 50  0000 C CNN
F 2 "" H 0   0   50  0001 C CNN
F 3 "" H 0   0   50  0001 C CNN
	1    6450 3750
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR047
U 1 1 59E76527
P 6450 3200
F 0 "#PWR047" H 100 200 50  0001 C CNN
F 1 "VDD" H 6500 3400 50  0000 C CNN
F 2 "" H 100 350 50  0001 C CNN
F 3 "" H 100 350 50  0001 C CNN
	1    6450 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 3400 5900 3400
Wire Wire Line
	6450 3200 6450 3500
Wire Wire Line
	6450 3500 6600 3500
Wire Wire Line
	6600 3600 6450 3600
Wire Wire Line
	6450 3600 6450 3750
Text HLabel 5900 3400 0    50   Output ~ 0
AIN
$EndSCHEMATC
