ASSUME CS:CODE, DS:DATA
DATA SEGMENT
     day db 01 dup(?)
     month db 01 dup(?)
     year db 02 dup(?)
DATA EDNS
CODE SEGMENT
     org 0100h
START:
     mov ax,DATA
     mov ds,ax

     mov ah,2ah
     int 21h
     mov si,offset day
     mov [si],dl
     mov si,offset month
     mov [si],dh
     mov si,offset year
     mov [si],cx

     mov ah,4ch
     int 21h
CODE ENDS
END START