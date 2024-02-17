	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 0	sdk_version 14, 2
	.globl	_ask                            ; -- Begin function ask
	.p2align	2
_ask:                                   ; @ask
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	ldur	x8, [x29, #-8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.1@PAGE
	add	x0, x0, l_.str.1@PAGEOFF
	bl	_scanf
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI1_0:
	.quad	0x416e1e1940000000              ; double 15790282
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	sub	sp, sp, #2112
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #52]
	adrp	x8, lCPI1_0@PAGE
	ldr	d0, [x8, lCPI1_0@PAGEOFF]
	str	d0, [sp, #32]
	add	x0, sp, #1080
	adrp	x1, l_.str.2@PAGE
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_ask
	add	x0, sp, #56
	str	x0, [sp, #24]                   ; 8-byte Folded Spill
	adrp	x1, l_.str.3@PAGE
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_ask
	ldr	x0, [sp, #24]                   ; 8-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #40
	str	x8, [x9]
	adrp	x1, l_.str.4@PAGE
	add	x1, x1, l_.str.4@PAGEOFF
	bl	_sscanf
	ldr	d0, [sp, #40]
	ldr	d1, [sp, #32]
	fcmp	d0, d1
	cset	w8, ne
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	str	wzr, [sp, #52]
	b	LBB1_3
LBB1_2:
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	str	wzr, [sp, #52]
	b	LBB1_3
LBB1_3:
	ldr	w8, [sp, #52]
	str	w8, [sp, #20]                   ; 4-byte Folded Spill
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_5
	b	LBB1_4
LBB1_4:
	bl	___stack_chk_fail
LBB1_5:
	ldr	w0, [sp, #20]                   ; 4-byte Folded Reload
	add	sp, sp, #2112
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%s\n"

l_.str.1:                               ; @.str.1
	.asciz	"%s"

l_.str.2:                               ; @.str.2
	.asciz	"Write your user:"

l_.str.3:                               ; @.str.3
	.asciz	"Write your serial number:"

l_.str.4:                               ; @.str.4
	.asciz	"%lf"

l_.str.5:                               ; @.str.5
	.asciz	"Congratulation!\n This program was cracked!"

l_.str.6:                               ; @.str.6
	.asciz	"Sorry mate, more luck next time!"

.subsections_via_symbols
