MOV AL, [2000]   ; Move the byte at memory address 2000 into AL
MOV BL, [2001]   ; Move the byte at memory address 2001 into BL
MOV CL, 00       ; Move the value 00 into CL (clear CL)
SUB AL, BL       ; Subtract the value in BL from AL and store the result in AL
JN LABLE         ; Jump to the label LABLE if the result is negative (JN means Jump if Negative)
INC CL           ; Increment the value in CL by 1
NEG AL           ; Negate (change the sign of) the value in AL
MOV [2002], AL   ; Move the value in AL to memory address 2002
MOV [2003], CL   ; Move the value in CL to memory address 2003
HTL              ; Halt the program
