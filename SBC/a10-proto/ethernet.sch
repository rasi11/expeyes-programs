EESchema Schematic File Version 2  date Thu 30 May 2013 05:35:49 PM IST
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
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
LIBS:A10-plus
LIBS:myconns
LIBS:a10-sbc-cache
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date "30 may 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 1900 2300 0    40   Input ~ 0
EMDC
Text GLabel 1900 2400 0    40   Input ~ 0
EMDIO
Text GLabel 1900 2500 0    40   Input ~ 0
ETXEN
Text GLabel 1900 2600 0    40   Input ~ 0
ETXCK
Text GLabel 1900 2700 0    40   Input ~ 0
ECRS
Text GLabel 1900 2800 0    40   Input ~ 0
ECOL
Text GLabel 1100 2900 0    40   Input ~ 0
ETXERR
Text GLabel 1900 1200 0    40   Input ~ 0
ERXD3
Text GLabel 1900 1300 0    40   Input ~ 0
ERXD2
Text GLabel 1900 1400 0    40   Input ~ 0
ERXD1
Text GLabel 1900 1500 0    40   Input ~ 0
ERXD0
Text GLabel 1900 1600 0    40   Input ~ 0
ETXD3
Text GLabel 1900 1700 0    40   Input ~ 0
ETXD2
Text GLabel 1900 1900 0    40   Input ~ 0
ETXD0
Text GLabel 1900 2000 0    40   Input ~ 0
ERXCK
Text GLabel 1900 2100 0    40   Input ~ 0
ERXERR
Text GLabel 1900 2200 0    40   Input ~ 0
ERXDV
Text GLabel 1900 1800 0    40   Input ~ 0
ETXD1
$Comp
L RTL8201CP U11
U 1 1 51597EA2
P 2650 2450
F 0 "U11" H 3000 3850 50  0000 C CNN
F 1 "RTL8201CP" H 2450 3850 50  0000 C CNN
F 2 "MODULE" H 2650 2450 50  0001 C CNN
F 3 "~" H 2650 2450 50  0001 C CNN
	1    2650 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1200 3450 1200
Wire Wire Line
	3450 1200 3450 700 
Wire Wire Line
	3450 700  3850 700 
$Comp
L C C136
U 1 1 51599A05
P 4050 1300
F 0 "C136" V 3950 1400 50  0000 L CNN
F 1 "18pF" V 3950 1050 50  0000 L CNN
	1    4050 1300
	0    -1   -1   0   
$EndComp
Connection ~ 3750 1300
Wire Wire Line
	4250 700  4250 1300
Wire Wire Line
	4250 1000 4350 1000
Connection ~ 4250 1000
$Comp
L GND #PWR068
U 1 1 51599A3B
P 4350 1000
F 0 "#PWR068" H 4350 1000 30  0001 C CNN
F 1 "GND" H 4350 930 30  0001 C CNN
	1    4350 1000
	0    -1   -1   0   
$EndComp
$Comp
L C C135
U 1 1 51599A5C
P 4050 700
F 0 "C135" V 4100 800 50  0000 L CNN
F 1 "18pF" V 4100 450 50  0000 L CNN
	1    4050 700 
	0    -1   -1   0   
$EndComp
$Comp
L R R39
U 1 1 5159A0EF
P 3800 2650
F 0 "R39" V 3850 2400 50  0000 C CNN
F 1 "2k2" V 3800 2650 50  0000 C CNN
	1    3800 2650
	0    -1   -1   0   
$EndComp
$Comp
L R R40
U 1 1 5159A133
P 3800 2750
F 0 "R40" V 3850 2500 50  0000 C CNN
F 1 "5k1" V 3800 2750 50  0000 C CNN
	1    3800 2750
	0    -1   -1   0   
$EndComp
$Comp
L R R41
U 1 1 5159A139
P 3800 2850
F 0 "R41" V 3850 2600 50  0000 C CNN
F 1 "5k1" V 3800 2850 50  0000 C CNN
	1    3800 2850
	0    -1   -1   0   
$EndComp
$Comp
L R R35
U 1 1 5159A227
P 3800 1750
F 0 "R35" V 3850 1500 50  0000 C CNN
F 1 "5k1" V 3800 1750 50  0000 C CNN
	1    3800 1750
	0    -1   -1   0   
