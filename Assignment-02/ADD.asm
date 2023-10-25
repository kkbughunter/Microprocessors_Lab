MOV AX, [2000]   ; AX <- [2000]
MOV BX, [2002]   ; BX <- [2002]
MOV CH, 00       ; CH <- 00
ADD AX, BX       ; AX <- AX + BX
JNC 100C         ; Jump to address 100C if there's no carry (JNC means Jump if No Carry)
INC CH           ; CH <- CH + 01
MOV [2004], AX   ; [2004] <- AX
MOV [2006], CH   ; [2006] <- CH
HLT              ; Halt the program