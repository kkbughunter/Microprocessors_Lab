MOV AL, [2000]   ; Move the byte at memory address 2000 into AL
MOV BL, [2001]   ; Move the byte at memory address 2001 into BL
MUL BL           ; Multiply AL by BL, and the result is stored in AX (the higher 16 bits) and DX (the lower 16 bits)
MOV [2002], AL   ; Move the value in AL to memory address 2002
HTL              ; Halt the program
