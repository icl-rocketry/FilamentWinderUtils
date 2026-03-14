%

; X - SLIDE
; A - Mandrel AWAY
; B - eye roll
; Y - feed



o1
;first program?
N10 G01 G94 F  3000.0  
;feed rate to 3000?
N11 (CADFIL VERSION 9.91)
N12 (05-MAR-26   14:38:24)
N13 (CONFIG IS FANUCWithSPF)
N14 (INPUT FILE NAME)
N15 (TEST.CTL)
N16 G90 
;absolute command
N17 F   3000.0 X -248.00 Y 172.00 B 0.00 
; Feed 3000, move X to limit, Y to some point of axis and eye roll 0
; start point for hoop wind
N18 M00
;M00 is program stop
N19 (Test001.pay IN PROGRESS, PV9.91) 

N20 M98 P2 L1 ;1*1 ;HOOP WIND;
; M98-subprogram call
; run P2, block o2, and loop once

N21 G90
;absolute command
N22 F   3000.0 X -344.47 Y 172.00 B 0.00
;feed 3000, moves x and y but not A?

N23 (Test002.pay IN PROGRESS, PV9.91)
;PV is program version

N24 M98 P3 L232 ;232*1
; M98 subprogram call
; P3, helical wind 232 times



N25 G90
;absolute command

N26 F   3000.0 X 248.00 Y 172.00 B 0.00
N27 (Test003.pay IN PROGRESS, PV9.91)
N28 M98 P4 L1 ;1*1
N55 (WIND FINISHED)
N29  M00
N30  M30




o2 G01 G91 G64 G94 N10 F  1000.0 A360.00
;subprogram o2, G01 linear interpolate, G91 increment command
;G64 cutting mode, blend into next move - INVESTIGATE THIS IN MARLIN
;G94 feed rate 1000, 
;A360 is move the mandrel (supposedly degrees)
N11 F  1000.0 A2.45 X0.50
; feed 1000, moves mandrel 2.45 and x 0.5
N12 F  1000.0 A44611.82 X495.68
; main hoop wind is here
N13 F  1000.0 A2.16 X-0.18
; moving bacck the other direction now
; perhaps for tie off or whatever 
N14 F  1000.0 A360.00      M99
;M99 is end of sub program
; another full rotation while the payout head stays in the same location
; maybe to fix fiber position







o3 G01 G91 G64 G94 N15 F  1802.5 A1.45 X26.82   B-40.28
; G01 linear interpoation
;G91 increment
;G64 blended cut
;G94 feed rate 1802.5
; Move A and X a bit as well as B



N16 F  1301.0 A1.55 X27.33   B-22.78
N17 F  1071.6 A1.24 X21.10   B-8.14
N18 F  1011.0 A1.68 X21.49   B-3.20
N19 F  1002.2 A2.63 X35.15   B-2.34
N20 F  1000.0 A7.41 X89.61   B-0.72
N21 F  1000.0 A39.64 X425.48
N22 F  1000.8 A4.77 X46.48 Y-1.92
N23 F  4717.4 A1.09 X0.90 Y-6.48  B0.69
N24 F  5238.8 A0.72 X0.71 Y-5.20
N25 F  6006.7 A0.39 X0.52 Y-3.78  B0.73
N26 F  5846.6 A2.33 X2.99 Y-21.63  B2.99
N27 F  5436.2 A2.89 X3.06 Y-22.13  B4.01
N28 F  3930.4 A5.63 X3.19 Y-23.11  B8.42
N29 F  2343.1 A15.65 X3.96 Y-28.67  B18.66
N30 F  1097.3 A58.63 X2.45 Y-17.77  B19.68
N31 F  1285.7 A48.86 X-5.48 Y39.71  B1.32
N32 F  3551.5 A17.13 X-22.25 Y90.98  B29.66
N33 F  1664.4 A1.60 X-32.09   B42.75
N34 F  1157.8 A1.70 X-30.18   B17.64
N35 F  1022.6 A1.56 X-22.79   B4.88
N36 F  1003.2 A2.07 X-26.81   B2.16
N37 F  1000.1 A4.56 X-52.10   B0.61
N38 F  1000.0 A22.89 X-259.70   B0.66
N39 F  1000.0 A24.02 X-251.49
N40 F  1080.1 A2.19 X-13.37 Y-5.53
N41 F  5016.8 A0.89 X-0.80 Y-5.82  B-0.86
N42 F  5546.6 A0.53 X-0.62 Y-4.45
N43 F  6303.3 A1.90 X-3.09 Y-22.42  B-2.64
N44 F  5188.7 A3.18 X-3.02 Y-21.86  B-4.55
N45 F  3829.0 A6.45 X-3.50 Y-25.36  B-9.62
N46 F  2381.0 A14.01 X-3.65 Y-26.39  B-16.80
N47 F  1092.3 A62.72 X-2.50 Y-18.11  B-20.81
N48 F  1572.0 A54.05 X9.17 Y66.37  B-4.09
N49 F  4333.0 A8.71 X13.03 Y63.57  B-18.03  M99






o4 G01 G91 G64 G94 N50 F  1000.0 A360.00
N51 F  1000.0 A2.45 X-0.50
N52 F  1000.0 A44161.82 X-490.68
N53 F  1000.0 A2.16 X0.18
N54 F  1000.0 A360.00      M99

%
