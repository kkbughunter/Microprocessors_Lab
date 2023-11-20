; To interface the stepper motor with 8086 and run it in clockwise and anticlockwise directions.

MOV DI,1018		; START
MOV CL,04
MOV AL,[DI]		; VALUE
OUT C0,AL
MOV DX,MOVE
DEC DX			; CHANGE
JNZ CHANGE		; MOVE
INC DI
LOOP VALUE
JMP START