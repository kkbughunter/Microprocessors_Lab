;To verify the working of 8255 in Mode-1
MOV AL,B4
OUT C6,AL
IN AL,C4
AND AL,20
JZ read
IN AL,C0
OUT C2,AL
HLT
