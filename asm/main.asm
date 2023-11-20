	.text
	.intel_syntax noprefix
	.file	"main.c"
	.globl	main                            # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
# %bb.0:
	push	rbp
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 696
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
	rorx	r8d, edi, 21
	mov	qword ptr [rsp + 688], rax      # 8-byte Spill
	add	eax, -2000366076
	rorx	edi, eax, 31
	mov	qword ptr [rsp + 680], rcx      # 8-byte Spill
	lea	eax, [rcx + 294235145]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 672], rdx      # 8-byte Spill
	lea	eax, [rdx + 588470290]
	rorx	edx, eax, 26
	mov	qword ptr [rsp + 656], r8       # 8-byte Spill
	lea	eax, [r8 + 1176940580]
	rorx	r9d, eax, 21
	mov	qword ptr [rsp + 664], rdi      # 8-byte Spill
	lea	eax, [rdi - 410389975]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 648], rcx      # 8-byte Spill
	lea	eax, [rcx - 820779949]
	rorx	r10d, eax, 29
	mov	qword ptr [rsp + 640], rdx      # 8-byte Spill
	lea	eax, [rdx - 1641559897]
	mfence
	rorx	r11d, eax, 26
	mov	qword ptr [rsp + 624], r9       # 8-byte Spill
	lea	edi, [r9 + 1011847503]
	rdtscp
	rorx	ecx, edi, 21
	shl	rdx, 32
	or	rdx, rax
	mov	qword ptr [rsp + 632], r8       # 8-byte Spill
	lea	eax, [r8 - 956725405]
	rorx	edi, eax, 31
	sub	rdx, rsi
	mov	qword ptr [rsp + 616], r10      # 8-byte Spill
	lea	eax, [r10 - 1913450809]
	rorx	ebp, eax, 29
	mov	qword ptr [rsp + 232], r11      # 8-byte Spill
	lea	eax, [r11 + 468065679]
	rorx	r12d, eax, 26
	mov	qword ptr [rsp + 168], rcx      # 8-byte Spill
	lea	eax, [rcx + 936131358]
	rorx	r13d, eax, 21
	mov	qword ptr [rsp + 96], rdi       # 8-byte Spill
	lea	eax, [rdi + 1056873916]
	rorx	ecx, eax, 31
	lea	eax, [rbp + 2113747832]
	rorx	esi, eax, 29
	lea	eax, [r12 - 67471632]
	rorx	r14d, eax, 26
	lea	eax, [r13 - 134943263]
	rorx	ebx, eax, 21
	mov	qword ptr [rsp + 40], rcx       # 8-byte Spill
	lea	eax, [rcx - 1941086136]
	rorx	ecx, eax, 31
	mov	qword ptr [rsp + 24], rsi       # 8-byte Spill
	lea	eax, [rsi + 412795025]
	rorx	esi, eax, 29
	lea	eax, [r14 + 825590050]
	rorx	edi, eax, 26
	lea	eax, [rbx + 1651180100]
	rorx	r9d, eax, 21
	mov	qword ptr [rsp + 72], rcx       # 8-byte Spill
	lea	eax, [rcx + 2023695006]
	rorx	ecx, eax, 31
	mov	qword ptr [rsp + 56], rsi       # 8-byte Spill
	lea	eax, [rsi - 247577284]
	rorx	esi, eax, 29
	mov	qword ptr [rsp + 32], rdi       # 8-byte Spill
	lea	eax, [rdi - 495154567]
	rorx	r8d, eax, 26
	mov	qword ptr [rsp + 16], r9        # 8-byte Spill
	lea	eax, [r9 - 990309133]
	rorx	r9d, eax, 21
	mov	qword ptr [rsp + 120], rcx      # 8-byte Spill
	lea	eax, [rcx + 1872262716]
	rorx	ecx, eax, 31
	mov	qword ptr [rsp + 88], rsi       # 8-byte Spill
	lea	eax, [rsi - 550441864]
	rorx	edi, eax, 29
	mov	qword ptr [rsp + 64], r8        # 8-byte Spill
	lea	eax, [r8 - 1100883727]
	rorx	r8d, eax, 26
	mov	qword ptr [rsp + 48], r9        # 8-byte Spill
	lea	eax, [r9 + 2093199843]
	rorx	eax, eax, 21
	mov	qword ptr [rsp + 160], rcx      # 8-byte Spill
	add	ecx, -269886525
	rorx	esi, ecx, 31
	mov	qword ptr [rsp + 144], rdi      # 8-byte Spill
	lea	ecx, [rdi - 539773049]
	rorx	r10d, ecx, 29
	mov	qword ptr [rsp + 112], r8       # 8-byte Spill
	lea	ecx, [r8 - 1079546097]
	rorx	edi, ecx, 26
	add	eax, 2135875103
	rorx	r8d, eax, 21
	mov	qword ptr [rsp + 208], rsi      # 8-byte Spill
	lea	eax, [rsi - 992607096]
	rorx	r9d, eax, 31
	mov	qword ptr [rsp + 8], r10        # 8-byte Spill
	lea	eax, [r10 - 1985214191]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 136], rdi      # 8-byte Spill
	lea	eax, [rdi + 324538915]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 104], r8       # 8-byte Spill
	lea	eax, [r8 + 649077830]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 80], r9        # 8-byte Spill
	lea	eax, [r9 - 1980618265]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 200], rcx      # 8-byte Spill
	lea	eax, [rcx + 333730767]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 184], rsi      # 8-byte Spill
	lea	eax, [rsi + 667461534]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 152], rdi      # 8-byte Spill
	lea	eax, [rdi + 1334923068]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 128], r8       # 8-byte Spill
	lea	eax, [r8 - 108567610]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 248], rcx      # 8-byte Spill
	lea	eax, [rcx - 217135219]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 224], rsi      # 8-byte Spill
	lea	eax, [rsi - 434270437]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 192], rdi      # 8-byte Spill
	lea	eax, [rdi - 868540873]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 176], r8       # 8-byte Spill
	lea	eax, [r8 - 23217090]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 280], rcx      # 8-byte Spill
	lea	eax, [rcx - 46434179]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 264], rsi      # 8-byte Spill
	lea	eax, [rsi - 92868357]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 240], rdi      # 8-byte Spill
	lea	eax, [rdi - 185736713]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 216], r8       # 8-byte Spill
	lea	eax, [r8 + 1298155660]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 296], rcx      # 8-byte Spill
	lea	eax, [rcx - 1698655976]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 288], rsi      # 8-byte Spill
	lea	eax, [rsi + 897655345]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 272], rdi      # 8-byte Spill
	lea	eax, [rdi + 1795310690]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 256], r8       # 8-byte Spill
	lea	eax, [r8 - 1625121160]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 328], rcx      # 8-byte Spill
	lea	eax, [rcx + 1044724977]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 320], rsi      # 8-byte Spill
	lea	eax, [rsi + 2089449954]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 312], rdi      # 8-byte Spill
	lea	eax, [rdi - 116067388]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 304], r8       # 8-byte Spill
	lea	eax, [r8 - 1737081745]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 360], rcx      # 8-byte Spill
	lea	eax, [rcx + 820803807]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 352], rsi      # 8-byte Spill
	lea	eax, [rsi + 1641607614]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 344], rdi      # 8-byte Spill
	lea	eax, [rdi - 1011752068]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 336], r8       # 8-byte Spill
	lea	eax, [r8 - 371473425]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 392], rcx      # 8-byte Spill
	lea	eax, [rcx - 742946849]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 384], rsi      # 8-byte Spill
	lea	eax, [rsi - 1485893697]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 376], rdi      # 8-byte Spill
	lea	eax, [rdi + 1323179903]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 368], r8       # 8-byte Spill
	lea	eax, [r8 - 704345916]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 424], rcx      # 8-byte Spill
	lea	eax, [rcx - 1408691831]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 416], rsi      # 8-byte Spill
	lea	eax, [rsi + 1477583635]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 408], rdi      # 8-byte Spill
	lea	eax, [rdi - 1339800026]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 400], r8       # 8-byte Spill
	lea	eax, [r8 - 232134775]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 456], rcx      # 8-byte Spill
	lea	eax, [rcx - 464269549]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 448], rsi      # 8-byte Spill
	lea	eax, [rsi - 928539097]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 440], rdi      # 8-byte Spill
	lea	eax, [rdi - 1857078193]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 432], r8       # 8-byte Spill
	lea	eax, [r8 - 2023504135]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 488], rcx      # 8-byte Spill
	lea	eax, [rcx + 247959027]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 480], rsi      # 8-byte Spill
	lea	eax, [rsi + 495918054]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 472], rdi      # 8-byte Spill
	lea	eax, [rdi + 991836108]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 464], r8       # 8-byte Spill
	lea	eax, [r8 - 1648607490]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 520], rcx      # 8-byte Spill
	lea	eax, [rcx + 997752317]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 512], rsi      # 8-byte Spill
	lea	eax, [rsi + 1995504634]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 504], rdi      # 8-byte Spill
	lea	eax, [rdi - 303958028]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 496], r8       # 8-byte Spill
	lea	eax, [r8 + 1615367245]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 552], rcx      # 8-byte Spill
	lea	eax, [rcx - 1064232806]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 544], rsi      # 8-byte Spill
	lea	eax, [rsi - 2128465611]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 536], rdi      # 8-byte Spill
	lea	eax, [rdi + 38036075]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 528], r8       # 8-byte Spill
	lea	eax, [r8 + 580810911]
	rorx	r8d, eax, 31
	mov	qword ptr [rsp + 584], rcx      # 8-byte Spill
	lea	eax, [rcx + 1161621822]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 576], rsi      # 8-byte Spill
	lea	eax, [rsi - 1971723652]
	rorx	esi, eax, 26
	mov	qword ptr [rsp + 568], rdi      # 8-byte Spill
	lea	eax, [rdi + 351519993]
	rorx	edi, eax, 21
	mov	qword ptr [rsp + 560], r8       # 8-byte Spill
	lea	eax, [r8 + 1983672216]
	rorx	r10d, eax, 31
	mov	qword ptr [rsp + 608], rcx      # 8-byte Spill
	lea	eax, [rcx - 327622864]
	rorx	ecx, eax, 29
	mov	qword ptr [rsp + 600], rsi      # 8-byte Spill
	lea	eax, [rsi - 655245727]
	rorx	r8d, eax, 26
	mov	qword ptr [rsp + 592], rdi      # 8-byte Spill
	lea	eax, [rdi - 1310491453]
	rorx	r9d, eax, 21
	lfence
	mov	edi, offset .L.str
	mov	rsi, rdx
	mov	dword ptr [rsp + 4], r10d       # 4-byte Spill
	mov	edx, r10d
	xor	eax, eax
	call	printf
	mov	edi, offset .L.str.1
	mov	esi, offset .L.str.2
	call	fopen
	test	rax, rax
	je	.LBB0_1
