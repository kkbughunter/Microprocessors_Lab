ASSUME DS:DATA,CS:CODE
DATA SEGMENT
	count = 5
	message db "THIS IS STRING$"
DATA ENDS
CODE SEGMENT
	org 0100h
START
	mov ax,DATA
	mov ds,ax

	mov ah,9
	mov dx,offset message
	int 21h

	mov ah,4ch
	int 21h
CODE ENDS 
END START