MOV AH, [2000]   ; AH <- [2000]
MOV BH, [2001]   ; BH <- [2002]
MOV CH, 00       ; CH <- 00
ADD AH, BH       ; AH <- AH + BH
JNC 100C         ; Jump to address 100C if there's no carry (JNC means Jump if No Carry)
INC CL           ; CH <- CH + 01
NEG AH  	 ; 2S complement of AH
MOV [2002], AH   ; [2002] <- AH
MOV [2003], CH   ; [2003] <- CH
HLT              ; Halt the program
