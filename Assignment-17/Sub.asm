MOV R0, #00   
MOV A, #06   
SUBB A, #01  
JNC LABEL_SUB    
DEC R0           

LABEL_SUB:        
MOV DPTR, #4150   
MOVX @DPTR, A      
MOV A, R0        
INC DPTR         
MOVX @DPTR, A   
SJMP HERE     

HERE:   SJMP HERE  