$EndComp
$Comp
L R R36
U 1 1 5159A22D
P 3800 1850
F 0 "R36" V 3850 1600 50  0000 C CNN
F 1 "5k1" V 3800 1850 50  0000 C CNN
	1    3800 1850
	0    -1   -1   0   
$EndComp
$Comp
L R R37
U 1 1 5159A233
P 3800 1950
F 0 "R37" V 3850 1700 50  0000 C CNN
F 1 "5k1" V 3800 1950 50  0000 C CNN
	1    3800 1950
	0    -1   -1   0   
$EndComp
$Comp
L R R38
U 1 1 5159A239
P 3800 2050
F 0 "R38" V 3850 1800 50  0000 C CNN
F 1 "5k1" V 3800 2050 50  0000 C CNN
	1    3800 2050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 1650 3550 1650
Wire Wire Line
	3550 1750 3400 1750
Wire Wire Line
	3400 1850 3550 1850
Wire Wire Line
	3550 1950 3400 1950
Wire Wire Line
	3400 2050 3550 2050
Wire Wire Line
	3400 2650 3550 2650
Wire Wire Line
	3550 2750 3400 2750
Wire Wire Line
	3400 2850 3550 2850
$Comp
L R R34
U 1 1 5159ABE0
P 3800 1650
F 0 "R34" V 3850 1400 50  0000 C CNN
F 1 "5k1" V 3800 1650 50  0000 C CNN
	1    3800 1650
	0    -1   -1   0   
$EndComp
$Comp
L INDUCTOR L1
U 1 1 515ADE75
P 1450 4700
F 0 "L1" V 1400 4700 40  0000 C CNN
F 1 "Bead / SM0603" V 1550 4700 40  0000 C CNN
	1    1450 4700
	0    -1   -1   0   
$EndComp
Text GLabel 1150 4700 0    60   Input ~ 0
3.3V
Text Label 1950 4700 0    60   ~ 0
ETHAVDD
Wire Wire Line
	1750 4700 2250 4700
$Comp
L C C140
U 1 1 515ADE9A
P 1800 4900
F 0 "C140" H 1550 5000 50  0000 L CNN
F 1 "10u" H 1600 4800 50  0000 L CNN
	1    1800 4900
	-1   0    0    1   
$EndComp
Connection ~ 1800 4700
Wire Wire Line
	1900 3200 1900 3300
Wire Wire Line
	1900 3300 1450 3300
Text Label 1450 3300 0    60   ~ 0
3.3V
Text Label 1450 3100 0    60   ~ 0
ETHAVDD
Wire Wire Line
	1900 3100 1450 3100
Wire Wire Line
	4050 1650 4250 1650
Wire Wire Line
	4250 1650 4250 2050
Wire Wire Line
	4250 2050 4050 2050
Wire Wire Line
	4050 1950 4250 1950
Connection ~ 4250 1950
Wire Wire Line
	4050 1850 4600 1850
Connection ~ 4250 1850
Wire Wire Line
	4050 1750 4250 1750
Connection ~ 4250 1750
Text Label 4350 1850 0    60   ~ 0
3.3V
Wire Wire Line
	4050 2650 4250 2650
Wire Wire Line
	4250 2650 4250 2850
Wire Wire Line
	4250 2850 4050 2850
Wire Wire Line
	4050 2750 4350 2750
Connection ~ 4250 2750
$Comp
L GND #PWR069
U 1 1 515AE043
P 4350 2750
F 0 "#PWR069" H 4350 2750 30  0001 C CNN
F 1 "GND" H 4350 2680 30  0001 C CNN
	1    4350 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 2300 3400 2500
Wire Wire Line
	3400 2400 3500 2400
Connection ~ 3400 2400
$Comp
L GND #PWR070
U 1 1 515AE09C
P 3500 2400
F 0 "#PWR070" H 3500 2400 30  0001 C CNN
F 1 "GND" H 3500 2330 30  0001 C CNN
	1    3500 2400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3600 3400 3600
Wire Wire Line
	3400 3700 3650 3700
Wire Wire Line
	3650 3700 3650 3800
Wire Wire Line
	3650 3800 4300 3800
Wire Wire Line
	3400 3800 3550 3800
Wire Wire Line
	3550 3800 3550 3900
Wire Wire Line
	3550 3900 4300 3900
Wire Wire Line
	3400 3900 3400 4100
Wire Wire Line
	3400 4100 4300 4100
