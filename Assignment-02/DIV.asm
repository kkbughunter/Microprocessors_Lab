MOV DX, 0000     ; DX <- 00
MOV AX, [2000]   ; AX <- [2000]
MOV BX, [2002]   ; BX <- [2002]
DIV BX           ; AX <- AX / BX
MOV [2004], AX   ; [2004] <- AX (quotient)
MOV [2006], DX   ; [2006] <- DX (remainder)
HTL              ; Halt the program