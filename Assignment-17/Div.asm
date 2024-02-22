		MOV A, #06    
		MOV B, #02   
		DIV AB  
		MOV DPTR, #4150  
		MOVX @DPTR, A     
		MOVX @DPTR+1, B  
		SJMP HERE   

HERE:   SJMP HERE   
