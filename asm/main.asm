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
	mov	r15, rsi
	mov	rdi, qword ptr [rsi + 8]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	rbx, rax
	mov	rdi, qword ptr [r15 + 16]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r14, rax
	mov	rdi, qword ptr [r15 + 24]
	xor	esi, esi
	mov	edx, 10
	call	strtoul
	mov	r12, rax
	mov	rdi, qword ptr [r15 + 32]
	xor	esi, esi
	mov	edx, 10
	call	strtoul


	#start here
	bswap	ebx
	bswap	r14d
	bswap	r12d
	bswap	eax
	add	ebx, -1007687205
	rorx	ecx, ebx, 31
	add	r14d, -2015374409
	rorx	edx, r14d, 29
	add	r12d, 264218479
	rorx	esi, r12d, 26
	add	eax, 528436958
	rorx	eax, eax, 21
	add	ecx, -2000366076
	rorx	ecx, ecx, 31
	add	edx, 294235145
	rorx	edx, edx, 29
	add	esi, 588470290
	rorx	esi, esi, 26
	add	eax, 1176940580
	rorx	eax, eax, 21
	add	ecx, -410389975
	rorx	ecx, ecx, 31
	add	edx, -820779949
	rorx	edx, edx, 29
	add	esi, -1641559897
	rorx	esi, esi, 26
	add	eax, 1011847503
	rorx	eax, eax, 21
	add	ecx, -956725405
	rorx	ecx, ecx, 31
	add	edx, -1913450809
	rorx	edx, edx, 29
	add	esi, 468065679
	rorx	esi, esi, 26
	add	eax, 936131358
	rorx	eax, eax, 21
	add	ecx, 1056873916
	rorx	ecx, ecx, 31
	add	edx, 2113747832
	rorx	edx, edx, 29
	add	esi, -67471632
	rorx	esi, esi, 26
	add	eax, -134943263
	rorx	eax, eax, 21
	add	ecx, -1941086136
	rorx	ecx, ecx, 31
	add	edx, 412795025
	rorx	edx, edx, 29
	add	esi, 825590050
	rorx	esi, esi, 26
	add	eax, 1651180100
	rorx	eax, eax, 21
	add	ecx, 2023695006
	rorx	ecx, ecx, 31
	add	edx, -247577284
	rorx	edx, edx, 29
	add	esi, -495154567
	rorx	esi, esi, 26
	add	eax, -990309133
	rorx	eax, eax, 21
	add	ecx, 1872262716
	rorx	ecx, ecx, 31
	add	edx, -550441864
	rorx	edx, edx, 29
	add	esi, -1100883727
	rorx	esi, esi, 26
	add	eax, 2093199843
	rorx	eax, eax, 21
	add	ecx, -269886525
	rorx	ecx, ecx, 31
	add	edx, -539773049
	rorx	edx, edx, 29
	add	esi, -1079546097
	rorx	esi, esi, 26
	add	eax, 2135875103
	rorx	eax, eax, 21
	add	ecx, -992607096
	rorx	ecx, ecx, 31
	add	edx, -1985214191
	rorx	edx, edx, 29
	add	esi, 324538915
	rorx	esi, esi, 26
	add	eax, 649077830
	rorx	eax, eax, 21
	add	ecx, -1980618265
	rorx	ecx, ecx, 31
	add	edx, 333730767
	rorx	edx, edx, 29
	add	esi, 667461534
	rorx	esi, esi, 26
	add	eax, 1334923068
	rorx	eax, eax, 21
	add	ecx, -108567610
	rorx	ecx, ecx, 31
	add	edx, -217135219
	rorx	edx, edx, 29
	add	esi, -434270437
	rorx	esi, esi, 26
	add	eax, -868540873
	rorx	eax, eax, 21
	add	ecx, -23217090
	rorx	ecx, ecx, 31
	add	edx, -46434179
	rorx	edx, edx, 29
	add	esi, -92868357
	rorx	esi, esi, 26
	add	eax, -185736713
	rorx	eax, eax, 21
	add	ecx, 1298155660
	rorx	ecx, ecx, 31
	add	edx, -1698655976
	rorx	edx, edx, 29
	add	esi, 897655345
	rorx	esi, esi, 26
	add	eax, 1795310690
	rorx	eax, eax, 21
	add	ecx, -1625121160
	rorx	ecx, ecx, 31
	add	edx, 1044724977
	rorx	edx, edx, 29
	add	esi, 2089449954
	rorx	esi, esi, 26
	add	eax, -116067388
	rorx	eax, eax, 21
	add	ecx, -1737081745
	rorx	ecx, ecx, 31
	add	edx, 820803807
	rorx	edx, edx, 29
	add	esi, 1641607614
	rorx	esi, esi, 26
	add	eax, -1011752068
	rorx	eax, eax, 21
	add	ecx, -371473425
	rorx	ecx, ecx, 31
	add	edx, -742946849
	rorx	edx, edx, 29
	add	esi, -1485893697
	rorx	esi, esi, 26
	add	eax, 1323179903
	rorx	eax, eax, 21
	add	ecx, -704345916
	rorx	ecx, ecx, 31
	add	edx, -1408691831
	rorx	edx, edx, 29
	add	esi, 1477583635
	rorx	esi, esi, 26
	add	eax, -1339800026
	rorx	eax, eax, 21
	add	ecx, -232134775
	rorx	ecx, ecx, 31
	add	edx, -464269549
	rorx	edx, edx, 29
	add	esi, -928539097
	rorx	esi, esi, 26
	add	eax, -1857078193
	rorx	eax, eax, 21
	add	ecx, -2023504135
	rorx	ecx, ecx, 31
	add	edx, 247959027
	rorx	edx, edx, 29
	add	esi, 495918054
	rorx	esi, esi, 26
	add	eax, 991836108
	rorx	eax, eax, 21
	add	ecx, -1648607490
	rorx	ecx, ecx, 31
	add	edx, 997752317
	rorx	edx, edx, 29
	add	esi, 1995504634
	rorx	esi, esi, 26
	add	eax, -303958028
	rorx	eax, eax, 21
	add	ecx, 1615367245
	rorx	ecx, ecx, 31
	add	edx, -1064232806
	rorx	edx, edx, 29
	add	esi, -2128465611
	rorx	esi, esi, 26
	add	eax, 38036075
	rorx	eax, eax, 21
	add	ecx, 580810911
	rorx	ecx, ecx, 31
	add	edx, 1161621822
	rorx	edx, edx, 29
	add	esi, -1971723652
	rorx	edi, esi, 26
	add	eax, 351519993
	rorx	eax, eax, 21
	add	ecx, 1983672216
	rorx	esi, ecx, 31
	add	edx, -327622864
	rorx	edx, edx, 29
	add	edi, -655245727
	rorx	ecx, edi, 26
	add	eax, -1310491453
	rorx	r8d, eax, 21


	#end here
	mov	edi, offset .L.str
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
	.asciz	"%u %u %u %u\n"
	.size	.L.str, 13

	.ident	"clang version 16.0.6 (Fedora 16.0.6-3.fc38)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
