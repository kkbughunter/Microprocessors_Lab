MOV AH, 00       ; AH <- 00
MOV AL, [2000]   ; AL <- [2000]
MOV BL, [2001]   ; BL <- [2001]
DIV BL           ; AX <- AL / BL
MOV [2002], AL   ; [2002] <- AL (quotient)
MOV [2003], AH   ; [2003] <- AH (remainder)
HTL              ; Halt the program
