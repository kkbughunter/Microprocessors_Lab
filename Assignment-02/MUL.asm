MOV AX, [2000]   ; AX <- [2000]
MOV BX, [2002]   ; BX <- [2002]
MUL BX           ; AL <- AX * BX
MOV [2004], AX   ; [2004] <- AX
MOV AX, DX	 ; AX <- DX
MOV [2006], AX   ; [2006] <- AX
HTL              ; Halt the program