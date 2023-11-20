; To create a saw-tooth wave at the output of DAC 2.

MOV AL,00 	; START
OUT C8,AL 	; CHANGE
INC AL
JNZ CHANGE
JMP START