section text:
	global shift_right
	global shift_left

shift_right:
	push rbp
	push rcx

	mov rbp, rsp
	xor rcx, rcx
	mov ecx, esi
     L1:
	mov al, [rdi]
	ror al, 1
	mov [rdi], al
	inc rdi
	loop L1

	pop rcx
	pop rbp
	ret

shift_left:
	push rbp
	push rcx

	mov rbp, rsp
	xor rcx, rcx
	mov ecx, esi
	add rdi, rcx
	dec rdi
     L2:
	mov al, [rdi]
	rol al, 1
	mov [rdi], al
	dec rdi
	loop L2

	pop rcx
	pop rbp
	ret