Wire Wire Line
	4300 3700 3800 3700
Text Label 3800 3700 0    60   ~ 0
PFWBOUT
Text Label 1500 3600 0    60   ~ 0
PFWBOUT
Wire Wire Line
	1150 3600 1900 3600
$Comp
L INDUCTOR L5
U 1 1 515AE1D6
P 1600 3450
F 0 "L5" V 1550 3650 40  0000 C CNN
F 1 "bead /SM0603" V 1700 3450 40  0000 C CNN
	1    1600 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1300 3450 1150 3450
Wire Wire Line
	1150 3450 1150 3600
$Comp
L C C138
U 1 1 515AE226
P 1150 3800
F 0 "C138" H 950 3900 50  0000 L CNN
F 1 "10u" H 1000 3700 50  0000 L CNN
	1    1150 3800
	-1   0    0    1   
$EndComp
$Comp
L C C139
U 1 1 515AE245
P 1500 3800
F 0 "C139" H 1300 3900 50  0000 L CNN
F 1 ".22u" H 1350 3700 50  0000 L CNN
	1    1500 3800
	-1   0    0    1   
$EndComp
Connection ~ 1500 3600
Connection ~ 1150 3600
Wire Wire Line
	1900 4000 1150 4000
$Comp
L GND #PWR071
U 1 1 515AE282
P 1300 4100
F 0 "#PWR071" H 1300 4100 30  0001 C CNN
F 1 "GND" H 1300 4030 30  0001 C CNN
	1    1300 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 4100 1300 4000
Connection ~ 1300 4000
$Comp
L GND #PWR072
U 1 1 515AE2C0
P 1800 5200
F 0 "#PWR072" H 1800 5200 30  0001 C CNN
F 1 "GND" H 1800 5130 30  0001 C CNN
	1    1800 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 5200 1800 5100
Wire Wire Line
	1100 2900 1900 2900
$Comp
L C C137
U 1 1 515AE348
P 1200 3100
F 0 "C137" H 1250 3250 50  0000 L CNN
F 1 ".22u" H 1300 3000 50  0000 L CNN
	1    1200 3100
	-1   0    0    1   
$EndComp
$Comp
L R R42
U 1 1 515AE399
P 1200 2650
F 0 "R42" V 1300 2700 50  0000 C CNN
F 1 "5k1" V 1200 2650 50  0000 C CNN
	1    1200 2650
	1    0    0    -1  
$EndComp
Connection ~ 1200 2900
Wire Wire Line
	1200 2400 1200 2300
Wire Wire Line
	1200 2300 1050 2300
Text Label 1050 2300 0    60   ~ 0
3.3V
$Comp
L GND #PWR073
U 1 1 515AE3E5
P 1200 3300
F 0 "#PWR073" H 1200 3300 30  0001 C CNN
F 1 "GND" H 1200 3230 30  0001 C CNN
	1    1200 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3800 1900 4000
Connection ~ 1900 3900
Connection ~ 1500 4000
$Comp
L GND #PWR074
U 1 1 515AE490
P 4300 4200
F 0 "#PWR074" H 4300 4200 30  0001 C CNN
F 1 "GND" H 4300 4130 30  0001 C CNN
	1    4300 4200
	0    1    1    0   
$EndComp
$Comp
L R R43
U 1 1 515AE4AA
P 4200 3050
F 0 "R43" V 4250 2800 50  0000 C CNN
F 1 "5k1" V 4200 3050 50  0000 C CNN
	1    4200 3050
	0    -1   -1   0   
$EndComp
$Comp
L R R44
U 1 1 515AE4B0
P 4200 3150
F 0 "R44" V 4250 2900 50  0000 C CNN
F 1 "5k1" V 4200 3150 50  0000 C CNN
	1    4200 3150
	0    -1   -1   0   
$EndComp
$Comp
L R R45
U 1 1 515AE4B6
P 4200 3250
F 0 "R45" V 4250 3000 50  0000 C CNN
F 1 "5k1" V 4200 3250 50  0000 C CNN
	1    4200 3250
	0    -1   -1   0   
$EndComp
$Comp
L R R46
U 1 1 515AE4BC
P 4200 3350
F 0 "R46" V 4250 3100 50  0000 C CNN
F 1 "5k1" V 4200 3350 50  0000 C CNN
	1    4200 3350
	0    -1   -1   0   
