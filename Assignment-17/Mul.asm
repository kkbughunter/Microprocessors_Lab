		MOV R2, #06       
		MOV A, #01   
		MUL AB 
		MOV DPTR, #4150   
		MOVX @DPTR, A   
		MOVX @DPTR+1, B    
		SJMP HERE   
HERE:   SJMP HERE  
