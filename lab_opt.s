	.file	"lab.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.p2align 4
	.globl	_Z12process_dataPfS_S_i
	.type	_Z12process_dataPfS_S_i, @function
_Z12process_dataPfS_S_i:
.LFB2047:
	.cfi_startproc
	endbr64
	test	ecx, ecx
	jle	.L25
	lea	r9d, -1[rcx]
	mov	r8d, ecx
	cmp	r9d, 2
	jbe	.L3
	lea	rax, -4[rdx]
	mov	r10, rax
	sub	r10, rdi
	cmp	r10, 24
	jbe	.L3
	sub	rax, rsi
	cmp	rax, 24
	jbe	.L3
	cmp	r9d, 6
	jbe	.L11
	vbroadcastss	ymm4, DWORD PTR .LC1[rip]
	shr	r8d, 3
	xor	eax, eax
	vbroadcastss	ymm3, DWORD PTR .LC3[rip]
	sal	r8, 5
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L5:
	vmovups	ymm1, YMMWORD PTR [rdi+rax]
	vmovups	ymm0, YMMWORD PTR [rsi+rax]
	vdivps	ymm2, ymm1, ymm4
	vfmadd132ps	ymm1, ymm2, ymm0
	vfnmadd132ps	ymm0, ymm1, ymm3
	vmovups	YMMWORD PTR [rdx+rax], ymm0
	add	rax, 32
	cmp	r8, rax
	jne	.L5
	mov	eax, ecx
	and	eax, -8
	cmp	ecx, eax
	mov	r9d, eax
	je	.L23
	mov	r8d, ecx
	sub	r8d, eax
	lea	r10d, -1[r8]
	cmp	r10d, 2
	jbe	.L27
	vzeroupper
.L4:
	vmovups	xmm1, XMMWORD PTR [rdi+r9*4]
	vmovups	xmm0, XMMWORD PTR [rsi+r9*4]
	test	r8b, 3
	vbroadcastss	xmm2, DWORD PTR .LC1[rip]
	vdivps	xmm2, xmm1, xmm2
	vfmadd132ps	xmm1, xmm2, xmm0
	vbroadcastss	xmm2, DWORD PTR .LC3[rip]
	vfnmadd132ps	xmm0, xmm1, xmm2
	vmovups	XMMWORD PTR [rdx+r9*4], xmm0
	je	.L25
	and	r8d, -4
	add	eax, r8d
.L7:
	movsxd	r8, eax
	vmovss	xmm2, DWORD PTR .LC1[rip]
	lea	r9d, 1[rax]
	vmovss	xmm1, DWORD PTR [rdi+r8*4]
	vmovss	xmm0, DWORD PTR [rsi+r8*4]
	cmp	ecx, r9d
	vdivss	xmm3, xmm1, xmm2
	vfmadd132ss	xmm1, xmm3, xmm0
	vmovss	xmm3, DWORD PTR .LC3[rip]
	vfnmadd132ss	xmm0, xmm1, xmm3
	vmovss	DWORD PTR [rdx+r8*4], xmm0
	jle	.L25
	vmovss	xmm1, DWORD PTR 4[rdi+r8*4]
	vmovss	xmm0, DWORD PTR 4[rsi+r8*4]
	add	eax, 2
	cmp	ecx, eax
	vdivss	xmm4, xmm1, xmm2
	vfmadd132ss	xmm1, xmm4, xmm0
	vfnmadd132ss	xmm0, xmm1, xmm3
	vmovss	DWORD PTR 4[rdx+r8*4], xmm0
	jle	.L25
	vmovss	xmm1, DWORD PTR 8[rdi+r8*4]
	vmovss	xmm0, DWORD PTR 8[rsi+r8*4]
	vdivss	xmm2, xmm1, xmm2
	vfmadd132ss	xmm1, xmm2, xmm0
	vfnmadd132ss	xmm0, xmm1, xmm3
	vmovss	DWORD PTR 8[rdx+r8*4], xmm0
	ret
.L23:
	vzeroupper
.L25:
	ret