$EndComp
$Comp
L R R47
U 1 1 515AE4C2
P 4200 3450
F 0 "R47" V 4250 3200 50  0000 C CNN
F 1 "5k1" V 4200 3450 50  0000 C CNN
	1    4200 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3400 3450 3950 3450
Wire Wire Line
	3950 3350 3400 3350
Wire Wire Line
	3400 3250 3950 3250
Wire Wire Line
	3950 3150 3400 3150
Wire Wire Line
	3400 3050 3950 3050
Wire Wire Line
	4450 3150 4650 3150
Wire Wire Line
	4650 3450 4450 3450
Wire Wire Line
	4650 3350 4450 3350
Wire Wire Line
	4450 3250 4750 3250
Connection ~ 4650 3250
$Comp
L GND #PWR075
U 1 1 515AE755
P 4750 3250
F 0 "#PWR075" H 4750 3250 30  0001 C CNN
F 1 "GND" H 4750 3180 30  0001 C CNN
	1    4750 3250
	0    -1   -1   0   
$EndComp
Text Label 4500 3450 0    60   ~ 0
3.3V
Wire Wire Line
	4450 3050 4650 3050
Wire Wire Line
	4650 3050 4650 3350
Connection ~ 4650 3150
$Comp
L R R49
U 1 1 515AE7FB
P 3900 4600
F 0 "R49" V 3950 4350 50  0000 C CNN
F 1 "1k" V 3900 4600 50  0000 C CNN
	1    3900 4600
	0    -1   -1   0   
$EndComp
$Comp
L R R48
U 1 1 515AE801
P 3900 4400
F 0 "R48" V 3950 4150 50  0000 C CNN
F 1 "1k" V 3900 4400 50  0000 C CNN
	1    3900 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4150 4400 4300 4400
Wire Wire Line
	4300 4600 4150 4600
Wire Wire Line
	4300 4500 3300 4500
Wire Wire Line
	3650 4400 3300 4400
Wire Wire Line
	3300 4600 3650 4600
Text Label 3450 3050 0    60   ~ 0
LED4
Text Label 3300 4400 0    60   ~ 0
LED0
Text Label 3300 4600 0    60   ~ 0
3.3V
Text Label 3450 3450 0    60   ~ 0
LED0
$Comp
L GND #PWR076
U 1 1 515C00E8
P 6000 4500
F 0 "#PWR076" H 6000 4500 30  0001 C CNN
F 1 "GND" H 6000 4430 30  0001 C CNN
	1    6000 4500
	0    -1   -1   0   
$EndComp
Text Label 3850 4300 0    60   ~ 0
3.3V
Wire Wire Line
	3850 4300 4300 4300
Text Label 3300 4500 0    60   ~ 0
LED4
NoConn ~ 3400 1400
Text Label 3500 3600 0    60   ~ 0
TX+
Text Label 3500 3700 0    60   ~ 0
TX-
Text Label 3600 3900 0    60   ~ 0
RX+
Text Label 3550 4100 0    60   ~ 0
RX-
$Comp
L RJ45-HANRUN J8
U 1 1 51A4CD0A
P 5400 4100
F 0 "J8" H 5600 4700 60  0000 L CNN
F 1 "RJ45-HANRUN" H 5350 4700 60  0000 R CNN
	1    5400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4000 4150 4000
Wire Wire Line
	4150 4000 4150 3700
Connection ~ 4150 3700
NoConn ~ 6000 4600
$Comp
L XTL-SMD X3
U 1 1 51A6DE19
P 3650 1050
F 0 "X3" H 3700 1150 60  0000 C CNN
F 1 "25M" H 3700 850 30  0000 C CNN
	1    3650 1050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 1250 3750 1350
Wire Wire Line
	3650 800  3650 700 
Connection ~ 3650 700 
$Comp
L GND #PWR077
U 1 1 51A6DEEB
P 3750 800
F 0 "#PWR077" H 3750 800 30  0001 C CNN
F 1 "GND" H 3750 730 30  0001 C CNN
	1    3750 800 
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR078
U 1 1 51A6DEF1
P 3650 1250
F 0 "#PWR078" H 3650 1250 30  0001 C CNN
F 1 "GND" H 3650 1180 30  0001 C CNN
	1    3650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 1300 3400 1350
Wire Wire Line
	3400 1350 3750 1350
Wire Wire Line
	3850 1300 3750 1300
$EndSCHEMATC