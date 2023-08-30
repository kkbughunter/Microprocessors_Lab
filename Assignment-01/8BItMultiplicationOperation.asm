MOV AL, [2000]   ; AL <- [2000]
MOV BL, [2001]   ; BL <- [2001]
MUL BL           ; AL <- AL * BL
MOV [2002], AH   ; [2002] <- AL
MOV [2003], AL   ; [2003] <- CL
HTL              ; Halt the program
