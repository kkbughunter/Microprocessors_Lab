User
    	MOV R0, #00
    	MOV A, #06
    	ADD A, #01
    	JNC LABEL
    	INC R0
LABEL: 	MOV DPTR, #4150
    	MOVX @DPTR, A
    	MOV A, R0
    	INC DPTR
    	MOVX @DPTR, A
HERE:   SJMP HERE