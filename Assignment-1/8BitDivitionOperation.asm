MOV AL, [2000]   ; Move the byte at memory address 2000 into AL
MOV BL, [2001]   ; Move the byte at memory address 2001 into BL
MOV CL, 00       ; Move the value 00 into CL (clear CL)
DIV BL           ; Divide AL by BL, and the quotient is stored in AL, and the remainder in AH
MOV [2002], AL   ; Move the quotient (in AL) to memory address 2002
HTL              ; Halt the program
