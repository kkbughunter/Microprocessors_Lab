MOV AL, [2000]   ; AL <- [2000]
MOV BL, [2001]   ; BL <- [2002]
MOV CL, 00       ; CL <- 00
ADD AL, BL       ; AL <- AL + BL
JNC 100C         ; Jump to address 100C if there's no carry (JNC means Jump if No Carry)
INC CL           ; CL <- CL + 01
MOV [2002], AL   ; [2002] <- AL
MOV [2003], CL   ; [2003] <- CL
HLT              ; Halt the program
