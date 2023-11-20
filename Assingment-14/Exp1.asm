; Read a Key from the Keyboard and store it in one memory location.

MOV BX,1100
IN AL,C2        ; LOOP
TEST  AL,07
JZ LOOP
MOV AL,40
OUT C2,AL
IN AL,C0
MOV [BX],AL
HLT
