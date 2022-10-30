
        include "symbols.asm"

	SCROLL_DELAY:		equ 2 ; 2..? (default value: 4)

; $4000 -----------------------------------------------------------------------

BASE:   equ     $4000
        org     BASE
        incbin  "original/YoukaiYashiki.rom", 0, $4008 - BASE

; Patched WRTPSG routine
; - located here, same as [a] version
LBA49.PATCHED:
	and     $BF
        ld      e, a
        ld      a, 07h
        jp      WRTPSG

L4010:  incbin  "original/YoukaiYashiki.rom", $4010 - BASE, $7F01 - $4010

; Simplifies the invulnerability cheat
; (MUST be 22 bytes long)
L7F01:
; Checks cheat keys
        ld      a, $08          ; a = $08 ; RIGHT DOWN UP LEFT DEL INS HOME SPACE
        call    SNSMAT
        cp      $F3             ; DEL INS pressed?
	jr      nz, L7F17       ; no
; yes: activates cheat
        ld      a, 1
        ld      ($E023), a
	jr	L7F17
; (16 bytes)
	nop
	nop
	nop
	nop
	nop
	nop
; (22 bytes)

L7F17:	incbin  "original/YoukaiYashiki.rom", $7F17 - BASE, $904B - $7F17

; Patches the scroll speed
L904B:	cp	SCROLL_DELAY
L904D:  incbin  "original/YoukaiYashiki.rom", $904d - BASE, $90b8 - $904d
L90B8:	cp	SCROLL_DELAY
L96BA:  incbin  "original/YoukaiYashiki.rom", $90ba - BASE, $9127 - $90ba
L9127:	cp	SCROLL_DELAY
L9129:  incbin  "original/YoukaiYashiki.rom", $9129 - BASE, $91c6 - $9129
L91C6:	cp	SCROLL_DELAY

L91C8:  incbin  "original/YoukaiYashiki.rom", $91c8 - BASE, $A9D6 - $91c8

LA9D6:
; (Must be 23 bytes long)
; Is jumping?
	ld	a, (iy + 5)
	cp	5
	ld      a, $90	; (previously unused demon jumping sprite pattern)
	ret	z	; yes
; no: replicates the code originally at $A9ED
; Alternates pattern
        ld      a, ($E012)
        and     08h
        rrca
        ld      b, (iy + 9)
        add     a, b
	ret
; (19 bytes)
	nop
	nop
	nop
	nop
; (23 bytes)

LA9ED:
; (Must be 13 bytes long)
        call	LA9D6
        ld      (iy + 2), a
	jp	LA9FA ; (faster than 7x nop)
; (9 bytes)
	nop
	nop
	nop
	nop
; (13 bytes)

LA9FA:	incbin  "original/YoukaiYashiki.rom", $a9fa - BASE, $B891 - $a9fa

; Patches the calls to use the WRTPSG patched routine
LB891:	call	LBA49.PATCHED
LB894:	incbin  "original/YoukaiYashiki.rom", $B894 - BASE, $BA74 - $B894
LBA74:	call	LBA49.PATCHED
LBA77:	incbin  "original/YoukaiYashiki.rom", $BA77 - BASE, $BA87 - $BA77
LBA87:	call	LBA49.PATCHED
LBA8A:	incbin  "original/YoukaiYashiki.rom", $BA8A - BASE, $BAB1 - $BA8A
LBAB1:	call	LBA49.PATCHED
LBAB4:	incbin  "original/YoukaiYashiki.rom", $BAB4 - BASE, $BAD3 - $BAB4
LBAD3:	jp	LBA49.PATCHED

LBAD6:	incbin  "original/YoukaiYashiki.rom", $BAD6 - BASE

; -----------------------------------------------------------------------------
