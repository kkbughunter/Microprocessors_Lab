ASSUME CS:CODE, DS:DATA
DATA SEGMENT
     org 00h
     x dd 20.10
     org 10h
     y dd 30.39
     org 20h
     sum dd ?
DATA ENDS
CODE SEGMENT
START:
     mov ax,DATA
     mov ds,ax

     finit
     fld x
     fld y
     fadd st(0),st(1)
     fst sum

     mov ah,4ch
     int 21h
CODE ENDS
END START