	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	r15
	push	r14
	push	r12
	push	rbx
	push	rax
	mov	r12, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	rbx, rax
	mov	rdi, qword ptr [r12 + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r14, rax
	mov	rdi, qword ptr [r12 + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r15, rax
	mov	rdi, qword ptr [r12 + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mfence
	mov	rdi, rax
	rdtscp
	mov	rsi, rdx
	shl	rsi, 32
	or	rsi, rax
	lfence


# LLVM-MCA-BEGIN
	bswap	ebx
	bswap	r14d
	bswap	r15d
	bswap	edi
	add	ebx, -1007687205
	rorx	eax, ebx, 31
	add	r14d, -2015374409
	rorx	ecx, r14d, 29
	add	r15d, 264218479
	rorx	edx, r15d, 26
	add	edi, 528436958
	rorx	edi, edi, 21
	add	eax, -2000366076
	rorx	eax, eax, 31
	add	ecx, 294235145
	rorx	ecx, ecx, 29
	add	edx, 588470290
	rorx	edx, edx, 26
	add	edi, 1176940580
	rorx	edi, edi, 21
	add	eax, -410389975
	rorx	eax, eax, 31
	add	ecx, -820779949
	rorx	ecx, ecx, 29
	add	edx, -1641559897
	rorx	edx, edx, 26
	add	edi, 1011847503
	rorx	edi, edi, 21
	add	eax, -956725405
	rorx	eax, eax, 31
	add	ecx, -1913450809
	rorx	ecx, ecx, 29
	add	edx, 468065679
	rorx	edx, edx, 26
	add	edi, 936131358
	rorx	edi, edi, 21
	add	eax, 1056873916
	rorx	eax, eax, 31
	add	ecx, 2113747832
	rorx	ecx, ecx, 29
	add	edx, -67471632
	rorx	edx, edx, 26
	add	edi, -134943263
	rorx	edi, edi, 21
	add	eax, -1941086136
	rorx	eax, eax, 31
	add	ecx, 412795025
	rorx	ecx, ecx, 29
	add	edx, 825590050
	rorx	edx, edx, 26
	add	edi, 1651180100
	rorx	edi, edi, 21
	add	eax, 2023695006
	rorx	eax, eax, 31
	add	ecx, -247577284
	rorx	ecx, ecx, 29
	add	edx, -495154567
	rorx	edx, edx, 26
	add	edi, -990309133
	rorx	edi, edi, 21
	add	eax, 1872262716
	rorx	eax, eax, 31
	add	ecx, -550441864
	rorx	ecx, ecx, 29
	add	edx, -1100883727
	rorx	edx, edx, 26
	add	edi, 2093199843
	rorx	edi, edi, 21
	add	eax, -269886525
	rorx	eax, eax, 31
	add	ecx, -539773049
	rorx	ecx, ecx, 29
	add	edx, -1079546097
	rorx	edx, edx, 26
	add	edi, 2135875103
	rorx	edi, edi, 21
	add	eax, -992607096
	rorx	eax, eax, 31
	add	ecx, -1985214191
	rorx	ecx, ecx, 29
	add	edx, 324538915
	rorx	edx, edx, 26
	add	edi, 649077830
	rorx	edi, edi, 21
	add	eax, -1980618265
	rorx	eax, eax, 31
	add	ecx, 333730767
	rorx	ecx, ecx, 29
	add	edx, 667461534
	rorx	edx, edx, 26
	add	edi, 1334923068
	rorx	edi, edi, 21
	add	eax, -108567610
	rorx	eax, eax, 31
	add	ecx, -217135219
	rorx	ecx, ecx, 29
	add	edx, -434270437
	rorx	edx, edx, 26
	add	edi, -868540873
	rorx	edi, edi, 21
	add	eax, -23217090
	rorx	eax, eax, 31
	add	ecx, -46434179
	rorx	ecx, ecx, 29
	add	edx, -92868357
	rorx	edx, edx, 26
	add	edi, -185736713
	rorx	edi, edi, 21
	add	eax, 1298155660
	rorx	eax, eax, 31
	add	ecx, -1698655976
	rorx	ecx, ecx, 29
	add	edx, 897655345
	rorx	edx, edx, 26
	add	edi, 1795310690
	rorx	edi, edi, 21
	add	eax, -1625121160
	rorx	eax, eax, 31
	add	ecx, 1044724977
	rorx	ecx, ecx, 29
	add	edx, 2089449954
	rorx	edx, edx, 26
	add	edi, -116067388
	rorx	edi, edi, 21
	add	eax, -1737081745
	rorx	eax, eax, 31
	add	ecx, 820803807
	rorx	ecx, ecx, 29
	add	edx, 1641607614
	rorx	edx, edx, 26
	add	edi, -1011752068
	rorx	edi, edi, 21
	add	eax, -371473425
	rorx	eax, eax, 31
	add	ecx, -742946849
	rorx	ecx, ecx, 29
	add	edx, -1485893697
	rorx	edx, edx, 26
	add	edi, 1323179903
	rorx	edi, edi, 21
	add	eax, -704345916
	rorx	eax, eax, 31
	add	ecx, -1408691831
	rorx	ecx, ecx, 29
	add	edx, 1477583635
	rorx	edx, edx, 26
	add	edi, -1339800026
	rorx	edi, edi, 21
	add	eax, -232134775
	rorx	eax, eax, 31
	add	ecx, -464269549
	rorx	ecx, ecx, 29
	add	edx, -928539097
	rorx	edx, edx, 26
	add	edi, -1857078193
	rorx	edi, edi, 21
	add	eax, -2023504135
	rorx	eax, eax, 31
	add	ecx, 247959027
	rorx	ecx, ecx, 29
	add	edx, 495918054
	rorx	edx, edx, 26
	add	edi, 991836108
	rorx	edi, edi, 21
	add	eax, -1648607490
	rorx	eax, eax, 31
	add	ecx, 997752317
	rorx	ecx, ecx, 29
	add	edx, 1995504634
	rorx	edx, edx, 26
	add	edi, -303958028
	rorx	edi, edi, 21
	add	eax, 1615367245
	rorx	eax, eax, 31
	add	ecx, -1064232806
	rorx	ecx, ecx, 29
	add	edx, -2128465611
	rorx	edx, edx, 26
	add	edi, 38036075
	rorx	edi, edi, 21
	add	eax, 580810911
	rorx	eax, eax, 31
	add	ecx, 1161621822
	rorx	ecx, ecx, 29
	add	edx, -1971723652
	rorx	edx, edx, 26
	add	edi, 351519993
	rorx	edi, edi, 21
	add	eax, 1983672216
	rorx	r10d, eax, 31
	add	ecx, -327622864
	rorx	r11d, ecx, 29
	add	edx, -655245727
	rorx	r8d, edx, 26
	add	edi, -1310491453
	rorx	r9d, edi, 21
# LLVM-MCA-END

	mfence
	rdtscp
	shl	rdx, 32
	or	rdx, rax
	lfence
	sub	rdx, rsi
	mov	edi, offset .L.str
	mov	rsi, rdx
	mov	edx, r10d
	mov	ecx, r11d
	xor	eax, eax
	call	printf
	xor	eax, eax
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r14
	pop	r15
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu %X %X %X %X\n"
	.size	.L.str, 17

	.ident	"clang version 17.0.6 (Fedora 17.0.6-1.fc39)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
