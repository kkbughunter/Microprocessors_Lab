ASSUME CS:CODE,DS:DATA
DATA SEGMENT
	hour db 01 dup(?)
	minute db 01 dup(?)
	second db dup(?)
DATA ENDS
CODE SEGMENT
	org 0100h
START:
	mov ax,DATA
	mov ds,ax

	mov ah,2ch
	int 21h

	mov si,offset hour
	mov [si],ch
	mov si,offset minute
	mov [si],cl
	mov si,offset second
	mov [si],dh

	mov ah,4ch
	int 21h
CODE ENDS
END START