.L27:
	vzeroupper
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L3:
	movsxd	rcx, ecx
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vmovss	xmm3, DWORD PTR .LC3[rip]
	xor	eax, eax
	sal	rcx, 2
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L9:
	vmovss	xmm1, DWORD PTR [rdi+rax]
	vmovss	xmm0, DWORD PTR [rsi+rax]
	vdivss	xmm2, xmm1, xmm4
	vfmadd132ss	xmm1, xmm2, xmm0
	vfnmadd132ss	xmm0, xmm1, xmm3
	vmovss	DWORD PTR [rdx+rax], xmm0
	add	rax, 4
	cmp	rax, rcx
	jne	.L9
	ret
.L11:
	xor	r9d, r9d
	xor	eax, eax
	jmp	.L4
	.cfi_endproc
.LFE2047:
	.size	_Z12process_dataPfS_S_i, .-_Z12process_dataPfS_S_i
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC12:
	.string	"\n"
	.section	.text.startup,"ax",@progbits
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB2048:
	.cfi_startproc
	endbr64
	lea	r10, 8[rsp]
	.cfi_def_cfa 10, 0
	and	rsp, -32
	mov	edi, 400000000
	push	QWORD PTR -8[r10]
	push	rbp
	mov	rbp, rsp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	push	r13
	push	r12
	push	r10
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x78
	.cfi_escape 0x10,0xc,0x2,0x76,0x70
	push	rbx
	sub	rsp, 16
	.cfi_escape 0x10,0x3,0x2,0x76,0x60
	call	_Znam@PLT
	mov	edi, 400000000
	mov	r12, rax
	call	_Znam@PLT
	mov	edi, 400000000
	mov	rbx, rax
	call	_Znam@PLT
	mov	edx, 8
	vmovdqa	ymm1, YMMWORD PTR .LC6[rip]
	vbroadcastss	ymm5, DWORD PTR .LC8[rip]
	vbroadcastss	ymm4, DWORD PTR .LC10[rip]
	vmovd	xmm3, edx
	mov	r13, rax
	xor	eax, eax
	vpbroadcastd	ymm3, xmm3
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L29:
	vcvtdq2ps	ymm0, ymm1
	vmulps	ymm2, ymm0, ymm5
	vpaddd	ymm1, ymm1, ymm3
	vmulps	ymm0, ymm0, ymm4
	vmovups	YMMWORD PTR [r12+rax], ymm2
	vmovups	YMMWORD PTR [rbx+rax], ymm0
	add	rax, 32
	cmp	rax, 400000000
	jne	.L29
	vmovss	xmm4, DWORD PTR .LC1[rip]
	vmovss	xmm3, DWORD PTR .LC3[rip]
	xor	eax, eax
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L30:
	vmovss	xmm1, DWORD PTR [r12+rax]
	vmovss	xmm0, DWORD PTR [rbx+rax]
	vdivss	xmm2, xmm1, xmm4
	vfmadd132ss	xmm1, xmm2, xmm0
	vfnmadd132ss	xmm0, xmm1, xmm3
	vmovss	DWORD PTR 0[r13+rax], xmm0
	add	rax, 4
	cmp	rax, 400000000
	jne	.L30
	lea	rdi, _ZSt4cout[rip]
	vxorps	xmm0, xmm0, xmm0
	vcvtss2sd	xmm0, xmm0, DWORD PTR 200000000[r13]
	vzeroupper
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	edx, 1
	lea	rsi, .LC12[rip]
	mov	rdi, rax
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rdi, r12
	call	_ZdaPv@PLT
	mov	rdi, rbx
	call	_ZdaPv@PLT
	mov	rdi, r13
	call	_ZdaPv@PLT
	add	rsp, 16
	xor	eax, eax
	pop	rbx
	pop	r10
	.cfi_def_cfa 10, 0
	pop	r12
	pop	r13
	pop	rbp
	lea	rsp, -8[r10]
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2048:
	.size	main, .-main
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC1:
	.long	1075838976
	.align 4
.LC3:
	.long	1066192077
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC6:
	.long	0
	.long	1
	.long	2
	.long	3
	.long	4
	.long	5
	.long	6
	.long	7
	.section	.rodata.cst4
	.align 4
.LC8:
	.long	1036831949
	.align 4
.LC10:
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