# %bb.2:
	mov	r15, rax
	mov	esi, offset .L.str.4
	mov	rdi, rax
	mov	rdx, qword ptr [rsp + 688]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 680]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 672]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 656]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 664]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 648]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 640]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 624]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 632]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 616]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 232]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 168]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 96]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	ecx, ebp
	mov	r8d, r12d
	mov	r9d, r13d
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 40]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 24]       # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8d, r14d
	mov	r9d, ebx
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 72]       # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 56]       # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 32]        # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 16]        # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 120]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 88]       # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 64]        # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 48]        # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 160]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 144]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 112]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 8]         # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 208]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 136]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 104]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 80]        # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 200]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 184]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 152]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 128]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 248]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 224]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 192]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 176]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 280]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 264]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 240]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 216]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 296]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 288]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 272]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 256]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 328]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 320]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 312]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 304]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 360]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 352]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 344]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 336]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 392]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 384]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 376]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 368]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 424]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 416]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 408]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 400]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 456]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 448]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 440]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 432]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 488]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 480]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 472]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 464]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 520]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 512]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 504]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 496]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 552]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 544]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 536]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 528]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 584]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 576]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 568]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9, qword ptr [rsp + 560]       # 8-byte Reload
                                        # kill: def $r9d killed $r9d killed $r9
	xor	eax, eax
	call	fprintf
	mov	esi, offset .L.str.4
	mov	rdi, r15
	mov	rdx, qword ptr [rsp + 608]      # 8-byte Reload
                                        # kill: def $edx killed $edx killed $rdx
	mov	rcx, qword ptr [rsp + 600]      # 8-byte Reload
                                        # kill: def $ecx killed $ecx killed $rcx
	mov	r8, qword ptr [rsp + 592]       # 8-byte Reload
                                        # kill: def $r8d killed $r8d killed $r8
	mov	r9d, dword ptr [rsp + 4]        # 4-byte Reload
	xor	eax, eax
	call	fprintf
	mov	rdi, r15
	call	fclose
	xor	eax, eax
	jmp	.LBB0_3
.LBB0_1:
	mov	edi, offset .Lstr
	call	puts@PLT
	mov	eax, 1
.LBB0_3:
                                        # kill: def $eax killed $eax killed $rax
	add	rsp, 696
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	ret
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%lu %u %u %u %u\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"enc_round.keys"
	.size	.L.str.1, 15

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"a"
	.size	.L.str.2, 2

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"%u\n%u\n%u\n%u\n"
	.size	.L.str.4, 13

	.type	.Lstr,@object                   # @str
.Lstr:
	.asciz	"Unable to open/create the file."
	.size	.Lstr, 32

	.ident	"clang version 17.0.4 (Fedora 17.0.4-1.fc39)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
