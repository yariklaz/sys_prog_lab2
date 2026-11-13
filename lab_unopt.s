	.file	"lab.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.globl	_Z12process_dataPfS_S_i
	.type	_Z12process_dataPfS_S_i, @function
_Z12process_dataPfS_S_i:
.LFB1976:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -32[rbp], rsi
	mov	QWORD PTR -40[rbp], rdx
	mov	DWORD PTR -44[rbp], ecx
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm1, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	mulss	xmm1, xmm0
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR [rax]
	movss	xmm2, DWORD PTR .LC0[rip]
	divss	xmm0, xmm2
	addss	xmm0, xmm1
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp]
	add	rax, rdx
	movss	xmm2, DWORD PTR [rax]
	movss	xmm1, DWORD PTR .LC1[rip]
	mulss	xmm1, xmm2
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	subss	xmm0, xmm1
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -4[rbp], 1
.L2:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -44[rbp]
	jl	.L3
	nop
	nop
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1976:
	.size	_Z12process_dataPfS_S_i, .-_Z12process_dataPfS_S_i
	.section	.rodata
.LC4:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1977:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -28[rbp], 100000000
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rdx, rax
	jb	.L5
	sal	rax, 2
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rdx, rax
	jb	.L7
	jmp	.L19
.L5:
	call	__cxa_throw_bad_array_new_length@PLT
.L19:
	sal	rax, 2
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	cdqe
	movabs	rdx, 2305843009213693950
	cmp	rdx, rax
	jb	.L9
	jmp	.L20
.L7:
	call	__cxa_throw_bad_array_new_length@PLT
.L20:
	sal	rax, 2
	mov	rdi, rax
	call	_Znam@PLT
	mov	QWORD PTR -8[rbp], rax
	mov	DWORD PTR -36[rbp], 0
	jmp	.L11
.L9:
	call	__cxa_throw_bad_array_new_length@PLT
.L12:
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR .LC2[rip]
	mulss	xmm0, xmm1
	movss	DWORD PTR [rax], xmm0
	pxor	xmm1, xmm1
	cvtsi2ss	xmm1, DWORD PTR -36[rbp]
	mov	eax, DWORD PTR -36[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -16[rbp]
	add	rax, rdx
	movss	xmm0, DWORD PTR .LC3[rip]
	mulss	xmm0, xmm1
	movss	DWORD PTR [rax], xmm0
	add	DWORD PTR -36[rbp], 1
.L11:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L12
	mov	DWORD PTR -32[rbp], 0
	jmp	.L13
.L14:
	mov	ecx, DWORD PTR -28[rbp]
	mov	rdx, QWORD PTR -8[rbp]
	mov	rsi, QWORD PTR -16[rbp]
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_Z12process_dataPfS_S_i
	add	DWORD PTR -32[rbp], 1
.L13:
	cmp	DWORD PTR -32[rbp], 9
	jle	.L14
	mov	eax, DWORD PTR -28[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -8[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	lea	rdx, _ZSt4cout[rip]
	movd	xmm0, eax
	mov	rdi, rdx
	call	_ZNSolsEf@PLT
	mov	rdx, rax
	lea	rax, .LC4[rip]
	mov	rsi, rax
	mov	rdi, rdx
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	cmp	QWORD PTR -24[rbp], 0
	je	.L15
	mov	rax, QWORD PTR -24[rbp]
	mov	rdi, rax
	call	_ZdaPv@PLT
.L15:
	cmp	QWORD PTR -16[rbp], 0
	je	.L16
	mov	rax, QWORD PTR -16[rbp]
	mov	rdi, rax
	call	_ZdaPv@PLT
.L16:
	cmp	QWORD PTR -8[rbp], 0
	je	.L17
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, rax
	call	_ZdaPv@PLT
.L17:
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1977:
	.size	main, .-main
	.section	.rodata
	.align 4
.LC0:
	.long	1075838976
	.align 4
.LC1:
	.long	1066192077
	.align 4
.LC2:
	.long	1036831949
	.align 4
.LC3:
	.long	1045220557
	.ident	"GCC: (Ubuntu 15.3.0-4ubuntu1) 15.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
