MOV R2, #03    
MOV A, #05      

CALL MULTIPLY   
CALL MULTIPLY    

MOV DPTR, #4150   
MOVX @DPTR, A   

SJMP HERE       

 MULTIPLY:
    MUL AB     
    RET        

HERE:   SJMP HERE   
