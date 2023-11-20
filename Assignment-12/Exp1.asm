; To initialise Port A as an input port in mode-0
MOV SI,1500H
MOV AL,90
OUT C6,AL
IN AL,C0
MOV [SI],AL
HLT
