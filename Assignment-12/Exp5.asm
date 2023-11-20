; To initialise Port C as an input Port in Mode-0
MOV SI,1200
MOV AL,99
OUT C6,AL
IN AL,C4
MOV [SI],AL
HLT
