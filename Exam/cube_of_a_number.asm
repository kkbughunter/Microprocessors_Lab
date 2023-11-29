assume cs:code, ds:data
data segment
	org 00h
	number dw 3
	org 10h
	result dw ?
data ends
code segment
start:
	mov ax, data
	mov ds,ax

	mov ax,[number]
	mul ax
	mul [number]
	mov [result],ax

	mov ah,4ch
	int 21h
code ends
end start
