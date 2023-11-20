;To initialise Port A as input Port and Port B as Output port in mode-0
MOV AL,90H
OUT C6,AL
IN AL,C0
OUT C2,AL
HLT
