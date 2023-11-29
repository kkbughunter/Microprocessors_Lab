assume cs:code, ds:data
data segment
	array db 1,2,3,4,5
	array_size equ $ - array
	even_count db 0
	odd_count db 0
data ends
code segment
start:
	mov ax, data
	mov ds,ax

	mov cx,array_size
	mov si,0

count_loop:	
	mov al,[array + si]
	test al, 1
	jnz is_odd

	mov al,[even_count]
	inc al
	mov [even_count],al
	jmp next_iteration

is_odd: 
	mov al,[odd_count]
	inc al
	mov [odd_count],al

next_iteration:
	inc si
	loop count_loop

	mov dl,[even_count]
	add dl,'0'
	mov ah,2h
	int 21h

	mov dl,[odd_count]
	add dl,'0'
	mov ah,2h
	int 21h

	mov ah,4ch
	int 21h
code ends
end start
