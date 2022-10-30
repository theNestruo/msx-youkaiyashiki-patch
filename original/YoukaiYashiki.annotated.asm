
        include "symbols.asm"

        ORG     4000h

        DB      "AB"
        DW      L4010
        DW      00h, 00h, 00h, 00h, 00h, 00h

        ; Entry Point
        ; --- START PROC L4010 ---
L4010:  di
        call    DISSCR
        call    RSLREG
        rrca
        rrca
        and     03h
        ld      c,a
        ld      b,00h
        ld      hl,EXPTBL
        add     hl,bc
        ld      c,a
        ld      a,(hl)
        and     80h
        or      c
        ld      c,a
        inc     hl
        inc     hl
        inc     hl
        inc     hl
        ld      a,(hl)
        and     0Ch
        or      c
        ld      h,80h
        call    ENASLT
        jp      L8000

; Index used: 0E0A0h
L4038_MAPS_TABLE:
        dw      L4044_MAP_AREA1
        dw      L4062_MAP_AREA2
        dw      L40C6_MAP_AREA3
        dw      L410C_MAP_AREA4
        dw      L413e_MAP_AREA5
        dw      L418e_MAP_AREA6

; Index used: 10 * 0E0A2h + 0E0A1h
L4044_MAP_AREA1:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 07h, 09h, 00h, 00h
        DB      00h, 01h, 02h, 03h, 04h, 06h, 08h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 00h, 05h, 00h, 00h, 00h, 00h, 00h
L4062_MAP_AREA2:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Ah, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Bh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Ch, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Dh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Eh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 0Fh, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 10h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 11h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 12h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
L40C6_MAP_AREA3:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 19h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 18h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 20h, 1Fh, 17h, 1Dh, 1Eh, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 1Ah, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 1Bh, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 1Ch, 00h, 00h, 00h, 00h, 00h, 00h
L410C_MAP_AREA4:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      21h, 22h, 23h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 24h, 00h, 00h, 00h, 00h, 00h, 2Eh, 2Fh
        DB      00h, 00h, 25h, 00h, 00h, 00h, 00h, 00h, 2Dh, 00h
        DB      00h, 00h, 26h, 27h, 28h, 29h, 2ah, 2bh, 2ch, 00h
L413e_MAP_AREA5:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 00h, 34h, 37h, 38h, 39h, 3Ah, 00h
        DB      00h, 30h, 31h, 32h, 35h, 00h, 00h, 00h, 3Bh, 00h
        DB      00h, 00h, 00h, 33h, 36h, 3Dh, 3Eh, 00h, 3Ch, 00h
        DB      00h, 00h, 00h, 00h, 00h, 00h, 3Fh, 40h, 00h, 00h
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 41h, 42h, 00h
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 43h, 44h
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
L418e_MAP_AREA6:
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
        DB      00h, 45h, 46h, 47h, 48h, 49h, 00h, 00h, 00h, 00h
        DB      00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h, 00h
; map ends here?

L41AC_ROOMS_TABLE:
; .MAP1:
	dw	ROOM_4240 ; 00 / $00 ; (unused)
	dw	ROOM_4240 ; 01 / $01
	dw	ROOM_42af ; 02 / $02
	dw	ROOM_433a ; 03 / $03
	dw	ROOM_436d ; 04 / $04
	dw	ROOM_43a8 ; 05 / $05
	dw	ROOM_43cf ; 06 / $06
	dw	ROOM_4402 ; 07 / $07
	dw	ROOM_4435 ; 08 / $08
	dw	ROOM_4490 ; 09 / $09
; .MAP2:
	dw	ROOM_449b ; 10 / $0A
	dw	ROOM_44c2 ; 11 / $0B
	dw	ROOM_44f5 ; 12 / $0C
	dw	ROOM_4524 ; 13 / $0D
	dw	ROOM_455b ; 14 / $0E
	dw	ROOM_458a ; 15 / $0F
	dw	ROOM_45bd ; 16 / $10
	dw	ROOM_45f8 ; 17 / $11
	dw	ROOM_4637 ; 18 / $12
	dw	ROOM_4637 ; 19 / $13 ; (unused)
	dw	ROOM_4637 ; 20 / $14 ; (unused)
	dw	ROOM_4637 ; 21 / $15 ; (unused)
	dw	ROOM_4637 ; 22 / $16 ; (unused)
; .MAP3:
	dw	ROOM_4642 ; 23 / $17
	dw	ROOM_46a1 ; 24 / $18
	dw	ROOM_46c4 ; 25 / $19
	dw	ROOM_46f7 ; 26 / $1A
	dw	ROOM_4722 ; 27 / $1B
	dw	ROOM_4759 ; 28 / $1C
	dw	ROOM_4788 ; 29 / $1D
	dw	ROOM_47c3 ; 30 / $1E
	dw	ROOM_47d6 ; 31 / $1F
	dw	ROOM_4819 ; 32 / $20
; .MAP4:
	dw	ROOM_4854 ; 33 / $21
	dw	ROOM_4870 ; 34 / $22
	dw	ROOM_48a8 ; 35 / $23
	dw	ROOM_48d8 ; 36 / $24
	dw	ROOM_48f0 ; 37 / $25
	dw	ROOM_4914 ; 38 / $26
	dw	ROOM_4938 ; 39 / $27
	dw	ROOM_4968 ; 40 / $28
	dw	ROOM_4988 ; 41 / $29
	dw	ROOM_49b0 ; 42 / $2A
	dw	ROOM_49c8 ; 43 / $2B
	dw	ROOM_49e4 ; 44 / $2C
	dw	ROOM_4a18 ; 45 / $2D
	dw	ROOM_4a40 ; 46 / $2E
	dw	ROOM_4a60 ; 47 / $2F
; .MAP5:
	dw	ROOM_4a6c ; 48 / $30
	dw	ROOM_4aab ; 49 / $31
	dw	ROOM_4ad3 ; 50 / $32
	dw	ROOM_4aff ; 51 / $33
	dw	ROOM_4b23 ; 52 / $34
	dw	ROOM_4b4b ; 53 / $35
	dw	ROOM_4b7b ; 54 / $36
	dw	ROOM_4ba7 ; 55 / $37
	dw	ROOM_4ba7 ; 56 / $38
	dw	ROOM_4bbb ; 57 / $39
	dw	ROOM_4bcf ; 58 / $3A
	dw	ROOM_4bf7 ; 59 / $3B
	dw	ROOM_4c13 ; 60 / $3C
	dw	ROOM_4c27 ; 61 / $3D
	dw	ROOM_4c66 ; 62 / $3E
	dw	ROOM_4c91 ; 63 / $3F
	dw	ROOM_4cc0 ; 64 / $40
	dw	ROOM_4ce7 ; 65 / $41
	dw	ROOM_4d0b ; 66 / $42
	dw	ROOM_4d23 ; 67 / $43
	dw	ROOM_4d43 ; 68 / $44
; .MAP6:
	dw	ROOM_4d6f ; 69 / $45 ; C
	dw	ROOM_4db6 ; 70 / $46 ; A
	dw	ROOM_4df5 ; 71 / $47 ; S
	dw	ROOM_4e34 ; 72 / $48 ; I
	dw	ROOM_4e7f ; 73 / $49 ; O

ROOM_4240:
	db	14, 0, 32, 0	; at ( 0,14), 32b of floor #0
	db	15, 0, 32, 1	; at ( 0,15), 32b of floor #1
	db	16, 0, 32, 1	; at ( 0,16), 32b of floor #1
	db	17, 0, 32, 1	; at ( 0,17), 32b of floor #1
	db	18, 0, 32, 1	; at ( 0,18), 32b of floor #1
	db	19, 0, 32, 1	; at ( 0,19), 32b of floor #1
	db	$ff
	db	$ff
	db	10, 2
	dw	DECO_55ba	; at ( 2,10), decoration $55ba
	db	11, 3
	dw	DECO_55c0	; at ( 3,11), decoration $55c0
	db	10, 5
	dw	DECO_559a	; at ( 5,10), decoration $559a
	db	10, 9
	dw	DECO_559a	; at ( 9,10), decoration $559a
	db	10,13
	dw	DECO_559a	; at (13,10), decoration $559a
	db	12,18
	dw	DECO_55ac	; at (18,12), decoration $55ac
	db	12,20
	dw	DECO_55ac	; at (20,12), decoration $55ac
	db	10,22
	dw	DECO_55b0	; at (22,10), decoration $55b0
	db	10,24
	dw	DECO_559a	; at (24,10), decoration $559a
	db	10,28
	dw	DECO_55ba	; at (28,10), decoration $55ba
	db	10,29
	dw	DECO_55b0	; at (29,10), decoration $55b0
	db	 3,10
	dw	DECO_55d8	; at (10, 3), decoration $55d8
	db	 3,12
	dw	DECO_55d8	; at (12, 3), decoration $55d8
	db	 3,14
	dw	DECO_55d8	; at (14, 3), decoration $55d8
	db	 3,16
	dw	DECO_55d8	; at (16, 3), decoration $55d8
	db	 3,19
	dw	DECO_55d2	; at (19, 3), decoration $55d2
	db	 3,18
	dw	DECO_55d8	; at (18, 3), decoration $55d8
	db	 4,17
	dw	DECO_55d8	; at (17, 4), decoration $55d8
	db	 5,18
	dw	DECO_55d8	; at (18, 5), decoration $55d8
	db	 5,20
	dw	DECO_55d8	; at (20, 5), decoration $55d8
	db	 5,22
	dw	DECO_55d8	; at (22, 5), decoration $55d8
	db	$ff

ROOM_42af:
	db	14, 0, 32, 0	; at ( 0,14), 32b of floor #0
	db	15, 0, 32, 1	; at ( 0,15), 32b of floor #1
	db	16, 0, 32, 1	; at ( 0,16), 32b of floor #1
	db	17, 0, 32, 1	; at ( 0,17), 32b of floor #1
	db	18, 0, 32, 1	; at ( 0,18), 32b of floor #1
	db	19, 0, 32, 1	; at ( 0,19), 32b of floor #1
	db	$ff
	db	$ff
	db	10, 0
	dw	DECO_559a	; at ( 0,10), decoration $559a
	db	11, 4
	dw	DECO_55c5	; at ( 4,11), decoration $55c5
	db	11, 6
	dw	DECO_55c0	; at ( 6,11), decoration $55c0
	db	11, 7
	dw	DECO_55c5	; at ( 7,11), decoration $55c5
	db	10, 8
	dw	DECO_559a	; at ( 8,10), decoration $559a
	db	10,12
	dw	DECO_55b0	; at (12,10), decoration $55b0
	db	12,13
	dw	DECO_55ac	; at (13,12), decoration $55ac
	db	12,14
	dw	DECO_55ac	; at (14,12), decoration $55ac
	db	12,15
	dw	DECO_55ac	; at (15,12), decoration $55ac
	db	12,16
	dw	DECO_55ac	; at (16,12), decoration $55ac
	db	 8,15
	dw	DECO_55b0	; at (15, 8), decoration $55b0
	db	10,17
	dw	DECO_559a	; at (17,10), decoration $559a
	db	 9,21
	dw	DECO_55ba	; at (21, 9), decoration $55ba
	db	 9,22
	dw	DECO_55ba	; at (22, 9), decoration $55ba
	db	 9,23
	dw	DECO_55ba	; at (23, 9), decoration $55ba
	db	 9,24
	dw	DECO_55ba	; at (24, 9), decoration $55ba
	db	13,21
	dw	DECO_55cd	; at (21,13), decoration $55cd
	db	 0,28
	dw	DECO_5560	; at (28, 0), decoration $5560
	db	 3, 7
	dw	DECO_55d8	; at ( 7, 3), decoration $55d8
	db	 3, 9
	dw	DECO_55d8	; at ( 9, 3), decoration $55d8
	db	 3,11
	dw	DECO_55d8	; at (11, 3), decoration $55d8
	db	 2,17
	dw	DECO_55d8	; at (17, 2), decoration $55d8
	db	 2,19
	dw	DECO_55d8	; at (19, 2), decoration $55d8
	db	 2,21
	dw	DECO_55d8	; at (21, 2), decoration $55d8
	db	 4,11
	dw	DECO_55d8	; at (11, 4), decoration $55d8
	db	 4,13
	dw	DECO_55d8	; at (13, 4), decoration $55d8
	db	 3,21
	dw	DECO_55d8	; at (21, 3), decoration $55d8
	db	 3,23
	dw	DECO_55d8	; at (23, 3), decoration $55d8
	db	$ff

ROOM_433a:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 5, 0, 15, 3	; at ( 0, 5), 15b of floor #3
	db	 7,15, 10, 3	; at (15, 7), 10b of floor #3
	db	10, 6,  4, 3	; at ( 6,10),  4b of floor #3
	db	10,27,  5, 3	; at (27,10),  5b of floor #3
	db	14, 0, 11, 3	; at ( 0,14), 11b of floor #3
	db	14,13, 19, 3	; at (13,14), 19b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	 7,21,  7, 0	; at (21, 7),  7b of ladder #0
	db	$ff
	db	 0, 0
	dw	DECO_5682	; at ( 0, 0), decoration $5682
	db	14, 0
	dw	DECO_568e	; at ( 0,14), decoration $568e
	db	 2,17
	dw	DECO_5640	; at (17, 2), decoration $5640
	db	$ff

ROOM_436d:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	10, 0,  5, 3	; at ( 0,10),  5b of floor #3
	db	 8, 6,  9, 3	; at ( 6, 8),  9b of floor #3
	db	 6,17,  6, 3	; at (17, 6),  6b of floor #3
	db	 4,24,  4, 3	; at (24, 4),  4b of floor #3
	db	 9,23,  9, 3	; at (23, 9),  9b of floor #3
	db	14, 0, 32, 3	; at ( 0,14), 32b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 6,19,  8, 0	; at (19, 6),  8b of ladder #0
	db	14,10,  5, 0	; at (10,14),  5b of ladder #0
	db	$ff
	db	19,19
	dw	DECO_555a	; at (19,19), decoration $555a
	db	 2, 3
	dw	DECO_5640	; at ( 3, 2), decoration $5640
	db	10, 6
	dw	DECO_561c	; at ( 6,10), decoration $561c
	db	10,10
	dw	DECO_562e	; at (10,10), decoration $562e
	db	$ff

ROOM_43a8:
	db	 7, 9, 15, 3	; at ( 9, 7), 15b of floor #3
	db	13, 5, 11, 3	; at ( 5,13), 11b of floor #3
	db	15,20,  9, 3	; at (20,15),  9b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	 0,19,  7, 0	; at (19, 0),  7b of ladder #0
	db	 7,11,  6, 0	; at (11, 7),  6b of ladder #0
	db	 7,22,  8, 0	; at (22, 7),  8b of ladder #0
	db	$ff
	db	17,29
	dw	DECO_55e8	; at (29,17), decoration $55e8
	db	 0,19
	dw	DECO_555d	; at (19, 0), decoration $555d
	db	$ff

ROOM_43cf:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 9, 0, 10, 3	; at ( 0, 9), 10b of floor #3
	db	 6,13, 19, 3	; at (13, 6), 19b of floor #3
	db	14, 0, 32, 3	; at ( 0,14), 32b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 9, 7,  5, 0	; at ( 7, 9),  5b of ladder #0
	db	14,17,  5, 0	; at (17,14),  5b of ladder #0
	db	$ff
	db	 2, 9
	dw	DECO_5640	; at ( 9, 2), decoration $5640
	db	 2,22
	dw	DECO_5640	; at (22, 2), decoration $5640
	db	10,18
	dw	DECO_5651	; at (18,10), decoration $5651
	db	10,22
	dw	DECO_561c	; at (22,10), decoration $561c
	db	10,26
	dw	DECO_561c	; at (26,10), decoration $561c
	db	$ff

ROOM_4402:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 6, 0, 27, 3	; at ( 0, 6), 27b of floor #3
	db	13,11,  4, 3	; at (11,13),  4b of floor #3
	db	11,17, 15, 3	; at (17,11), 15b of floor #3
	db	17, 0, 21, 3	; at ( 0,17), 21b of floor #3
	db	19,28,  4, 3	; at (28,19),  4b of floor #3
	db	$ff
	db	 6, 2, 11, 0	; at ( 2, 6), 11b of ladder #0
	db	17, 7,  3, 0	; at ( 7,17),  3b of ladder #0
	db	11,24,  9, 0	; at (24,11),  9b of ladder #0
	db	$ff
	db	19, 7
	dw	DECO_555d	; at ( 7,19), decoration $555d
	db	19,24
	dw	DECO_555d	; at (24,19), decoration $555d
	db	 7,28
	dw	DECO_562e	; at (28, 7), decoration $562e
	db	$ff

ROOM_4435:
	db	 0, 0,  6, 3	; at ( 0, 0),  6b of floor #3
	db	 6, 0,  4, 3	; at ( 0, 6),  4b of floor #3
	db	10, 4,  7, 3	; at ( 4,10),  7b of floor #3
	db	 8,12,  4, 3	; at (12, 8),  4b of floor #3
	db	 6,17,  4, 3	; at (17, 6),  4b of floor #3
	db	 3,22,  5, 3	; at (22, 3),  5b of floor #3
	db	 8,23,  7, 3	; at (23, 8),  7b of floor #3
	db	14, 0, 11, 3	; at ( 0,14), 11b of floor #3
	db	19, 0, 11, 3	; at ( 0,19), 11b of floor #3
	db	14,11, 21, 2	; at (11,14), 21b of floor #2
	db	19,11, 21, 2	; at (11,19), 21b of floor #2
	db	$ff
	db	 0, 7, 10, 0	; at ( 7, 0), 10b of ladder #0
	db	 0,24,  3, 0	; at (24, 0),  3b of ladder #0
	db	 8,26,  6, 0	; at (26, 8),  6b of ladder #0
	db	$ff
	db	 0, 7
	dw	DECO_555d	; at ( 7, 0), decoration $555d
	db	 0,24
	dw	DECO_555d	; at (24, 0), decoration $555d
	db	14,11
	dw	DECO_568e	; at (11,14), decoration $568e
	db	10,12
	dw	DECO_561c	; at (12,10), decoration $561c
	db	10,16
	dw	DECO_561c	; at (16,10), decoration $561c
	db	10,19
	dw	DECO_561c	; at (19,10), decoration $561c
	db	17, 8
	dw	DECO_567e	; at ( 8,17), decoration $567e
	db	12,29
	dw	DECO_55e8	; at (29,12), decoration $55e8
	db	$ff

ROOM_4490:
	db	11, 0,  4, 3	; at ( 0,11),  4b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	$ff
	db	$ff

ROOM_449b:
	db	 6,22,  5, 3	; at (22, 6),  5b of floor #3
	db	 8,16,  4, 3	; at (16, 8),  4b of floor #3
	db	11, 5,  9, 3	; at ( 5,11),  9b of floor #3
	db	15,14, 10, 3	; at (14,15), 10b of floor #3
	db	19, 0, 18, 3	; at ( 0,19), 18b of floor #3
	db	19,23,  9, 3	; at (23,19),  9b of floor #3
	db	$ff
	db	$ff
	db	19,14
	dw	DECO_567b	; at (14,19), decoration $567b
	db	19,27
	dw	DECO_567b	; at (27,19), decoration $567b
	db	 4,24
	dw	DECO_55e8	; at (24, 4), decoration $55e8
	db	$ff

ROOM_44c2:
	db	 4,12,  7, 3	; at (12, 4),  7b of floor #3
	db	 7, 7,  6, 3	; at ( 7, 7),  6b of floor #3
	db	 8,24,  5, 3	; at (24, 8),  5b of floor #3
	db	11, 3,  6, 3	; at ( 3,11),  6b of floor #3
	db	13,26,  6, 3	; at (26,13),  6b of floor #3
	db	15, 9, 10, 3	; at ( 9,15), 10b of floor #3
	db	$ff
	db	 0,14,  4, 1	; at (14, 0),  4b of ladder #1
	db	 0,27,  8, 1	; at (27, 0),  8b of ladder #1
	db	15,10,  5, 1	; at (10,15),  5b of ladder #1
	db	$ff
	db	 0,14
	dw	DECO_5678	; at (14, 0), decoration $5678
	db	 0,27
	dw	DECO_5678	; at (27, 0), decoration $5678
	db	19,10
	dw	DECO_5678	; at (10,19), decoration $5678
	db	$ff

ROOM_44f5:
	db	 4, 9,  6, 3	; at ( 9, 4),  6b of floor #3
	db	 4,23,  4, 3	; at (23, 4),  4b of floor #3
	db	 8,26,  5, 3	; at (26, 8),  5b of floor #3
	db	12, 6,  5, 3	; at ( 6,12),  5b of floor #3
	db	17,10,  6, 3	; at (10,17),  6b of floor #3
	db	14,23,  5, 3	; at (23,14),  5b of floor #3
	db	$ff
	db	17,13,  3, 1	; at (13,17),  3b of ladder #1
	db	 0,10,  4, 1	; at (10, 0),  4b of ladder #1
	db	 8,26,  6, 1	; at (26, 8),  6b of ladder #1
	db	$ff
	db	 0,10
	dw	DECO_5678	; at (10, 0), decoration $5678
	db	19,13
	dw	DECO_5678	; at (13,19), decoration $5678
	db	$ff

ROOM_4524:
	db	 4,11,  4, 3	; at (11, 4),  4b of floor #3
	db	 6, 7,  3, 3	; at ( 7, 6),  3b of floor #3
	db	 8, 4,  3, 3	; at ( 4, 8),  3b of floor #3
	db	11, 0,  5, 3	; at ( 0,11),  5b of floor #3
	db	14, 5,  3, 3	; at ( 5,14),  3b of floor #3
	db	16, 9,  4, 3	; at ( 9,16),  4b of floor #3
	db	13,14,  4, 3	; at (14,13),  4b of floor #3
	db	13,24,  3, 3	; at (24,13),  3b of floor #3
	db	10,28,  4, 3	; at (28,10),  4b of floor #3
	db	$ff
	db	 0,13,  4, 1	; at (13, 0),  4b of ladder #1
	db	13,15,  7, 1	; at (15,13),  7b of ladder #1
	db	$ff
	db	 0,13
	dw	DECO_5678	; at (13, 0), decoration $5678
	db	19,15
	dw	DECO_5678	; at (15,19), decoration $5678
	db	$ff

ROOM_455b:
	db	 4,15,  2, 3	; at (15, 4),  2b of floor #3
	db	 3,23,  9, 3	; at (23, 3),  9b of floor #3
	db	 7, 0,  8, 3	; at ( 0, 7),  8b of floor #3
	db	 7,12,  3, 3	; at (12, 7),  3b of floor #3
	db	10,15,  3, 3	; at (15,10),  3b of floor #3
	db	 7,27,  3, 3	; at (27, 7),  3b of floor #3
	db	 8,23,  4, 3	; at (23, 8),  4b of floor #3
	db	$ff
	db	 0,15,  4, 1	; at (15, 0),  4b of ladder #1
	db	 7, 5, 13, 1	; at ( 5, 7), 13b of ladder #1
	db	$ff
	db	 0,15
	dw	DECO_5678	; at (15, 0), decoration $5678
	db	19, 5
	dw	DECO_5678	; at ( 5,19), decoration $5678
	db	$ff

ROOM_458a:
	db	 3, 3,  4, 3	; at ( 3, 3),  4b of floor #3
	db	 6, 1,  3, 3	; at ( 1, 6),  3b of floor #3
	db	 9, 6,  8, 3	; at ( 6, 9),  8b of floor #3
	db	12, 1,  3, 3	; at ( 1,12),  3b of floor #3
	db	14, 6,  8, 3	; at ( 6,14),  8b of floor #3
	db	16, 1,  3, 3	; at ( 1,16),  3b of floor #3
	db	10,27,  5, 3	; at (27,10),  5b of floor #3
	db	$ff
	db	 0, 5,  3, 1	; at ( 5, 0),  3b of ladder #1
	db	14,12,  6, 1	; at (12,14),  6b of ladder #1
	db	$ff
	db	 0, 5
	dw	DECO_5678	; at ( 5, 0), decoration $5678
	db	19,12
	dw	DECO_5678	; at (12,19), decoration $5678
	db	 8,29
	dw	DECO_55e8	; at (29, 8), decoration $55e8
	db	$ff

ROOM_45bd:
	db	 4, 9,  6, 3	; at ( 9, 4),  6b of floor #3
	db	 8, 6,  5, 3	; at ( 6, 8),  5b of floor #3
	db	12, 3,  5, 3	; at ( 3,12),  5b of floor #3
	db	16, 0,  5, 3	; at ( 0,16),  5b of floor #3
	db	10,25,  7, 3	; at (25,10),  7b of floor #3
	db	10,18,  1, 3	; at (18,10),  1b of floor #3
	db	14,15,  1, 3	; at (15,14),  1b of floor #3
	db	$ff
	db	 0,12,  4, 1	; at (12, 0),  4b of ladder #1
	db	14,12,  6, 1	; at (12,14),  6b of ladder #1
	db	11,15,  3, 1	; at (15,11),  3b of ladder #1
	db	 7,18,  3, 1	; at (18, 7),  3b of ladder #1
	db	 7,25,  3, 1	; at (25, 7),  3b of ladder #1
	db	$ff
	db	 0,12
	dw	DECO_5678	; at (12, 0), decoration $5678
	db	19,12
	dw	DECO_5678	; at (12,19), decoration $5678
	db	$ff

ROOM_45f8:
	db	 3, 5,  5, 3	; at ( 5, 3),  5b of floor #3
	db	 6,12,  1, 3	; at (12, 6),  1b of floor #3
	db	11, 8,  1, 3	; at ( 8,11),  1b of floor #3
	db	15,11,  1, 3	; at (11,15),  1b of floor #3
	db	16,17,  1, 3	; at (17,16),  1b of floor #3
	db	12,16,  3, 3	; at (16,12),  3b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	 0,12,  6, 1	; at (12, 0),  6b of ladder #1
	db	 7, 8,  4, 1	; at ( 8, 7),  4b of ladder #1
	db	 9,11,  6, 1	; at (11, 9),  6b of ladder #1
	db	12,17,  4, 1	; at (17,12),  4b of ladder #1
	db	16,14,  3, 1	; at (14,16),  3b of ladder #1
	db	$ff
	db	 0,12
	dw	DECO_5678	; at (12, 0), decoration $5678
	db	17,25
	dw	DECO_55e8	; at (25,17), decoration $55e8
	db	17, 2
	dw	DECO_567e	; at ( 2,17), decoration $567e
	db	$ff

ROOM_4637:
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	$ff

ROOM_4642:
	db	 0, 0, 15, 3	; at ( 0, 0), 15b of floor #3
	db	 0,16, 16, 3	; at (16, 0), 16b of floor #3
	db	 5, 0,  4, 3	; at ( 0, 5),  4b of floor #3
	db	 5, 7, 25, 3	; at ( 7, 5), 25b of floor #3
	db	10, 0, 11, 3	; at ( 0,10), 11b of floor #3
	db	10,14, 10, 3	; at (14,10), 10b of floor #3
	db	 8,24,  8, 3	; at (24, 8),  8b of floor #3
	db	12,26,  6, 3	; at (26,12),  6b of floor #3
	db	15, 0,  4, 3	; at ( 0,15),  4b of floor #3
	db	15, 7,  4, 3	; at ( 7,15),  4b of floor #3
	db	15,14,  7, 3	; at (14,15),  7b of floor #3
	db	15,24,  8, 3	; at (24,15),  8b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 0,15,  5, 0	; at (15, 0),  5b of ladder #0
	db	$ff
	db	 6, 2
	dw	DECO_561c	; at ( 2, 6), decoration $561c
	db	 6, 7
	dw	DECO_562e	; at ( 7, 6), decoration $562e
	db	 6,17
	dw	DECO_561c	; at (17, 6), decoration $561c
	db	 2,24
	dw	DECO_5640	; at (24, 2), decoration $5640
	db	 0,15
	dw	DECO_555d	; at (15, 0), decoration $555d
	db	19, 8
	dw	DECO_555a	; at ( 8,19), decoration $555a
	db	19,24
	dw	DECO_555a	; at (24,19), decoration $555a
	db	17, 4
	dw	DECO_55e8	; at ( 4,17), decoration $55e8
	db	17,21
	dw	DECO_55e8	; at (21,17), decoration $55e8
	db	$ff

ROOM_46a1:
	db	13, 0, 32, 3	; at ( 0,13), 32b of floor #3
	db	$ff
	db	 0, 9, 13, 0	; at ( 9, 0), 13b of ladder #0
	db	 0,24, 13, 0	; at (24, 0), 13b of ladder #0
	db	13,15,  7, 0	; at (15,13),  7b of ladder #0
	db	$ff
	db	11,18
	dw	DECO_55e8	; at (18,11), decoration $55e8
	db	 0, 9
	dw	DECO_555d	; at ( 9, 0), decoration $555d
	db	 0,24
	dw	DECO_555d	; at (24, 0), decoration $555d
	db	19,15
	dw	DECO_555d	; at (15,19), decoration $555d
	db	$ff

ROOM_46c4:
	db	 3, 9,  4, 3	; at ( 9, 3),  4b of floor #3
	db	 4,25,  7, 3	; at (25, 4),  7b of floor #3
	db	 5, 3,  4, 3	; at ( 3, 5),  4b of floor #3
	db	 7, 9,  4, 3	; at ( 9, 7),  4b of floor #3
	db	 8,16, 13, 3	; at (16, 8), 13b of floor #3
	db	10, 3,  4, 3	; at ( 3,10),  4b of floor #3
	db	14, 0, 32, 3	; at ( 0,14), 32b of floor #3
	db	$ff
	db	 8,20,  6, 0	; at (20, 8),  6b of ladder #0
	db	14, 9,  6, 0	; at ( 9,14),  6b of ladder #0
	db	14,24,  6, 0	; at (24,14),  6b of ladder #0
	db	$ff
	db	19, 9
	dw	DECO_555d	; at ( 9,19), decoration $555d
	db	19,24
	dw	DECO_555d	; at (24,19), decoration $555d
	db	$ff

ROOM_46f7:
	db	 5, 6,  6, 3	; at ( 6, 5),  6b of floor #3
	db	 9,22,  5, 3	; at (22, 9),  5b of floor #3
	db	11,13,  6, 3	; at (13,11),  6b of floor #3
	db	14, 9, 11, 3	; at ( 9,14), 11b of floor #3
	db	$ff
	db	 0, 8,  5, 0	; at ( 8, 0),  5b of ladder #0
	db	 0,24,  9, 0	; at (24, 0),  9b of ladder #0
	db	17,16,  3, 0	; at (16,17),  3b of ladder #0
	db	$ff
	db	 0, 8
	dw	DECO_555d	; at ( 8, 0), decoration $555d
	db	 0,24
	dw	DECO_555d	; at (24, 0), decoration $555d
	db	19,16
	dw	DECO_555d	; at (16,19), decoration $555d
	db	$ff

ROOM_4722:
	db	 4, 0, 13, 3	; at ( 0, 4), 13b of floor #3
	db	 4,20, 12, 3	; at (20, 4), 12b of floor #3
	db	 9,10,  6, 3	; at (10, 9),  6b of floor #3
	db	13, 6,  6, 3	; at ( 6,13),  6b of floor #3
	db	16,13,  6, 3	; at (13,16),  6b of floor #3
	db	19, 0, 23, 3	; at ( 0,19), 23b of floor #3
	db	$ff
	db	 4, 3, 15, 0	; at ( 3, 4), 15b of ladder #0
	db	 4,24, 16, 0	; at (24, 4), 16b of ladder #0
	db	 0,16, 16, 0	; at (16, 0), 16b of ladder #0
	db	$ff
	db	11, 6
	dw	DECO_55e8	; at ( 6,11), decoration $55e8
	db	 0,16
	dw	DECO_555d	; at (16, 0), decoration $555d
	db	19,24
	dw	DECO_555d	; at (24,19), decoration $555d
	db	19,16
	dw	DECO_555a	; at (16,19), decoration $555a
	db	$ff

ROOM_4759:
	db	 9, 0, 20, 3	; at ( 0, 9), 20b of floor #3
	db	14, 3,  4, 3	; at ( 3,14),  4b of floor #3
	db	14,10,  5, 3	; at (10,14),  5b of floor #3
	db	14,18,  3, 3	; at (18,14),  3b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 0,16,  9, 0	; at (16, 0),  9b of ladder #0
	db	 0,24, 19, 0	; at (24, 0), 19b of ladder #0
	db	14, 4,  5, 0	; at ( 4,14),  5b of ladder #0
	db	$ff
	db	 0,16
	dw	DECO_555d	; at (16, 0), decoration $555d
	db	 0,24
	dw	DECO_555d	; at (24, 0), decoration $555d
	db	 7, 7
	dw	DECO_567e	; at ( 7, 7), decoration $567e
	db	$ff

ROOM_4788:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 5, 0, 14, 3	; at ( 0, 5), 14b of floor #3
	db	 5,23,  9, 3	; at (23, 5),  9b of floor #3
	db	 8, 0, 20, 3	; at ( 0, 8), 20b of floor #3
	db	 8,21,  8, 3	; at (21, 8),  8b of floor #3
	db	12, 0,  7, 3	; at ( 0,12),  7b of floor #3
	db	15, 0,  7, 3	; at ( 0,15),  7b of floor #3
	db	13,12,  7, 3	; at (12,13),  7b of floor #3
	db	13,22, 10, 3	; at (22,13), 10b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	$ff
	db	 1, 5
	dw	DECO_561c	; at ( 5, 1), decoration $561c
	db	 1,10
	dw	DECO_561c	; at (10, 1), decoration $561c
	db	17,25
	dw	DECO_55e8	; at (25,17), decoration $55e8
	db	17,14
	dw	DECO_55e8	; at (14,17), decoration $55e8
	db	$ff

ROOM_47c3:
	db	 5, 0,  3, 3	; at ( 0, 5),  3b of floor #3
	db	13, 0,  5, 3	; at ( 0,13),  5b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	14, 9,  5, 0	; at ( 9,14),  5b of ladder #0
	db	$ff
	db	$ff

ROOM_47d6:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	 6, 0,  6, 3	; at ( 0, 6),  6b of floor #3
	db	13, 0,  4, 3	; at ( 0,13),  4b of floor #3
	db	 5,10,  6, 3	; at (10, 5),  6b of floor #3
	db	 5,21,  5, 3	; at (21, 5),  5b of floor #3
	db	 5,30,  2, 3	; at (30, 5),  2b of floor #3
	db	10, 7, 11, 3	; at ( 7,10), 11b of floor #3
	db	10,19,  9, 3	; at (19,10),  9b of floor #3
	db	10,29,  3, 3	; at (29,10),  3b of floor #3
	db	15, 6, 12, 3	; at ( 6,15), 12b of floor #3
	db	15,19,  9, 3	; at (19,15),  9b of floor #3
	db	15,29,  3, 3	; at (29,15),  3b of floor #3
	db	$ff
	db	$ff
	db	 2, 2
	dw	DECO_561c	; at ( 2, 2), decoration $561c
	db	11,11
	dw	DECO_5651	; at (11,11), decoration $5651
	db	11,22
	dw	DECO_5651	; at (22,11), decoration $5651
	db	$ff

ROOM_4819:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	13, 0, 32, 3	; at ( 0,13), 32b of floor #3
	db	 6, 0, 15, 3	; at ( 0, 6), 15b of floor #3
	db	 6,18,  7, 3	; at (18, 6),  7b of floor #3
	db	 6,27,  5, 3	; at (27, 6),  5b of floor #3
	db	$ff
	db	13,10,  6, 0	; at (10,13),  6b of ladder #0
	db	 6,21,  7, 0	; at (21, 6),  7b of ladder #0
	db	$ff
	db	 9,24
	dw	DECO_561c	; at (24, 9), decoration $561c
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	17,24
	dw	DECO_567e	; at (24,17), decoration $567e
	db	 9, 3
	dw	DECO_561c	; at ( 3, 9), decoration $561c
	db	 9, 7
	dw	DECO_562e	; at ( 7, 9), decoration $562e
	db	14,18
	dw	DECO_568e	; at (18,14), decoration $568e
	db	$ff

ROOM_4854:
	db	11,12,  4, 3	; at (12,11),  4b of floor #3
	db	10,16,  5, 3	; at (16,10),  5b of floor #3
	db	 9,21,  3, 3	; at (21, 9),  3b of floor #3
	db	 8,24,  3, 3	; at (24, 8),  3b of floor #3
	db	 7,27,  5, 3	; at (27, 7),  5b of floor #3
        db      $fe
	db	14, 0, 32, 6	; at ( 0,14), (32 x  6) of ground
	db	$ff
	db	$ff
	db	$ff

ROOM_4870:
	db	 7, 0,  5, 3	; at ( 0, 7),  5b of floor #3
	db	 6, 5,  3, 3	; at ( 5, 6),  3b of floor #3
	db	 5, 8,  3, 3	; at ( 8, 5),  3b of floor #3
	db	 4,11,  3, 3	; at (11, 4),  3b of floor #3
	db	 7,14,  3, 3	; at (14, 7),  3b of floor #3
	db	 8,17,  3, 3	; at (17, 8),  3b of floor #3
	db	 9,20,  3, 3	; at (20, 9),  3b of floor #3
	db	 6,24,  8, 3	; at (24, 6),  8b of floor #3
	db	11,23,  9, 3	; at (23,11),  9b of floor #3
	db	16, 6, 26, 3	; at ( 6,16), 26b of floor #3
        db      $fe
	db	14, 0,  6, 6	; at ( 0,14), ( 6 x  6) of ground
	db	17, 6, 26, 3	; at ( 6,17), (26 x  3) of ground
	db	$ff
	db	 4,12, 12, 3	; at (12, 4), 12b of ladder #3
	db	$ff
	db	$ff

ROOM_48a8:
	db	 6, 0,  8, 3	; at ( 0, 6),  8b of floor #3
	db	11, 0, 11, 3	; at ( 0,11), 11b of floor #3
	db	11,14,  4, 3	; at (14,11),  4b of floor #3
	db	10,18,  3, 3	; at (18,10),  3b of floor #3
	db	 9,21,  3, 3	; at (21, 9),  3b of floor #3
	db	16, 0, 23, 3	; at ( 0,16), 23b of floor #3
        db      $fe
	db	17, 0, 23, 3	; at ( 0,17), (23 x  3) of ground
	db	 7,25,  7,13	; at (25, 7), ( 7 x 13) of ground
	db	$ff
	db	16,20,  4, 3	; at (20,16),  4b of ladder #3
	db	$ff
	db	 5,28
	dw	DECO_55e8	; at (28, 5), decoration $55e8
	db	19,20
	dw	DECO_566f	; at (20,19), decoration $566f
	db	$ff

ROOM_48d8:
        db      $fe
	db	 0, 0, 23,20	; at ( 0, 0), (23 x 20) of ground
	db	 0,25,  7,20	; at (25, 0), ( 7 x 20) of ground
	db	$ff
	db	 0,20, 20, 3	; at (20, 0), 20b of ladder #3
	db	$ff
	db	 0,20
	dw	DECO_566f	; at (20, 0), decoration $566f
	db	19,20
	dw	DECO_566f	; at (20,19), decoration $566f
	db	$ff

ROOM_48f0:
        db      $fe
	db	 0, 0, 23,11	; at ( 0, 0), (23 x 11) of ground
	db	11, 0,  7, 9	; at ( 0,11), ( 7 x  9) of ground
	db	14,10, 13, 6	; at (10,14), (13 x  6) of ground
	db	 0,25,  9,20	; at (25, 0), ( 9 x 20) of ground
	db	$ff
	db	 0,20, 14, 3	; at (20, 0), 14b of ladder #3
	db	14, 9,  6, 3	; at ( 9,14),  6b of ladder #3
	db	$ff
	db	 0,20
	dw	DECO_566f	; at (20, 0), decoration $566f
	db	19, 9
	dw	DECO_566f	; at ( 9,19), decoration $566f
	db	$ff

ROOM_4914:
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
        db      $fe
	db	 0, 0,  7, 3	; at ( 0, 0), ( 7 x  3) of ground
	db	 0,10, 13, 3	; at (10, 0), (13 x  3) of ground
	db	 7,12, 20,10	; at (12, 7), (20 x 10) of ground
	db	$ff
	db	 0, 9, 19, 3	; at ( 9, 0), 19b of ladder #3
	db	$ff
	db	17, 3
	dw	DECO_55e8	; at ( 3,17), decoration $55e8
	db	 0, 9
	dw	DECO_566f	; at ( 9, 0), decoration $566f
	db	17, 1
	dw	DECO_567e	; at ( 1,17), decoration $567e
	db	$ff

ROOM_4938:
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	 7,16, 16, 3	; at (16, 7), 16b of floor #3
	db	14,20,  3, 3	; at (20,14),  3b of floor #3
	db	13,23,  3, 3	; at (23,13),  3b of floor #3
	db	12,26,  6, 3	; at (26,12),  6b of floor #3
        db      $fe
	db	 7, 0,  8,10	; at ( 0, 7), ( 8 x 10) of ground
	db	10, 8,  2, 7	; at ( 8,10), ( 2 x  7) of ground
	db	13,10,  2, 4	; at (10,13), ( 2 x  4) of ground
	db	15,12,  8, 2	; at (12,15), ( 8 x  2) of ground
	db	$ff
	db	 7,21,  7, 3	; at (21, 7),  7b of ladder #3
	db	$ff
	db	13,15
	dw	DECO_55e8	; at (15,13), decoration $55e8
	db	$ff

ROOM_4968:
	db	 7, 0, 32, 3	; at ( 0, 7), 32b of floor #3
	db	12, 0, 26, 3	; at ( 0,12), 26b of floor #3
	db	19, 0,  5, 3	; at ( 0,19),  5b of floor #3
        db      $fe
	db	18, 5,  4, 2	; at ( 5,18), ( 4 x  2) of ground
	db	17, 9,  5, 3	; at ( 9,17), ( 5 x  3) of ground
	db	16,14, 18, 4	; at (14,16), (18 x  4) of ground
	db	$ff
	db	 7,28,  9, 3	; at (28, 7),  9b of ladder #3
	db	$ff
	db	$ff

ROOM_4988:
	db	 7, 0, 13, 3	; at ( 0, 7), 13b of floor #3
	db	 4,18, 14, 3	; at (18, 4), 14b of floor #3
        db      $fe
	db	16, 0,  8, 4	; at ( 0,16), ( 8 x  4) of ground
	db	15, 8,  5, 5	; at ( 8,15), ( 5 x  5) of ground
	db	14,13,  5, 6	; at (13,14), ( 5 x  6) of ground
	db	13,18,  8, 7	; at (18,13), ( 8 x  7) of ground
	db	10,26,  6,10	; at (26,10), ( 6 x 10) of ground
	db	$ff
	db	 4,20,  9, 3	; at (20, 4),  9b of ladder #3
	db	$ff
	db	12,15
	dw	DECO_55e8	; at (15,12), decoration $55e8
	db	$ff

ROOM_49b0:
	db	 4, 0,  8, 3	; at ( 0, 4),  8b of floor #3
        db      $fe
	db	10, 0,  8,10	; at ( 0,10), ( 8 x 10) of ground
	db	13, 8, 24, 7	; at ( 8,13), (24 x  7) of ground
	db	 4, 8, 24, 4	; at ( 8, 4), (24 x  4) of ground
	db	 0, 8, 24, 2	; at ( 8, 0), (24 x  2) of ground
	db	$ff
	db	$ff
	db	$ff

ROOM_49c8:
        db      $fe
	db	 0, 0, 22, 2	; at ( 0, 0), (22 x  2) of ground
	db	 4, 0, 22, 4	; at ( 0, 4), (22 x  4) of ground
	db	 0,22, 10, 8	; at (22, 0), (10 x  8) of ground
	db	13, 0, 32, 7	; at ( 0,13), (32 x  7) of ground
	db	$ff
	db	$ff
	db	11,14
	dw	DECO_55e8	; at (14,11), decoration $55e8
	db	 2,20
	dw	DECO_567e	; at (20, 2), decoration $567e
	db	$ff

ROOM_49e4:
	db	 5, 8,  9, 3	; at ( 8, 5),  9b of floor #3
	db	10,20,  2, 3	; at (20,10),  2b of floor #3
	db	 9,23,  2, 3	; at (23, 9),  2b of floor #3
	db	 8,26,  3, 3	; at (26, 8),  3b of floor #3
        db      $fe
	db	 0, 0,  5, 8	; at ( 0, 0), ( 5 x  8) of ground
	db	13, 0, 32, 7	; at ( 0,13), (32 x  7) of ground
	db	$ff
	db	 5, 9,  8, 3	; at ( 9, 5),  8b of ladder #3
	db	 0,15,  5, 3	; at (15, 0),  5b of ladder #3
	db	 0,27,  8, 3	; at (27, 0),  8b of ladder #3
	db	$ff
	db	 3,10
	dw	DECO_55e8	; at (10, 3), decoration $55e8
	db	 0,15
	dw	DECO_566f	; at (15, 0), decoration $566f
	db	 0,27
	dw	DECO_566f	; at (27, 0), decoration $566f
	db	$ff

ROOM_4a18:
        db      $fe
	db	 0, 0,  5,20	; at ( 0, 0), ( 5 x 20) of ground
	db	 0, 5,  6,18	; at ( 5, 0), ( 6 x 18) of ground
	db	 0,11, 12, 7	; at (11, 0), (12 x  7) of ground
	db	10,11, 12, 7	; at (11,10), (12 x  7) of ground
	db	$ff
	db	10,15, 10, 3	; at (15,10), 10b of ladder #3
	db	 0,27, 20, 3	; at (27, 0), 20b of ladder #3
	db	$ff
	db	19,15
	dw	DECO_566f	; at (15,19), decoration $566f
	db	 0,27
	dw	DECO_566f	; at (27, 0), decoration $566f
	db	19,27
	dw	DECO_566f	; at (27,19), decoration $566f
	db	$ff

ROOM_4a40:
	db	15,20, 12, 3	; at (20,15), 12b of floor #3
        db      $fe
	db	 0, 0, 32,11	; at ( 0, 0), (32 x 11) of ground
	db	11, 0,  9, 7	; at ( 0,11), ( 9 x  7) of ground
	db	18, 0, 23, 2	; at ( 0,18), (23 x  2) of ground
	db	$ff
	db	15,27,  5, 3	; at (27,15),  5b of ladder #3
	db	$ff
	db	16,12
	dw	DECO_55e8	; at (12,16), decoration $55e8
	db	19,27
	dw	DECO_566f	; at (27,19), decoration $566f
	db	$ff

ROOM_4a60:
        db      $fe
	db	15, 0,  5, 5	; at ( 0,15), ( 5 x  5) of ground
	db	18, 5, 27, 2	; at ( 5,18), (27 x  2) of ground
	db	$ff
	db	$ff
	db	$ff

ROOM_4a6c:
	db	 9, 0,  5, 3	; at ( 0, 9),  5b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	14,10,  1, 3	; at (10,14),  1b of floor #3
	db	15,14,  1, 3	; at (14,15),  1b of floor #3
	db	16,18,  1, 3	; at (18,16),  1b of floor #3
	db	15,22,  1, 3	; at (22,15),  1b of floor #3
	db	14,27,  1, 3	; at (27,14),  1b of floor #3
	db	 9,27,  5, 3	; at (27, 9),  5b of floor #3
	db	 4, 7,  4, 3	; at ( 7, 4),  4b of floor #3
	db	$ff
	db	 9, 4, 10, 2	; at ( 4, 9), 10b of ladder #2
	db	 9,10,  5, 2	; at (10, 9),  5b of ladder #2
	db	 7,14,  8, 2	; at (14, 7),  8b of ladder #2
	db	 4,18, 12, 2	; at (18, 4), 12b of ladder #2
	db	 7,22,  8, 2	; at (22, 7),  8b of ladder #2
	db	 9,27,  5, 2	; at (27, 9),  5b of ladder #2
	db	$ff
	db	$ff

ROOM_4aab:
	db	 4, 2,  4, 3	; at ( 2, 4),  4b of floor #3
	db	 6,11,  4, 3	; at (11, 6),  4b of floor #3
	db	 4,18,  4, 3	; at (18, 4),  4b of floor #3
	db	 3,25,  7, 3	; at (25, 3),  7b of floor #3
	db	 9, 0,  8, 3	; at ( 0, 9),  8b of floor #3
	db	14, 2,  8, 3	; at ( 2,14),  8b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
        db      $fe
	db	10,10, 22,10	; at (10,10), (22 x 10) of ground
	db	$ff
	db	$ff
	db	 8,20
	dw	DECO_55e8	; at (20, 8), decoration $55e8
	db	$ff

ROOM_4ad3:
	db	 3, 0,  5, 3	; at ( 0, 3),  5b of floor #3
	db	 5, 6,  3, 3	; at ( 6, 5),  3b of floor #3
	db	 6,10,  3, 3	; at (10, 6),  3b of floor #3
	db	 4,14,  4, 3	; at (14, 4),  4b of floor #3
	db	 7,18,  3, 3	; at (18, 7),  3b of floor #3
	db	 7,24,  8, 3	; at (24, 7),  8b of floor #3
        db      $fe
	db	10, 0, 15,10	; at ( 0,10), (15 x 10) of ground
	db	 8,24,  8,12	; at (24, 8), ( 8 x 12) of ground
	db	$ff
	db	 7,19, 13, 2	; at (19, 7), 13b of ladder #2
	db	$ff
	db	19,19
	dw	DECO_5672	; at (19,19), decoration $5672
	db	$ff

ROOM_4aff:
	db	 7,18, 14, 3	; at (18, 7), 14b of floor #3
        db      $fe
	db	 0, 0, 15,20	; at ( 0, 0), (15 x 20) of ground
	db	 0,24,  8, 4	; at (24, 0), ( 8 x  4) of ground
	db	 8,24,  8,12	; at (24, 8), ( 8 x 12) of ground
	db	15,15,  9, 5	; at (15,15), ( 9 x  5) of ground
	db	$ff
	db	 0,19,  7, 2	; at (19, 0),  7b of ladder #2
	db	$ff
	db	13,18
	dw	DECO_55e8	; at (18,13), decoration $55e8
	db	 0,19
	dw	DECO_5672	; at (19, 0), decoration $5672
	db	$ff

ROOM_4b23:
	db	 7, 9,  6, 3	; at ( 9, 7),  6b of floor #3
        db      $fe
	db	 0, 0,  9, 5	; at ( 0, 0), ( 9 x  5) of ground
	db	 5, 0,  2, 2	; at ( 0, 5), ( 2 x  2) of ground
	db	 7, 0,  9,10	; at ( 0, 7), ( 9 x 10) of ground
	db	14,16, 16, 6	; at (16,14), (16 x  6) of ground
	db	$ff
	db	 7,11, 13, 2	; at (11, 7), 13b of ladder #2
	db	$ff
	db	19,11
	dw	DECO_5672	; at (11,19), decoration $5672
	db	12,22
	dw	DECO_55e8	; at (22,12), decoration $55e8
	db	 5, 3
	dw	DECO_567e	; at ( 3, 5), decoration $567e
	db	$ff

ROOM_4b4b:
	db	10,10,  3, 3	; at (10,10),  3b of floor #3
	db	12,15,  3, 3	; at (15,12),  3b of floor #3
	db	14,20,  3, 3	; at (20,14),  3b of floor #3
	db	11,24,  3, 3	; at (24,11),  3b of floor #3
	db	 7, 0,  6, 3	; at ( 0, 7),  6b of floor #3
        db      $fe
	db	 8, 0,  6,12	; at ( 0, 8), ( 6 x 12) of ground
	db	17, 6, 26, 3	; at ( 6,17), (26 x  3) of ground
	db	 0,16, 16, 8	; at (16, 0), (16 x  8) of ground
	db	 8,29,  3,10	; at (29, 8), ( 3 x 10) of ground
	db	$ff
	db	 0,11, 10, 2	; at (11, 0), 10b of ladder #2
	db	$ff
	db	 0,11
	dw	DECO_5672	; at (11, 0), decoration $5672
	db	$ff

ROOM_4b7b:
	db	 5, 7, 25, 3	; at ( 7, 5), 25b of floor #3
	db	10,11, 21, 3	; at (11,10), 21b of floor #3
	db	14, 9, 23, 3	; at ( 9,14), 23b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
        db      $fe
	db	 0, 0,  2, 4	; at ( 0, 0), ( 2 x  4) of ground
	db	 7, 0,  4,13	; at ( 0, 7), ( 4 x 13) of ground
	db	$ff
	db	 5,14,  5, 2	; at (14, 5),  5b of ladder #2
	db	10,22,  4, 2	; at (22,10),  4b of ladder #2
	db	14,17,  5, 2	; at (17,14),  5b of ladder #2
	db	$ff
	db	17, 4
	dw	DECO_55e8	; at ( 4,17), decoration $55e8
	db	$ff

ROOM_4ba7:
        db      $fe
	db	 0, 0,  7,11	; at ( 0, 0), ( 7 x 11) of ground
	db	 0,11, 10,11	; at (11, 0), (10 x 11) of ground
	db	 0,25,  7,11	; at (25, 0), ( 7 x 11) of ground
	db	14, 0, 32, 6	; at ( 0,14), (32 x  6) of ground
	db	$ff
	db	$ff
	db	$ff

ROOM_4bbb:
	db	 6, 9, 23, 3	; at ( 9, 6), 23b of floor #3
        db      $fe
	db	 0, 0,  4,11	; at ( 0, 0), ( 4 x 11) of ground
	db	14, 0, 32, 6	; at ( 0,14), (32 x  6) of ground
	db	$ff
	db	 6,11,  8, 2	; at (11, 6),  8b of ladder #2
	db	$ff
	db	$ff

ROOM_4bcf:
	db	 6, 0,  7, 3	; at ( 0, 6),  7b of floor #3
	db	 8, 8,  5, 3	; at ( 8, 8),  5b of floor #3
	db	 4,15, 11, 3	; at (15, 4), 11b of floor #3
	db	 7,24,  8, 3	; at (24, 7),  8b of floor #3
        db      $fe
	db	14, 0,  9, 6	; at ( 0,14), ( 9 x  6) of ground
	db	14,11,  7, 6	; at (11,14), ( 7 x  6) of ground
	db	14,20, 12, 6	; at (20,14), (12 x  6) of ground
	db	$ff
	db	 4,16, 10, 2	; at (16, 4), 10b of ladder #2
	db	$ff
	db	12,26
	dw	DECO_55e8	; at (26,12), decoration $55e8
	db	$ff

ROOM_4bf7:
        db      $fe
	db	 0, 0,  9, 3	; at ( 0, 0), ( 9 x  3) of ground
	db	 3, 0,  3,17	; at ( 0, 3), ( 3 x 17) of ground
	db	12, 3, 15, 8	; at ( 3,12), (15 x  8) of ground
	db	 7, 5,  6, 3	; at ( 5, 7), ( 6 x  3) of ground
	db	 0,11,  7,10	; at (11, 0), ( 7 x 10) of ground
	db	 0,20, 12,20	; at (20, 0), (12 x 20) of ground
	db	$ff
	db	$ff
	db	$ff

ROOM_4c13:
        db      $fe
	db	 0, 0, 18, 2	; at ( 0, 0), (18 x  2) of ground
	db	 0,20, 12, 2	; at (20, 0), (12 x  2) of ground
	db	16, 0, 32, 4	; at ( 0,16), (32 x  4) of ground
	db	$ff
	db	$ff
	db	14,25
	dw	DECO_55e8	; at (25,14), decoration $55e8
	db	$ff

ROOM_4c27:
	db	 5, 0,  4, 3	; at ( 0, 5),  4b of floor #3
	db	 5, 6,  4, 3	; at ( 6, 5),  4b of floor #3
	db	 5,13,  4, 3	; at (13, 5),  4b of floor #3
	db	 5,20,  4, 3	; at (20, 5),  4b of floor #3
	db	 5,27,  5, 3	; at (27, 5),  5b of floor #3
	db	10, 0,  4, 3	; at ( 0,10),  4b of floor #3
	db	 8, 6,  3, 3	; at ( 6, 8),  3b of floor #3
	db	11,11, 10, 3	; at (11,11), 10b of floor #3
	db	10,25,  7, 3	; at (25,10),  7b of floor #3
	db	14, 0,  8, 3	; at ( 0,14),  8b of floor #3
	db	14,11,  4, 3	; at (11,14),  4b of floor #3
	db	14,17,  3, 3	; at (17,14),  3b of floor #3
	db	14,23,  4, 3	; at (23,14),  4b of floor #3
	db	14,29,  3, 3	; at (29,14),  3b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	$ff
	db	$ff

ROOM_4c66:
	db	 5, 0, 13, 3	; at ( 0, 5), 13b of floor #3
	db	10, 0, 18, 3	; at ( 0,10), 18b of floor #3
	db	14, 0,  6, 3	; at ( 0,14),  6b of floor #3
	db	14, 8, 13, 3	; at ( 8,14), 13b of floor #3
	db	10,23,  3, 3	; at (23,10),  3b of floor #3
	db	 9,26,  3, 3	; at (26, 9),  3b of floor #3
	db	 8,29,  3, 3	; at (29, 8),  3b of floor #3
	db	19, 0, 32, 2	; at ( 0,19), 32b of floor #2
	db	$ff
	db	 5,11,  5, 2	; at (11, 5),  5b of ladder #2
	db	$ff
	db	19,22
	dw	DECO_5675	; at (22,19), decoration $5675
	db	$ff

ROOM_4c91:
	db	 4,11, 14, 3	; at (11, 4), 14b of floor #3
	db	11, 8,  8, 3	; at ( 8,11),  8b of floor #3
	db	15, 4,  6, 3	; at ( 4,15),  6b of floor #3
	db	16,17, 12, 3	; at (17,16), 12b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 0,22,  4, 2	; at (22, 0),  4b of ladder #2
	db	 4,12,  7, 2	; at (12, 4),  7b of ladder #2
	db	 4,20, 12, 2	; at (20, 4), 12b of ladder #2
	db	15, 7,  4, 2	; at ( 7,15),  4b of ladder #2
	db	16,26,  3, 2	; at (26,16),  3b of ladder #2
	db	$ff
	db	 0,22
	dw	DECO_5672	; at (22, 0), decoration $5672
	db	$ff

ROOM_4cc0:
	db	 6, 8,  5, 3	; at ( 8, 6),  5b of floor #3
	db	 4,21,  4, 3	; at (21, 4),  4b of floor #3
	db	11, 9, 15, 3	; at ( 9,11), 15b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 6,10,  5, 2	; at (10, 6),  5b of ladder #2
	db	 4,22,  7, 2	; at (22, 4),  7b of ladder #2
	db	11,15,  8, 2	; at (15,11),  8b of ladder #2
	db	$ff
	db	19,10
	dw	DECO_5675	; at (10,19), decoration $5675
	db	19,22
	dw	DECO_5675	; at (22,19), decoration $5675
	db	$ff

ROOM_4ce7:
	db	 7,21, 11, 3	; at (21, 7), 11b of floor #3
        db      $fe
	db	10, 0, 32, 4	; at ( 0,10), (32 x  4) of ground
	db	14, 0,  7, 2	; at ( 0,14), ( 7 x  2) of ground
	db	16, 0, 32, 4	; at ( 0,16), (32 x  4) of ground
	db	$ff
	db	 0,10, 16, 2	; at (10, 0), 16b of ladder #2
	db	 0,22,  7, 2	; at (22, 0),  7b of ladder #2
	db	$ff
	db	 0,10
	dw	DECO_5672	; at (10, 0), decoration $5672
	db	 0,22
	dw	DECO_5672	; at (22, 0), decoration $5672
	db	$ff

ROOM_4d0b:
	db	 7, 0, 21, 3	; at ( 0, 7), 21b of floor #3
	db	 7,25,  7, 3	; at (25, 7),  7b of floor #3
        db      $fe
	db	10, 0, 14, 4	; at ( 0,10), (14 x  4) of ground
	db	16, 0, 32, 4	; at ( 0,16), (32 x  4) of ground
	db	$ff
	db	$ff
	db	14,30
	dw	DECO_567e	; at (30,14), decoration $567e
	db	$ff

ROOM_4d23:
	db	10,15, 12, 3	; at (15,10), 12b of floor #3
        db      $fe
	db	 0, 0, 15,20	; at ( 0, 0), (15 x 20) of ground
	db	 0,15, 12, 5	; at (15, 0), (12 x  5) of ground
	db	 0,29,  3, 5	; at (29, 0), ( 3 x  5) of ground
	db	18,15, 17, 2	; at (15,18), (17 x  2) of ground
	db	$ff
	db	10,21,  8, 2	; at (21,10),  8b of ladder #2
	db	$ff
	db	 8,18
	dw	DECO_55e8	; at (18, 8), decoration $55e8
	db	$ff

ROOM_4d43:
	db	 9, 7,  5, 3	; at ( 7, 9),  5b of floor #3
	db	15,10, 12, 3	; at (10,15), 12b of floor #3
	db	 9,20,  5, 3	; at (20, 9),  5b of floor #3
        db      $fe
	db	18, 0, 32, 2	; at ( 0,18), (32 x  2) of ground
	db	$ff
	db	 5,11,  4, 2	; at (11, 5),  4b of ladder #2
	db	 9,10,  6, 2	; at (10, 9),  6b of ladder #2
	db	 5,20,  4, 2	; at (20, 5),  4b of ladder #2
	db	 9,21,  6, 2	; at (21, 9),  6b of ladder #2
	db	15,13,  3, 2	; at (13,15),  3b of ladder #2
	db	15,18,  3, 2	; at (18,15),  3b of ladder #2
	db	$ff
	db	$ff

ROOM_4d6f:
	db	 4, 4,  5, 3	; at ( 4, 4),  5b of floor #3
	db	 4,11, 12, 3	; at (11, 4), 12b of floor #3
	db	 4,25,  5, 3	; at (25, 4),  5b of floor #3
	db	 7, 1,  3, 3	; at ( 1, 7),  3b of floor #3
	db	 7,28,  3, 3	; at (28, 7),  3b of floor #3
	db	 8,15,  6, 3	; at (15, 8),  6b of floor #3
	db	10, 4,  5, 3	; at ( 4,10),  5b of floor #3
	db	10,25,  5, 3	; at (25,10),  5b of floor #3
	db	15,11, 12, 3	; at (11,15), 12b of floor #3
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 4,11, 11, 0	; at (11, 4), 11b of ladder #0
	db	10, 6,  9, 0	; at ( 6,10),  9b of ladder #0
	db	10,27,  9, 0	; at (27,10),  9b of ladder #0
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	 1, 0
	dw	DECO_565b	; at ( 0, 1), decoration $565b
	db	 1,31
	dw	DECO_565b	; at (31, 1), decoration $565b
	db	$ff

ROOM_4db6:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 4,11, 12, 3	; at (11, 4), 12b of floor #3
	db	 8, 4,  5, 3	; at ( 4, 8),  5b of floor #3
	db	 8,25,  5, 3	; at (25, 8),  5b of floor #3
	db	 9,12, 10, 3	; at (12, 9), 10b of floor #3
	db	15,10,  3, 3	; at (10,15),  3b of floor #3
	db	15,21,  3, 3	; at (21,15),  3b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 8, 6, 11, 0	; at ( 6, 8), 11b of ladder #0
	db	 4,11, 11, 0	; at (11, 4), 11b of ladder #0
	db	 4,22, 11, 0	; at (22, 4), 11b of ladder #0
	db	 8,27, 11, 0	; at (27, 8), 11b of ladder #0
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	 1, 0
	dw	DECO_565b	; at ( 0, 1), decoration $565b
	db	 1,31
	dw	DECO_565b	; at (31, 1), decoration $565b
	db	$ff

ROOM_4df5:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 4,11, 12, 3	; at (11, 4), 12b of floor #3
	db	 9,11, 12, 3	; at (11, 9), 12b of floor #3
	db	15,11, 12, 3	; at (11,15), 12b of floor #3
	db	 7, 4,  5, 3	; at ( 4, 7),  5b of floor #3
	db	 4,26,  5, 3	; at (26, 4),  5b of floor #3
	db	12,26,  5, 3	; at (26,12),  5b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 7, 6, 12, 0	; at ( 6, 7), 12b of ladder #0
	db	 4,11,  5, 0	; at (11, 4),  5b of ladder #0
	db	 9,22,  6, 0	; at (22, 9),  6b of ladder #0
	db	12,28,  7, 0	; at (28,12),  7b of ladder #0
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	 1, 0
	dw	DECO_565b	; at ( 0, 1), decoration $565b
	db	 1,31
	dw	DECO_565b	; at (31, 1), decoration $565b
	db	$ff

ROOM_4e34:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 3,14,  5, 3	; at (14, 3),  5b of floor #3
	db	 6,10,  3, 3	; at (10, 6),  3b of floor #3
	db	 6,20,  3, 3	; at (20, 6),  3b of floor #3
	db	 9, 4,  5, 3	; at ( 4, 9),  5b of floor #3
	db	 9,24,  5, 3	; at (24, 9),  5b of floor #3
	db	12,10,  3, 3	; at (10,12),  3b of floor #3
	db	12,20,  3, 3	; at (20,12),  3b of floor #3
	db	15, 6,  3, 3	; at ( 6,15),  3b of floor #3
	db	15,14,  5, 3	; at (14,15),  5b of floor #3
	db	15,24,  3, 3	; at (24,15),  3b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 3,16, 12, 0	; at (16, 3), 12b of ladder #0
	db	15, 7,  4, 0	; at ( 7,15),  4b of ladder #0
	db	15,25,  4, 0	; at (25,15),  4b of ladder #0
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	 1, 0
	dw	DECO_565b	; at ( 0, 1), decoration $565b
	db	 1,31
	dw	DECO_565b	; at (31, 1), decoration $565b
	db	$ff

ROOM_4e7f:
	db	 0, 0, 32, 3	; at ( 0, 0), 32b of floor #3
	db	 4,11, 12, 3	; at (11, 4), 12b of floor #3
	db	 6, 4,  5, 3	; at ( 4, 6),  5b of floor #3
	db	 6,25,  5, 3	; at (25, 6),  5b of floor #3
	db	10, 4,  5, 3	; at ( 4,10),  5b of floor #3
	db	10,25,  5, 3	; at (25,10),  5b of floor #3
	db	15,11, 12, 3	; at (11,15), 12b of floor #3
	db	19, 0, 32, 3	; at ( 0,19), 32b of floor #3
	db	$ff
	db	 4,11, 11, 0	; at (11, 4), 11b of ladder #0
	db	 4,22, 11, 0	; at (22, 4), 11b of ladder #0
	db	10, 6,  9, 0	; at ( 6,10),  9b of ladder #0
	db	10,27,  9, 0	; at (27,10),  9b of ladder #0
	db	$ff
	db	17, 1
	dw	DECO_55e8	; at ( 1,17), decoration $55e8
	db	 1, 0
	dw	DECO_565b	; at ( 0, 1), decoration $565b
	db	 1,31
	dw	DECO_565b	; at (31, 1), decoration $565b
	db	$ff

L4EBE_ROOM_ENTITIES_TABLE:
; Rooms of MAP #1
        dw      $4f52 ; $00 ; (unused)
        dw      $4f52 ; $01
        dw      $4f5a ; $02
        dw      $4f65 ; $03
        dw      $4f7c ; $04
        dw      $4f99 ; $05
        dw      $4fb1 ; $06
        dw      $4fd6 ; $07
        dw      $4ff0 ; $08
	dw      $5011 ; $09
; Rooms of MAP #2
        dw      $5027 ; $0A
        dw      $5037 ; $0B
        dw      $504a ; $0C
        dw      $505d ; $0D
        dw      $5070 ; $0E
        dw      $507f ; $0F
        dw      $5092 ; $10
        dw      $50a1 ; $11
        dw      $50bb ; $12
        dw      $4f52 ; $13 ; (unused)
        dw      $4f52 ; $14 ; (unused)
        dw      $4f52 ; $15 ; (unused)
        dw      $4f52 ; $16 ; (unused)
; Rooms of MAP #3
        dw      $50c1 ; $17
        dw      $50e1 ; $18
        dw      $50f9 ; $19
        dw      $510c ; $1A
        dw      $511f ; $1B
        dw      $5138 ; $1C
        dw      $5155 ; $1D
        dw      $518b ; $1E
        dw      $518d ; $1F
        dw      $51b3 ; $20
; Rooms of MAP #4
        dw      $51e8 ; $21
        dw      $51f0 ; $22
        dw      $5209 ; $23
        dw      $5216 ; $24
        dw      $5218 ; $25
        dw      $5221 ; $26
        dw      $5238 ; $27
        dw      $5252 ; $28
        dw      $5264 ; $29
        dw      $5282 ; $2A
        dw      $528d ; $2B
        dw      $52a3 ; $2C
        dw      $52af ; $2D
        dw      $52bb ; $2E
        dw      $52c1 ; $2F
; Rooms of MAP #5
        dw      $52c3 ; $30
        dw      $52d9 ; $31
        dw      $52f3 ; $32
        dw      $5306 ; $33
        dw      $5312 ; $34
        dw      $5322 ; $35
        dw      $5328 ; $36
        dw      $533d ; $37
        dw      $533d ; $38
        dw      $5347 ; $39
        dw      $5362 ; $3A
        dw      $5377 ; $3B
        dw      $5380 ; $3C
        dw      $5389 ; $3D
        dw      $53ab ; $3E
        dw      $53ce ; $3F
        dw      $53e6 ; $40
        dw      $5405 ; $41
        dw      $540d ; $42
        dw      $541c ; $43
        dw      $5425 ; $44
; Rooms of MAP #6
        dw      $5427 ; $45 "C"
        dw      $543f ; $46 "A"
        dw      $545b ; $47 "S"
        dw      $547b ; $48 "I"
        dw      $5497 ; $49 "O"

; Room entities (not decoded yet!)
L4F52:
        incbin  "original/YoukaiYashiki.rom", $4f52 - $4000, $54C7 - $4f52
{ sample:
ROOM_ENTITIES_4F52:
        DB      58h             ; Saved to E340 + $00 (Y?)
        DB      10h             ; Saved to E340 + $01 (X?)
        DB      01h             ; Saved to E340 + $04
        DB      50h             ; Saved to E340 + $10 (Y?)
        DB      0C0h            ; Saved to E340 + $11 (X?)
        DB      01h             ; Saved to E340 + $14
        DB      0FFh            ; FF prefix: hl = E400
        DB      0FFh            ; FF FF prefix: end
ROOM_ENTITIES_4F5a:
        DB      60h             ; Saved to E340 + $00 (Y?)
        DB      50h             ; Saved to E340 + $01 (X?)
        DB      01h             ; Saved to E340 + $04
        DB      58h             ; Saved to E340 + $10 (Y?)
        DB      0D0h            ; Saved to E340 + $11 (X?)
        DB      01h             ; Saved to E340 + $14
        DB      50h             ; Saved to E340 + $20 (Y?)
        DB      80h             ; Saved to E340 + $21 (X?)
        DB      01h             ; Saved to E340 + $24
        DB      0FFh            ; FF prefix: hl = E400
        DB      0FFh            ; FF FF prefix: end
ROOM_ENTITIES_4f65:
        DB      28h
        DB      48h
        DB      03h
        DB      70h
        DB      80h
        DB      03h
        DB      98h
        DB      0A8h
        DB      03h
        DB      0FFh            ; FF prefix: hl = E400
        DB      28h
        DB      18h
        DB      02h
        DB      03h
        DB      58h
        DB      38h
        DB      07h
        DB      00h
        DB      20h
        DB      0C0h
        DB      10h
        DB      0Ah
        DB      0FFh            ; FF FF prefix: end
ROOM_ENTITIES_4f7c:
        DB      ...
}

L54C7_FLOORS_TABLE:
        DW      L54CF_FLOOR_0 ; Grass
        DW      L54EF_FLOOR_1 ; Rock
        DW      L550F_FLOOR_2 ; Stone
        DW      L552F_FLOOR_3 ; Wood
L54CF_FLOOR_0:
        DB      "HIJIJHHJHHIJHJJIIJHHIHJIIIJHJJJH"
L54EF_FLOOR_1:
        DB      "OOKKKOKKOOKOOKOOOOOOOKKOOOKOKKKK"
L550F_FLOOR_2:
        DB      "LLLMNNNMLMMMLNNNMMNMMNNMLNMLLNMM"
L552F_FLOOR_3:
        DB      "CABCFCFDEFCABDEFCFDEFCFCFCABCFDE"

DECO_554F:  DB      80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h, 80h
DECO_555A:          DB      01h, 01h, 30h                   ; 1x1, rope (floor)
DECO_555D:          DB      01h, 01h, 38h                   ; 1x1, rope (middle)
DECO_5560:  DB      04h, 0Eh                                ; 4x14: house exterior
                DB      80h, 80h, 0F2h, 5Ch
                DB      80h, 0F4h, 0F8h, 5Dh
                DB      80h, 0F3h, 0F7h, 5Eh
                DB      80h, 0F8h, 0FBh, 5Fh
                DB      0FFh, 0EFh, 0F0h, 5Fh
                DB      0ECh, 0EDh, 0EEh, 58h
                DB      0F6h, 59h, 59h, 59h
                DB      0FAh, 5Ah, 5Ah, 5Ah
                DB      0FEh, 5Bh, 5Bh, 5Bh
                DB      0FEh, 5Bh, 5Bh, 5Bh
                DB      80h, 0F1h, 0F1h, 7Ch
                DB      80h, 0F5h, 80h, 80h
                DB      80h, 0F9h, 80h, 80h
                DB      80h, 0FDh, 80h, 80h
DECO_559A:  DB      04h, 04h                                ; 4x4: tomb group
                DB      80h, 80h, 0C2h, 0C3h
                DB      80h, 0C5h, 0C6h, 0C7h
                DB      80h, 0C9h, 0CAh, 80h
                DB      0CCh, 0CDh, 0CEh, 80h
DECO_55AC:  DB      01h, 02h, 0C5h, 0C9h                    ; 1x2: small tomb
DECO_55B0:  DB      02h, 04h                                ; 2x4: two vertical thin tombs
                DB      0C2h, 0C3h
                DB      0C6h, 0C7h
                DB      0CAh, 80h
                DB      0CFh, 80h
DECO_55BA:  DB      01h, 04h, 0C0h, 0C4h, 0C8h, 0CFh        ; 1x4: vertical thin tomb
DECO_55C0:  DB      01h, 03h, 0C0h, 0C4h, 0C8h              ; 1x3: vertical thin tomb (shorter)
DECO_55C5:  DB      02h, 03h, 0C2h, 0C3h, 0C6h, 0C7h, 0CAh, 80h     ; 2x3: two vertical thin tombs (shorter)
DECO_55CD:  DB      03h, 01h, 0CCh, 0CDh, 0CEh              ; 3x1: horizontal tomb base
DECO_55D2:  DB      02h, 02h, 80h, 68h, 6Ch, 6Dh            ; 2x2: moon
DECO_55D8:  DB      02h, 01h, 0E8h, 0E9h                    ; 2x1: cloud
DECO_55DC:  DB      02h, 02h, 8Ch, 8Eh, 8Dh, 8Fh            ; 2x2: scroll item
DECO_55E2:  DB      02h, 02h, 80h, 80h, 80h, 80h            ; 2x2: nothing (?)
DECO_55E8:  DB      03h, 02h, "efgijk"                      ; 3x2: well
DECO_55F0:  DB      03h, 03h                                ; 3x3: fire (0 rows up)
                DB      80h, 80h, 80h
                DB      80h, 80h, 80h
                DB      80h, 80h, 80h
DECO_55FB:  DB      03h, 03h                                ; 3x3: fire (1 row up)
                DB      80h, 80h, 80h
                DB      80h, 80h, 80h
                DB      0A1h, 0A2h, 0A3h
DECO_5606:  DB      03h, 03h                                ; 3x3: fire (2 rows up)
                DB      80h, 80h, 80h
                DB      0A1h, 0A2h, 0A3h
                DB      0A5h, 0A6h, 0A7h
DECO_5611:  DB      03h, 03h                                ; 3x3: fire (3 rows up)
                DB      0A1h, 0A2h, 0A3h
                DB      0A5h, 0A6h, 0A7h
                DB      0A9h, 0AAh, 0ABh
DECO_561C:  DB      04h, 04h                                ; 4x4: window with some cristals broken
                DB      0AEh, 0AEh, 0AEh, 0AEh
                DB      0AEh, 0AFh, 0AEh, 0AEh
                DB      0AEh, 0AEh, 0AEh, 0AFh
                DB      0AFh, 0AEh, 0AEh, 0AEh
DECO_562E:  DB      04h, 04h                                ; 4x4: window with cat
                DB      0AEh, 0AEh, 0AEh, 0AEh
                DB      0A4h, 0AEh, 0AFh, 0AEh
                DB      0A8h, 0AEh, 0AEh, 0AEh
                DB      0ACh, 0ADh, 0AEh, 0AEh
DECO_5640:  DB      05h, 03h                                ; 5x3: closed window (no tongue monster)
                DB      83h, 81h, 82h, 81h, 89h
                DB      83h, 81h, 86h, 81h, 89h
                DB      83h, 81h, 82h, 81h, 89h
DECO_5651:  DB      02h, 04h                                ; 2x4: shelving
                DB      92h, 93h
                DB      96h, 97h
                DB      9Ah, 9Bh
                DB      9Eh, 9Fh
DECO_565B:  DB      01h, 12h, "LMMLNMLNMMNLMNMNLN"          ; 1x18: vertical stone wall
DECO_566F:  DB      01h,01h,3Bh                             ; 1x1: climbing plant (middle?)
DECO_5672:  DB      01h,01h,3Ah                             ; 1x1: ladder (middle?)
DECO_5675:  DB      01h,01h,32h                             ; 1x1: ladder (top)
DECO_5678:  DB      01h,01h,39h                             ; 1x1: rope (bottom)
DECO_567B:  DB      01h,01h,31h                             ; 1x1: rope (floor + knot ?)
DECO_567E:  DB      01h,02h,0EAh,0EBh                       ; 1x2: statue
DECO_5682:  DB      01h,0Ah,"XYZXZYXYZY"                    ; 1x10: wall to house exterior
DECO_568E:  DB      01h,05h,"LMLNN"                         ; 1x5: vertical stone wall

; Title screen NAMTBL
L5695:  db      "@ABCPQRS`abcpqrs"
        db      "DEFGTUVWdef", 10h, "tuvw"
        db      "HIJKXYZ[hijkxyz{"
        db      "LMNO\]^_lmno|}~", 7Fh

L56D5:  ; "CASIO" (stylized)
        DB      9Ah, 9Bh, 9Ch, 9Dh, 9Eh, 9Fh

L56DB:  ; "PUSH TRIG:1 OR SPACE"
        DB      20h, 25h, 23h, 18h, 10h
        DB      24h, 22h, 19h, 17h, 0Ah, 01h, 10h
        DB      1Fh, 22h, 10h
        DB      23h, 20h, 11h, 13h, 15h

L56EF:  ; "COPYRIGHT 1986 c CASIO"
        DB      13h, 1Fh, 20h, 29h, 22h, 19h, 17h, 18h, 24h, 10h
        DB      01h, 09h, 08h, 06h, 10h
        DB      99h, 10h
        DB      13h, 11h, 23h, 19h, 1Fh

L5705:  ; "HISCORE:0000000"
        DB      18h, 19h, 23h, 13h, 1Fh, 22h, 15h, 0Ah, 00h, 00h, 00h, 00h, 00h, 00h, 00h

L5714:  ; "GAME OVER"
        DB      17h, 11h, 1Dh, 15h, 10h, 1Fh, 26h, 15h, 22h

; Unused area (571D..5800)
L571D:
        incbin  "original/YoukaiYashiki.rom", $571D - $4000, $5800 - $571D

; Sprite patterns (5800..6000)
L5800:
        incbin  "original/YoukaiYashiki.rom", $5800 - $4000, $6000 - $5800

; Main CHRTBL (6000..6680)
; Unused area (6680..66c8)
; "(C) CASIO" CHRTBL (66c8..6700)
; 1/2 title CHRTBL (6700..6800)
; Bosses CHRTBL (6800..6e80)
; 1/2 title CHRTBL (6e80..7000)
L6000:
        incbin  "original/YoukaiYashiki.rom", $6000 - $4000, $7000 - $6000

; Main CLRTBL (7000..7680)
; Unused area (7680..76c8)
; "(C) CASIO" CLRTBL (76c8..7700)
; Bosses NAMTBL definitions (7700..7800)
; Bosses CLRTBL (7800..7000)
L7000:
        incbin  "original/YoukaiYashiki.rom", $7000 - $4000, $7e80 - $7000

        ; Referenced from 8000
        ; --- START PROC L7E80 ---
L7E80:
; Zeroes RAM
        ld      hl,0E000h       ; Playing (nz) / Attract mode (z) ?
        ld      bc,1100h
.L7E86: ld      (hl),00h
        inc     hl
        dec     c
        jr      nz,.L7E86
        djnz    .L7E86
; Init SP
        ld      sp,0F200h
; Sets H.TIMI hook
        ld      hl,LB475_HTIMI_HOOK
        ld      (HTIMI + 1),hl
        ld      a,0C3h
        ld      (HTIMI),a
; SCREEN 2
        call    SETGRP
; COLOR 15,0,0
        xor     a
        ld      (BAKCLR),a
        ld      (BDRCLR),a
        dec     a
        ld      (FORCLR),a
        call    CHGCLR

; LDIRVM the BIOS charset (but displaced)
        ld      de,0000h
        ld      b,03h
.L7EB2: call    LB2F0_LDIRVM_BIOS_CHARSET
        djnz    .L7EB2
        xor     a

        ld      hl,0080h
        ld      b,03h
.L7EBD: call    LB31F
        djnz    .L7EBD

; CLRTBL
        ld      hl,2000h
        ld      bc,1800h
        ld      a,0F0h
        call    FILVRM

        call    LB36D_LDRIVM_SPRTBL

        ld      a,0A2h
        ld      b,a
        ld      c,01h
        call    WRTVDP
        ld      a,03h
        ld      (0E090h),a
        ld      a,30h           ; '0'
        ld      (0E095h),a
        ei

        ; Referenced from 8126, AF4A
        ; --- START PROC L7EE3 ---
L7EE3:  call    LB379
        call    LB016_DISSCR_AND_CLS_WITH_10h

; LDIRVM title chars
        ld      de,0200h
        ld      b,03h
        call    LB334_LDIRVM_TITLE_CHARSET

; FILVRM title chars
        ld      hl,2200h
        ld      b,03h
.L7EF6: call    LB32C_FILVRM_TITLE_CHARS
        djnz    .L7EF6

        call    ENASCR

; "CASIO" logo routine
        call    LB5A7_CASIO_LOGO_ROUTINE

.L7F01:
; Cheat ???
        ld      a,01h
        call    SNSMAT          ; a = $01 = :; ]} [{ \ = - 9 8
        cp      0E0h
        jr      nz,.L7F17       ; Not all of  :; ]} [{  pressed -> no cheat
        xor     a
        call    SNSMAT          ; a = $00 ; 7 6 5 4 3 2 1 0
        bit     0,a
        jr      z,.L7F17        ; 0  pressed -> no cheat
        ld      a,01h
        ld      (0E023h),a      ; Cheat ???     ; Invulnerability cheat

; Prints the title screen
.L7F17: ld      hl,L5695
        ld      de,1908h

; Prints a 16x4 block
        ld      b,04h
.L7F1F: call    LB313_LDIRVM_16b_AND_MOVE_TO_NEXT_LINE
        djnz    .L7F1F

; Prints text
        ld      hl,L56D5        ; "CASIO" (stylized)
        ld      de,1A0Dh
        ld      bc,0006h
        call    LDIRVM
        ld      hl,L56DB        ; "PUSH TRIG:1 OR SPACE"
        ld      de,1A46h
        ld      bc,0014h
        call    LDIRVM
        ld      hl,L56EF        ; "COPYRIGHT 1986 c CASIO"
        ld      de,1A85h
        ld      bc,0016h
        call    LDIRVM
        call    ENASCR
; Waits for key
        xor     a
        ld      (0E018h),a
.L7F4F:  ld      a,(0E018h)
        cp      0F0h
        jp      nc,.L7F63	; Wait consumed: attract mode
        ld      a,(0E026h) ; read input (edge)
        and     a
        jr      z,.L7F4F	; No trigger: keeps waiting
        xor     a
        ld      (0E026h),a ; read input (edge)
        jr      .L7FA3		; Trigger: starts game

; Attract mode init
.L7F63:  ld      a,r
        and     03h
        cp      02h
        jr      c,.L7F7A
        xor     a
        ld      (0E00Ah),a      ; current area
        inc     a
        ld      (0E0A2h),a      ; Map Y coordinate
        ld      a,02h
        ld      (0E0A1h),a      ; Map X coordinate
        jr      .L7F89
.L7F7A:  ld      a,00h
        ld      (0E00Ah),a      ; current area
        ld      a,04h
        ld      (0E0A1h),a      ; Map X coordinate
        ld      a,01h
        ld      (0E0A2h),a      ; Map Y coordinate
.L7F89:  xor     a
        ld      (0E098h),a
        ld      (0E023h),a      ; Invulnerability cheat
        ld      (0E0A9h),a      ; cheat: energy ?
        inc     a
        ld      (0E028h),a
        ld      hl,0000h
        ld      (0E029h),hl
        ld      (0E0A8h),a      ; cheat: 0,57512,8,0,lives
        jp      L800D

; Start game init
.L7FA3:
; Zeroes game RAM (1/2)
        ld      hl,0E001h
        ld      b,06h
.L7FA8: ld      (hl),00h
        inc     hl
        djnz    .L7FA8
; ???
        xor     a
        ld      (0E00Eh),a
        ld      (0E00Dh),a
        ld      (0E00Ch),a

        ; Referenced from 8018
        ; --- START PROC L7FB7 ---
L7FB7:  xor     a
        ld      (0E027h),a
        ld      (0E028h),a
        ld      (0E0A9h),a      ; cheat: energy ?
        ld      (0E0AAh),a
        ld      (0E00Ah),a      ; current area
        ld      (0E098h),a
        inc     a
        ld      (0E000h),a      ; Playing (nz) / Attract mode (z) ?
        ld      (0E0A1h),a      ; Map X coordinate
        ld      (0E0A2h),a      ; Map Y coordinate
        ld      (0E0A3h),a      ; Current screen (?)
        ld      a,03h
        ld      (0E0A8h),a      ; cheat: 0,57512,8,0,lives

; Checks invulnerability cheat
        ld      a,(0E023h)      ; Invulnerability cheat
        and     a
        jr      z,.L7FE7
        ld      a,06h
        ld      (0E0A9h),a      ; cheat: energy ?
.L7FE7:

; Zeroes game RAM (2/2)
        ld      hl,0E02Bh       ; <-- cheat: 0,57387,4,0,only one kana required to get a key
        ld      b,58h           ; 'X'
.L7FEC:  ld      (hl),00h
        inc     hl
        djnz    .L7FEC
        jp      L8003

L7FF4:  DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h


        ; Referenced from 4035
        ; --- START PROC L8000 ---
L8000:  jp      L7E80

        ; Referenced from 7FF1
        ; --- START PROC L8003 ---
L8003:  ld      hl,0E0B0h
        ld      b,40h           ; '@'
.L8008: ld      (hl),00h
        inc     hl
        djnz    .L8008
        ; VVVV

        ; Referenced from 7FA0, AEF0, AF01, AF10, AF1D
        ; --- START PROC L800D ---
L800D:  ld      a,(0E047h)      ; item #1 present
        cp      02h
        jr      nz,L801B
        xor     a
        ld      (0E047h),a      ; item #1 present
        jp      L7FB7

        ; Referenced from 8012
L801B:  ld      a,(0E00Ah)      ; current area
        ld      (0E0A0h),a      ; Map area index
        ld      a,(0E098h)
        and     a
        jr      nz,L8033
        inc     a
        ld      (0E098h),a
        call    LB016_DISSCR_AND_CLS_WITH_10h
        call    LB056_PRINT_EMPTY_HUD
        jr      L8036

        ; Referenced from 8025
L8033:  call    LB01C

        ; Referenced from 8031
L8036:  ld      hl,0E700h       ; screen data ? (1/3)
        ld      bc,0280h        ; 32x20 chars
.L803C: ld      (hl),80h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,.L803C
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,1840h        ; at (0,2)
        ld      bc,0280h        ; 32x20 chars
        call    LDIRVM
        call    LB07A
        ld      ix,0E300h       ; Full entities array [$e300..$e400)
        ld      (ix+00h),0ECh
        ld      (ix+10h),0ECh
        ld      (ix+01h),30h    ; '0'
        ld      (ix+11h),30h    ; '0'
        ld      (ix+02h),0Ch
        ld      (ix+07h),0Ch
        ld      (ix+03h),0Dh    ; PLAYER SPRITE COLOR ???
        ld      (ix+12h),6Ch    ; 'l'
        ld      (ix+13h),0Bh
        call    L8206_CHANGE_FLOOR_COLOR
        call    LB38A_LDIRVM_SPRATR
        call    LB397_PRINT_SCORE
        call    ENASCR
        ld      a,02h
        call    LB777_SET_E2BE_TO_A_IF_GT
        call    LB43F
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      (0E022h),a
        ld      (0E020h),a
        ld      (0E026h),a ; read input (edge)
        ld      (0E180h),a      ; Stick read (keyboard OR joystick)
        inc     a
        ld      (0E027h),a
        ld      (ix+00h),40h    ; '@'
        ld      (ix+10h),40h    ; '@'

        ; Referenced from 8136, 811C, 8123, 813E
L80B1:  ld      a,(0E183h)
        and     a
        jp      nz,LADD7
        ld      a,(0E186h)
        cp      02h
        jp      z,LAF73
        ld      a,(0E1B3h)      ; F1 key pressed?
        and     a
        jr      nz,L8129

        ld      a,(0E1B5h)      ; When != 0, enters or exits pause
        and     a
        jp      nz,L8141_ENTER_OR_EXIT_PAUSE
; Sync
        ld      a,(0E011h)
        cp      01h
        jr      c,L8118
        xor     a
        ld      (0E011h),a
; Ensures right CLRTBL ???
        call    L81AD
; ???
        ld      a,(0E1B7h)
        and     a
        jr      z,L80EE
; Alternated player patterns (during pause)
        ld      a,(0E012h)
        and     08h
        rrca
        add     a,0C8h
        ld      (ix+12h),a
        jr      L8112

        ; Referenced from 80DF
L80EE:  call    L9400
        call    L867D
        call    L86E7
        call    L87AF
        call    L8D0F
        call    L85BD
        call    L8FC4
        call    LB397_PRINT_SCORE
        call    LA1B9_EXECUTE_E340_ENTITIES_SUBROUTINES
        call    L8252
        call    L9452_EXECUTE_E400_ENTITIES_SUBROUTINES
        call    L81CB_BLINK_SCROLL_ITEM

        ; Referenced from 80EC
L8112:  call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR

        ; Referenced from 80D2, 815A, 81AA
L8118:  ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        jp      nz,L80B1
        ld      a,(0E026h) ; read input (edge)
        and     a
        jp      z,L80B1
        jp      L7EE3

        ; Referenced from 80C4
L8129:  ld      a,(0E0A9h)      ; cheat: energy ?
        and     a
        jr      nz,L8139
        inc     a
        ld      (0E0A8h),a      ; cheat: 0,57512,8,0,lives
        ld      (0E183h),a
        jp      L80B1

        ; Referenced from 812D
L8139:  ld      a,02h
        ld      (0E183h),a
        jp      L80B1

        ; Referenced from 80CA
L8141_ENTER_OR_EXIT_PAUSE:
        xor     a
        ld      (0E1B5h),a      ; When != 0, enters or exits pause
        ld      a,(0E1B7h)
        cpl
        ld      (0E1B7h),a
        and     a
        jr      nz,L815C_ENTER_PAUSE

EXIT_PAUSE:
; Restores the first entities
        ld      hl,0E1C0h
        ld      de,0E300h       ; Full entities array [$e300..$e400)
        ld      bc,0040h
        ldir
        jr      L8118

L815C_ENTER_PAUSE:
; Backups the first entities
        ld      hl,0E300h       ; Full entities array [$e300..$e400)
        ld      de,0E1C0h
        ld      bc,0040h
        ldir
; Sprite pattern
        ld      (ix+02h),0D0h   ; sprite pattern: pause (player hair)
        ld      (ix+12h),0C8h   ; sprite pattern: pause (player face)
        ld      (ix+22h),0C0h   ; sprite pattern: pause (bathtub left)
        ld      (ix+32h),0C4h   ; sprite pattern: pause (bathtub right)
; Player += (10, -10)
        ld      a,(ix+00h)
        sub     10h
        ld      (ix+00h),a
        ld      (ix+10h),a
        add     a,10h
        ld      (ix+20h),a
; Bathtub position
        ld      (ix+30h),a
        ld      a,(ix+01h)
        sub     08h
        cp      0F8h
        jr      c,.L8194
        xor     a
.L8194: ld      (ix+21h),a
        add     a,10h
        cp      0Eh
        jr      nc,.L819F
        ld      a,0F0h
.L819F: ld      (ix+31h),a
        ld      (ix+23h),0Ah    ; sprite color: pause (bathtub left)
        ld      (ix+33h),0Ah    ; sprite color: pause (bathtub right)
        jp      L8118

        ; Referenced from 80D8
        ; --- START PROC L81AD ---
L81AD:  ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jr      z,L81B7
        ld      a,02h
        jr      L81C7

        ; Referenced from 81B1
L81B7:  ld      a,(0E0A0h)      ; Map area index
        ld      b,a
        ld      a,(0E00Ah)      ; current area
        cp      b
        jr      nz,L81C5
        ld      a,05h
        jr      L81C7

        ; Referenced from 81BF
L81C5:  ld      a,04h

        ; Referenced from 81B5, 81C3
L81C7:  call    LB764_SET_E2C2_TO_A_IF_GT
        ret

        ; Referenced from 810F
        ; --- START PROC L81CB_BLINK_SCROLL_ITEM ---
L81CB_BLINK_SCROLL_ITEM:
        ld      a,(0E1B9h)
        and     a
        ret     z
; Checks the frame counter (?)
        ld      a,(0E015h)
        cp      08h
        ret     c
        xor     a
        ld      (0E015h),a
; Changes the flag
        ld      a,(0E1BAh)
        cpl
        ld      (0E1BAh),a
; Depending on the flag value
        and     a
        jr      nz,.L81E8
        ld      a,0B0h  ; yellow
        jr      .L81EA
.L81E8:
        ld      a,0F0h  ; white
.L81EA:
; FILVRM the scroll (item)
        ld      hl,2460h
        ld      bc,0020h ; (4 chars)
        call    FILVRM
        ld      hl,2C60h
        ld      bc,0020h ; (4 chars)
        call    FILVRM
        ld      hl,3460h
        ld      bc,0020h ; (4 chars)
        call    FILVRM
        ret

        ; Referenced from 8081, 8FDF
        ; --- START PROC L8206_CHANGE_FLOOR_COLOR ---
L8206_CHANGE_FLOOR_COLOR:
        ld      a,(0E00Ah)      ; current area
        and     a
        jr      z,.L821C
        cp      01h
        jr      z,.L8220
        cp      02h
        jr      z,.L8224
        cp      03h
        jr      z,.L8228
        ld      a,30h           ; 4+ = green
        jr      .L822A
.L821C: ld      a,60h           ; 0 = red
        jr      .L822A
.L8220: ld      a,0A0h          ; 1 = yellow
        jr      .L822A
.L8224: ld      a,40h           ; 2 = blue
        jr      .L822A
.L8228: ld      a,0E0h          ; 3 = grey
.L822A: ld      (0E19Ch),a      ; floor color (temp var)
        ld      hl,2208h
        ld      bc,0038h        ; (7 chars)
        ld      a,(0E19Ch)      ; floor color (temp var)
        call    FILVRM
        ld      hl,2A08h
        ld      bc,0038h        ; (7 chars)
        ld      a,(0E19Ch)      ; floor color (temp var)
        call    FILVRM
        ld      hl,3208h
        ld      bc,0038h        ; (7 chars)
        ld      a,(0E19Ch)      ; floor color (temp var)
        call    FILVRM
        ret

        ; Referenced from 8109
        ; --- START PROC L8252 ---
L8252:  ld      a,(0E047h)      ; item #1 present
        and     a
        ret     nz
; Map area index = current area?
        ld      a,(0E00Ah)      ; current area
        ld      b,a
        ld      a,(0E0A0h)      ; Map area index
        ld      c,a
        cp      b
        ret     nz ; no
; Yes
        ld      a,(0E046h)      ; Unlocked area count?
        inc     b
        cp      b
        ret     c
        ld      a,(0E186h)
        cp      01h
        jp      z,L82F8
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jr      nz,L82A7
        ld      hl,852Eh
        ld      a,c
        add     a,l
        ld      l,a
        ld      b,(hl)
        ld      a,(0E0A3h)      ; Current screen (?)
        cp      b
        ret     nz
        ld      a,01h
        ld      (0E1B8h),a
        ld      a,(ix+01h)
        cp      28h             ; '('
        ret     c
        ld      a,(0E1B1h) ; boss index ???
        and     a
        jr      nz,L82A7
        inc     a
        ld      (0E1B1h),a ; boss index ???
; Locates and LDIRVMs the boss charset (88 chars starting from 144 ($90))
        ld      hl,L8533_BOSS_CHARSET_TABLE
        ld      a,c
; a *= 2
        add     a,a
; hl += a
        add     a,l
        jr      nc,L829F
        inc     h
L829F:  ld      l,a
; hl = [hl]
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        call    L84DF_LDIRVM_BOSS_CHARSET

        ; Referenced from 8273, 8290
L82A7:  ld      a,(0E0A0h)      ; Map area index
        and     a
        jr      z,L82BF_INIT_FIRST_BOSS
        cp      01h
        jp      z,L83EB_THIRD_BOSS
        cp      02h
        jp      z,L8411_SECOND_BOSS
        cp      03h
        jp      z,L8474_FOURTH_BOSS
        jp      L84AD

        ; Referenced from 82AB
L82BF_INIT_FIRST_BOSS:
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jr      nz,.L82D5
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
; Prints the first boss
        ld      de,194Fh
        ld      hl,7700h                        ; First boss
        call    L8519_LDIRVM_8x8_FROM_HL
        ld      bc,7090h
.L82D5: ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L8323
; Aditional NAMTBL boss removal (shoots?)
        xor     a
        ld      (0E404h),a
        ld      (0E414h),a
        ld      (0E424h),a
        ld      de,1947h
        call    L8500_CLEAR_11x11
        ld      de,194Ch
        call    L8500_CLEAR_11x11
        ld      a,01h
        call    LB764_SET_E2C2_TO_A_IF_GT
        ret

        ; Referenced from 826C
L82F8:  ld      a,(0E3E1h)      ; Player entering well sprite #1 X
        inc     a
        ld      (0E3E1h),a      ; Player entering well sprite #1 X
        ld      (0E3F1h),a      ; Player entering well sprite #2 X
        cp      0F4h
        jr      c,L8317
        ld      a,0ECh
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
        ld      a,02h
        ld      (0E186h),a
        call    LB43F
        ret

        ; Referenced from 8304
L8317:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        and     08h
        rrca
        add     a,0B0h
        ld      (0E3F2h),a      ; Player entering well sprite #2 pattern
        ret

        ; Referenced from 82DA
L8323:  ld      a,(ix+01h)
        cp      78h             ; 'x'
        jr      c,L835D
        cp      0B0h
        jr      nc,L835D
        ld      a,(ix+00h)
        cp      48h             ; 'H'
        jr      c,L835D
        cp      90h
        jr      nc,L835D
        ld      a,(ix+01h)
        cp      8Ch
        jr      c,L8344
        cp      94h
        jr      c,L835D

        ; Referenced from 833E
L8344:  cp      90h
        jr      c,L834F
        ld      a,(ix+01h)
        add     a,20h           ; ' '
        jr      L8354

        ; Referenced from 8346
L834F:  ld      a,(ix+01h)
        sub     20h             ; ' '

        ; Referenced from 834D
L8354:  ld      (ix+01h),a
        ld      (ix+11h),a
        call    LB146_HURT_PLAYER

        ; Referenced from 8328, 832C, 8333, 8337, 8342
L835D:  ld      a,(ix+0Dh)
        and     a
        jr      z,L8392
        ld      a,(ix+21h)
        cp      78h             ; 'x'
        jr      c,L8392
        cp      0B0h
        jr      nc,L8392
        ld      a,(ix+20h)
        cp      48h             ; 'H'
        jr      c,L8392
        cp      90h
        jr      nc,L8392
        ld      a,(ix+21h)
        cp      88h
        jr      c,L838F
        cp      98h
        jr      nc,L838F
        ld      a,(0E1B0h)                      ; Is boss initialized?
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        cp      06h
        jr      nc,L8393_END_BOSS_SEQUENCE

        ; Referenced from 837E, 8382
L838F:  call    L8670

        ; Referenced from 8361, 8368, 836C, 8373, 8377
L8392:  ret

        ; Referenced from 840E, 8471, 84AA, 838D
L8393_END_BOSS_SEQUENCE:
        ld      a,07h
        call    LB777_SET_E2BE_TO_A_IF_GT
        call    LB1A5_ZEROES_E340_ENTITIES
        ld      a,0A0h
        ld      (0E3E1h),a      ; Ghost sprite #1 X
        ld      (0E3F1h),a      ; Ghost sprite #2 X
        ld      a,70h           ; 'p'
        ld      (0E3E0h),a      ; Ghost sprite #1 Y
        ld      a,80h
        ld      (0E3F0h),a      ; Ghost sprite #2 Y
        ld      a,0ACh
        ld      (0E3E2h),a      ; Ghost sprite #1 pattern
        ld      a,0B0h
        ld      (0E3F2h),a      ; Ghost sprite #2 pattern
        ld      a,0Fh
        ld      (0E3F3h),a      ; Ghost sprite #2 color
; Hides the default player sprite
        ld      a,07h
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      a,(0E00Ah)      ; current area
        add     a,a
        add     a,05h
        ld      (0E3E3h),a      ; Ghost sprite #1 color
        call    L8569_FLASH_AND_DISSOLVE_BOSS
        ld      a,(0E0A0h)      ; Map area index
        cp      03h
        jr      nz,.L83D9
        ld      de,192Ch
        jr      .L83E2
.L83D9: ld      de,194Ch
        call    L8500_CLEAR_11x11
        ld      de,1947h
.L83E2: call    L8500_CLEAR_11x11
        ld      a,01h
        ld      (0E186h),a
        ret

        ; Referenced from 82AF
L83EB_THIRD_BOSS:
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jp      nz,.L8408
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
; Prints the boss
        ld      de,19AFh
        ld      hl,7780h                ; Third boss
        call    L8519_LDIRVM_8x8_FROM_HL
        ld      a,10h
        ld      (0E344h),a
        ld      (0E354h),a
        ret
.L8408: ld      a,(0E1B2h)
        cp      0Ah
        ret     c
        jp      L8393_END_BOSS_SEQUENCE

        ; Referenced from 82B4
L8411_SECOND_BOSS:
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jp      nz,L842D
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      de,19AFh
        ld      hl,7740h                ; Second boss
        call    L8519_LDIRVM_8x8_FROM_HL
        ld      a,11h
        ld      (0E344h),a
        ld      (0E354h),a

        ; Referenced from 8415
L842D:  ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L8443
        ld      de,194Ch

        ; Referenced from 849E
L8437:  call    L8500_CLEAR_11x11
        ld      a,01h
        call    LB764_SET_E2C2_TO_A_IF_GT
        call    LB1A5_ZEROES_E340_ENTITIES
        ret

        ; Referenced from 8432
L8443:  ld      a,(ix+00h)
        cp      71h             ; 'q'
        jr      c,L845F
        ld      a,(ix+01h)
        cp      76h             ; 'v'
        jr      c,L845F
        ld      a,(ix+01h)
        sub     20h             ; ' '
        ld      (ix+01h),a
        ld      (ix+11h),a
        call    LB146_HURT_PLAYER

        ; Referenced from 8448, 844F
L845F:  ld      a,(ix+00h)
        cp      68h             ; 'h'
        ret     c
        cp      78h             ; 'x'
        ret     nc
        ld      a,(ix+01h)
        cp      88h
        ret     c
        cp      98h
        ret     nc
        jp      L8393_END_BOSS_SEQUENCE

        ; Referenced from 82B9
L8474_FOURTH_BOSS:
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jp      nz,L8494
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      de,198Fh
        ld      hl,77C0h                ; Fourth boss
        call    L8519_LDIRVM_8x8_FROM_HL
        ld      a,12h
        ld      (0E344h),a
        ld      (0E354h),a
        inc     a
        ld      (0E364h),a

        ; Referenced from 8478
L8494:  ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L84A1
        ld      de,192Ch
        jp      L8437

        ; Referenced from 8499
L84A1:  ld      a,(0E1B2h)
        cp      05h
        ret     c
        call    LB1A5_ZEROES_E340_ENTITIES
        jp      L8393_END_BOSS_SEQUENCE

        ; Referenced from 82BC
L84AD:  ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        jr      nz,L84C4
        inc     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      (0E1B1h),a ; boss index ???
        ld      a,15h
        ld      (0E344h),a
        inc     a
        ld      (0E364h),a
        ret

        ; Referenced from 84B1
L84C4:  ld      a,(0E1B2h)
        cp      04h
        ret     c
        ld      a,01h
        ld      (0E047h),a      ; item #1 present
        xor     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      (0E1B2h),a
        ld      (0E1B8h),a
        ld      a,07h
        call    LB777_SET_E2BE_TO_A_IF_GT
        ret

; ----------------------------------------------------------------------------
        ; Referenced from 82A4
        ; --- START PROC L84DF_LDIRVM_BOSS_CHARSET ---
L84DF_LDIRVM_BOSS_CHARSET:
; CHRTBL
        ld      de,CHRTBL + 0480h
        call    L84EC
; CLRTBL
        ld      de,1000h
        add     hl,de
        ld      de,CLRTBL + 0480h
L84EC:  ld      b,03h
L84EE:  push    bc
        push    hl
        ld      bc,02C0h
        call    LDIRVM
        ld      bc,CHRTBL_SIZE
        add     hl,bc
        ex      de,hl
        pop     hl
        pop     bc
        djnz    L84EE
        ret
; ----------------------------------------------------------------------------

; ----------------------------------------------------------------------------
        ; Referenced from 82E9, 82EF, 8437, 83DC, 83E2
        ; --- START PROC L8500_CLEAR_11x11 ---
L8500_CLEAR_11x11:
        ld      b,0Bh
L8502:  push    bc
        ld      bc,000Bh
        ld      hl,554Fh
        call    LDIRVM
        ld      de,0020h
        add     hl,de
        ex      de,hl
        pop     bc
        djnz    L8502
        xor     a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ret
; ----------------------------------------------------------------------------

; ----------------------------------------------------------------------------
        ; Referenced from 82CF, 83FC, 8422, 8485
        ; --- START PROC L8519_LDIRVM_8x8_FROM_HL ---
L8519_LDIRVM_8x8_FROM_HL:
        ld      c,08h
L851B:  push    bc
        ld      bc,0008h
        call    LDIRVM
        pop     bc
        push    de
        ld      de,0020h
        add     hl,de
        pop     de
        ex      de,hl
        dec     c
        jr      nz,L851B
        ret
; ----------------------------------------------------------------------------

; Boss screen index
L852E:  DB      09h
        DB      12h
        DB      1Eh
        DB      2Fh             ; '/'
        DB      44h             ; 'D'

; ----------------------------------------------------------------------------
; Boss CHRTBL table
L8533_BOSS_CHARSET_TABLE:
        DW      6800h
        DW      6C00h
        DW      6A00h
        DW      6B80h
        DW      6B80h
; ----------------------------------------------------------------------------

        ; Referenced from 8569
        ; --- START PROC L853D_FLASH_BDRCLR_AFTER_BOSS ---
L853D_FLASH_BDRCLR_AFTER_BOSS:
        xor     a
        ld      (0E1A0h),a
        ld      (0E012h),a
        ld      (0E013h),a
L8547_FLASH_BDRCLR_AFTER_BOSS:
        ld      a,(0E012h)
        cp      01h
        jr      c,L8547_FLASH_BDRCLR_AFTER_BOSS
        xor     a
        ld      (0E012h),a
        ld      a,(0E013h)
        cp      41h             ; 'A'
        ret     nc
        and     04h
        and     a
        jr      nz,.L8565
.L855D:  ld      (BDRCLR),a
        call    CHGCLR
        jr      L8547_FLASH_BDRCLR_AFTER_BOSS
.L8565:  ld      a,0Fh
        jr      .L855D

        ; Referenced from 83CA
        ; --- START PROC L8569_FLASH_AND_DISSOLVE_BOSS ---
L8569_FLASH_AND_DISSOLVE_BOSS:
        call    L853D_FLASH_BDRCLR_AFTER_BOSS
        ld      a,05h
        ld      (0E1A6h),a
.L8571:  ld      hl,2480h        ; CLRTBL bank 0, boss chars
        ld      (0E1A0h),hl
        ld      hl,2C80h        ; CLRTBL bank 1, boss chars
        ld      (0E1A2h),hl
        ld      hl,3480h        ; CLRTBL bank 2, boss chars
        ld      (0E1A4h),hl
        ld      bc,02C0h        ; Size
.L8586:  ld      hl,(0E1A0h)
        call    RDVRM
        push    bc
        ld      b,a
        ld      a,r
        and     b
        call    WRTVRM
        inc     hl
        ld      (0E1A0h),hl
        ld      hl,(0E1A2h)
        call    WRTVRM
        inc     hl
        ld      (0E1A2h),hl
        ld      hl,(0E1A4h)
        call    WRTVRM
        inc     hl
        ld      (0E1A4h),hl
        inc     de
        pop     bc
        dec     bc
        ld      a,c
        or      b
        jr      nz,.L8586
        ld      a,(0E1A6h)
        dec     a
        ld      (0E1A6h),a
        jr      nz,.L8571
        ret

        ; Referenced from 80FD
        ; --- START PROC L85BD ---
L85BD:  ld      a,(ix+0Dh)
        and     a
        jr      nz,L8619
        ld      a,(0E022h)
        and     a
        ret     z
        xor     a
        ld      (0E022h),a
        ld      a,(ix+04h)
        and     a
        ret     nz
        ld      a,(ix+06h)
        and     a
        ret     nz
        ld      a,(0E0A9h)      ; cheat: 0,57513,17,0,vitality energy ?
        srl     a
        ld      b,a
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        cp      b
        jr      z,L85E8
        ld      (ix+0Dh),01h
        jr      L85EC

        ; Referenced from 85E0
L85E8:  ld      (ix+0Dh),02h

        ; Referenced from 85E6
L85EC:  ld      a,03h
        call    LB758
; Copies player coords to shoot coords
        ld      a,(ix+00h)
        ld      (ix+20h),a
        ld      a,(ix+01h)
        ld      (ix+21h),a
        ld      (ix+23h),0Bh
; Init shoot direction (?) and sprite pattern
        ld      a,(ix+17h)
        and     a
        jr      nz,.L8611
        ld      (ix+18h),00h
        ld      (ix+22h),28h    ; shoot right
        jr      L8619
.L8611: ld      (ix+18h),01h
        ld      (ix+22h),2Ch    ; shoot left
L8619:
;
        xor     a
        ld      (0E022h),a
        ld      a,(ix+18h)
        and     a
        jr      nz,L8638
        ld      a,(ix+21h)
        cp      0ECh
        jr      nc,L8670
        inc     (ix+21h)
        inc     (ix+21h)
        inc     (ix+21h)
        inc     (ix+21h)
        jr      L864B

        ; Referenced from 8621
L8638:  ld      a,(ix+21h)
        cp      04h
        jr      c,L8670
        dec     (ix+21h)
        dec     (ix+21h)
        dec     (ix+21h)
        dec     (ix+21h)

        ; Referenced from 8636
L864B:  ld      a,(ix+0Dh)
        cp      01h
        jr      nz,L865E
        inc     (ix+19h)
        ld      a,(ix+19h)
        cp      05h
        jr      c,L865E
        jr      L8670

        ; Referenced from 8650, 865A
L865E:  ld      a,(0E012h)
        and     04h
        and     a
        jr      nz,L866B
        ld      (ix+23h),0Fh
        ret

        ; Referenced from 8664
L866B:  ld      (ix+23h),0Ah
        ret

        ; Referenced from 8628, 863D, 865C, 838F
        ; --- START PROC L8670 ---
L8670:  ld      (ix+20h),0F0h
        ld      (ix+0Dh),00h
        ld      (ix+19h),00h
        ret

        ; Referenced from 80F1
        ; --- START PROC L867D ---
L867D:  ld      a,(ix+1Fh)
        and     a
        jp      z,.L86BD
        inc     (ix+1Fh)
        jr      nz,.L8696
        inc     (ix+1Fh)
        inc     (ix+1Eh)
        ld      a,(ix+1Eh)
        cp      05h
        jr      z,.L86B1

.L8696: ld      a,(ix+1Eh)
        cp      04h
        jr      c,.L86A5
        ld      a,(0E012h)
        and     04h
        and     a
        jr      nz,.L86AB
.L86A5: ld      (ix+03h),00h    ; Makes player transparent?
        jr      .L86BD
.L86AB: ld      (ix+03h),0Dh    ; Restores PLAYER SPRITE COLOR?
        jr      .L86BD

.L86B1: ld      (ix+03h),0Dh    ; Sets PLAYER SPRITE COLOR
        ld      (ix+1Eh),00h
        ld      (ix+1Fh),00h

.L86BD: ld      a,(ix+1Ah)
        and     a
        ret     z
        inc     (ix+1Ah)
        ld      a,(ix+1Ah)
        cp      20h
        jr      c,.L86D5
        ld      (ix+1Ah),00h
        ld      (ix+03h),0Dh    ; Sets PLAYER SPRITE COLOR
        ret

.L86D5: ld      a,(0E012h)
        and     02h
        and     a
        jr      nz,L86E2
        ld      (ix+03h),07h
        ret

        ; Referenced from 86DB
L86E2:  ld      (ix+03h),0Fh
        ret

        ; Referenced from 80F4
        ; --- START PROC L86E7 ---
L86E7:  ld      a,(ix+05h)
        and     a
        ret     nz
        ld      a,(ix+09h)
        and     a
        jr      nz,L8728
        ld      a,(ix+06h)
        and     a
        ret     nz

        ; Referenced from 8EC2
        ; --- START PROC L86F7 ---
L86F7:  call    L8C93
        ld      a,(ix+14h)
        cp      34h             ; '4'
        jr      c,L8723
        cp      3Ch             ; '<'
        jr      c,L8709
        cp      80h
        jr      c,L8723

        ; Referenced from 8703
L8709:  ld      a,(ix+15h)
        cp      34h             ; '4'
        jr      c,L8723
        cp      3Ch             ; '<'
        jr      c,L8718
        cp      80h
        jr      c,L8723

        ; Referenced from 8712
L8718:  ld      (ix+09h),01h
        ld      a,06h
        call    LB758
        jr      L8728

        ; Referenced from 86FF, 8707, 870E, 8716
L8723:  ld      (ix+0Ch),00h
        ret

        ; Referenced from 86F0, 8721
L8728:  ld      a,(ix+0Ch)
        cp      01h
        jr      nz,L8734
        call    L8F09
        jr      L873B

        ; Referenced from 872D
L8734:  cp      02h
        jr      nz,L873B
        call    L8F42

        ; Referenced from 8732, 8736
L873B:  ld      b,03h

        ; Referenced from 8776
L873D:  push    bc
        call    L8C93
        ld      a,(ix+14h)
        cp      34h             ; '4'
        jr      c,L8779
        cp      3Ch             ; '<'
        jr      c,L8750
        cp      80h
        jr      c,L8779

        ; Referenced from 874A
L8750:  ld      a,(ix+15h)
        cp      34h             ; '4'
        jr      c,L8779
        cp      3Ch             ; '<'
        jr      c,L875F
        cp      80h
        jr      c,L8779

        ; Referenced from 8759, 8785, 8790, 8798
L875F:  inc     (ix+00h)
        inc     (ix+10h)
        ld      a,(ix+00h)
        cp      9Fh
        jr      c,L8775
        call    L8852
        and     a
        jr      z,L8775
        call    L8FC4

        ; Referenced from 876A, 8770
L8775:  pop     bc
        djnz    L873D
        ret

        ; Referenced from 8746, 874E, 8755, 875D
L8779:  call    L8CD1
        ld      a,(ix+14h)
        cp      3Ch             ; '<'
        jr      c,L8787
        cp      80h
        jr      c,L875F

        ; Referenced from 8781
L8787:  ld      a,(ix+15h)
        cp      3Ch             ; '<'
        jr      c,L8792
        cp      80h
        jr      c,L875F

        ; Referenced from 878C
L8792:  ld      a,(ix+00h)
        and     07h
        and     a
        jr      nz,L875F
        pop     bc
        ld      (ix+09h),00h
        ld      (ix+0Ch),00h
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ret

        ; Referenced from 80F7
        ; --- START PROC L87AF ---
L87AF:  ld      a,(0E186h)
        and     a
        ret     nz
        ld      a,(0E047h)      ; item #1 present
        cp      02h
        ret     z
        ld      a,(ix+05h)
        and     a
        ret     nz
        ld      a,(ix+09h)
        and     a
        ret     nz
        ld      a,(0E180h)      ; Stick read (keyboard OR joystick)
        and     a
        jr      z,L87F1
        cp      01h
        jr      z,L8822
        cp      02h
        jp      z,L8873
        cp      03h
        jp      z,L8873
        cp      04h
        jp      z,L8873
        cp      05h
        jp      z,L884A
        cp      06h
        jp      z,L88AB
        cp      07h
        jp      z,L88AB
        cp      08h
        jp      z,L88AB

        ; Referenced from 87C8
L87F1:  ld      a,(ix+04h)
        and     a
        jr      z,L8806
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ld      (ix+04h),00h

        ; Referenced from 87F5
L8806:  ld      a,(ix+02h)
        cp      10h
        jr      nz,L8816
        ld      (ix+02h),0Ch
        ld      (ix+12h),6Ch    ; 'l'
        ret

        ; Referenced from 880B
L8816:  cp      18h
        ret     nz
        ld      (ix+02h),14h
        ld      (ix+12h),74h    ; 't'
        ret

        ; Referenced from 87CC
L8822:  ld      a,(ix+00h)
        cp      11h
        jp      nc,L8979
        ld      a,(0E198h)
        and     a
        ret     nz
        ld      hl,0E0A2h       ; Map Y coordinate
        dec     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        and     a
        jr      nz,L8841
        ld      hl,0E0A2h       ; Map Y coordinate
        inc     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        ret

        ; Referenced from 8837
L8841:  ld      (0E0A3h),a      ; Current screen (?)
        ld      a,01h
        ld      (0E198h),a
        ret

        ; Referenced from 87DF
L884A:  ld      a,(ix+00h)
        cp      9Fh
        jp      c,L8B03

        ; Referenced from 876C
        ; --- START PROC L8852 ---
L8852:  ld      a,(0E198h)
        and     a
        ret     nz
        ld      hl,0E0A2h       ; Map Y coordinate
        inc     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        and     a
        jr      nz,L886A
        ld      hl,0E0A2h       ; Map Y coordinate
        dec     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        xor     a
        ret

        ; Referenced from 885F
L886A:  ld      (0E0A3h),a      ; Current screen (?)
        ld      a,03h
        ld      (0E198h),a
        ret

        ; Referenced from 87D0, 87D5, 87DA
        ; --- START PROC L8873 ---
L8873:  ld      a,(ix+06h)
        and     a
        ret     nz
        ld      a,(ix+01h)
        cp      0F0h
        jp      c,L8A75

        ; Referenced from 8F27
        ; --- START PROC L8880 ---
L8880:  ld      a,(0E198h)
        and     a
        ret     nz
        ld      hl,0E0A1h       ; Map X coordinate
        inc     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        and     a
        jr      nz,L889C

        ; Referenced from 889F
L888F:  ld      hl,0E0A1h       ; Map X coordinate
        dec     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
        ld      a,(0E012h)
        jp      L8A9B_SET_PLAYER_SPRITES_WALK_RIGHT

        ; Referenced from 888D
L889C:  call    L88E9_IS_BOSS_SCREEN
        jr      nc,L888F
        ld      a,c
        ld      (0E0A3h),a      ; Current screen (?)
        ld      a,02h
        ld      (0E198h),a
        ret

        ; Referenced from 87E4, 87E9, 87EE
        ; --- START PROC L88AB ---
L88AB:  ld      a,(ix+06h)
        and     a
        ret     nz
        ld      a,(ix+01h)
        cp      02h
        jp      nc,L8C05

        ; Referenced from 8F60
        ; --- START PROC L88B8 ---
L88B8:  ld      a,(0E0A1h)      ; Map X coordinate
        and     a
        jr      z,.L88D4
        ld      a,(0E198h)
        and     a
        ret     nz
; Points to the screen to the left
        ld      hl,0E0A1h       ; Map X coordinate
        dec     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX
; 0 ?
        and     a
        jr      nz,.L88DA ; no
; yes: points to the screen to the right again

        ; Referenced from 88DD
.L88CD_POINTER_TO_SCREEN_R:
        ld      hl,0E0A1h       ; Map X coordinate
        inc     (hl)
        call    L93A7_GET_CURRENT_SCREEN_INDEX

        ; Referenced from 88BC
.L88D4: ld      a,(0E012h)
        jp      L8C2B_SET_PLAYER_SPRITES_WALK_LEFT

.L88DA: call    L88E9_IS_BOSS_SCREEN
        jr      nc,.L88CD_POINTER_TO_SCREEN_R    ; yes
; no: enters the screen
        ld      a,c
        ld      (0E0A3h),a      ; Current screen (?)
        ld      a,04h
        ld      (0E198h),a
        ret


; -----------------------------------------------------------------------------
; Referenced from 889C, 88DA
; --- START PROC L88E9_IS_BOSS_SCREEN ---
; ret c: no
; ret nc: yes
L88E9_IS_BOSS_SCREEN:
        ld      c,a
        ld      a,(0E0A0h)      ; Map area index
        cp      00h
        jr      z,.L8917
        cp      01h
        jr      z,.L8910
        cp      02h
        jr      z,.L890B
        cp      03h
        jr      z,.L8904
; Is boss screen for area 4 ($44) ?
        ld      a,c
        cp      44h
        jr      z,.L891E
        jr      .L8929
; Is boss screen for area 3 ($2f) ?
.L8904: ld      a,c
        cp      2Fh
        jr      z,.L891E
        jr      .L8929
; Is boss screen for area 2 ($1e) ?
.L890B: ld      a,c
        cp      1Eh
        jr      z,.L891E
; Is boss screen for area 1 ($12) ?
.L8910: ld      a,c
        cp      12h
        jr      z,.L891E
        jr      .L8929
; Is boss screen for area 0 ($09) ?
.L8917: ld      a,c
        cp      09h
        jr      z,.L891E
        jr      .L8929

; Boss screen candidate
.L891E: ld      a,(0E0A0h)      ; Map area index
        ld      b,a
        inc     b
        ld      a,(0E046h)      ; Unlocked area count?
        cp      b
        jr      c,.L892B        ; not yet unlocked? (rets nc)
; Already unlocked: not a boss screen

; Rets c (not a boss screen)
.L8929: scf
        ret

; Rets nc (boss screen)
.L892B: xor     a
        ret
; -----------------------------------------------------------------------------


        ; Referenced from 8DE8
        ; --- START PROC L892D ---
L892D:  ld      a,(ix+00h)
        cp      0Ch
        jr      c,L894B
        sub     0Ch
        srl     a
        srl     a
        srl     a
        and     a
        jr      z,L894B
        ld      b,a
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8947
L8946:  add     hl,de
        djnz    L8946
        jr      L894E

        ; Referenced from 8932, 893D
L894B:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8949
L894E:  push    hl
        ld      a,(ix+01h)
        add     a,04h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L895E
        inc     h

        ; Referenced from 895B
L895E:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        pop     hl
        ld      a,(ix+01h)
        add     a,0Bh
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8973
        inc     h

        ; Referenced from 8970
L8973:  ld      l,a
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8827
        ; --- START PROC L8979 ---
L8979:  ld      a,(ix+00h)
        cp      01h
        jr      c,L8995
        sub     01h
        srl     a
        srl     a
        srl     a
        and     a
        jr      z,L8995
        ld      b,a
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8998
L8992:  add     hl,de
        jr      L8998

        ; Referenced from 897E, 8989
L8995:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8993
L8998:  djnz    L8992
        push    hl
        ld      a,(ix+01h)
        add     a,04h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L89AA
        inc     h

        ; Referenced from 89A7
L89AA:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        pop     hl
        ld      a,(ix+01h)
        add     a,0Bh
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L89BF
        inc     h

        ; Referenced from 89BC
L89BF:  ld      l,a
        ld      a,(hl)
        ld      (ix+15h),a
        ld      a,(ix+06h)
        and     a
        jr      z,L8A0D
        ld      a,(ix+14h)
        cp      34h             ; '4'
        jr      nc,L89F9
        ld      a,(ix+00h)
        and     0Fh
        cp      03h
        jr      z,L89DE
        cp      0Bh
        jr      nz,L89F9

        ; Referenced from 89D8
L89DE:  ld      a,(ix+00h)
        sub     04h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ld      (ix+06h),00h
        ret

        ; Referenced from 89CF, 89DC
L89F9:  dec     (ix+00h)
        dec     (ix+10h)

        ; Referenced from 8B83
        ; --- START PROC L89FF ---
L89FF:  ld      a,(ix+00h)
        and     04h
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ret

        ; Referenced from 89C8
L8A0D:  ld      a,(ix+14h)
        cp      38h             ; '8'
        jr      nc,L8A31
        ld      a,(ix+15h)
        cp      38h             ; '8'
        jr      nc,L8A5E

        ; Referenced from 8A51
L8A1B:  ld      (ix+06h),01h
        ld      a,(ix+00h)
        sub     05h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      a,(ix+02h)
        ld      (ix+07h),a
        ret

        ; Referenced from 8A12
L8A31:  ld      a,(ix+15h)
        cp      38h             ; '8'
        jr      nc,L8A74
        ld      a,(ix+01h)
        ld      b,a
        and     0Fh
        cp      08h
        jr      c,L8A53
        cp      0Ch
        jr      nc,L8A74

        ; Referenced from 8A68
L8A46:  ld      a,b
        set     2,a
        and     0FCh

        ; Referenced from 8A5C
L8A4B:  ld      (ix+01h),a
        ld      (ix+11h),a
        jr      L8A1B

        ; Referenced from 8A40
L8A53:  cp      04h
        jr      nc,L8A74

        ; Referenced from 8A72
L8A57:  ld      a,b
        set     2,a
        and     0F4h
        jr      L8A4B

        ; Referenced from 8A19
L8A5E:  ld      a,(ix+01h)
        ld      b,a
        and     0Fh
        cp      0Ch
        jr      c,L8A6A
        jr      L8A46

        ; Referenced from 8A66
L8A6A:  cp      04h
        jr      c,L8A74
        cp      08h
        jr      nc,L8A74
        jr      L8A57

        ; Referenced from 8A36, 8A44, 8A55, 8A6C, 8A70
        ; --- START PROC L8A74 ---
L8A74:  ret

        ; Referenced from 887D
        ; --- START PROC L8A75 ---
L8A75:  ld      (ix+04h),00h
        call    L8AB4
        ld      a,(ix+14h)
        cp      3Ch             ; '<'
        jr      c,L8A87
        cp      80h
        jr      c,L8AAF

        ; Referenced from 8A81
L8A87:  ld      a,(ix+15h)
        cp      3Ch             ; '<'
        jr      c,L8A92
        cp      80h
        jr      c,L8AAF

        ; Referenced from 8A8C
L8A92:  inc     (ix+01h)
        inc     (ix+11h)
        ld      a,(ix+01h)

        ; Referenced from 8899, 8AB2
        ; --- START PROC L8A9B_SET_PLAYER_SPRITES_WALK_RIGHT ---
L8A9B_SET_PLAYER_SPRITES_WALK_RIGHT:
        and     04h
        add     a,0Ch           ; Sprite pattern: player looking right #1
        ld      (ix+02h),a
        ld      (ix+07h),a
        add     a,60h           ; --> #2
        ld      (ix+12h),a
        ld      (ix+17h),00h
        ret

        ; Referenced from 8A85, 8A90
        ; --- START PROC L8AAF ---
L8AAF:  ld      a,(0E012h)
        jr      L8A9B_SET_PLAYER_SPRITES_WALK_RIGHT

        ; Referenced from 8F09, 8A79
        ; --- START PROC L8AB4 ---
L8AB4:  ld      a,(ix+00h)
        cp      10h
        jr      c,L8AD2
        sub     10h
        srl     a
        srl     a
        srl     a
        ld      b,a
        and     a
        jr      z,L8AD2
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8ACE
L8ACD:  add     hl,de
        djnz    L8ACD
        jr      L8AD5

        ; Referenced from 8AB9, 8AC5
L8AD2:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8AD0
L8AD5:  ld      a,(ix+01h)
        add     a,0Ch
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8AE4
        inc     h

        ; Referenced from 8AE1
L8AE4:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        ld      a,(ix+00h)
        and     07h
        and     a
        jr      nz,L8AFA
        ld      de,0020h
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8AEF
L8AFA:  ld      de,0040h
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 884F
        ; --- START PROC L8B03 ---
L8B03:  ld      a,(ix+00h)
        srl     a
        srl     a
        srl     a
        and     a
        jr      z,L8B1B
        ld      b,a
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8B17
L8B16:  add     hl,de
        djnz    L8B16
        jr      L8B1E

        ; Referenced from 8B0D
L8B1B:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8B19
L8B1E:  push    hl
        ld      a,(ix+01h)
        add     a,04h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8B2E
        inc     h

        ; Referenced from 8B2B
L8B2E:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        pop     hl
        ld      a,(ix+01h)
        add     a,0Bh
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8B43
        inc     h

        ; Referenced from 8B40
L8B43:  ld      l,a
        ld      a,(hl)
        ld      (ix+15h),a
        ld      a,(ix+06h)
        and     a
        jr      z,L8B86
        ld      a,(ix+14h)
        cp      38h             ; '8'
        jr      nc,L8B7D
        ld      a,(ix+00h)
        and     0Fh
        cp      03h
        jr      z,L8B62
        cp      0Bh
        jr      nz,L8B7D

        ; Referenced from 8B5C
L8B62:  ld      a,(ix+00h)
        add     a,05h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ld      (ix+06h),00h
        ret

        ; Referenced from 8B53, 8B60
L8B7D:  inc     (ix+00h)
        inc     (ix+10h)
        jp      L89FF

        ; Referenced from 8B4C
L8B86:  ld      a,(ix+14h)
        cp      34h             ; '4'
        jr      nc,L8BAA
        ld      a,(ix+15h)
        cp      34h             ; '4'
        jr      nc,L8BD7

        ; Referenced from 8BCA
L8B94:  ld      (ix+06h),01h
        ld      a,(ix+00h)
        add     a,05h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      a,(ix+02h)
        ld      (ix+07h),a
        ret

        ; Referenced from 8B8B
L8BAA:  ld      a,(ix+15h)
        cp      38h             ; '8'
        jr      nc,L8BED_SET_ENTER_WELL_SPRITE_PATTERNS

        ld      a,(ix+01h)
        ld      b,a
; (ix+01h mod 16) < 9 ?
        and     0Fh
        cp      08h
        jr      c,L8BCC
; no
; Close enough to the well?
        cp      0Ch
        jr      nc,L8BED_SET_ENTER_WELL_SPRITE_PATTERNS
; no

; Referenced from 8BE1
L8BBF:
; aligns to (? mod 8 = 4) pixels (?)
        ld      a,b
        set     2,a
        and     0FCh

        ; Referenced from 8BD5
L8BC4:  ld      (ix+01h),a
        ld      (ix+11h),a
        jr      L8B94

        ; Referenced from 8BB9
L8BCC:
; Close enough to the well?
        cp      04h
        jr      nc,L8BED_SET_ENTER_WELL_SPRITE_PATTERNS
; no

; Referenced from 8BEB
L8BD0:
; aligns to (? mod 16 = 4) pixels (?)
        ld      a,b
        set     2,a
        and     0F4h
        jr      L8BC4

        ; Referenced from 8B92
L8BD7:
        ld      a,(ix+01h)
        ld      b,a
; (ix+01h mod 16) < 12 ?
        and     0Fh
        cp      0Ch
        jr      c,.L8BE3
; no
        jr      L8BBF
; yes
.L8BE3:
; ix+01h < 4 or ix+01h >= 8 ?
        cp      04h
        jr      c,L8BED_SET_ENTER_WELL_SPRITE_PATTERNS
        cp      08h
        jr      nc,L8BED_SET_ENTER_WELL_SPRITE_PATTERNS
; no
        jr      L8BD0
; yes

; Referenced from 8BAF, 8BBD, 8BCE, 8BE5, 8BE9
L8BED_SET_ENTER_WELL_SPRITE_PATTERNS:
        ld      a,(ix+04h)
        and     a
        ret     nz
        ld      (ix+04h),01h    ; Entering well = 1
        ld      a,(ix+02h)
        ld      (ix+07h),a      ; Saves the old sprite pattern (?)
        ld      (ix+02h),24h    ; Sprite pattern: player entering well #1
        ld      (ix+12h),84h    ; Sprite pattern: player entering well #2
        ret

        ; Referenced from 88B5
        ; --- START PROC L8C05 ---
L8C05:  ld      (ix+04h),00h    ; Entering well = 0
        call    L8C44
        ld      a,(ix+14h)
        cp      3Ch             ; '<'
        jr      c,L8C17
        cp      80h
        jr      c,L8C3F

        ; Referenced from 8C11
L8C17:  ld      a,(ix+15h)
        cp      3Ch             ; '<'
        jr      c,L8C22
        cp      80h
        jr      c,L8C3F

        ; Referenced from 8C1C
L8C22:  dec     (ix+01h)
        dec     (ix+11h)
        ld      a,(ix+01h)

        ; Referenced from 88D7, 8C42
        ; --- START PROC L8C2B_SET_PLAYER_SPRITES_WALK_LEFT ---
L8C2B_SET_PLAYER_SPRITES_WALK_LEFT:
        and     04h
        add     a,14h           ; Sprite pattern: player looking left #1
        ld      (ix+02h),a
        ld      (ix+07h),a
        add     a,60h           ; --> #2
        ld      (ix+12h),a
        ld      (ix+17h),01h
        ret

        ; Referenced from 8C15, 8C20
        ; --- START PROC L8C3F ---
L8C3F:  ld      a,(0E012h)
        jr      L8C2B_SET_PLAYER_SPRITES_WALK_LEFT

        ; Referenced from 8C09, 8F42
        ; --- START PROC L8C44 ---
L8C44:  ld      a,(ix+00h)
        cp      10h
        jr      c,L8C62
        sub     10h
        srl     a
        srl     a
        srl     a
        and     a
        jr      z,L8C62
        ld      b,a
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8C5E
L8C5D:  add     hl,de
        djnz    L8C5D
        jr      L8C65

        ; Referenced from 8C49, 8C54
L8C62:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8C60
L8C65:  ld      a,(ix+01h)
        add     a,03h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8C74
        inc     h

        ; Referenced from 8C71
L8C74:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        ld      a,(ix+00h)
        and     07h
        and     a
        jr      nz,L8C8A
        ld      de,0020h
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8C7F
L8C8A:  ld      de,0040h
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 86F7, 873E, 8E58
        ; --- START PROC L8C93 ---
L8C93:  ld      a,(ix+00h)
        srl     a
        srl     a
        srl     a
        ld      b,a
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8CA4
L8CA3:  add     hl,de
        djnz    L8CA3
        push    hl
        ld      a,(ix+01h)
        add     a,04h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8CB6
        inc     h

        ; Referenced from 8CB3
L8CB6:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        pop     hl
        ld      a,(ix+01h)
        add     a,0Bh
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8CCB
        inc     h

        ; Referenced from 8CC8
L8CCB:  ld      l,a
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8779, 8E8C
        ; --- START PROC L8CD1 ---
L8CD1:  ld      a,(ix+00h)
        cp      13h
        jr      c,L8CEF
        sub     0Dh
        srl     a
        srl     a
        srl     a
        ld      b,a
        and     a
        jr      z,L8CEF
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0020h

        ; Referenced from 8CEB
L8CEA:  add     hl,de
        djnz    L8CEA
        jr      L8CF2

        ; Referenced from 8CD6, 8CE2
L8CEF:  ld      hl,0E700h       ; screen data ? (1/3)

        ; Referenced from 8CED
L8CF2:  ld      a,(ix+01h)
        add     a,08h
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,L8D01
        inc     h

        ; Referenced from 8CFE
L8D01:  ld      l,a
        ld      a,(hl)
        ld      (ix+14h),a
        ld      de,0020h
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 80FA
        ; --- START PROC L8D0F ---
L8D0F:  ld      a,(0E047h)      ; item #1 present
        cp      02h
        ret     z
        ld      a,(ix+05h)
        and     a
        jr      nz,L8D7A
        ld      a,(0E020h)
        and     a
        ret     z
        xor     a
        ld      (0E020h),a
        ld      (0E021h),a
        ld      (0E08Bh),a
        ld      a,(ix+06h)
        and     a
        ret     nz
        ld      a,(ix+04h)
        and     a
        ret     nz
        ld      a,(ix+09h)
        and     a
        ret     nz
        ld      a,04h
        call    LB758
        ld      (ix+05h),01h
        ld      a,(ix+02h)
        ld      (ix+07h),a
        call    L8F7B
        ld      a,(0E180h)      ; Stick read (keyboard OR joystick)
        cp      02h
        jr      z,L8D68
        cp      03h
        jr      z,L8D68
        cp      07h
        jr      z,L8D72
        cp      08h
        jr      z,L8D72
        ld      (ix+0Ah),00h
        ld      (ix+0Ch),00h
        jr      L8D7A

        ; Referenced from 8D50, 8D54
L8D68:  ld      (ix+0Ah),01h
        ld      (ix+0Ch),01h
        jr      L8D7A

        ; Referenced from 8D58, 8D5C
L8D72:  ld      (ix+0Ah),02h
        ld      (ix+0Ch),02h

        ; Referenced from 8D19, 8D66, 8D70
L8D7A:  call    L8EE7
        ld      a,(ix+0Bh)
        and     a
        jp      nz,L8E2E
        ld      a,(ix+1Bh)
        and     a
        jr      z,L8DBD
        ld      a,(ix+16h)
        cp      09h
        jr      z,L8D9F
        jr      nc,L8DB0
        xor     a
        ld      (0E021h),a
        ld      (0E020h),a
        ld      (0E08Bh),a
        jr      L8DB0

        ; Referenced from 8D8F
L8D9F:  ld      a,(0E020h)
        and     a
        jr      nz,L8DB0
        ld      (ix+0Bh),01h
        ld      (ix+16h),11h
        jp      L8E2E

        ; Referenced from 8D91, 8D9D, 8DA3
L8DB0:  xor     a
        ld      (0E020h),a
        ld      a,(ix+16h)
        cp      20h             ; ' '
        jr      z,L8E2A
        jr      L8DC8

        ; Referenced from 8D88
L8DBD:  xor     a
        ld      (0E020h),a
        ld      a,(ix+16h)
        cp      10h
        jr      z,L8E2A

        ; Referenced from 8DBB
L8DC8:  ld      a,(ix+1Bh)
        and     a
        jr      nz,L8DD3
        ld      hl,L8F91_DY_TABLE
        jr      L8DD6

        ; Referenced from 8DCC
L8DD3:  ld      hl,8FA2h

        ; Referenced from 8DD1
L8DD6:  ld      a,(ix+16h)
        inc     (ix+16h)
        add     a,l
        jr      nc,L8DE0
        inc     h

        ; Referenced from 8DDD
L8DE0:  ld      l,a
        ld      a,(hl)
        and     a
        jp      z,L8EE6
        ld      b,a

        ; Referenced from 8E0F
L8DE7:  push    bc
        call    L892D
        ld      a,(ix+14h)
        cp      4Fh             ; 'O'
        jr      c,L8DF6
        cp      58h             ; 'X'
        jr      c,L8E14

        ; Referenced from 8DF0
L8DF6:  ld      a,(ix+15h)
        cp      4Fh             ; 'O'
        jr      c,L8E01
        cp      58h             ; 'X'
        jr      c,L8E14

        ; Referenced from 8DFB
L8E01:  ld      a,(ix+00h)
        cp      04h
        jr      c,L8E0E
        dec     (ix+00h)
        dec     (ix+10h)

        ; Referenced from 8E06
L8E0E:  pop     bc
        djnz    L8DE7
        jp      L8EE6

        ; Referenced from 8DF4, 8DFF
L8E14:  pop     bc
        ld      a,(ix+16h)
        and     a
        jr      nz,L8E24
        ld      (ix+05h),00h
        ld      (ix+0Ah),00h
        ret

        ; Referenced from 8E19
L8E24:  ld      (ix+0Bh),01h
        jr      L8E2E

        ; Referenced from 8DC6, 8DB9
L8E2A:  ld      (ix+0Bh),01h

        ; Referenced from 8D81, 8DAD, 8E28
L8E2E:  xor     a
        ld      (0E020h),a
        ld      a,(ix+16h)
        and     a
        jr      z,L8EA7
        dec     (ix+16h)
        ld      a,(ix+1Bh)
        and     a
        jr      nz,L8E46
        ld      hl,L8F91_DY_TABLE
        jr      L8E49

        ; Referenced from 8E3F
L8E46:  ld      hl,8FA2h

        ; Referenced from 8E44
L8E49:  ld      a,(ix+16h)
        add     a,l
        jr      nc,L8E50
        inc     h

        ; Referenced from 8E4D
L8E50:  ld      l,a
        ld      a,(hl)
        and     a
        jp      z,L8EE6
        ld      b,a

        ; Referenced from 8E80
L8E57:  push    bc
        call    L8C93
        ld      a,(ix+14h)
        cp      34h             ; '4'
        jr      c,L8E84
        cp      3Ch             ; '<'
        jr      c,L8E6A
        cp      80h
        jr      c,L8E84

        ; Referenced from 8E64
L8E6A:  ld      a,(ix+15h)
        cp      34h             ; '4'
        jr      c,L8E84
        cp      3Ch             ; '<'
        jr      c,L8E79
        cp      80h
        jr      c,L8E84

        ; Referenced from 8E73, 8E8A, 8E98, 8EA3
L8E79:  inc     (ix+00h)
        inc     (ix+10h)
        pop     bc
        djnz    L8E57
        jr      L8EE6

        ; Referenced from 8E60, 8E68, 8E6F, 8E77
L8E84:  ld      a,(ix+00h)
        and     07h
        and     a
        jr      nz,L8E79
        call    L8CD1
        ld      a,(ix+14h)
        cp      3Ch             ; '<'
        jr      c,L8E9A
        cp      80h
        jr      c,L8E79

        ; Referenced from 8E94
L8E9A:  ld      a,(ix+15h)
        cp      3Ch             ; '<'
        jr      c,L8EC5
        cp      80h
        jr      c,L8E79
        jr      L8EC5

        ; Referenced from 8E36
L8EA7:  ld      (ix+0Bh),00h
        ld      (ix+0Ah),00h
        ld      (ix+05h),00h
        ld      (ix+16h),00h
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        jp      L86F7

        ; Referenced from 8E9F, 8EA5
L8EC5:  pop     bc
        ld      (ix+0Bh),00h
        ld      (ix+0Ah),00h
        ld      (ix+05h),00h
        ld      (ix+16h),00h
        ld      (ix+0Ch),00h
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ret

        ; Referenced from 8E53, 8E82, 8DE3, 8E11
        ; --- START PROC L8EE6 ---
L8EE6:  ret

        ; Referenced from 8D7A
        ; --- START PROC L8EE7 ---
L8EE7:  ld      a,(ix+0Ah)
        and     a
        jr      nz,L8F05
        ld      a,(ix+17h)
        and     a
        jr      nz,L8EFC
        ld      (ix+02h),08h
        ld      (ix+12h),68h    ; 'h'
        ret

        ; Referenced from 8EF1
L8EFC:  ld      (ix+02h),1Ch
        ld      (ix+12h),7Ch    ; '|'
        ret

        ; Referenced from 8EEB
L8F05:  cp      01h
        jr      nz,L8F42

        ; Referenced from 872F
        ; --- START PROC L8F09 ---
L8F09:  call    L8AB4
        ld      a,(ix+14h)
        cp      48h             ; 'H'
        jr      c,L8F17
        cp      80h
        jr      c,L8F39

        ; Referenced from 8F11
L8F17:  ld      a,(ix+15h)
        cp      48h             ; 'H'
        jr      c,L8F22
        cp      80h
        jr      c,L8F39

        ; Referenced from 8F1C
L8F22:  ld      a,(ix+01h)
        cp      0F0h
        jp      z,L8880
        inc     (ix+01h)
        inc     (ix+11h)
        ld      (ix+02h),08h
        ld      (ix+12h),68h    ; 'h'
        ret

        ; Referenced from 8F15, 8F20
L8F39:  ld      (ix+0Ah),00h
        ld      (ix+0Ch),00h
        ret

        ; Referenced from 8738, 8F07
        ; --- START PROC L8F42 ---
L8F42:  call    L8C44
        ld      a,(ix+14h)
        cp      48h             ; 'H'
        jr      c,L8F50
        cp      80h
        jr      c,L8F72

        ; Referenced from 8F4A
L8F50:  ld      a,(ix+15h)
        cp      48h             ; 'H'
        jr      c,L8F5B
        cp      80h
        jr      c,L8F72

        ; Referenced from 8F55
L8F5B:  ld      a,(ix+01h)
        cp      00h
        jp      z,L88B8
        dec     (ix+01h)
        dec     (ix+11h)
        ld      (ix+02h),1Ch
        ld      (ix+12h),7Ch    ; '|'
        ret

        ; Referenced from 8F4E, 8F59
L8F72:  ld      (ix+0Ah),00h
        ld      (ix+0Ch),00h
        ret

        ; Referenced from 8D48
        ; --- START PROC L8F7B ---
L8F7B:  ld      a,(0E0ABh)
        and     a
        jr      nz,L8F87
        ld      a,(0E0A9h)      ; cheat: energy ?
        and     a
        jr      z,L8F8C

        ; Referenced from 8F7F
L8F87:  ld      (ix+1Bh),01h
        ret

        ; Referenced from 8F85
L8F8C:  ld      (ix+1Bh),00h
        ret

L8F91_DY_TABLE:
        DB      03h, 03h, 02h, 02h, 01h, 01h, 01h, 01h
        DB      00h, 01h, 00h, 01h, 00h, 00h, 01h, 00h

L8FA1:
        DB      00h
        DB      03h
        DB      03h
        DB      03h
        DB      02h
        DB      02h
        DB      02h
        DB      02h
        DB      02h
        DB      01h
        DB      00h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h


        ; Referenced from 8100, 8772
        ; --- START PROC L8FC4 ---
L8FC4:  ld      a,(0E198h)
        and     a
        ret     z

; Was in boss mode?
        ld      a,(0E1B1h) ; boss index ???
        and     a
        jr      z,.L8FE2
; yes: Exits boss mode (restores main charset)
        xor     a
        ld      (0E1B0h),a      ; Is boss initialized?
        ld      (0E1B1h),a      ; boss index ???
        ld      (0E1B2h),a
        ld      (0E1B8h),a
        call    LB02F_LDIRVM_MAIN_CHARSET
        call    L8206_CHANGE_FLOOR_COLOR
.L8FE2:
;
        call    LB19A_ZEROES_E400_ENTITIES
        call    LB1A5_ZEROES_E340_ENTITIES
        ld      (ix+20h),0ECh
        ld      (ix+0Dh),00h
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        ld      a,(0E198h)
        ld      d,a
        ld      hl,0E980h       ; screen data ? (2/3)
        ld      bc,0500h

        ; Referenced from 9006
L9000:  ld      (hl),80h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,L9000
        xor     a
        ld      (0E198h),a
        ld      (0E19Bh),a
        ld      a,d
        cp      01h
        jr      z,L9023
        cp      02h
        jp      z,L90FD
        cp      03h
        jr      z,L9090
        cp      04h
        jp      z,L919C
        ret

        ; Referenced from 9012
L9023:  ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0EC00h       ; screen data ? (3/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E980h       ; screen data ? (2/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        ld      hl,0EBE0h
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      b,14h
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

        ; Referenced from 904D, 9082
L9048:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      04h
        jr      c,L9048
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        push    bc
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,1840h        ; at (0,2)
        ld      bc,0280h        ; 32x20 chars
        call    LDIRVM
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,0FFE0h       ; +(0,-1) scroll up?
        add     hl,de
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      a,(ix+00h)
        add     a,08h
        cp      0A0h
        jr      c,L9075
        ld      a,0A0h

        ; Referenced from 9071
L9075:  ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        call    LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER
        pop     bc
        djnz    L9048
        ld      hl,0E980h       ; screen data ? (2/3)
        ld      de,0E700h       ; screen data ? (1/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        ret

        ; Referenced from 901B
L9090:  ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E980h       ; screen data ? (2/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0EC00h       ; screen data ? (3/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        ld      hl,0E9A0h
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      b,14h
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

        ; Referenced from 90BA, 90EF
L90B5:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      04h
        jr      c,L90B5
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        push    bc
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,1840h        ; at (0,2)
        ld      bc,0280h        ; 32x20 chars
        call    LDIRVM
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,0020h        ; +(0,1) scroll down?
        add     hl,de
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      a,(ix+00h)
        sub     08h
        cp      11h
        jr      nc,L90E2
        ld      a,11h

        ; Referenced from 90DE
L90E2:  ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        call    LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER
        pop     bc
        djnz    L90B5
        ld      hl,0EC00h       ; screen data ? (3/3)
        ld      de,0E700h       ; screen data ? (1/3)
        ld      bc,0280h        ; 32x20 chars
        ldir
        ret

        ; Referenced from 9016
L90FD:  ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E980h       ; screen data ? (2/3)
        call    L9237
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E9A0h
        call    L9237
        ld      hl,0E981h
        ld      (0E195h),hl
        ld      hl,1840h        ; at (0,2)
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      b,20h           ; ' '

        ; Referenced from 9129, 9182
L9124:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      04h
        jr      c,L9124
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      hl,(0E195h)
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      c,14h

        ; Referenced from 915B
L9137:  push    bc
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,(0E193h)     ; NAMTBL destination address during scroll
        ld      bc,0020h
        call    LDIRVM
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,0040h
        add     hl,de
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      hl,(0E193h)     ; NAMTBL destination address during scroll
        ld      de,0020h
        add     hl,de
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        pop     bc
        dec     c
        jr      nz,L9137
        push    bc
        ld      hl,(0E195h)
        inc     hl
        ld      (0E195h),hl
        ld      hl,1840h        ; at (0,2)
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        ld      a,(ix+01h)
        cp      08h
        jr      z,L9174
        jr      nc,L9176

        ; Referenced from 9170
L9174:  ld      a,0Eh

        ; Referenced from 9172
L9176:  sub     08h
        ld      (ix+01h),a
        ld      (ix+11h),a
        call    LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER
        pop     bc
        djnz    L9124
        ld      hl,0E9A0h
        ld      de,0E700h       ; screen data ? (1/3)
        ld      b,14h

        ; Referenced from 9199
L918C:  push    bc
        ld      bc,0020h
        ldir
        pop     bc
        push    de
        ld      de,0020h
        add     hl,de
        pop     de
        djnz    L918C
        ret

        ; Referenced from 901F
L919C:  ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E9A0h
        call    L9237
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      de,0E980h       ; screen data ? (2/3)
        call    L9237
        ld      hl,0E99Fh
        ld      (0E195h),hl
        ld      hl,1840h        ; at (0,2)
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      b,20h           ; ' '

        ; Referenced from 91C8, 921D
L91C3:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      04h
        jr      c,L91C3
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      hl,(0E195h)
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      c,14h

        ; Referenced from 91FA
L91D6:  push    bc
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,(0E193h)     ; NAMTBL destination address during scroll
        ld      bc,0020h
        call    LDIRVM
        ld      hl,(0E191h)     ; NAMTBL source data address during scroll
        ld      de,0040h
        add     hl,de
        ld      (0E191h),hl     ; NAMTBL source data address during scroll
        ld      hl,(0E193h)     ; NAMTBL destination address during scroll
        ld      de,0020h
        add     hl,de
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        pop     bc
        dec     c
        jr      nz,L91D6
        push    bc
        ld      hl,(0E195h)
        dec     hl
        ld      (0E195h),hl
        ld      hl,1840h        ; at (0,2)
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        ld      a,(ix+01h)
        cp      0E8h
        jr      nc,L921C
        add     a,08h
        ld      (ix+01h),a
        ld      (ix+11h),a
        call    LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER

        ; Referenced from 920F
L921C:  pop     bc
        djnz    L91C3
        ld      hl,0E980h       ; screen data ? (2/3)
        ld      de,0E700h       ; screen data ? (1/3)
        ld      b,14h

        ; Referenced from 9234
L9227:  push    bc
        ld      bc,0020h
        ldir
        pop     bc
        push    de
        ld      de,0020h
        add     hl,de
        pop     de
        djnz    L9227
        ret

        ; Referenced from 9103, 910F, 91A2, 91AE
        ; --- START PROC L9237 ---
L9237:  ld      (0E193h),de     ; NAMTBL destination address during scroll
        ld      b,14h

        ; Referenced from 9254
L923D:  push    bc
        ld      de,(0E193h)     ; NAMTBL destination address during scroll
        ld      bc,0020h
        ldir
        push    hl
        ld      hl,(0E193h)     ; NAMTBL destination address during scroll
        ld      de,0040h
        add     hl,de
        ld      (0E193h),hl     ; NAMTBL destination address during scroll
        pop     hl
        pop     bc
        djnz    L923D
        ret

        ; Referenced from 8047, 902E, 9106, 909B, 91A5
        ; --- START PROC L9257_UNPACK_CURRENT_SCREEN_TO_E700 ---
L9257_UNPACK_CURRENT_SCREEN_TO_E700:
; Fills the screen data 1/3 with $80 (empty)
        ld      hl,0E700h       ; screen data ? (1/3)
        ld      bc,0280h        ; 32x20 chars
.L925D: ld      (hl),80h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,.L925D

; Locates the screen definition address (in de)
        ld      a,(0E0A3h)      ; Current screen (?)
        ld      hl,L41AC_ROOMS_TABLE
        add     a,a
        add     a,l
        jr      nc,.L9270
        inc     h
.L9270: ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)

; Unpacks (?) the screen
        ; Referenced from 92A3
L9274_UNPACK:
; Byte 1: FF?
        ld      a,(de)
        cp      0FFh
        jp      z,L9330_UNPACK_FF ; Handles FF
; Byte 1: FE?
        cp      0FEh
        jp      z,L92A5_UNPACK_FE ; Handles FE
; Not FF nor EE: Draws a floor
        call    L938F_UNPACK_APPLY_OFFSET
; Byte 3 -> b (length)
        ld      a,(de)
        ld      b,a
        inc     de
; Byte 4 -> index for table at 54c7 (0..1..2..3)
        ld      a,(de)
        inc     de
        ld      (0E1A1h),a
        add     a,a
        push    de
; de = 54c7 + byte4 * 2
        ld      de,L54C7_FLOORS_TABLE
        add     a,e
        jr      nc,.L9293
        inc     d
.L9293: ld      e,a
        push    hl
; de = [de]
        ld      a,(de)
        ld      l,a
        inc     de
        ld      a,(de)
        ld      h,a
        ex      de,hl
        pop     hl

; Copies b bytes from [de] to [hl]
.L929C: ld      a,(de)
        ld      (hl),a
        inc     hl
        inc     de
        djnz    .L929C
        pop     de
; Unpacks next
        jr      L9274_UNPACK

        ; Referenced from 927C
L92A5_UNPACK_FE:  inc     de

        ; Referenced from 9304
L92A6:  ld      a,(de)
        cp      0FFh
        jp      z,L9330_UNPACK_FF
; FE offset
        call    L938F_UNPACK_APPLY_OFFSET
; FE offset size
        ld      a,(de)
        ld      (0E1A0h),a
        inc     de
        ld      a,(de)
        inc     de
        ld      b,a
        ld      (0E1A1h),hl
        xor     a
        ld      (0E1A3h),a

        ; Referenced from 9302
L92BE:  ld      hl,(0E1A1h)
        ld      a,(0E1A0h)
        ld      c,a
        ld      a,(0E0A0h)      ; Map area index
        cp      03h
        jr      z,L9306
        ld      a,(0E1A3h)
        and     a
        jr      nz,L92E4
        cpl
        ld      (0E1A3h),a

        ; Referenced from 92E0
L92D6:  ld      (hl),54h        ; 'T'
        inc     hl
        dec     c
        jr      z,L92F6
        ld      (hl),55h        ; 'U'
        inc     hl
        dec     c
        jr      nz,L92D6
        jr      L92F6

        ; Referenced from 92D0
L92E4:  cpl
        ld      (0E1A3h),a

        ; Referenced from 92F2
L92E8:  ld      (hl),56h        ; 'V'
        inc     hl
        dec     c
        jr      z,L92F6
        ld      (hl),57h        ; 'W'
        inc     hl
        dec     c
        jr      nz,L92E8
        jr      L92F6

        ; Referenced from 92DA, 92E2, 9314, 931C, 92EC, 92F4, 9326, 932E
L92F6:  ld      hl,(0E1A1h)
        push    de
        ld      de,0020h
        add     hl,de
        pop     de
        ld      (0E1A1h),hl
        djnz    L92BE
        jr      L92A6

        ; Referenced from 92CA
L9306:  ld      a,(0E1A3h)
        and     a
        jr      nz,L931E
        cpl
        ld      (0E1A3h),a

        ; Referenced from 931A
L9310:  ld      (hl),50h        ; 'P'
        inc     hl
        dec     c
        jr      z,L92F6
        ld      (hl),51h        ; 'Q'
        inc     hl
        dec     c
        jr      nz,L9310
        jr      L92F6

        ; Referenced from 930A
L931E:  cpl
        ld      (0E1A3h),a

        ; Referenced from 932C
L9322:  ld      (hl),52h        ; 'R'
        inc     hl
        dec     c
        jr      z,L92F6
        ld      (hl),53h        ; 'S'
        inc     hl
        dec     c
        jr      nz,L9322
        jr      L92F6

        ; Referenced from 9277, 92A9
L9330_UNPACK_FF:
        inc     de

        ; Referenced from 9355
L9331:
; Byte 2: FF FF?
        ld      a,(de)
        cp      0FFh
        jr      z,L9357_UNPACK_FF_FF
; No
        call    L938F_UNPACK_APPLY_OFFSET
; Reads length
        ld      a,(de)
        ld      b,a
        inc     de
; Reads type (a, a+8, a+8, ..., a+8, a+4)
        ld      a,(de)
        inc     de
        ld      (0E1A1h),a
        add     a,30h           ; '0'
        ld      (hl),a
        push    de
        ld      de,0020h
        add     hl,de
        dec     b
        dec     b
        add     a,08h
.L934D: ld      (hl),a
        add     hl,de
        djnz    .L934D
        sub     04h
        ld      (hl),a
        pop     de
        jr      L9331

        ; Referenced from 9334
L9357_UNPACK_FF_FF:
        inc     de

        ; Referenced from 936E
L9358:
; Byte 3: FF FF FF?
        ld      a,(de)
        cp      0FFh
        jp      z,L938E_UNPACK_FF_FF_FF
; No
        call    L938F_UNPACK_APPLY_OFFSET
; Reads pointer
        ld      a,(de)
        ld      c,a
        inc     de
        ld      a,(de)
        ld      b,a
        inc     de
        push    de
        ld      e,c
        ld      d,b
        call    L9370_UNPACK_BLOCK
        pop     de
; Unpacks next block (FF FF prefix)
        jr      L9358

        ; Referenced from 936A
        ; --- START PROC L9370_UNPACK_BLOCK ---
L9370_UNPACK_BLOCK:
; Reads width
        ld      a,(de)
        ld      (0E1A0h),a
        inc     de
; Reads height
        ld      a,(de)
        ld      b,a
        inc     de
; Copy block of cxb chars
.L9378: ld      a,(0E1A0h)
        ld      c,a
        push    hl
.L937D: ld      a,(de)
        ld      (hl),a
        inc     de
        inc     hl
        dec     c
        jr      nz,.L937D
        pop     hl
        push    de
        ld      de,0020h
        add     hl,de
        pop     de
        djnz    .L9378
        ret

        ; Referenced from 935B
        ; --- START PROC L938E_UNPACK_FF_FF_FF ---
L938E_UNPACK_FF_FF_FF:  ret

        ; Referenced from 927F, 9336, 92AC, 935E
        ; --- START PROC L938F_UNPACK_APPLY_OFFSET ---
L938F_UNPACK_APPLY_OFFSET:
; hl = E700 + $20 * a
        ld      hl,0E700h       ; screen data ? (1/3)
        and     a
        jr      z,.L939E
        ld      b,a
        push    de
        ld      de,0020h
.L939A: add     hl,de
        djnz    .L939A
        pop     de
.L939E:
; Next byte is horziontal offset
        inc     de
        ld      a,(de)
        add     a,l
        jr      nc,.L93A4
        inc     h
.L93A4: ld      l,a
        inc     de
        ret

        ; Referenced from 8044, 8833, 883D, 8889, 8893, 885B, 8865, 88C7, 88D1
        ; --- START PROC L93A7_GET_CURRENT_SCREEN_INDEX ---
L93A7_GET_CURRENT_SCREEN_INDEX:
; hl = 4038h_ [e0a0]
        ld      a,(0E0A0h)      ; Map area index
        add     a,a
        ld      hl,L4038_MAPS_TABLE  ; Table of addresses
        add     a,l
        jr      nc,.L93B2
        inc     h
.L93B2: ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
; hl += 10 * [e0a2]
        ld      a,(0E0A2h)      ; Map Y coordinate
        and     a
        jr      z,.L93C4
        ld      b,a
        ld      de,000Ah
.L93C1: add     hl,de
        djnz    .L93C1
.L93C4:
; hl += [e0a1]
        ld      a,(0E0A1h)      ; Map X coordinate
        add     a,l
        jr      nc,.L93CB
        inc     h
.L93CB: ld      l,a
;
        ld      a,(hl)
        ld      (0E0A3h),a      ; Current screen (?)
        ret

L93D1:  DB      01h
        DB      0C6h
        DB      04h
        DB      0CBh
        DB      3Fh             ; '?'
        DB      0CBh
        DB      3Fh             ; '?'
        DB      0CBh
        DB      3Fh             ; '?'
        DB      85h
        DB      30h             ; '0'
        DB      01h
        DB      24h             ; '$'
        DB      6Fh             ; 'o'
        DB      7Eh             ; '~'
        DB      0DDh
        DB      77h             ; 'w'
        DB      14h
        DB      0E1h
        DB      0DDh
        DB      7Eh             ; '~'
        DB      01h
        DB      0C6h
        DB      0Bh
        DB      0CBh
        DB      3Fh             ; '?'
        DB      0CBh
        DB      3Fh             ; '?'
        DB      0CBh
        DB      3Fh             ; '?'
        DB      85h
        DB      30h             ; '0'
        DB      01h
        DB      24h             ; '$'
        DB      6Fh             ; 'o'
        DB      7Eh             ; '~'
        DB      0DDh
        DB      77h             ; 'w'
        DB      15h
        DB      0C9h
        DB      0DDh
        DB      36h             ; '6'
        DB      14h
        DB      80h
        DB      0DDh
        DB      36h             ; '6'
        DB      15h


        ; Referenced from 80EE
        ; --- START PROC L9400 ---
L9400:  ld      a,(0E19Bh)
        and     a
        ret     nz
        inc     a
        ld      (0E19Bh),a
        ld      a,(0E0A3h)      ; Current screen (?)
        ld      hl,L4EBE_ROOM_ENTITIES_TABLE
        add     a,a
        add     a,l
        jr      nc,.L9414
        inc     h
.L9414:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      hl,0E340h       ; Secondary entities array [$e340..$e400)

        ; Referenced from 9432
L941B:  ld      a,(de)
        cp      0FFh
        jr      z,L9434
; notFF
        ld      (hl),a
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a
        inc     hl
        inc     hl
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a
        push    de
        ld      de,000Ch
        add     hl,de
        pop     de
        inc     de
        jr      L941B

        ; Referenced from 941E
L9434:
; FF
        inc     de
        ld      hl,0E400h

        ; Referenced from 9450
L9438:  ld      a,(de)
        cp      0FFh
        ret     z
; FF notFF
        ld      (hl),a  ; -> E400
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a  ; -> E401
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a  ; -> E402
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a  ; -> E403
        inc     de
        push    de
        ld      de,000Dh
        add     hl,de
        pop     de
        jr      L9438

        ; Referenced from 810C
        ; --- START PROC L9452_EXECUTE_E400_ENTITIES_SUBROUTINES ---
L9452_EXECUTE_E400_ENTITIES_SUBROUTINES:
        ld      iy,0E400h
        ld      b,0Ch

; Loop
.L9458: push    bc
        ld      a,(iy+02h)
        and     a
        jr      nz,.L9468

; Next entity
.L945F: ld      de,0010h
        add     iy,de
        pop     bc
        djnz    .L9458
        ret

; Execute entity subroutine and next
.L9468: call    .L946D
        jr      .L945F

; Execute entity subroutine
.L946D: ld      hl,.L947B
        add     a,a
        add     a,l
        jr      nc,.L9475
        inc     h
.L9475: ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        jp      (hl)
.L947B:
        DW      L94A3_FIRE_SUBROUTINE
        DW      L94A3_FIRE_SUBROUTINE
        DW      L9707_SCROLL_ITEM_SUBROUTINE
        DW      L97E3
        DW      L9892_1x1_ITEM_SUBROUTINE
        DW      L9892_1x1_ITEM_SUBROUTINE
        DW      L9892_1x1_ITEM_SUBROUTINE
        DW      L9892_1x1_ITEM_SUBROUTINE
        DW      L9999_1x2_ITEM_SUBROUTINE
        DW      L9999_1x2_ITEM_SUBROUTINE
        DW      L9999_1x2_ITEM_SUBROUTINE
        DW      L9999_1x2_ITEM_SUBROUTINE
        DW      L9A89_LAMP_SUBROUTINE
        DW      L9A89_LAMP_SUBROUTINE
        DW      L9A89_LAMP_SUBROUTINE
        DW      L9A89_LAMP_SUBROUTINE
        DW      L9B22_TONGUE_MONSTER_SUBROUTINE             ; '"'
        DW      L9CF8_LONG_NECK_WOMAN_SUBROUTINE
        DW      L9E2C_GIANT_FOOT_SUBROUTINE             ; ','
        DW      L9F40_BOSS_HAIR_SUBROUTINE             ; '@'

        ; Entry Point
        ; --- START PROC L94A3_FIRE_SUBROUTINE ---
L94A3_FIRE_SUBROUTINE:
; Checks fire status
        ld      a,(iy+05h)
        cp      02h
        jr      c,L94DF         ; not active?
; Active: check H collision
        ld      bc,0AF6h        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L94DF
; Check V collision with fire (height depending on status)
        ld      a,(iy+05h)
        cp      02h
        jr      z,.L94C5
        cp      03h
        jr      z,.L94CA
        cp      04h
        jr      z,.L94CF
        cp      05h
        jr      z,.L94CA
.L94C5:  ld      bc,04FFh        ; address or value?
        jr      .L94D2
.L94CA:  ld      bc,0AFFh        ; address or value?
        jr      .L94D2
.L94CF:  ld      bc,12FFh        ; address or value?
.L94D2:  call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,L94DF
; Collision with active fire!
        ld      a,07h
        call    LB758
        call    LB146_HURT_PLAYER

        ; Referenced from 94A8, 94B0, 94D5
L94DF:
; Check collision with fire area
        ld      bc,01FFh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,.L94FC
        ld      bc,04FCh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,.L94FC

; Collision
        ld      a,(ix+04h)
        and     a
        jr      z,.L94FC
        ld      a,(iy+03h)
        and     a
        jp      nz,L959D_WELL_TELEPORT

        ; Referenced from 94E5, 94ED, 94F3
.L94FC:
        ld      a,(0E1B8h)
        and     a
        ret     nz
; Checks fire status
        ld      a,(iy+05h)
        and     a
        jr      nz,.L9524       ; not active?

; Moves fire up
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      de,0FFE0h       ; (0,-1)
        add     hl,de
        ld      (iy+07h),l
        ld      (iy+08h),h

        ; Referenced from 9599
.L9514:  ld      a,r
        and     3Fh             ; '?'
        add     a,80h
        ld      (iy+06h),a
        ld      (iy+05h),01h
        jp      .L959C

        ; Referenced from 9505
.L9524:  cp      01h
        jr      nz,.L9542

        ; Referenced from 9586
.L9528:  dec     (iy+06h)
        jp      nz,.L959C
        inc     (iy+05h)
        ld      (iy+06h),10h
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55FBh        ; 3x3: fire (1 row up)
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9526
.L9542:  cp      02h
        jr      nz,.L955F

        ; Referenced from 9580
.L9546:  dec     (iy+06h)
        jr      nz,.L959C
        ld      (iy+06h),10h
        inc     (iy+05h)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,5606h        ; 3x3: fire (2 rows up)
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9544
.L955F:  cp      03h
        jr      nz,.L957C
        dec     (iy+06h)
        jr      nz,.L959C
        ld      (iy+06h),20h    ; ' '
        inc     (iy+05h)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,5611h        ; 3x3: fire (3 rows up)
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9561
.L957C:  cp      04h
        jr      nz,.L9582
        jr      .L9546

        ; Referenced from 957E
.L9582:  cp      05h
        jr      nz,.L9588
        jr      .L9528

        ; Referenced from 9584
.L9588:  dec     (iy+06h)
        jr      nz,.L959C
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55F0h        ; 3x3: fire (0 rows up)
        call    LA0AD_PRINT_BLOCK
        jp      .L9514

        ; Referenced from 9521, 952B, 9549, 9566, 958B
.L959C:  ret

        ; Referenced from 94F9
L959D_WELL_TELEPORT:
        ld      (ix+04h),00h
; hl = LA0D7_WELL_TARGET_TABLE + 2a
        ld      hl,LA0D7_WELL_TARGET_TABLE
        add     a,a
        add     a,l
        jr      nc,.L95A9
        inc     h
.L95A9: ld      l,a
; de = [hl]
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
; Changes area and map coordinates
        ld      a,(de)
        ld      (0E0A0h),a      ; Map area index
        inc     de
        ld      a,(de)
        ld      (0E0A1h),a      ; Map X coordinate
        inc     de
        ld      a,(de)
        ld      (0E0A2h),a      ; Map Y coordinate
        inc     de
;
        push    de
        call    LB1A5_ZEROES_E340_ENTITIES
        call    LB19A_ZEROES_E400_ENTITIES
; Prepares the "player entering well" sprites
        ld      a,(ix+00h)
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
        ld      a,(ix+01h)
        ld      (0E3E1h),a      ; Player entering well sprite #1 X
        ld      (0E3F1h),a      ; Player entering well sprite #2 X
        ld      a,24h
        ld      (0E3E2h),a      ; Player entering well sprite #1 pattern
        ld      a,84h
        ld      (0E3F2h),a      ; Player entering well sprite #2 pattern
        ld      a,0Dh
        ld      (0E3E3h),a      ; Player entering well sprite #1 color
        ld      a,0Bh
        ld      (0E3F3h),a      ; Player entering well sprite #2 color
; Uses the first four sprites to mask
        ld      a,(ix+00h)
        add     a,10h           ; Y
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+20h),a
        ld      (ix+30h),a
        ld      a,0E4h          ; sprite pattern: empty
        ld      (ix+02h),a
        ld      (ix+12h),a
        ld      (ix+22h),a
        ld      (ix+32h),a
;
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      (ix+26h),a      ; Frame counter
;
        ld      a,01h
        call    LB764_SET_E2C2_TO_A_IF_GT

; Move player down in well loop

; Delay
L961A:  ld      a,(0E010h)
        cp      08h
        jr      c,L961A
        xor     a
        ld      (0E010h),a
; Move player down
        ld      a,(0E3E0h)      ; Player entering well sprite #1 Y
        inc     a
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
; Shows
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
; Checks counter
        inc     (ix+26h)
        ld      a,(ix+26h)
        cp      0Ah             ; 10 frames
        jr      c,L961A
        call    LB25D_FADE_OUT_SCREEN
;

        ld      a,(0E1B1h)
        and     a
        jr      z,L9658
        xor     a
        ld      (0E1B1h),a
        ld      (0E1B2h),a
        ld      (0E1B0h),a                      ; Is boss initialized?
        ld      (0E1B8h),a
        call    LB02F_LDIRVM_MAIN_CHARSET

        ; Referenced from 9646
L9658:
; Temporarily copies the map area index to the current area and applies
        ld      a,(0E00Ah)      ; current area
        push    af
        ld      a,(0E0A0h)      ; Map area index
        ld      (0E00Ah),a      ; current area
        call    L8206_CHANGE_FLOOR_COLOR
        pop     af
        ld      (0E00Ah),a      ; current area

        call    L93A7_GET_CURRENT_SCREEN_INDEX
        call    L9257_UNPACK_CURRENT_SCREEN_TO_E700
        call    LB1C3
        pop     de
        ld      a,(de)
        add     a,0Ah
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
        add     a,06h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+20h),a
        ld      (ix+30h),a
        inc     de
        ld      a,(de)
        ld      (0E3E1h),a      ; Player entering well sprite #1 X
        ld      (0E3F1h),a      ; Player entering well sprite #2 X
        ld      (ix+01h),a
        ld      (ix+11h),a
        ld      (ix+21h),a
        ld      (ix+31h),a
        ld      (ix+26h),00h
        ld      a,01h
        call    LB764_SET_E2C2_TO_A_IF_GT

        ; Referenced from 96AC, 96CA
L96A7:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      08h
        jr      c,L96A7
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      a,(0E3E0h)      ; Player entering well sprite #1 Y
        dec     a
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        inc     (ix+26h)
        ld      a,(ix+26h)
        cp      0Ah
        jr      c,L96A7
        ld      a,(0E3E0h)      ; Player entering well sprite #1 Y
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        ld      a,(0E3E1h)      ; Player entering well sprite #1 X
        ld      (ix+01h),a
        ld      (ix+11h),a
        ld      (ix+20h),0ECh
        ld      (ix+30h),0ECh
        ld      a,0ECh
        ld      (0E3E0h),a      ; Player entering well sprite #1 Y
        ld      (0E3F0h),a      ; Player entering well sprite #2 Y
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        xor     a
        ld      (0E19Bh),a
        ret

        ; Entry Point
        ; --- START PROC L9707_SCROLL_ITEM_SUBROUTINE ---
L9707_SCROLL_ITEM_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,.L9741
        ld      a,(iy+03h)
        ld      hl,0E02Ch       ; address or value?
        add     a,l
        jr      nc,.L9717
        inc     h
.L9717: ld      l,a
        ld      a,(hl)
        and     a
        jr      z,.L9720
        call    LA080_ZEROES_16b_AT_IY
        ret

        ; Referenced from 971A
.L9720: inc     (iy+04h)        ; status/subroutine index (?)
        ld      (iy+05h),l
        ld      (iy+06h),h
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+07h),l
        ld      (iy+08h),h
        ld      de,DECO_55DC
        call    LA0AD_PRINT_BLOCK
        ld      a,(0E1B9h)
        inc     a
        ld      (0E1B9h),a
        jr      .L9741

        ; Referenced from 970B, 973F
.L9741: ld      bc,01FFh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,.L977B
        ld      bc,04FCh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,.L977B
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        inc     (hl)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55E2h        ; address or value?
        call    LA0AD_PRINT_BLOCK
        call    L977C_PRINT_HUD_KEYS
        call    LA080_ZEROES_16b_AT_IY
        ld      a,(0E1B9h)
        dec     a
        ld      (0E1B9h),a
        ld      a,20h           ; ' '
        call    LB3AF_ADD_SCORE
        ld      a,01h
        call    LB758
.L977B: ret

        ; Referenced from 9764
        ; --- START PROC L977C_PRINT_HUD_KEYS ---
L977C_PRINT_HUD_KEYS:
        ld      a,(0E02Bh)
        inc     a
        ld      (0E02Bh),a
        cp      05h
        jr      c,L97C8_PRINT_SCROLLS_IN_HUD
; Clear scrolls in HUD
        xor     a
        ld      (0E02Bh),a
        ld      hl,1AC1h        ; address or value?
        ld      bc,0004h        ; address or value?
        ld      a,60h           ; '`'
        call    FILVRM
        ld      hl,1AE1h        ; address or value?
        ld      bc,0004h        ; address or value?
        ld      a,10h
        call    FILVRM
;
        ld      a,03h
        call    LB764_SET_E2C2_TO_A_IF_GT
; Increases key count
        ld      a,(0E046h)      ; Unlocked area count?
        inc     a
        ld      (0E046h),a      ; Unlocked area count?
; Prints keys in HUD
        ld      a,(0E046h)      ; Unlocked area count?
        ld      c,a
        ld      b,00h
        ld      hl,180Ah        ; address or value?
        ld      a,7Ah           ; 'z'
        call    FILVRM
        ld      hl,182Ah        ; address or value?
        ld      a,(0E046h)      ; Unlocked area count?
        ld      c,a
        ld      a,7Eh           ; '~'
        call    FILVRM
        ret

        ; Referenced from 9785
L97C8_PRINT_SCROLLS_IN_HUD:
        ld      a,(0E02Bh)
        ld      hl,1AC1h        ; address or value?
        ld      c,a
        ld      b,00h
        ld      a,6Eh           ; 'n'
        call    FILVRM
        ld      hl,1AE1h        ; address or value?
        ld      a,(0E02Bh)
        ld      c,a
        ld      a,6Fh           ; 'o'
        call    FILVRM
        ret

        ; Entry Point
        ; --- START PROC L97E3 ---
L97E3:  ld      bc,08FFh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9851
        ld      bc,01FFh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,L9851
        ld      a,(0E0A8h)
        sla     a
        ld      b,a
        ld      a,(0E0A9h)      ; energy ?
        cp      b
        jr      z,L9833_CLEAR_2x1_AREA_RAM_VRAM
        ld      a,(0E04Bh)
        and     a
        jr      z,L9833_CLEAR_2x1_AREA_RAM_VRAM
        dec     a
        ld      (0E04Bh),a
        ld      hl,0E0B0h       ; address or value?
        ld      c,00h

        ; Referenced from 9815
L980E:  ld      a,(hl)
        cp      07h
        jr      z,L9817_PRINT_HUD_ITEM_NONE
        inc     c
        inc     hl
        jr      L980E

        ; Referenced from 9811
L9817_PRINT_HUD_ITEM_NONE:
        ld      (hl),00h
        ld      hl,1AC6h        ; address or value?
        ld      a,c
        add     a,l
        jr      nc,.L9821
        inc     h
.L9821:  ld      l,a
        ld      a,60h           ; '`'
        call    WRTVRM
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,10h
        call    WRTVRM
        call    LB0FE

        ; Referenced from 97FD, 9803
L9833_CLEAR_2x1_AREA_RAM_VRAM:
        ld      a,(ix+04h)
        and     a
        ret     z
        ld      a,(iy+03h)
        cp      01h
        jr      nz,L9852
; RAM
        ld      a,80h
        ld      (0E965h),a
        ld      (0E966h),a
; VRAM
        ld      hl,1AA5h        ; address or value?
        call    WRTVRM
        inc     hl
        call    WRTVRM

        ; Referenced from 97E9, 97F1
L9851:  ret

        ; Referenced from 983D
L9852:  cp      04h
        jr      nz,L9880
        ld      hl,0E791h       ; address or value?
        call    L9863_CLEAR_2x4_AREA_RAM
        ld      hl,18D1h        ; address or value?
        call    L9871_CLEAR_2x4_AREA_VRAM
        ret

        ; Referenced from 9859, 9887
        ; --- START PROC L9863_CLEAR_2x4_AREA_RAM ---
L9863_CLEAR_2x4_AREA_RAM:
        ld      b,04h
        ld      de,001Fh        ; (-1,+1)
.L9868: ld      (hl),80h
        inc     hl
        ld      (hl),80h
        add     hl,de
        djnz    .L9868
        ret

        ; Referenced from 985F, 988D
        ; --- START PROC L9871_CLEAR_2x4_AREA_VRAM ---
L9871_CLEAR_2x4_AREA_VRAM:
        ld      a,80h
        ld      b,04h
.L9875: call    WRTVRM
        inc     hl
        call    WRTVRM
        add     hl,de
        djnz    .L9875
        ret

        ; Referenced from 9854
        ; --- START PROC L9880 ---
L9880:  cp      06h
        jr      nz,L9891
        ld      hl,0E91Bh       ; address or value?
        call    L9863_CLEAR_2x4_AREA_RAM
        ld      hl,1A5Bh        ; address or value?
        call    L9871_CLEAR_2x4_AREA_VRAM
        ret

        ; Referenced from 9882
        ; --- START PROC L9891 ---
L9891:  ret

        ; Entry Point
        ; --- START PROC L9892_1x1_ITEM_SUBROUTINE ---
L9892_1x1_ITEM_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L98C1
        ld      a,(iy+03h)
        ld      hl,0E0C5h       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080_ZEROES_16b_AT_IY
      inc     (iy+04h)  ; status/subroutine index (?)
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,(iy+02h)
        ld      hl,9989h        ; address or value?
        add     a,l
        jr      nc,L98BB
        inc     h

        ; Referenced from 98B8
L98BB:  ld      l,a
        ld      a,(hl)
        ld      (iy+07h),a
        ret

        ; Referenced from 9896
L98C1:  ld      a,(0E017h)
        and     08h
        and     a
        jr      nz,L98E0
        ld      a,(iy+09h)
        and     a
        jr      nz,L98F5
        inc     (iy+09h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,(iy+07h)
        call    WRTVRM
        jr      L98F5

        ; Referenced from 98C7
L98E0:  ld      a,(iy+09h)
        and     a
        jr      z,L98F5
        ld      (iy+09h),00h
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    WRTVRM

        ; Referenced from 98CD, 98DE, 98E4
L98F5:  ld      bc,08FFh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jp      nc,L9988
        ld      bc,09FFh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jp      nc,L9988
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    WRTVRM
        ld      a,20h           ; ' '
        call    LB3AF_ADD_SCORE
        ld      a,01h
        call    LB758
        ld      a,(iy+02h)
        cp      04h
        jr      nz,L9928
        ld      (0E048h),a      ; item #2 present
        jr      L994C

        ; Referenced from 9921
L9928:  cp      05h
        jr      nz,L9931
        ld      (0E049h),a      ; item #3 present
        jr      L994C

        ; Referenced from 992A
L9931:  cp      06h
        jr      nz,L993E
        ld      a,(0E04Ah)      ; item #4 present (counter?)
        inc     a
        ld      (0E04Ah),a      ; item #4 present (counter?)
        jr      L994C

        ; Referenced from 9933
L993E:  cp      07h
        jr      nz,L994B
        ld      a,(0E04Bh)
        inc     a
        ld      (0E04Bh),a
        jr      L994C

        ; Referenced from 9940
L994B:  ret

        ; Referenced from 9926, 992F, 993C, 9949
L994C:  ld      de,L9991        ; address or value?
        ld      a,(iy+02h)
        sub     04h
        add     a,a
        add     a,e
        ld      e,a
        ld      hl,0E0B0h       ; address or value?
        ld      b,00h

        ; Referenced from 9962
L995C_PRINT_NEXT_HUD_ITEM:
        ld      a,(hl)
        and     a
        jr      z,L9964_PRINT_HUD_ITEM
        inc     hl
        inc     b
        jr      L995C_PRINT_NEXT_HUD_ITEM

        ; Referenced from 995E
L9964_PRINT_HUD_ITEM:
        ld      a,(iy+02h)
        ld      (hl),a
        ld      a,b
        ld      hl,1AC6h        ; address or value?
        add     a,l
        ld      l,a
        ld      a,(de)
        call    WRTVRM
        inc     de
        ld      a,(de)
        ld      de,0020h        ; address or value?
        add     hl,de
        call    WRTVRM
        ld      hl,0E0C5h       ; address or value?
        ld      a,(iy+03h)
        add     a,l
        ld      l,a
        ld      (hl),01h
        jp      LA080_ZEROES_16b_AT_IY
       ; Referenced from 98FB, 9904
        ; --- START PROC L9988 ---
L9988:  ret

L9989:  DB      00h
        DB      00h
        DB      00h
        DB      00h

L998d:  db      $70     ; 'p' camera
        db      $71     ; 'q' flashlight
        db      $72     ; 'r' geta shoe
        db      $73     ; 's' sushi

; NAMTBL data for the hud
L9991:  db      $75     ; 'u' top border (hud)
        db      $78     ; 'x' camera (hud)

        db      $7b     ; '{' top boder (hud)
        db      $7f     ;     flashlight (hud)

        db      $60     ; clear top border (hud)
        db      $72     ; 'r' geta shoe

        db      $60     ; clear top border (hud)
        db      $73     ; 's' sushi

        ; Entry Point
        ; --- START PROC L9999_1x2_ITEM_SUBROUTINE ---
L9999_1x2_ITEM_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L99CF
        ld      a,(iy+03h)
        ld      hl,0E0DAh       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080_ZEROES_16b_AT_IY
      inc     (iy+04h)  ; status/subroutine index (?)
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,(iy+02h)
        sub     08h
        ld      hl,9A81h        ; address or value?
        add     a,a
        add     a,l
        jr      nc,L99C5
        inc     h

        ; Referenced from 99C2
L99C5:  ld      l,a
        ld      a,(hl)
        ld      (iy+07h),a
        inc     hl
        ld      a,(hl)
        ld      (iy+08h),a

        ; Referenced from 999D
L99CF:  ld      a,(0E018h)
        and     04h
        and     a
        jr      nz,L99F8
        ld      a,(iy+09h)
        and     a
        jr      nz,L9A16
        inc     (iy+09h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,(iy+07h)
        call    WRTVRM
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,(iy+08h)
        call    WRTVRM
        jr      L9A16

        ; Referenced from 99D5
L99F8:  ld      a,(iy+09h)
        and     a
        jr      z,L9A16
        ld      (iy+09h),00h
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    WRTVRM
        ld      de,0020h        ; address or value?
        add     hl,de
        call    WRTVRM
        jr      L9A16

        ; Referenced from 99DB, 99F6, 99FC, 9A14
L9A16:  ld      bc,08FFh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9A80
        ld      bc,01FFh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,L9A80
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    WRTVRM
        ld      de,0020h        ; address or value?
        add     hl,de
        call    WRTVRM
        ld      a,01h
        call    LB758
        ld      hl,0E0DAh       ; address or value?
        ld      a,(iy+03h)
        add     a,l
        ld      l,a
        ld      (hl),01h
        ld      a,(iy+02h)
        cp      08h
        jr      nz,L9A55

        ; Referenced from 9A71
L9A4E:  ld      a,20h           ; ' '
        call    LB3AF_ADD_SCORE
        jr      L9A7D

        ; Referenced from 9A4C
L9A55:  cp      09h
        jr      nz,L9A5F
        ld      (ix+1Fh),01h
        jr      L9A7D

        ; Referenced from 9A57
L9A5F:  cp      0Ah
        jr      nz,L9A68
        call    LB11A
        jr      L9A7D

        ; Referenced from 9A61
L9A68:  cp      0Bh
        jr      nz,L9A7D
        ld      a,(0E0A8h)
        cp      07h
        jr      nc,L9A4E
        inc     a
        ld      (0E0A8h),a
        call    LB0FE
        call    LB07A

        ; Referenced from 9A53, 9A5D, 9A66, 9A6A
L9A7D:  jp      LA080_ZEROES_16b_AT_IY
       ; Referenced from 9A1C, 9A24
        ; --- START PROC L9A80 ---
L9A80:  ret

L9A81:  DB      99h, 9Dh        ; bag
        DB      80h, 74h        ; sushi
        DB      98h, 9Ch        ; candle
        DB      64h, 63h        ; battery

        ; Entry Point
        ; --- START PROC L9A89_LAMP_SUBROUTINE ---
L9A89_LAMP_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L9AB7
        ld      a,(iy+03h)
        ld      hl,0E04Ch       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080_ZEROES_16b_AT_IY
        inc     (iy+04h)  ; status/subroutine index (?)
; Prints lamp
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,84h           ; Lamp upper char
        call    WRTVRM
        ld      de,0020h        ; (0,+1)
        add     hl,de
        ld      a,88h           ; Lamp lower char
        call    WRTVRM
        ret

        ; Referenced from 9A8D
L9AB7:  ld      bc,08FFh        ; address or value?
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,L9B21
        ld      bc,08F8h        ; address or value?
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jr      nc,L9B21
        call    L8670
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      05h
        jr      c,L9B21
        ld      a,01h
        call    LB758
        ld      a,(iy+03h)
        ld      hl,0E04Ch       ; address or value?
        add     a,l
        ld      l,a
        ld      (hl),01h
        ld      a,r
        and     03h
        cp      03h
        jr      nz,L9AFD
        ld      b,a
        ld      a,r
        bit     5,a
        jr      nz,L9AFC
        ld      a,(0E0A8h)
        cp      07h
        jr      nc,L9AFC
        ld      a,b
        jr      L9AFD

        ; Referenced from 9AF0, 9AF7
L9AFC:  xor     a

        ; Referenced from 9AE9, 9AFA
L9AFD:  add     a,08h
        ld      (iy+02h),a
        ld      (iy+04h),00h    ; status/subroutine index (?)
        ld      (iy+03h),00h
        xor     a
        ld      (0E0DAh),a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    WRTVRM
        ld      de,0020h        ; address or value?
        add     hl,de
        call    WRTVRM
        ret

        ; Referenced from 9ABD, 9AC5, 9AD2
        ; --- START PROC L9B21 ---
L9B21:  ret

        ; Entry Point
        ; --- START PROC L9B22_TONGUE_MONSTER_SUBROUTINE ---
L9B22_TONGUE_MONSTER_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L9B55
        ld      a,r
        and     7Fh             ; ''
        add     a,10h
        ld      (iy+09h),a
        inc     (iy+04h)        ; status/subroutine index (?)
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+0Eh),l
        ld      (iy+0Fh),h
        inc     hl
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      l,(iy+0Eh)
        ld      h,(iy+0Fh)
        ld      de,L9CBA        ; Window opening (closed)
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9B26
L9B55:  cp      01h
        jr      nz,L9B61
        dec     (iy+09h)
        ret     nz
        inc     (iy+04h)        ; status/subroutine index (?)
        ret

        ; Referenced from 9B57
L9B61:  cp      02h
        jr      nz,L9B9D
        ld      a,(0E019h)
        and     0Fh
        cp      0Fh
        ret     nz
        ld      a,(iy+08h)
        inc     (iy+08h)
        cp      03h
        jr      nz,L9B87
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,L9CED ; 3x3: tongue monster definition
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9B75, 9C4F, 9C58, 9C65
L9B87:
; Reads the proper address from the table (in DE)
        ld      hl,L9CB4_WINDOW_OPENING_TABLE
        add     a,a
        add     a,l
        jr      nc,.L9B8F
        inc     hl
.L9B8F: ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
; Saves the indirection (?) (not the read address)
        ld      l,(iy+0Eh)
        ld      h,(iy+0Fh)
        call    LA0AD_PRINT_BLOCK
        ret

        ; Referenced from 9B63
L9B9D:  ld      a,(0E019h)
        and     07h
        cp      07h
        jp      nz,L9C68
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      03h
        jr      nz,L9BF0
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        ld      b,(iy+03h)
        cp      b
        jr      nz,L9BC9
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      a,r
        and     07h
        add     a,04h
        ld      (iy+09h),a
        jp      L9C68

        ; Referenced from 9BB8
L9BC9:  inc     a
        ld      b,a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        inc     hl
        ld      de,0020h        ; address or value?

        ; Referenced from 9BD6
L9BD5:  add     hl,de
        djnz    L9BD5
        ld      a,0B4h          ; tongue end char
        call    WRTVRM
        ld      a,(iy+0Ah)
        cp      01h
        jp      z,L9C68
        ld      de,0FFE0h       ; (0,-1)
        add     hl,de
        ld      a,0B0h          ; tongue char
        call    WRTVRM
        jr      L9C68

        ; Referenced from 9BAC
L9BF0:  cp      04h
        jr      nz,L9BFE
        dec     (iy+09h)
        jr      nz,L9C68
        inc     (iy+04h)        ; status/subroutine index (?)
        jr      L9C68

        ; Referenced from 9BF2
L9BFE:  cp      05h
        jr      nz,L9C34
        dec     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      01h
        jr      nz,L9C15
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      (iy+0Ah),00h
        jr      L9C68

        ; Referenced from 9C0A
L9C15:  inc     a
        ld      b,a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        inc     hl
        ld      de,0020h        ; address or value?

        ; Referenced from 9C22
L9C21:  add     hl,de
        djnz    L9C21
        ld      a,80h           ; clear
        call    WRTVRM
        ld      de,0FFE0h       ; (0,-1)
        add     hl,de
        ld      a,0B4h          ; tongue end char
        call    WRTVRM
        jr      L9C68

        ; Referenced from 9C00
L9C34:  ld      a,(iy+0Ah)
        inc     (iy+0Ah)
        and     a
        jr      nz,L9C52
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        inc     hl
        ld      de,0040h        ; address or value?
        add     hl,de
        ld      a,80h
        call    WRTVRM
        ld      a,02h
        jp      L9B87

        ; Referenced from 9C3B
L9C52:  cp      01h
        jr      nz,L9C5B
        ld      a,01h
        jp      L9B87

        ; Referenced from 9C54
L9C5B:  xor     a
        ld      (iy+04h),a      ; status/subroutine index (?)
        ld      (iy+08h),a
        ld      (iy+0Ah),a
        jp      L9B87

        ; Referenced from 9BA4, 9BC6, 9BF7, 9BFC, 9BE2, 9BEE, 9C13, 9C32
L9C68:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      06h
        ret     z
        ld      bc,01E7h        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9C82
        ld      bc,04ECh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,L9C82
        call    LB146_HURT_PLAYER
        ret

        ; Referenced from 9C74, 9C7C
L9C82:  ld      a,(iy+01h)
        add     a,10h
        ld      b,(ix+01h)
        sub     b
        cp      09h
        jr      c,L9C93
        cp      0F7h
        jr      c,L9CB3

        ; Referenced from 9C8D
L9C93:  ld      a,(iy+00h)
        add     a,08h
        ld      c,a
        ld      a,(iy+0Ah)
        inc     a
        inc     a
        ld      b,a
        ld      a,c

        ; Referenced from 9CA2
L9CA0:  add     a,08h
        djnz    L9CA0
        sub     02h
        ld      b,a
        ld      a,(ix+00h)
        cp      c
        jr      c,L9CB3
        cp      b
        jr      nc,L9CB3
        call    LB146_HURT_PLAYER

        ; Referenced from 9C91, 9CAB, 9CAE
        ; --- START PROC L9CB3 ---
L9CB3:  ret

L9CB4_WINDOW_OPENING_TABLE:
        DW      L9CBA
        DW      L9CCB
        DW      L9CDC

L9CBA:
        DB      05h, 03h                        ; 5x3: window opening (closed)
        DB      83h, 81h, 82h, 81h, 89h
        DB      83h, 81h, 86h, 81h, 89h
        DB      83h, 81h, 82h, 81h, 89h

L9CCB:
        DB      05h, 03h                        ; 5x3: window opening (half open)
        DB      83h, 89h, 8Bh, 83h, 89h
        DB      83h, 87h, 80h, 8Ah, 89h
        DB      83h, 89h, 85h, 83h, 89h

L9CDC:
        DB      05h, 03h                        ; 5x3: window opening (open)
        DB      0B8h, 8Bh, 8Bh, 8Bh, 0B8h
        DB      0B5h, 80h, 80h, 80h, 0B1h
        DB      0B8h, 85h, 85h, 85h, 0B8h

L9CED:
        DB      03h, 03h                        ; 3x3: tongue monster
        DB      0D0h, 0D1h, 0D2h
        DB      0D4h, 0D5h, 0D6h
        DB      80h, 0B4h, 80h

        ; Entry Point
        ; --- START PROC L9CF8_LONG_NECK_WOMAN_SUBROUTINE ---
L9CF8_LONG_NECK_WOMAN_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L9D37
; Prints the body
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      de,L9E24        ; long neck woman
        call    LA0AD_PRINT_BLOCK
; Saves the head position
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        inc     hl              ; (+1,-1)
        ld      de,0FFE0h
        add     hl,de
        ld      (iy+05h),l
        ld      (iy+06h),h
; Prints the head
        ld      a,0B7h          ; Long neck woman head character
        call    WRTVRM
;
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      a,r
        and     3Fh             ; '?'
        add     a,40h           ; '@'
        ld      (iy+09h),a
        ld      a,(iy+00h)
        sub     08h
        ld      (iy+00h),a
        ld      a,(iy+01h)
        add     a,08h
        ld      (iy+01h),a
        ret

        ; Referenced from 9CFC
L9D37:  cp      01h
        jr      nz,L9D47
        dec     (iy+09h)
        jp      nz,L9DE9
        inc     (iy+04h)        ; status/subroutine index (?)
        jp      L9DE9

        ; Referenced from 9D39
L9D47:  cp      02h
        jr      nz,L9D97
        ld      a,(0E01Ah)
        and     07h
        cp      07h
        jp      nz,L9DE9
        inc     (iy+07h)
        ld      a,(iy+07h)
        ld      b,(iy+03h)
        cp      b
        jr      nz,L9D6A
        inc     (iy+04h)        ; status/subroutine index (?)
        dec     (iy+07h)
        jp      L9DE9

        ; Referenced from 9D5F
L9D6A:  ld      b,a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,0FFE0h       ; address or value?

        ; Referenced from 9D75
L9D74:  add     hl,de
        djnz    L9D74
        ld      a,0B7h          ; Long neck woman head character
        call    WRTVRM
        ld      a,(iy+07h)
        ld      de,0020h        ; (+0,+1)
        ld      b,a
.L9D83: add     hl,de
        ld      a,0B2h          ; Long neck woman neck ) character
        call    WRTVRM
        dec     b
        jr      z,L9D94
        add     hl,de
        ld      a,0B6h          ; Long neck woman neck ( character
        call    WRTVRM
        djnz    .L9D83

        ; Referenced from 9D8A
L9D94:  jp      L9DE9

        ; Referenced from 9D49
L9D97:  ld      a,(0E01Ah)
        and     03h
        cp      03h
        jr      nz,L9DE9
        dec     (iy+07h)
        ld      a,(iy+07h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,0FFE0h       ; address or value?
        inc     a
        ld      b,a

        ; Referenced from 9DB2
L9DB1:  add     hl,de
        djnz    L9DB1
        ld      a,80h           ; clear
        call    WRTVRM
        ld      de,0020h        ; (+0,+1)
        add     hl,de
        ld      a,0B7h          ; Long neck woman head character
        call    WRTVRM
        ld      a,(iy+07h)
        ld      b,a
        and     a
        jr      nz,L9DD8
        ld      (iy+04h),01h    ; status/subroutine index (?)
        ld      a,r
        and     3Fh             ; '?'
        add     a,40h           ; '@'
        ld      (iy+09h),a
        jr      L9DE9

        ; Referenced from 9DC7, 9DE7
L9DD8:  add     hl,de
        ld      a,0B2h          ; Long neck woman neck ) character
        call    WRTVRM
        dec     b
        jr      z,L9DE9
        add     hl,de
        ld      a,0B6h          ; Long neck woman neck ( character
        call    WRTVRM
        djnz    L9DD8

        ; Referenced from 9D3E, 9D44, 9D52, 9D67, 9D9E, 9DD6, 9D94, 9DDF
L9DE9:  ld      bc,12FAh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9DFC
        ld      bc,04ECh        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,L9DFC
        jp      LB146_HURT_PLAYER

        ; Referenced from 9DEF, 9DF7
L9DFC:  ld      bc,0AFEh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9E23
        ld      a,(iy+00h)
        add     a,08h
        ld      c,a
        ld      a,(iy+07h)
        inc     a
        ld      b,a
        ld      a,(iy+00h)

        ; Referenced from 9E14
L9E12:  sub     08h
        djnz    L9E12
        sub     04h
        ld      b,a
        ld      a,(ix+00h)
        cp      b
        ret     c
        cp      c
        ret     nc
        call    LB146_HURT_PLAYER

        ; Referenced from 9E02
        ; --- START PROC L9E23 ---
L9E23:  ret

; Long neck woman body
L9E24:  DB      3,2
        DB      0B9h, 0BAh, 0BBh
        DB      0BDh, 0BEh, 0BFh

        ; Entry Point
        ; --- START PROC L9E2C_GIANT_FOOT_SUBROUTINE ---
L9E2C_GIANT_FOOT_SUBROUTINE:
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L9E4E
        inc     (iy+04h)        ; status/subroutine index (?)
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      de,L9F14        ; Giant foot (moving up)
        call    LA0AD_PRINT_BLOCK
        ld      a,r
        and     7Fh             ; ''
        add     a,20h           ; ' '
        ld      (iy+09h),a
        ret

        ; Referenced from 9E30
L9E4E:  cp      01h
        jr      nz,L9E5A
        dec     (iy+09h)
        ret     nz
        inc     (iy+04h)        ; status/subroutine index (?)
        ret

        ; Referenced from 9E50
L9E5A:  cp      02h
        jr      nz,L9E9E
        ld      a,(0E01Bh)
        and     02h
        cp      02h
        jp      nz,L9EE5
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,(iy+07h)
        inc     (iy+07h)
        and     a
        jr      z,L9E96
        ld      b,(iy+03h)
        cp      b
        jr      nz,L9E8F
        dec     (iy+07h)
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      a,r
        and     3Fh             ; '?'
        add     a,30h           ; '0'
        ld      (iy+09h),a
        jp      L9EE5

        ; Referenced from 9E7B
L9E8F:  ld      b,a
        ld      de,0020h        ; address or value?

        ; Referenced from 9E94
L9E93:  add     hl,de
        djnz    L9E93

        ; Referenced from 9E75
L9E96:  ld      de,L9F2A        ; Giant foot (moving down)
        call    LA0AD_PRINT_BLOCK
        jr      L9EE5

        ; Referenced from 9E5C
L9E9E:  cp      03h
        jr      nz,L9EAC
        dec     (iy+09h)
        jr      nz,L9EE5
        inc     (iy+04h)        ; status/subroutine index (?)
        jr      L9EE5

        ; Referenced from 9EA0
L9EAC:  ld      a,(0E01Bh)
        and     07h
        cp      07h
        jr      nz,L9EE5
        dec     (iy+07h)
        ld      a,(iy+07h)
        and     a
        jr      nz,L9ECF
        ld      (iy+04h),01h    ; status/subroutine index (?)
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+09h),a
        xor     a
        ld      (iy+07h),a

        ; Referenced from 9EBC
L9ECF:  ld      b,a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        and     a
        jr      z,L9EDF
        ld      de,0020h        ; address or value?
.L9EDC: add     hl,de
        djnz    .L9EDC

        ; Referenced from 9ED7
L9EDF:  ld      de,L9F14        ; Giant foot (moving up)
        call    LA0AD_PRINT_BLOCK

        ; Referenced from 9E65, 9E8C, 9EA5, 9EAA, 9E9C, 9EB3
L9EE5:  ld      bc,0AE6h        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,L9F13
        ld      a,(iy+07h)
        inc     a
        inc     a
        ld      b,a
        ld      a,(iy+00h)

        ; Referenced from 9EF8
L9EF6:  add     a,08h
        djnz    L9EF6
        sub     04h
        ld      b,a
        ld      a,(ix+00h)
        sub     b
        cp      08h
        jr      c,L9F09
        cp      0F8h
        jr      c,L9F13

        ; Referenced from 9F03
L9F09:  call    LB146_HURT_PLAYER
        ld      (ix+1Ah),00h
        call    LB146_HURT_PLAYER

        ; Referenced from 9EEB, 9F07
        ; --- START PROC L9F13 ---
L9F13:  ret

; Giant foot (moving up)
L9F14:  DB      4,5
        DB      80h, 80h, 0DAh, 0DBh
        DB      80h, 80h, 0DEh, 0DFh
        DB      80h, 0E1h, 0E2h, 0E3h
        DB      0E4h, 0E5h, 0E6h, 0E7h
        DB      80h, 80h, 80h, 80h

; Giant foot (moving down)
L9F2A:  DB      4,5
        DB      80h, 80h, 80h, 80h
        DB      80h, 80h, 0DAh, 0DBh
        DB      80h, 80h, 0DEh, 0DFh
        DB      80h, 0E1h, 0E2h, 0E3h
        DB      0E4h, 0E5h, 0E6h, 0E7h

        ; Entry Point
        ; --- START PROC L9F40_BOSS_HAIR_SUBROUTINE ---
L9F40_BOSS_HAIR_SUBROUTINE:
        ld      a,(0E1B0h)                      ; Is boss initialized?
        and     a
        ret     z
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,L9F65
        inc     (iy+04h)        ; status/subroutine index (?)
        xor     a
        ld      (iy+08h),a
        call    LA08B_LOCATE_NAMTBL_ADDRESS
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,r
        and     7Fh             ; ''
        add     a,20h           ; ' '
        ld      (iy+09h),a
        ret

        ; Referenced from 9F49
L9F65:  cp      01h
        jr      nz,L9F86
        dec     (iy+09h)
        ret     nz
        inc     (iy+04h)        ; status/subroutine index (?)
        ld      (iy+07h),00h
        inc     (iy+08h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,LA078        ; address or value?
        call    LA0AD_PRINT_BLOCK
        jp      LA016

        ; Referenced from 9F67
L9F86:  ld      a,(0E01Ch)
        and     03h
        cp      03h
        jp      nz,LA016
        ld      a,(iy+07h)
        and     a
        jr      nz,L9FCF
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      b,(iy+08h)

        ; Referenced from 9FA0
L9F9F:  dec     hl
        djnz    L9F9F
        ld      b,(iy+08h)
        ld      de,0020h        ; address or value?

        ; Referenced from 9FA9
L9FA8:  add     hl,de
        djnz    L9FA8
        ld      de,LA078        ; address or value?
        call    LA0AD_PRINT_BLOCK
        inc     (iy+08h)
        ld      a,(iy+08h)
        ld      b,(iy+03h)
        cp      b
        jr      nz,LA016
        ld      (iy+07h),01h
        ld      a,r
        and     07h
        add     a,08h
        ld      (iy+09h),a
        dec     (iy+08h)
        jr      LA016

        ; Referenced from 9F94
L9FCF:  cp      01h
        jr      nz,L9FDD
        dec     (iy+09h)
        jr      nz,LA016
        inc     (iy+07h)
        jr      LA016

        ; Referenced from 9FD1
L9FDD:  ld      a,(iy+08h)
        and     a
        jr      nz,L9FF8
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+09h),a
        ld      (iy+04h),01h    ; status/subroutine index (?)
        jr      LA010

        ; Referenced from 9FE1
L9FF8:  ld      b,(iy+08h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)

        ; Referenced from A002
LA001:  dec     hl
        djnz    LA001
        ld      b,(iy+08h)
        ld      de,0020h        ; address or value?

        ; Referenced from A00B
LA00A:  add     hl,de
        djnz    LA00A
        dec     (iy+08h)

        ; Referenced from 9FF6
LA010:  ld      de,LA07C       ; address or value?
        call    LA0AD_PRINT_BLOCK

        ; Referenced from 9F83, 9F8D, 9FBB, 9FCD, 9FD6, 9FDB
LA016:  ld      a,(iy+08h)
        and     a
        ret     z
        ld      c,a
        inc     c
        ld      d,(iy+00h)
        ld      e,(iy+01h)

        ; Referenced from A04B
LA023:  ld      a,d
        ld      b,(ix+00h)
        sub     b
        cp      0Eh
        jr      c,LA030
        cp      0FAh
        jr      c,LA040

        ; Referenced from A02A
LA030:  ld      a,e
        ld      b,(ix+01h)
        sub     b
        cp      08h
        jr      c,LA03D
        cp      0F8h
        jr      c,LA040

        ; Referenced from A037
LA03D:  call    LB146_HURT_PLAYER

        ; Referenced from A02E, A03B
LA040:  dec     c
        jr      z,LA04D
        ld      a,d
        add     a,08h
        ld      d,a
        ld      a,e
        sub     08h
        ld      e,a
        jr      LA023

        ; Referenced from A041
LA04D:  ld      a,(ix+0Dh)
        and     a
        ret     z
        ld      a,d
        ld      b,(ix+20h)
        sub     b
        cp      0Eh
        jr      c,LA05E
        cp      0FAh
        ret     c

        ; Referenced from A059
LA05E:  ld      a,e
        ld      b,(ix+21h)
        sub     b
        cp      08h
        jr      c,LA06A
        cp      0F8h
        ret     c

        ; Referenced from A065
LA06A:  call    L8670
        ld      a,(iy+07h)
        cp      02h
        ret     nc
        ld      (iy+07h),02h
        ret

LA078:  DB      2,1, 0B0h, 0B1h
LA07C:  DB      2,1, 80h, 80h


        ; Referenced from 971C, 98A2, 99A9, 9A99, 9767, 9A7D, 9985
        ; --- START PROC LA080_ZEROES_16b_AT_IY -
LA080_ZEROES_16b_AT_IY:
        push    iy
        pop     hl
        ld      b,10h

        ; Referenced from A088
LA085:  ld      (hl),00h
        inc     hl
        djnz    LA085
        ret

        ; Referenced from 98A8, 99AF, 9A9F, 9B34, 9CFE, 9D07, 9E35, 9F52, 9507, 9729
        ; --- START PROC LA08B_LOCATE_NAMTBL_ADDRESS ---
LA08B_LOCATE_NAMTBL_ADDRESS:
        ld      a,(iy+00h)
        srl     a
        srl     a
        srl     a
        ld      b,a
        ld      hl,1800h        ; address or value?
        ld      de,0020h        ; address or value?
.LA09B: add     hl,de
        djnz    .LA09B
        ld      a,(iy+01h)
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,.LA0AB
        inc     h
.LA0AB:  ld      l,a
        ret

        ; Referenced from 9B51, 9D04, 9E41, 9761, 9735, 9F80, 953E, 9B83, 9FAE, 955B, 9B99, 9E99, 9578, 9EE2, A013, 9596
        ; --- START PROC LA0AD_PRINT_BLOCK ---
LA0AD_PRINT_BLOCK:
        ld      (0E1A0h),hl
        ld      a,(de)
        ld      (0E1A2h),a
        inc     de
        ld      a,(de)
        ld      b,a
        inc     de
.LA0B8:  ld      a,(0E1A2h)
        ld      c,a
        ld      hl,(0E1A0h)
.LA0BF:  ld      a,(de)
        call    WRTVRM
        inc     de
        inc     hl
        dec     c
        jr      nz,.LA0BF
        ld      hl,(0E1A0h)
        push    de
        ld      de,0020h        ; (0,+1)
        add     hl,de
        ld      (0E1A0h),hl
        pop     de
        djnz    .LA0B8
        ret

; Refrenced at L959D
LA0D7_WELL_TARGET_TABLE:
        DW      .LA119
        DW      .LA119
        DW      .LA11E
        DW      .LA123
        DW      .LA128
        DW      .LA12D
        DW      .LA132
        DW      .LA137
        DW      .LA13C
        DW      .LA141
        DW      .LA146
        DW      .LA14B
        DW      .LA150
        DW      .LA155
        DW      .LA15A
        DW      .LA15F
        DW      .LA164
        DW      .LA169
        DW      .LA16E
        DW      .LA173
        DW      .LA178
        DW      .LA17D
        DW      .LA182
        DW      .LA187
        DW      .LA18C
        DW      .LA191
        DW      .LA196
        DW      .LA19B
        DW      .LA1A0
        DW      .LA1A5
        DW      .LA1AA
        DW      .LA1AF
        DW      .LA1B4

; Well target table
        ;       Area  Map X,Y    Sprite Y(?), X(?)
.LA119: DB      00h,  04h, 02h,  88h, 0ECh
.LA11E: DB      00h,  06h, 01h,  60h, 0ECh
.LA123: DB      01h,  01h, 01h,  20h, 0C4h
.LA128: DB      01h,  01h, 06h,  40h, 0ECh
.LA12D: DB      01h,  01h, 08h,  88h, 0CCh
.LA132: DB      01h,  01h, 09h,  88h, 0Ch
.LA137: DB      02h,  03h, 03h,  88h, 24h
.LA13C: DB      02h,  03h, 03h,  88h, 0ACh
.LA141: DB      02h,  03h, 02h,  58h, 94h
.LA146: DB      02h,  03h, 05h,  58h, 34h
.LA14B: DB      02h,  04h, 03h,  88h, 74h
.LA150: DB      02h,  04h, 03h,  88h, 0CCh
.LA155: DB      02h,  01h, 03h,  88h, 0Ch
.LA15A: DB      03h,  02h, 01h,  28h, 0E4h
.LA15F: DB      03h,  02h, 04h,  88h, 1Ch
.LA164: DB      03h,  03h, 04h,  68h, 7Ch
.LA169: DB      03h,  05h, 04h,  60h, 7Ch
.LA16E: DB      03h,  07h, 04h,  58h, 74h
.LA173: DB      03h,  08h, 04h,  18h, 54h
.LA178: DB      03h,  08h, 02h,  80h, 64h
.LA17D: DB      04h,  02h, 02h,  40h, 0A4h
.LA182: DB      04h,  03h, 03h,  68h, 94h
.LA187: DB      04h,  08h, 01h,  60h, 0D4h
.LA18C: DB      04h,  08h, 03h,  70h, 0CCh
.LA191: DB      04h,  08h, 06h,  40h, 94h
.LA196: DB      04h,  04h, 01h,  60h, 0B4h
.LA19B: DB      04h,  04h, 03h,  88h, 24h
.LA1A0: DB      05h,  01h, 01h,  88h, 0Ch ; "C"
.LA1A5: DB      05h,  02h, 01h,  88h, 0Ch ; "A"
.LA1AA: DB      05h,  03h, 01h,  88h, 0Ch ; "S"
.LA1AF: DB      05h,  04h, 01h,  88h, 0Ch ; "I"
.LA1B4: DB      05h,  05h, 01h,  88h, 0Ch ; "O"

        ; Referenced from AE3F, 8106
        ; --- START PROC LA1B9_EXECUTE_E340_ENTITIES_SUBROUTINES ---
LA1B9_EXECUTE_E340_ENTITIES_SUBROUTINES:
        ld      a,(0E1B1h) ; boss index ???
        and     a
        jr      z,.LA1BF
.LA1BF:
; Executes subroutine for every entity
        ld      iy,0E340h       ; Secondary entities array [$e340..$e400)
        ld      b,0Ch           ; 12 entities
.LA1C5: push    bc
; Gets subroutine index
        ld      a,(iy+04h)      ; status/subroutine index (?)
        and     a
        jr      nz,.LA1D5       ; != 0, execute
.LA1CC:
; Next entity
        ld      de,0010h
        add     iy,de
        pop     bc
        djnz    .LA1C5
        ret
.LA1D5: call    LA1DA_EXECUTE_SUBROUTINE_A
        jr      .LA1CC

        ; --- START PROC LA1DA_EXECUTE_SUBROUTINE_A ---
LA1DA_EXECUTE_SUBROUTINE_A:
        ld      hl, LA1E8_SUBROUTINES_TABLE
; hl += 2a
        add     a, a
        add     a, l
        jr      nc,.LA1E2
        inc     h
.LA1E2: ld      l,a
; hl = [hl]
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
; jp [hl]
        jp      (hl)

; param iy: current entity
LA1E8_SUBROUTINES_TABLE:
        DW      $A278 ; 0 / $00 (unused)
        DW      $A278
        DW      $A278
        DW      $A444
        DW      $A444
        DW      $A4C3
        DW      $A5EA
        DW      $A5EB
        DW      $A5EB
        DW      $A6B7
        DW      $A777
        DW      LA778_CHECK_ENDING_SEQUENCE ; 11 / $0b
        DW      LA853_WALKING_DEMON_SUBROUTINE ; 12 / $0c
        DW      $AA49
        DW      LA853_WALKING_DEMON_SUBROUTINE ; 14 / $0e
        DW      LA853_WALKING_DEMON_SUBROUTINE ; 15 / $0f
        DW      $ABB8
        DW      $ACC6
        DW      $ABB8
        DW      $AD6F
        DW      LA853_WALKING_DEMON_SUBROUTINE ; 20 / $14
        DW      $AA9A
        DW      $AA9A

LA216:  ld      (iy+03h),0Fh
        ld      a,(0E012h)
        and     08h
        rrca
        add     a,38h           ; '8'
        ld      (iy+02h),a   ; sprite pattern: smoke #1
        inc     (iy+06h)
        ld      a,(iy+06h)
        ret

        ; Referenced from A27D, A47E, A6D5, A65A, A986
        ; --- START PROC LA22C ---
LA22C:  ld      a,(0E012h)
        and     04h
        add     a,38h           ; '8'
        ld      (iy+02h),a   ; sprite pattern: smoke #1
        dec     (iy+06h)
        jp      z,LAFB6
        ret

        ; Referenced from A49C, A961
        ; --- START PROC LA23D ---
LA23D:  ld      a,(iy+01h)
        sub     08h

        ; Referenced from A276
        ; --- START PROC LA242 ---
LA242:  ld      c,a
        ld      a,(iy+00h)
        sub     08h
        srl     a
        srl     a
        srl     a
        ld      b,a
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from A256
LA255:  add     hl,de
        djnz    LA255
        ld      a,c
        srl     a
        srl     a
        srl     a
        add     a,l
        ld      l,a
        ld      b,(hl)
        add     hl,de
        ld      a,(hl)
        cp      80h
        jr      c,LA26A

        ; Referenced from A26D
LA268:  xor     a
        ret

        ; Referenced from A266
LA26A:  ld      a,b
        cp      80h
        jr      c,LA268
        scf
        ret

        ; Referenced from A48C, A938
        ; --- START PROC LA271 ---
LA271:  ld      a,(iy+01h)
        add     a,10h
        jr      LA242

        ; Entry Point
        ; --- START PROC LA278 ---
LA278:  ld      a,(iy+05h)
        cp      03h
        jr      z,LA22C
        and     a
        jr      nz,LA295
        call    LA216
        cp      40h
        ret     c
        inc     (iy+05h)
        ld      a,r
        bit     2,a
        ret     nz
        ld      (iy+08h),01h
        ret

        ; Referenced from A280
LA295:  inc     (iy+09h)
        ld      a,(iy+09h)
        and     01h
        and     a
        jp      nz,LA322
        ld      a,(iy+05h)
        cp      01h
        jr      nz,LA2F1
        ld      a,(iy+07h)
        cp      10h
        jr      c,LA2B5
        inc     (iy+05h)
        jp      LA322

        ; Referenced from A2AD
LA2B5:  ld      hl,0A434h       ; address or value?
        ld      a,(iy+07h)
        inc     (iy+07h)
        add     a,l
        jr      nc,LA2C2
        inc     h

        ; Referenced from A2BF
LA2C2:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        add     a,b
        ld      (iy+00h),a

        ; Referenced from A30D
LA2CB:  ld      a,(iy+08h)
        and     a
        jr      nz,LA2E1
        inc     (iy+01h)
        ld      a,(iy+01h)
        cp      0F0h
        jr      c,LA322
        ld      (iy+08h),01h
        jr      LA322

        ; Referenced from A2CF
LA2E1:  dec     (iy+01h)
        ld      a,(iy+01h)
        cp      10h
        jr      nc,LA322
        ld      (iy+08h),00h
        jr      LA322

        ; Referenced from A2A6
LA2F1:  ld      a,(iy+07h)
        and     a
        jr      z,LA30F
        ld      hl,0A434h       ; address or value?
        dec     (iy+07h)
        ld      a,(iy+07h)
        add     a,l
        jr      nc,LA304
        inc     h

        ; Referenced from A301
LA304:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        sub     b
        ld      (iy+00h),a
        jr      LA2CB

        ; Referenced from A2F5
LA30F:  dec     (iy+05h)
        ld      a,r
        bit     3,a
        jr      nz,LA31E
        ld      (iy+08h),00h
        jr      LA322

        ; Referenced from A316
LA31E:  ld      (iy+08h),01h

        ; Referenced from A29E, A2B2, A2D9, A2DF, A31C, A2E9, A2EF
LA322:  ld      a,(0E013h)
        and     08h
        rrca
        add     a,30h           ; '0'
        ld      (iy+02h),a   ; sprite pattern: flame #0
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      01h
        jr      nz,LA340
        ld      a,(0E012h)
        and     02h
        rlca
        rlca
        add     a,07h
        ld      (iy+03h),a

        ; Referenced from A332, A4BF, ADD0, A6B4, AD41, A774, AC86, AD5E, AD69
        ; --- START PROC LA340 ---
LA340:  ld      bc,09F7h        ; address or value?
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jp      nc,LA422
        ld      bc,08F8h        ; address or value?
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jp      nc,LA422
        call    L8670
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      01h
        jr      nz,LA381
        ld      a,(0E0AAh)
        inc     a
        ld      (0E0AAh),a
        cp      05h
        jr      c,LA36E
        call    LB0FE
        xor     a
        ld      (0E0AAh),a

        ; Referenced from A365
LA36E:  ld      a,03h

        ; Referenced from A38A, A392, A3D3, A3EC, A3F5, A405, A40E, A417
LA370:  ld      (iy+05h),03h
        ld      (iy+06h),20h    ; ' '
        call    LB3AF_ADD_SCORE
        ld      a,02h
        call    LB758
        ret

        ; Referenced from A35A
LA381:  cp      02h
        jr      nz,LA38C
        call    LB11A
        ld      a,05h
        jr      LA370

        ; Referenced from A383
LA38C:  cp      03h
        jr      nz,LA394
        ld      a,10h
        jr      LA370

        ; Referenced from A38E
LA394:  cp      04h
        jr      nz,LA3C4
        ld      a,(iy+00h)
        ld      (iy+10h),a
        ld      a,(iy+01h)
        sub     04h
        ld      (iy+01h),a
        add     a,08h
        ld      (iy+11h),a
        ld      (iy+12h),4Ch    ; 'L'
        ld      a,03h
        ld      (iy+04h),a      ; status/subroutine index (?)
        ld      (iy+14h),a
        inc     a
        ld      (iy+03h),a
        ld      (iy+13h),a
        ld      a,02h
        call    LB758
        ret

        ; Referenced from A396
LA3C4:  cp      07h
        jr      nz,LA3D6
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      03h
        ret     c
        ld      a,20h           ; ' '
        jp      LA370

        ; Referenced from A3C6
LA3D6:  cp      08h
        jr      nz,LA3EF
        inc     (iy+0Ah)
        ld      (iy+03h),03h
        ld      a,(iy+0Ah)
        cp      02h
        ret     c
        call    LB0FE
        ld      a,10h
        jp      LA370

        ; Referenced from A3D8
LA3EF:  cp      09h
        jr      nz,LA3F8
        ld      a,20h           ; ' '
        jp      LA370

        ; Referenced from A3F1
LA3F8:  cp      10h
        jr      nz,LA408
        ld      a,10h
        ld      a,(0E1B2h)
        inc     a
        ld      (0E1B2h),a
        jp      LA370

        ; Referenced from A3FA
LA408:  cp      11h
        jr      nz,LA411
        ld      a,10h
        jp      LA370

        ; Referenced from A40A
LA411:  cp      12h
        jr      nz,LA41A
        ld      a,10h
        jp      LA370

        ; Referenced from A413
LA41A:  cp      13h
        jr      nz,LA422
        inc     (iy+0Bh)
        ret

        ; Referenced from A346, A34F, A41C
LA422:  ld      bc,09F7h        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        ret     nc
        ld      bc,09F7h        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        ret     nc
        call    LB146_HURT_PLAYER
        ret

LA434:  DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      02h
        DB      02h
        DB      03h
        DB      03h
        DB      02h
        DB      02h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      01h

        ; Entry Point
        ; --- START PROC LA444 ---
LA444:  ld      a,(iy+05h)
        and     a
        jr      nz,LA47C
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      03h
        jr      nz,LA457
        ld      (iy+03h),05h
        jr      LA45B

        ; Referenced from A44F
LA457:  ld      (iy+03h),09h

        ; Referenced from A455
LA45B:  ld      (iy+02h),4Ch   ; sprite pattern: slime #1
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      03h
        jr      z,LA46E
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        jr      LA474

        ; Referenced from A464
LA46E:  ld      a,r
        and     3Fh             ; '?'
        add     a,30h           ; '0'

        ; Referenced from A46C
LA474:  ld      (iy+06h),a
        inc     (iy+05h)
        jr      LA4B3

        ; Referenced from A448
LA47C:  cp      01h
        jp      nz,LA22C
        dec     (iy+06h)
        jr      nz,LA4B3
        ld      a,r
        bit     3,a
        jr      nz,LA49C
        call    LA271
        jr      nc,LA49C

        ; Referenced from A49F, A4A6
LA491:  ld      a,(iy+01h)
        cp      0F0h
        jr      nc,LA49C
        add     a,08h
        jr      LA4AA

        ; Referenced from A48A, A48F, A496
LA49C:  call    LA23D
        jr      nc,LA491
        ld      a,(iy+01h)
        cp      09h
        jr      c,LA491
        sub     08h

        ; Referenced from A49A
LA4AA:  ld      (iy+01h),a
        ld      (iy+05h),00h
        jr      LA4B3

        ; Referenced from A484, A4B1, A47A
LA4B3:  ld      a,(0E012h)
        and     10h
        rrca
        rrca
        add     a,4Ch           ; 'L'
        ld      (iy+02h),a   ; sprite pattern: slime #1
        jp      LA340

LA4C2:  DB      0C9h

        ; Entry Point
        ; --- START PROC LA4C3 ---
LA4C3:  ld      a,(iy+05h)
        and     a
        jr      nz,LA4F4
        call    LA216
        cp      40h             ; '@'
        ret     c
        ld      (iy+06h),00h
        inc     (iy+05h)
        ld      a,(iy+00h)
        sub     08h
        ld      (iy+00h),a
        add     a,10h
        ld      (iy+10h),a
        ld      (iy+02h),88h   ; sprite pattern: closed umbrella
        ld      (iy+12h),8Ch   ; sprite pattern: umbrella handle
        ld      (iy+03h),06h
        ld      (iy+13h),0Ah
        ret

        ; Referenced from A4C7
LA4F4:  cp      01h
        jr      nz,LA53D
        ld      a,(iy+07h)
        cp      20h             ; ' '
        jr      c,LA504
        inc     (iy+05h)
        jr      LA573

        ; Referenced from A4FD
LA504:  inc     (iy+07h)
        ld      hl,8FA2h        ; address or value?
        add     a,l
        jr      nc,LA50E
        inc     h

        ; Referenced from A50B
LA50E:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        sub     b
        ld      (iy+00h),a

        ; Referenced from A560
LA517:  ld      a,(iy+09h)
        and     a
        jr      nz,LA52D
        dec     (iy+01h)
        ld      a,(iy+01h)
        cp      04h
        jr      nc,LA573
        ld      (iy+09h),01h
        jr      LA573

        ; Referenced from A51B
LA52D:  inc     (iy+01h)
        ld      a,(iy+01h)
        cp      0F0h
        jr      c,LA573
        ld      (iy+09h),00h
        jr      LA573

        ; Referenced from A4F6
LA53D:  cp      02h
        jr      nz,LA562
        ld      a,(iy+07h)
        and     a
        jr      nz,LA54D
        ld      (iy+05h),01h
        jr      LA573

        ; Referenced from A545
LA54D:  dec     (iy+07h)
        ld      hl,8FA2h        ; address or value?
        add     a,l
        jr      nc,LA557
        inc     h

        ; Referenced from A554
LA557:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        add     a,b
        ld      (iy+00h),a
        jr      LA517

        ; Referenced from A53F
LA562:  dec     (iy+06h)
        jp      z,LAFB6
        ld      a,(0E012h)
        and     04h
        add     a,38h           ; '8'
        ld      (iy+02h),a   ; sprite pattern: smoke #1
        ret

        ; Referenced from A502, A54B, A525, A52B, A535, A53B
LA573:  ld      a,(iy+00h)
        add     a,10h
        ld      (iy+10h),a
        ld      a,(iy+01h)
        ld      (iy+11h),a
        ld      a,(0E013h)
        and     08h
        and     a
        jr      nz,LA593
        ld      (iy+02h),88h   ; sprite pattern: closed umbrella
        ld      (iy+12h),8Ch   ; sprite pattern: closed umbrella handle
        jr      LA59B

        ; Referenced from A587
LA593:  ld      (iy+02h),9Ch   ; sprite pattern: open umbrella
        ld      (iy+12h),0A0h   ; sprite pattern: open umbrella handle

        ; Referenced from A591
LA59B:  ld      bc,04FCh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,LA5AE
        ld      bc,08E8h        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,LA5AE
        call    LB146_HURT_PLAYER

        ; Referenced from A5A1, A5A9
LA5AE:  ld      bc,04FCh        ; address or value?
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,LA5E9
        ld      bc,08E8h        ; address or value?
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jr      nc,LA5E9
        call    L8670
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      05h
        jr      c,LA5E9
        ld      a,50h           ; 'P'
        call    LB3AF_ADD_SCORE
        ld      a,02h
        call    LB758
        ld      (iy+05h),03h
        ld      a,(iy+00h)
        add     a,08h
        ld      (iy+00h),a
        ld      (iy+10h),0ECh
        ld      (iy+06h),20h    ; ' '

        ; Referenced from A5B4, A5BC, A5C9
        ; --- START PROC LA5E9 ---
LA5E9:  ret

        ; Entry Point
        ; --- START PROC LA5EA ---
LA5EA:  ret

        ; Entry Point
        ; --- START PROC LA5EB ---
LA5EB:  ld      a,(iy+05h)
        and     a
        jr      nz,LA60F
        call    LA216
        cp      40h             ; '@'
        ret     c
        inc     (iy+05h)
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      07h
        jr      nz,LA606
        ld      (iy+08h),54h    ; 'T'
        ret

        ; Referenced from A5FF
LA606:  ld      (iy+08h),94h
        ld      (iy+03h),09h
        ret

        ; Referenced from A5EF
LA60F:  cp      01h
        jr      nz,LA658
        ld      a,(iy+07h)
        cp      10h
        jr      c,LA61F
        inc     (iy+05h)
        jr      LA681

        ; Referenced from A618
LA61F:  inc     (iy+07h)
        ld      hl,L8F91_DY_TABLE        ; address or value?
        add     a,l
        jr      nc,LA629
        inc     h

        ; Referenced from A626
LA629:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        sub     b
        ld      (iy+00h),a

        ; Referenced from A67F
LA632:  ld      a,(iy+09h)
        and     a
        jr      nz,LA648
        dec     (iy+01h)
        ld      a,(iy+01h)
        cp      04h
        jr      nc,LA681
        ld      (iy+09h),01h
        jr      LA681

        ; Referenced from A636
LA648:  inc     (iy+01h)
        ld      a,(iy+01h)
        cp      0F0h
        jr      c,LA681
        ld      (iy+09h),00h
        jr      LA681

        ; Referenced from A611
LA658:  cp      02h
        jp      nz,LA22C
        ld      a,(iy+07h)
        and     a
        jr      nz,LA669
        ld      (iy+05h),01h
        jr      LA681

        ; Referenced from A661
LA669:  dec     (iy+07h)
        ld      a,(iy+07h)
        ld      hl,L8F91_DY_TABLE        ; address or value?
        add     a,l
        jr      nc,LA676
        inc     h

        ; Referenced from A673
LA676:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        add     a,b
        ld      (iy+00h),a
        jr      LA632

        ; Referenced from A61D, A667, A640, A646, A650, A656
LA681:  ld      a,(0E013h)
        and     10h
        rrca
        rrca
        ld      b,(iy+08h)
        add     a,b
        ld      (iy+02h),a
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      08h
        jr      z,LA6B4
        ld      a,(iy+0Ah)
        and     a
        jr      z,LA6B4
        cp      01h
        jr      nz,LA6A9
        ld      a,(0E012h)
        and     08h
        add     a,07h
        jr      LA6B1

        ; Referenced from A69E
LA6A9:  ld      a,(0E012h)
        and     04h
        rlca
        add     a,07h

        ; Referenced from A6A7
LA6B1:  ld      (iy+03h),a

        ; Referenced from A694, A69A
        ; --- START PROC LA6B4 ---
LA6B4:  jp      LA340

        ; Entry Point
        ; --- START PROC LA6B7 ---
LA6B7:  ld      a,(iy+05h)
        and     a
        jr      nz,LA6D3
        call    LA216
        cp      20h             ; ' '
        ret     c
        inc     (iy+05h)
        ld      a,r
        and     3Fh             ; '?'
        ld      (iy+06h),a
        and     01h
        ld      (iy+07h),a
        ret

        ; Referenced from A6BB
LA6D3:  cp      01h
        jp      nz,LA22C
        ld      a,(iy+07h)
        and     a
        jr      nz,LA6F2
        inc     (iy+01h)
        ld      a,(iy+01h)
        cp      0F0h
        jr      c,LA704
        ld      (iy+07h),01h
        ld      (iy+06h),30h    ; '0'
        jr      LA704

        ; Referenced from A6DC
LA6F2:  dec     (iy+01h)
        ld      a,(iy+01h)
        cp      08h
        jr      nc,LA704
        ld      (iy+07h),00h
        ld      (iy+06h),30h    ; '0'

        ; Referenced from A6E6, A6F0, A6FA
LA704:  inc     (iy+08h)
        ld      a,(iy+08h)
        and     03h
        and     a
        jr      nz,LA73B
        ld      a,(iy+00h)
        cp      0A0h
        jr      c,LA71E
        ld      (iy+09h),01h
        ld      (iy+06h),20h    ; ' '

        ; Referenced from A714
LA71E:  ld      a,(iy+00h)
        cp      10h
        jr      nc,LA72D
        ld      (iy+09h),00h
        ld      (iy+06h),20h    ; ' '

        ; Referenced from A723
LA72D:  ld      a,(iy+09h)
        and     a
        jr      nz,LA738
        inc     (iy+00h)
        jr      LA73B

        ; Referenced from A731
LA738:  dec     (iy+00h)

        ; Referenced from A70D, A736
LA73B:  dec     (iy+06h)
        jr      nz,LA765
        ld      a,r
        and     3Fh             ; '?'
        ld      (iy+06h),a
        bit     3,a
        jr      nz,LA751
        ld      (iy+07h),00h
        jr      LA755

        ; Referenced from A749
LA751:  ld      (iy+07h),01h

        ; Referenced from A74F
LA755:  ld      a,r
        bit     2,a
        jr      nz,LA761
        ld      (iy+09h),00h
        jr      LA765

        ; Referenced from A759
LA761:  ld      (iy+09h),01h

        ; Referenced from A73E, A75F
LA765:  ld      a,(0E014h)
        and     08h
        rrca
        add     a,44h           ; 'D'
        ld      (iy+02h),a   ; sprite pattern: bat #1
        ld      (iy+03h),04h
        jp      LA340

        ; Entry Point
        ; --- START PROC LA777 ---
LA777:  ret

        ; Entry Point
        ; --- START PROC LA778 ---
LA778_CHECK_ENDING_SEQUENCE:
; Checks items
        ld      a,(0E047h)      ; item #1 present
        and     a
        ret     z               ; not valid
        ld      a,(0E049h)      ; item #3 present
        and     a
        ret     z               ; not valid
        ld      a,(0E048h)      ; item #2 present
        and     a
        ret     z               ; not valid
        ld      a,(0E04Ah)      ; item #4 present (counter?)
        cp      02h
        ret     nz              ; not valid
; Checks ???
        ld      a,(iy+05h)
        and     a
        jr      nz,LA7BC_ENDING_SEQUENCE
; No ending sequence
        ld      (iy+00h),80h
        ld      (iy+01h),10h
        ld      (iy+10h),80h
        ld      (iy+11h),10h
        ld      (iy+02h),0F8h   ; Girl stopped sprite pattern 2
        ld      (iy+12h),0FCh   ; Girl stopped sprite pattern 2
        ld      (iy+03h),09h    ; Girl stopped sprite color 1
        ld      (iy+13h),0Bh    ; Girl stopped sprite color 2
        inc     (iy+05h)
        ld      a,02h
        ld      (0E047h),a      ; item #1 present
        ret

        ; Referenced from A791
LA7BC_ENDING_SEQUENCE:
        ld      a,(iy+01h)
        cp      0B8h
        jr      nc,.LA7C9
        inc     (iy+01h)
        inc     (iy+11h)
.LA7C9: ld      a,(0E012h)
        and     08h
        add     a,0E8h
        ld      (iy+02h),a   ; Girl walking sprite pattern 1
        add     a,04h
        ld      (iy+12h),a   ; Girl walking sprite pattern 2
        ld      a,(ix+00h)
        cp      80h
        ret     nz
        ld      a,(ix+01h)
        ld      b,(iy+01h)
        sub     b
        cp      0Ch
        ret     nc
; Ending
        inc     (iy+05h)
        ld      (iy+02h),0F8h   ; Girl stopped sprite pattern 1
        ld      (iy+12h),0FCh   ; Girl stopped sprite pattern 2
        ld      (ix+02h),14h
        ld      (ix+12h),74h
; Text
        ld      de,18C8h
        ld      hl,LA839_ENDING_NAMTBL
        ld      bc,000Dh
        call    LDIRVM
        ld      de,18E8h
        ld      hl,LA839_ENDING_NAMTBL + $0d
        ld      bc,000Dh
        call    LDIRVM
        ld      de,192Eh
        ld      hl,LA839_ENDING_NAMTBL
        ld      bc,000Dh
        call    LDIRVM
        ld      de,194Eh
        ld      hl,LA839_ENDING_NAMTBL + $0d
        ld      bc,000Dh
        call    LDIRVM
        ld      a,03h
        call    LB777_SET_E2BE_TO_A_IF_GT
        call    LB43F
        ld      a,02h
        ld      (0E186h),a
        ret

LA839_ENDING_NAMTBL: ; 13x2
        DB      "<=>vw",                 90h,  95h, 0A0h,  80h, 0CBh, 0D3h, 80h, 0D9h
        DB      3Fh, 40h, 47h, 91h, 94h, 80h, 0B3h, 0BCh, 0C1h, 0D7h, 0D8h, 80h, 0DCh

; -----------------------------------------------------------------------------
        ; Entry Point
        ; --- START PROC LA853_WALKING_DEMON_SUBROUTINE ---
LA853_WALKING_DEMON_SUBROUTINE:
; Initialized?
        ld      a,(iy+05h)
        and     a
        jp      nz,LA8E4 ; yes

; iy+05h == 0 -----------------------------------------------------------------

; Spawning?
        ld      a,(iy+01h)
        and     a
        jr      nz,.LA8A6 ; yes
; no: delay
        inc     (iy+06h)
        ld      a,(iy+06h)
        cp      60h             ; '`'
        ret     c
        ld      (iy+06h),00h
; Creates in proper direction
        ld      a,(ix+01h)
        cp      80h
        jr      c,.LA88D
; RIGHT
        ld      (iy+01h),01h
        ld      (iy+07h),00h    ; 00 = right, FF = left
        ld      (iy+08h),20h    ; Time to reevaluate
        ld      (iy+09h),0D4h   ; Walking demon right #1
        ld      (iy+03h),0Fh    ; white
        inc     (iy+05h)        ; Initialized
        jr      .LA8BE
; LEFT
.LA88D:  ld      (iy+01h),0FCh
        ld      (iy+07h),0FFh    ; 00 = right, FF = left
        ld      (iy+08h),20h    ; Time to reevaluate
        ld      (iy+09h),0DCh   ; Walking demon left #1
        ld      (iy+03h),0Fh    ; Color: white
        inc     (iy+05h)        ; Initialized
        jr      .LA8BE

.LA8A6: ld      (iy+03h),0Fh    ; sprite color = white
        ld      a,r
        and     3Fh
        add     a,10h
        ld      (iy+08h),a      ; random wait (shooting)
        ld      (iy+09h),0D4h   ; sprite pattern = demon walking right #1
        inc     (iy+05h)
        ld      (iy+03h),0Fh    ; sprite color = white (again)
.LA8BE:
; Depending on the loop number...
        ld      a, (0E009h)     ; (loop number)
        and     a
        jr      z, .LA8CE
        cp      01h
        jr      z, .LA8D5

; Loop number >= 2
        ld      (iy+03h), 09h   ; sprite color = light red
        jr      .LA8DF          ; activates the "does jump" flag

; Loop number = 0
.LA8CE:
; Depending on the current area...
        ld      a, (0E00Ah)     ; (current area)
        cp      04h
        jr      nz, .LA8E3      ; area < 4: keeps the white, does-not-jump version

; loop number = 0 and area < 4
;  or
; Loop number = 1
.LA8D5:
; Makes a 50/50 decision...
        ld      a, r
        bit     2, a
; 50%: keeps the white, does-not-jump version
        jr      nz, .LA8E3
; 50%:
        ld      (iy+03h), 05h   ; sprite color = blue sprite
.LA8DF: ld      (iy+0Ch), 01h   ; activates the "does jump" flag
.LA8E3: ret

; Already initialized ---------------------------------------------------------

; (note: a = (iy+05h) )
LA8E4:  cp      01h
        jp      nz,LA982

; iy+05h == 1

; Checks if it has to shoot
LA8E9:  dec     (iy+08h)      ; Time to shoot
        jr      nz,LA92B
; Resets time to shoot to random
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+08h),a
; Shoot already active?
        ld      a,(iy+14h)
        and     a
        jr      nz,LA92B        ; yes
; No: 50%
        ld      a,r
        bit     2,a
        jr      nz,.LA923       ; don't shoot
; shoot: Creates the shoot
        ld      a,(iy+07h)    ; 00 = right, FF = left
        ld      (iy+15h),a
        ld      a,(iy+00h)      ; Y
        sub     08h
        ld      (iy+10h),a
        ld      a,(iy+01h)      ; X
        ld      (iy+11h),a
        ld      (iy+12h),0A4h
        ld      (iy+13h),09h
        ld      (iy+14h),0Dh
; Randomly changes direction
.LA923:  ld      a,r
        bit     3,a
        jr      nz,LA978        ; Look right
        jr      LA94F           ; Look left

; No-shooting mode

LA92B:  ld      a,(iy+07h)    ; 00 = right, FF = left
        and     a
        jr      nz,LA95A        ; Is looking left

; Is looking right
        ld      a,(iy+01h)
        cp      0F0h
        jr      nc,LA943        ; Too far right
; Prepares the sprite
        call    LA271
        jr      nc,LA943        ; EC bit (guess)
; Moves right
        inc     (iy+01h)        ; X
        jp      LA9ED_WALKING_DEMON_IA

        ; Referenced from A936, A93B
LA943:  ld      a,(iy+05h)
        cp      05h
        jp      z,LA9ED_WALKING_DEMON_IA
        ld      (iy+08h),20h    ; ' '

        ; Referenced from A929
LA94F:  ld      (iy+07h),0FFh    ; 00 = right, FF = left
        ld      (iy+09h),0DCh   ; Walking demon left #1
        jp      LA9ED_WALKING_DEMON_IA

; Is looking left
LA95A:  ld      a,(iy+01h)
        cp      04h
        jr      c,LA96C ; Too far left
; Prepares the sprite
        call    LA23D
        jr      nc,LA96C        ; EC bit (guess)
; Moves left
        dec     (iy+01h)        ; X
        jp      LA9ED_WALKING_DEMON_IA

        ; Referenced from A95F, A964
LA96C:  ld      a,(iy+05h)
        cp      05h
        jp      z,LA9ED_WALKING_DEMON_IA
        ld      (iy+08h),20h    ; ' '

        ; Referenced from A927
LA978:  ld      (iy+07h),00h    ; 00 = right, FF = left
        ld      (iy+09h),0D4h   ; Walking demon right #1
        jr      LA9ED_WALKING_DEMON_IA

; iy+05h != 1

; (note: a = (iy+05h) )
LA982:  cp      02h
        jr      nz,LA989

; iy+05h == 2

        jp      LA22C

; iy+05h != 1, 2

LA989:
; upwards?
        ld      a,(iy+0Dh)      ; 0 = upwards, !0 = downwards
        and     a
        jr      nz,LA9B2 ; no
; yes
        ld      a,(iy+0Eh)      ; deltaY table index
        cp      10h
        jr      c,LA99C
; top point
        inc     (iy+0Dh)        ; 0 = upwards, !0 = downwards
        jp      LA8E9           ; re-evaluates (?)

; deltaY table index < 16
LA99C:  ld      hl,L8F91_DY_TABLE        ; address or value?
        add     a,l
        jr      nc,.LA9A3
        inc     h
.LA9A3: ld      l,a
; b = deltaY
        ld      b,(hl)
; y -= deltaY
        ld      a,(iy+00h)
        sub     b
        ld      (iy+00h),a
        inc     (iy+0Eh)      ; deltaY table index
        jp      LA8E9           ; re-evaluates (?)

; downwards
LA9B2:  dec     (iy+0Eh)      ; deltaY table index
        ld      a,(iy+0Eh)      ; deltaY table index
        and     a
        jr      nz,LA9C3
; bottom point
        ld      (iy+05h),01h
        ld      (iy+0Dh),00h    ; 0 = upwards, !0 = downwards

        ; Referenced from A9B9
LA9C3:  ld      hl,L8F91_DY_TABLE        ; address or value?
        add     a,l
        jr      nc,.LA9CA
        inc     h
.LA9CA:  ld      l,a
; b = deltaY
        ld      b,(hl)
; y += deltaY
        ld      a,(iy+00h)
        add     a,b
        ld      (iy+00h),a
        jp      LA8E9           ; re-evaluates (?)

; UNUSED ROUTINE!?!?
        ; Entry Point
        ; --- START PROC LA9D6 ---
        LA9D6:  inc     (iy+00h)        ; Y
                inc     (iy+00h)        ; Y
                dec     (iy+0Eh)        ; deltaY table index
                jp      nz,LA8E9
                ld      (iy+05h),01h
                ld      (iy+0Dh),00h    ; 0 = upwards, !0 = downwards
                jp      LA8E9
; UNUSED ROUTINE!?!?

        ; Referenced from A940, A980, A957, A969, A948, A971
LA9ED_WALKING_DEMON_IA:
; Alternates pattern
        ld      a,(0E012h)
        and     08h
        rrca
        ld      b,(iy+09h)
        add     a,b
        ld      (iy+02h),a
; Checks X against player
LA9FA:  ld      bc,08F8h        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,LAA0D
; Checks Y against player
        ld      bc,0CF4h        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,LAA0D
; Hurts the player
        call    LB146_HURT_PLAYER

; No collision against player
LAA0D:
; Checks Y against player shoot (guess)
        ld      bc,0CF4h        ; (-12..+12)
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jr      nc,LAA48 ; no
; Checks X against player shoot (guess)
        ld      a,(iy+0Ch)
        and     a
        jr      z,LAA2E
        ld      bc,34CCh        ; (-52..+52)
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,LAA2E ; no
; Yes: sets jumping mode if not set already
        ld      a,(iy+05h)
        cp      01h
        jr      nz,LAA2E
        ld      (iy+05h),05h    ; Sets jumping mode (???)
LAA2E:
; Checks X against player shoot (guess)
        ld      bc,08F8h        ; (-8..8)
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,LAA48 ; no
; Yes: removes the enemy (guess)
        ld      (iy+05h),02h
        ld      a,30h           ; '0'
        call    LB3AF_ADD_SCORE
        ld      a,02h
        call    LB758
        ld      (iy+06h),20h    ; ' '

        ; Referenced from AA13, AA34
        ; --- START PROC LAA48 ---
LAA48:  ret

        ; Entry Point
        ; --- START PROC LAA49 ---
LAA49:  ld      a,(iy+05h)
        and     a
        jr      nz,LAA5A
        inc     (iy+01h)
        inc     (iy+01h)
        inc     (iy+01h)
        jr      LAA63

        ; Referenced from AA4D
LAA5A:  dec     (iy+01h)
        dec     (iy+01h)
        dec     (iy+01h)

        ; Referenced from AA58
LAA63:  ld      a,(iy+01h)
        cp      0FBh
        jr      c,LAA6D
        jp      LAFB6

        ; Referenced from AA68
LAA6D:  ld      bc,04FCh        ; address or value?
        call    LAFE8_CHECK_COLLISION_IX1_IY1
        jr      nc,LAA83
        ld      bc,06F6h        ; address or value?
        call    LAFC5_CHECK_COLLISION_IX0_IY0
        jr      nc,LAA83
        call    LB146_HURT_PLAYER
        jp      LAFB6

        ; Referenced from AA73, AA7B
LAA83:  ld      bc,04FCh        ; address or value?
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,LAA99
        ld      bc,07F6h        ; address or value?
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jr      nc,LAA99
        call    L8670
        jp      LAFB6

        ; Referenced from AA89, AA91
        ; --- START PROC LAA99 ---
LAA99:  ret

        ; Entry Point
        ; --- START PROC LAA9A ---
LAA9A:  ld      a,(iy+05h)
        and     a
        jr      nz,LAAAD
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+06h),a
        inc     (iy+05h)
        ret

        ; Referenced from AA9E
LAAAD:  cp      01h
        jp      nz,LAB3A
        dec     (iy+06h)
        ret     nz
        ld      a,(ix+00h)
        cp      40h             ; '@'
        jr      c,LAAC7
        ld      (iy+00h),10h
        ld      (iy+10h),20h    ; ' '
        jr      LAACF

        ; Referenced from AABB
LAAC7:  ld      (iy+00h),38h    ; '8'
        ld      (iy+10h),48h    ; 'H'

        ; Referenced from AAC5
LAACF:  ld      a,(iy+08h)
        and     a
        jr      nz,LAAEE
        ld      a,r
        bit     2,a
        jr      nz,LAAF6

        ; Referenced from AAF0, AAF4
LAADB:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      15h
        jr      nz,LAAE8
        ld      (iy+03h),0Bh
        jr      LAB07

        ; Referenced from AAE0
LAAE8:  ld      (iy+03h),07h
        jr      LAB07

        ; Referenced from AAD3
LAAEE:  cp      05h
        jr      z,LAADB
        cp      09h
        jr      z,LAADB

        ; Referenced from AAD9
LAAF6:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      15h
        jr      nz,LAB03
        ld      (iy+03h),09h
        jr      LAB07

        ; Referenced from AAFB
LAB03:  ld      (iy+03h),05h

        ; Referenced from AAE6, AB01, AAEC
LAB07:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      15h
        jr      nz,LAB18
        ld      (iy+01h),0D8h
        ld      (iy+11h),0D8h
        jr      LAB20

        ; Referenced from AB0C
LAB18:  ld      (iy+01h),28h    ; '('
        ld      (iy+11h),28h    ; '('

        ; Referenced from AB16
LAB20:  ld      (iy+02h),0ACh   ; sprite pattern: flame
        ld      (iy+12h),0B0h
        ld      (iy+13h),0Fh
        ld      a,r
        and     1Fh
        add     a,10h
        ld      (iy+06h),a
        inc     (iy+05h)
        jr      LAB50

        ; Referenced from AAAF
LAB3A:  cp      02h
        jr      nz,LAB7B
        dec     (iy+06h)
        jr      nz,LAB50
        ld      (iy+00h),0ECh
        ld      (iy+10h),0ECh
        ld      (iy+05h),00h
        ret

        ; Referenced from AB41, AB38
LAB50:  ld      bc,08F8h        ; address or value?
        call    LAFF8_CHECK_COLLISION_IX21_IY1
        jr      nc,LABB7
        ld      bc,08E8h        ; address or value?
        call    LAFF0_CHECK_COLLISION_IX20_IY0
        jr      nc,LABB7
        call    L8670
        ld      a,(0E1B2h)
        inc     a
        ld      (0E1B2h),a
        ld      a,20h           ; ' '
        call    LB3AF_ADD_SCORE
        ld      a,02h
        call    LB758
        call    L853D_FLASH_BDRCLR_AFTER_BOSS
        inc     (iy+05h)
        ret

        ; Referenced from AB3C
LAB7B:  inc     (iy+00h)
        ld      a,(iy+00h)
        add     a,08h
        ld      (iy+10h),a
        cp      0A0h
        jr      nc,LAB98
        ld      a,(0E012h)
        and     04h
        add     a,38h           ; '8'
        ld      (iy+02h),a   ; sprite pattern: smoke
        ld      (iy+12h),a
        ret

        ; Referenced from AB88
LAB98:  ld      (iy+00h),0ECh
        ld      (iy+10h),0ECh
        ld      (iy+05h),00h
        ld      a,(iy+03h)
        ld      (iy+07h),a
        inc     (iy+08h)
        ld      a,(iy+08h)
        cp      02h
        jr      c,LABB7
        jp      LAFB6

        ; Referenced from AB56, AB5E, ABB2
        ; --- START PROC LABB7 ---
LABB7:  ret

        ; Entry Point
        ; --- START PROC LABB8 ---
LABB8:  ld      a,(iy+05h)
        and     a
        jr      nz,LAC05
        inc     (iy+06h)
        ld      a,(iy+06h)
        cp      20h             ; ' '
        ret     c
        ld      a,r
        and     03h
        ld      (iy+07h),a
        ld      a,r
        bit     3,a
        jr      nz,LABDA
        ld      (iy+01h),6Ch    ; 'l'
        jr      LABDE

        ; Referenced from ABD2
LABDA:  ld      (iy+01h),0AAh

        ; Referenced from ABD8
LABDE:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      10h
        jr      nz,LABF5
        ld      (iy+00h),64h    ; 'd'
        ld      (iy+02h),0E4h   ; sprite pattern: empty
        ld      (iy+03h),0Bh
        inc     (iy+05h)
        ret

        ; Referenced from ABE3
LABF5:  ld      (iy+00h),64h    ; 'd'
        ld      (iy+02h),40h   ; sprite pattern: ball?
        ld      (iy+03h),09h
        inc     (iy+05h)
        ret

        ; Referenced from ABBC
LAC05:  cp      01h
        jr      nz,LAC72
        ld      a,(ix+01h)
        cp      90h
        jp      nc,LAC89
        ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      10h
        jr      nz,LAC1C
        ld      (iy+02h),0B8h   ; sprite pattern: / lightning /

        ; Referenced from AC16
LAC1C:  ld      a,(iy+07h)
        and     a
        jr      z,LAC2C
        cp      01h
        jr      z,LAC2F
        cp      02h
        jr      z,LAC3D
        jr      LAC40

        ; Referenced from AC20
LAC2C:  dec     (iy+01h)

        ; Referenced from AC24
LAC2F:  dec     (iy+01h)
        dec     (iy+01h)
        dec     (iy+01h)
        inc     (iy+00h)
        jr      LAC4C

        ; Referenced from AC28
LAC3D:  dec     (iy+01h)

        ; Referenced from AC2A
LAC40:  dec     (iy+01h)
        dec     (iy+01h)
        inc     (iy+00h)
        inc     (iy+00h)

        ; Referenced from AC3B, ACB3, ACC4
LAC4C:  inc     (iy+0Ch)
        ld      a,(iy+0Ch)
        cp      04h
        jr      c,LAC6B
        ld      (iy+0Ch),00h
        ld      a,(ix+00h)
        ld      b,(iy+00h)
        cp      b
        jr      c,LAC68
        inc     (iy+00h)
        jr      LAC6B

        ; Referenced from AC61
LAC68:  dec     (iy+00h)

        ; Referenced from AC54, AC66
LAC6B:  ld      a,(iy+00h)
        cp      0A0h
        jr      c,LAC7F

        ; Referenced from AC07, AD6C, AC84
        ; --- START PROC LAC72 ---
LAC72:  ld      (iy+05h),00h
        ld      (iy+06h),00h
        ld      (iy+00h),0ECh
        ret

        ; Referenced from AC70
LAC7F:  ld      a,(iy+01h)
        cp      05h
        jr      c,LAC72
        jp      LA340

        ; Referenced from AC0E
LAC89:  ld      a,(iy+04h)      ; status/subroutine index (?)
        cp      10h
        jr      nz,LAC94
        ld      (iy+02h),0A8h   ; sprite pattern: / lightning /

        ; Referenced from AC8E
LAC94:  ld      a,(iy+07h)
        and     a
        jr      z,LACA4
        cp      01h
        jr      z,LACA7
        cp      02h
        jr      z,LACB5
        jr      LACB8

        ; Referenced from AC98
LACA4:  inc     (iy+01h)

        ; Referenced from AC9C
LACA7:  inc     (iy+01h)
        inc     (iy+01h)
        inc     (iy+01h)
        inc     (iy+00h)
        jr      LAC4C

        ; Referenced from ACA0
LACB5:  inc     (iy+01h)

        ; Referenced from ACA2
LACB8:  inc     (iy+01h)
        inc     (iy+01h)
        inc     (iy+00h)
        inc     (iy+00h)
        jr      LAC4C

        ; Entry Point
        ; --- START PROC LACC6 ---
LACC6:  ld      a,(iy+05h)
        and     a
        jr      nz,LACD9
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+06h),a
        inc     (iy+05h)
        ret

        ; Referenced from ACCA
LACD9:  cp      01h
        jr      nz,LAD01
        dec     (iy+06h)
        ret     nz
        ld      a,r
        bit     3,a
        jr      nz,LACED
        ld      (iy+02h),3Ch   ; sprite pattern: smoke #2
        jr      LACF1

        ; Referenced from ACE5
LACED:  ld      (iy+02h),38h   ; sprite pattern: smoke #1

        ; Referenced from ACEB
LACF1:  ld      (iy+01h),82h
        ld      (iy+00h),91h
        ld      (iy+03h),05h
        inc     (iy+05h)
        ret

        ; Referenced from ACDB
LAD01:  cp      02h
        jr      nz,LAD6C
        ld      a,(iy+07h)
        and     a
        jr      nz,LAD21
        inc     (iy+00h)
        dec     (iy+01h)
        inc     (iy+08h)
        ld      a,(iy+08h)
        cp      08h
        jr      c,LAD39
        ld      (iy+07h),01h
        jr      LAD39

        ; Referenced from AD09
LAD21:  dec     (iy+00h)
        dec     (iy+01h)
        inc     (iy+08h)
        ld      a,(iy+08h)
        cp      10h
        jr      c,LAD39
        ld      (iy+07h),00h
        ld      (iy+08h),00h

        ; Referenced from AD19, AD1F, AD2F
LAD39:  inc     (iy+0Ch)
        ld      a,(iy+0Ch)
        cp      02h
        jp      c,LA340
        ld      (iy+0Ch),00h
        ld      a,(iy+00h)
        ld      b,(ix+00h)
        cp      b
        jr      c,LAD56
        dec     (iy+00h)
        jr      LAD59

        ; Referenced from AD4F
LAD56:  inc     (iy+00h)

        ; Referenced from AD54
LAD59:  ld      a,(iy+01h)
        cp      10h
        jp      nc,LA340
        ld      (iy+05h),00h
        ld      (iy+00h),0ECh
        jp      LA340

        ; Referenced from AD03
        ; --- START PROC LAD6C ---
LAD6C:  jp      LAC72

        ; Entry Point
        ; --- START PROC LAD6F ---
LAD6F:  ld      a,(iy+05h)
        and     a
        jr      nz,LAD8D
        ld      (iy+08h),08h
        ld      (iy+00h),76h    ; 'v'
        ld      (iy+01h),90h
        ld      (iy+02h),40h   ; sprite pattern: ball
        ld      (iy+03h),01h
        inc     (iy+05h)
        ret

        ; Referenced from AD73
LAD8D:  ld      a,(iy+07h)
        and     a
        jr      nz,LADAC
        inc     (iy+08h)
        ld      a,(iy+08h)
        cp      10h
        jr      c,LADA7
        ld      (iy+08h),00h
        ld      (iy+07h),01h
        jr      LADC3

        ; Referenced from AD9B
LADA7:  dec     (iy+01h)
        jr      LADC3

        ; Referenced from AD91
LADAC:  inc     (iy+08h)
        ld      a,(iy+08h)
        cp      10h
        jr      c,LADC0
        ld      (iy+08h),00h
        ld      (iy+07h),00h
        jr      LADC3

        ; Referenced from ADB4
LADC0:  inc     (iy+01h)

        ; Referenced from ADA5, ADBE, ADAA
LADC3:  ld      a,(iy+0Bh)
        add     a,a
        inc     a
        ld      (iy+03h),a
        ld      a,(iy+0Bh)
        cp      05h
        jp      c,LA340
        ld      (0E1B2h),a
        ret


        ; Referenced from 80B5
        ; --- START PROC LADD7 ---
LADD7:  call    LB379

        ld      a,(0E186h)      ; 0 = default?, 1 = boss?, 2 = after boss?
        cp      00h
        jr      z,LADF7

; Increases current area
        ld      a,(0E00Ah)      ; current area
        inc     a
        ld      (0E00Ah),a      ; current area
        cp      05h
        jr      c,LADF7         ; Cannot increase more

        xor     a
        ld      (0E00Ah),a      ; current area
        ld      a,(0E009h)      ; Loop number
        inc     a
        ld      (0E009h),a      ; Loop number

        ; Referenced from ADDF, ADEA
LADF7:  ld      a,(0E183h)
        cp      01h
        jr      nz,LAE20
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        dec     a
        ld      (0E0A8h),a      ; cheat: 0,57512,8,0,lives
        ld      hl,1801h
        ld      b,07h
        ld      a,80h

        ; Referenced from AE10
LAE0C:  call    WRTVRM
        inc     hl
        djnz    LAE0C
        ld      hl,1821h
        ld      b,07h

        ; Referenced from AE1B
LAE17:  call    WRTVRM
        inc     hl
        djnz    LAE17
        call    LB07A

        ; Referenced from ADFC
LAE20:  xor     a
        ld      (0E011h),a

        ; Referenced from AE29
LAE24:  ld      a,(0E011h)
        cp      02h
        jr      c,LAE24
        ld      a,05h
        call    LB777_SET_E2BE_TO_A_IF_GT
        xor     a
        ld      (0E012h),a

        ; Referenced from AE39, AE71
LAE34_PLAYER_DYING_ROUTINE:
        ld      a,(0E011h)
        cp      01h
        jr      c,LAE34_PLAYER_DYING_ROUTINE
        xor     a
        ld      (0E011h),a
        call    LA1B9_EXECUTE_E340_ENTITIES_SUBROUTINES
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        ld      a,(0E013h)
        and     04h             ; AE4B
        and     a               ; AE4D
        jr      nz,.LAE5A       ; AE4E
        ld      (ix+02h),20h    ; player sprite pattern: dying #1 (1/2)
        ld      (ix+12h),80h    ; player sprite pattern: dying #1 (2/2)
        jr      .LAE62

        ; Referenced from AE4E
.LAE5A: ld      (ix+02h),5Ch    ; player sprite pattern: dying #2 (1/2)
        ld      (ix+12h),0BCh   ; player sprite pattern: dying #2 (2/2)

        ; Referenced from AE58
.LAE62:  ld      a,(0E014h)
        and     08h             ; 0 or 8
        add     a,07h           ; 7 or 15
        ld      (ix+03h),a
        ld      a,(0E012h)
        cp      40h             ; '@'
        jr      c,LAE34_PLAYER_DYING_ROUTINE
        call    LB379

        ; Referenced from AE7B
LAE76:  ld      a,(0E012h)
        cp      43h             ; 'C'
        jr      c,LAE76
        ld      a,(0E183h)
        cp      01h
        jr      nz,LAE8E
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        and     a
        jp      z,LAF20
        jp      LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA

        ; Referenced from AE82
LAE8E:  call    LB186
        call    LB2B2
        ld      de,18C7h
        ld      hl,LAF4D ; "CONTINUE PUSH TRIG1"
        ld      bc,0013h
        call    LDIRVM
        ld      de,1907h
        ld      hl,LAF60 ; "END      PUSH TRIG2"
        ld      bc,0013h
        call    LDIRVM
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      (0E1A0h),a
        ld      (0E020h),a
        ld      (0E022h),a
        ld      a,06h
        call    LB777_SET_E2BE_TO_A_IF_GT

        ; Referenced from AECA
LAEBE:  ld      a,(0E022h)
        and     a
        jr      z,LAEC6
        jr      LAECE

        ; Referenced from AEC2
LAEC6:  ld      a,(0E020h)
        and     a
        jr      z,LAEBE
        jr      LAF20

        ; Referenced from AEC4
LAECE:  ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        cp      01h
        jr      z,LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA
        dec     a
        ld      (0E0A8h),a      ; cheat: 0,57512,8,0,lives
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        sla     a
        ld      (0E0A9h),a      ; cheat: energy ?

        ; Referenced from AF92, AFA0, AE8B, AED3
        ; --- START PROC LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA ---
LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA:
        ld      a,(0E00Ah)      ; current area
        cp      02h
        jr      nc,.LAEF3
; map is 0 or 1 : (1,1) -> $03, $0A
        ld      a,01h
        ld      (0E0A1h),a      ; Map X coordinate
        ld      (0E0A2h),a      ; Map Y coordinate
        jp      L800D
; else
.LAEF3:  cp      02h
        jr      nz,.LAF04
; map is 2 : (1,3) -> $20
        ld      a,01h
        ld      (0E0A1h),a      ; Map X coordinate
        ld      a,03h
        ld      (0E0A2h),a      ; Map Y coordinate
        jp      L800D
; else
.LAF04:  cp      03h
        jr      nz,.LAF13
; map is 3 : (0,1) -> $21
        xor     a
        ld      (0E0A1h),a      ; Map X coordinate
        inc     a
        ld      (0E0A2h),a      ; Map Y coordinate
        jp      L800D
; else
; map is 4 : (1,2) -> $30
.LAF13:  ld      a,02h
        ld      (0E0A2h),a      ; Map Y coordinate
        ld      a,01h
        ld      (0E0A1h),a      ; Map X coordinate
        jp      L800D

        ; Referenced from AE88, AECC
LAF20:  call    LB40D
        call    LB397_PRINT_SCORE
        call    LB178_ZEROES_VRAM_BUFFERS
        ld      de,194Ch
LAF2C:  ld      hl,L5714  ; "GAME OVER"
        ld      bc,0009h
        call    LDIRVM
        ld      a,01h
        call    LB777_SET_E2BE_TO_A_IF_GT
        call    LB43F
        xor     a
        ld      (0E028h),a
        ld      (0E000h),a      ; Playing (nz) / Attract mode (z) ?
        ld      (0E026h),a ; read input (edge)
        ld      (0E0AAh),a
        jp      L7EE3

LAF4D:  DB      13h, 1Fh, 1Eh, 24h, 19h, 1Eh, 25h, 15h, 10h     ; "CONTINUE "
        db      20h, 25h, 23h, 18h, 10h                         ; "PUSH "
        DB      24h, 22h, 19h, 17h, 01h                         ; "TRIG1"

LAF60:  DB      15h, 1Eh, 14h, 10h, 10h, 10h, 10h, 10h, 10h     ; "END      "
        DB      20h, 25h, 23h, 18h, 10h                         ; "PUSH "
        DB      24h, 22h, 19h, 17h, 02h                         ; "TRIG2"

        ; Referenced from 80BD
        ; --- START PROC LAF73 ---
LAF73:  call    LB186
        call    LB2B2
        xor     a
        ld      (0E011h),a
        ld      (0E0AAh),a
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        sla     a
        ld      (0E0A9h),a      ; cheat: energy ?
        call    LB397_PRINT_SCORE
        ld      hl,0E00Ah       ; current area
        inc     (hl)
        ld      a,(hl)
        cp      05h
        jp      c,LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA
        xor     a
        ld      (0E00Ah),a      ; current area
        ld      a,(0E009h)      ; Loop number
        inc     a
        ld      (0E009h),a      ; Loop number
        jp      LAEE1_INIT_MAP_COORDS_BASED_ON_CURRENT_AREA

LAFA3:  DB      0FDh
        DB      7Eh             ; '~'
        DB      00h
        DB      0FEh
        DB      0Ch
        DB      38h             ; '8'
        DB      0Ch
        DB      0FEh
        DB      0A8h
        DB      30h             ; '0'
        DB      08h
        DB      0FDh
        DB      7Eh             ; '~'
        DB      01h
        DB      0FEh
        DB      0F6h
        DB      30h             ; '0'
        DB      01h
        DB      0C9h


        ; Referenced from A239, AA6A, AA80, A565, AA96, ABB4
        ; --- START PROC LAFB6 ---
LAFB6:  push    iy
        pop     hl
        ld      b,10h

        ; Referenced from AFBE
LAFBB:  ld      (hl),00h
        inc     hl
        djnz    LAFBB
        ld      (iy+00h),0ECh
        ret


        ; Referenced from 97EE, 94E2, 94D2, 9744, 9A21, 9901, 9DF4, 9C79
        ; --- START PROC LAFC5_CHECK_COLLISION_IX0_IY0 ---
LAFC5_CHECK_COLLISION_IX0_IY0:
        ld      a,(ix+04h)
        and     a
        jr      nz,LAFDA
        ld      a,(iy+00h)
        sub     (ix+00h)

        ; Referenced from AFEE, AFFE, AFF6
        ; --- START PROC LAFD1_CHECK_A_IN_RANGE_BC ---
LAFD1_CHECK_A_IN_RANGE_BC:
        cp      b
        ret     c
        cp      c
        jr      c,LAFD8
        scf
        ret

        ; Referenced from AFD4, AFE4
        ; --- START PROC LAFD8 ---
LAFD8:  and     a
        ret

        ; Referenced from AFC9
        ; --- START PROC LAFDA ---
LAFDA:
        ld      a,(iy+00h)
        sub     (ix+00h)
        cp      b
        ret     c
        cp      0FCh
        jr      c,LAFD8
        scf
        ret

        ; Referenced from 94AD, 97E6, 94EA, 974C, 9A19, 98F8, 9DEC, 9DFF, 9EE8, 9C71
        ; --- START PROC LAFE8_CHECK_COLLISION_IX1_IY1 ---
LAFE8_CHECK_COLLISION_IX1_IY1:
        ld      a,(iy+01h)
        sub     (ix+01h)
        jr      LAFD1_CHECK_A_IN_RANGE_BC

        ; Referenced from 9AC2
        ; --- START PROC LAFF0_CHECK_COLLISION_IX20_IY0 ---
LAFF0_CHECK_COLLISION_IX20_IY0:
        ld      a,(iy+00h)
        sub     (ix+20h)
        jr      LAFD1_CHECK_A_IN_RANGE_BC

        ; Referenced from 9ABA
        ; --- START PROC LAFF8_CHECK_COLLISION_IX21_IY1 ---
LAFF8_CHECK_COLLISION_IX21_IY1:
        ld      a,(iy+01h)
        sub     (ix+21h)
        jr      LAFD1_CHECK_A_IN_RANGE_BC


        ; Referenced from B193, B44A, AE42, 8112, 8FF0, B1BC
        ; --- START PROC LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER ---
LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER:
        ld      hl,0E300h       ; Full entities array [$e300..$e400)
        ld      de,0E100h       ; SPRATR buffer in RAM
        ld      b,10h

        ; Referenced from B013, B387
        ; --- START PROC LB008_COPY_ENTITIES_TO_SPRATR_BUFFER ---
LB008_COPY_ENTITIES_TO_SPRATR_BUFFER:
        push    bc
        ld      bc,0004h
        ldir
        ld      bc,000Ch
        add     hl,bc
        pop     bc
        djnz    LB008_COPY_ENTITIES_TO_SPRATR_BUFFER
        ret

        ; Referenced from 7EE6, 802B
        ; --- START PROC LB016_DISSCR_AND_CLS_WITH_10h ---
LB016_DISSCR_AND_CLS_WITH_10h:
        call    DISSCR
        call    LB2E4_CLS_WITH_10h

        ; Referenced from 8033
        ; --- START PROC LB01C ---
LB01C:  call    LB178_ZEROES_VRAM_BUFFERS
        xor     a
        ld      (0E026h),a ; read input (edge)
        ld      (0E020h),a
        ld      (0E022h),a
        ld      (0E024h),a
        ld      (0E180h),a      ; Stick read (keyboard OR joystick)

        ; Referenced from 8FDC
        ; --- START PROC LB02F_LDIRVM_MAIN_CHARSET ---
LB02F_LDIRVM_MAIN_CHARSET:
; CHRTBL
        ld      de,0180h        ; Bank 0, start at char $30
        call    LB301_LDIRVM_MAIN_CHRTBL
        ld      de,0980h        ; Bank 1, start at char $30
        call    LB301_LDIRVM_MAIN_CHRTBL
        ld      de,1180h        ; Bank 2, start at char $30
        call    LB301_LDIRVM_MAIN_CHRTBL
; CLRTBL
        ld      de,2180h        ; Bank 0, start at char $30
        call    LB30A_LDIRVM_MAIN_CLRTBL
        ld      de,2980h        ; Bank 1, start at char $30
        call    LB30A_LDIRVM_MAIN_CLRTBL
        ld      de,3180h        ; Bank 2, start at char $30
        call    LB30A_LDIRVM_MAIN_CLRTBL
        jp      LB36D_LDRIVM_SPRTBL

        ; Referenced from 802E
        ; --- START PROC LB056_PRINT_EMPTY_HUD ---
LB056_PRINT_EMPTY_HUD:
        ld      de,1811h        ; (17,0)
        ld      hl,L5705        ; "HISCORE:0000000"
        ld      bc,000Fh        ; 15b
        call    LDIRVM
        ld      de,1833h        ; (19,1)
        ld      hl,L5705+2      ; "SCORE:0000000"
        ld      bc,000Dh        ; 13b
        call    LDIRVM
        ld      hl,1AC0h        ; (0,22)
        ld      bc,0020h        ; 32b
        ld      a,60h           ; (separator char)
        call    FILVRM
        ret

        ; Referenced from 8056, AE1D, B13D
        ; --- START PROC LB07A ---
LB07A:  ld      hl,1801h
        ld      bc,0007h
        ld      a,10h
        call    FILVRM
        ld      hl,1821h
        ld      bc,0007h
        call    FILVRM
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        and     a
        ret     z
        ld      b,a
        ld      hl,1801h
        ld      a,62h           ; 'b'

        ; Referenced from B09D
LB099:  call    WRTVRM
        inc     hl
        djnz    LB099
        ld      hl,1821h
        ld      a,(0E0A8h)      ; cheat: 0,57512,8,0,lives
        ld      b,a
        ld      a,61h           ; 'a'

        ; Referenced from B0AC
LB0A8:  call    WRTVRM
        inc     hl
        djnz    LB0A8

        ; Referenced from B10D, B12D
        ; --- START PROC LB0AE ---
LB0AE:  ld      a,(0E0A9h)      ; cheat: energy ?
        and     a
        ret     z
        bit     0,a
        jr      nz,LB0D3
        srl     a
        ld      b,a
        push    bc
        ld      hl,1801h
        ld      a,64h           ; 'd'

        ; Referenced from B0C4
LB0C0:  call    WRTVRM
        inc     hl
        djnz    LB0C0
        pop     bc
        ld      hl,1821h
        ld      a,63h           ; 'c'

        ; Referenced from B0D0
LB0CC:  call    WRTVRM
        inc     hl
        djnz    LB0CC
        ret

        ; Referenced from B0B5
LB0D3:  srl     a
        and     a
        jr      nz,LB0E1
        ld      a,63h           ; 'c'
        ld      hl,1821h
        call    WRTVRM
        ret

        ; Referenced from B0D6
LB0E1:  ld      b,a
        push    bc
        ld      hl,1801h
        ld      a,64h           ; 'd'

        ; Referenced from B0EC
LB0E8:  call    WRTVRM
        inc     hl
        djnz    LB0E8
        pop     bc
        ld      hl,1821h
        ld      a,63h           ; 'c'

        ; Referenced from B0F8
LB0F4:  call    WRTVRM
        inc     hl
        djnz    LB0F4
        call    WRTVRM
        ret

        ; Referenced from 9830, 9A77
        ; --- START PROC LB0FE ---
LB0FE:  ld      a,(0E0A8h)
        sla     a
        ld      b,a
        ld      a,(0E0A9h) ; energy ?
        cp      b
        ret     z
        ld      a,b
        ld      (0E0A9h),a ; energy ?
        call    LB0AE
        xor     a
        ld      (0E0AAh),a
        ld      a,03h
        call    LB764_SET_E2C2_TO_A_IF_GT
        ret

        ; Referenced from 9A63
        ; --- START PROC LB11A ---
LB11A:  ld      a,(0E0A9h) ; energy ?
        srl     a
        ld      b,a
        ld      a,(0E0A8h)
        cp      b
        ret     z
        ret     c
        ld      a,(0E0A9h) ; energy ?
        inc     a
        ld      (0E0A9h),a ; energy ?
        call    LB0AE
        ld      a,01h
        call    LB758
        ret

        ; Referenced from B15B
        ; --- START PROC LB136 ---
LB136:  ld      a,(0E0A9h)      ; cheat: energy ?
        dec     a
        ld      (0E0A9h),a      ; cheat: energy ?
        call    LB07A
        ld      a,07h
        call    LB758
        ret

        ; Referenced from 845C, 835A
        ; --- START PROC LB146_HURT_PLAYER ---
LB146_HURT_PLAYER:
        ld      a,(0E023h)      ; Invulnerability cheat
        and     a
        ret     nz

        ld      a,(ix+1Fh)
        and     a
        ret     nz

        ld      a,(ix+1Ah)
        and     a
        ret     nz

        ld      a,(0E0A9h)      ; cheat: energy ?
        and     a
        jr      z,LB172

        call    LB136
        ld      (ix+1Ah),01h
        ld      a,05h
        call    LB758
        ld      a,(0E0A9h)      ; cheat: energy ?
        and     a
        ret     nz

        ld      a,02h
        ld      (0E183h),a
        ret

        ; Referenced from B159
LB172:  ld      a,01h
        ld      (0E183h),a
        ret

        ; Referenced from B01C, AF26
        ; --- START PROC LB178_ZEROES_VRAM_BUFFERS ---
LB178_ZEROES_VRAM_BUFFERS:
        ld      hl,0E100h       ; SPRATR buffer in RAM
        ld      bc,1000h
.LB17E: ld      (hl),00h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,.LB17E

        ; Referenced from AF73, AE8E
        ; --- START PROC LB186 ---
LB186:  ld      hl,0E300h       ; Full entities array [$e300..$e400)
        ld      de,0010h
        ld      b,10h
.LB18E: ld      (hl),0ECh
        add     hl,de
        djnz    .LB18E
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        ret

        ; Referenced from 8FE2
        ; --- START PROC LB19A_ZEROES_E400_ENTITIES ---
LB19A_ZEROES_E400_ENTITIES:
        ld      hl,0E400h
        ld      b,00h
.LB19F: ld      (hl),00h
        inc     hl
        djnz    .LB19F
        ret

        ; Referenced from 8FE5, 843F, 84A7, 8398
        ; --- START PROC LB1A5_ZEROES_E340_ENTITIES ---
LB1A5_ZEROES_E340_ENTITIES:
        ld      hl,0E340h       ; Secondary entities array [$e340..$e400)
        ld      b,0C0h
.LB1AA: ld      (hl),00h
        inc     hl
        djnz    .LB1AA
        ld      hl,0E340h       ; Secondary entities array [$e340..$e400)
        ld      de,0010h
        ld      b,0Ch
.LB1B7: ld      (hl),0ECh       ; Y-coord?
        add     hl,de
        djnz    .LB1B7
        call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        ret

        ; Referenced from 966F
        ; --- START PROC LB1C3 ---
LB1C3:  ld      hl,0E700h       ; address or value?
        ld      (0E1A8h),hl
        ld      hl,0E71Fh       ; address or value?
        ld      (0E1AAh),hl
        ld      hl,1840h        ; address or value?
        ld      (0E1ACh),hl
        ld      hl,185Fh        ; address or value?
        ld      (0E1AEh),hl
        ld      b,10h

        ; Referenced from B25A
LB1DD:  ld      hl,(0E1A8h)
        ld      (0E1A0h),hl
        ld      hl,(0E1AAh)
        ld      (0E1A2h),hl
        ld      hl,(0E1ACh)
        ld      (0E1A4h),hl
        ld      hl,(0E1AEh)
        ld      (0E1A6h),hl
        ld      c,14h
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

        ; Referenced from B200
LB1FB:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      01h
        jr      c,LB1FB
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

        ; Referenced from B23C
LB206:  ld      hl,(0E1A4h)
        ld      de,(0E1A0h)
        ld      a,(de)
        call    WRTVRM
        ld      hl,(0E1A6h)
        ld      de,(0E1A2h)
        ld      a,(de)
        call    WRTVRM
        ld      hl,(0E1A4h)
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (0E1A4h),hl
        ld      hl,(0E1A0h)
        add     hl,de
        ld      (0E1A0h),hl
        ld      hl,(0E1A6h)
        add     hl,de
        ld      (0E1A6h),hl
        ld      hl,(0E1A2h)
        add     hl,de
        ld      (0E1A2h),hl
        dec     c
        jr      nz,LB206
        ld      hl,(0E1A8h)
        inc     hl
        ld      (0E1A8h),hl
        ld      hl,(0E1AAh)
        dec     hl
        ld      (0E1AAh),hl
        ld      hl,(0E1ACh)
        inc     hl
        ld      (0E1ACh),hl
        ld      hl,(0E1AEh)
        dec     hl
        ld      (0E1AEh),hl
        djnz    LB1DD
        ret

; -----------------------------------------------------------------------------
        ; Referenced from 963F
        ; --- START PROC LB25D_FADE_OUT_SCREEN ---
LB25D_FADE_OUT_SCREEN:
        ld      hl,1850h        ; initial left border coords
        ld      (0E1A0h),hl
        ld      b,10h
        ld      hl,184Fh        ; initial right border coords
        ld      (0E1A2h),hl
        ld      de,0020h        ; (0,+1)
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

; Outer loop
.LB272: ld      c,14h           ; 14 rows
        ld      hl,(0E1A0h)     ; left border coords
        ld      de,(0E1A2h)     ; right border coords
; Delay
.LB27B: ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      01h
        jr      c,.LB27B
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
; Inner loop
.LB286: ld      a,80h
        call    WRTVRM
        ex      de,hl
        call    WRTVRM
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        ex      de,hl
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        dec     c
        jr      nz,.LB286
; Updates border coords
        ld      hl,(0E1A0h)
        inc     hl
        ld      (0E1A0h),hl
        ld      de,(0E1A2h)
        dec     de
        ld      (0E1A2h),de
        djnz    .LB272
        ret
; -----------------------------------------------------------------------------

        ; Referenced from AF76, AE91
        ; --- START PROC LB2B2 ---
LB2B2:  ld      hl,1840h        ; at (0,2)
        ld      (0E1A0h),hl
        ld      b,20h           ; ' '
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)
        ld      de,0020h

        ; Referenced from B2E1
LB2C1:  ld      c,14h
        ld      hl,(0E1A0h)

        ; Referenced from B2CB
LB2C6:  ld      a,(0E010h)      ; delay? (incremented in H.TIMI ?)
        cp      02h
        jr      c,LB2C6
        xor     a
        ld      (0E010h),a      ; delay? (incremented in H.TIMI ?)

        ; Referenced from B2D8
LB2D1:  ld      a,80h
        call    WRTVRM
        add     hl,de
        dec     c
        jr      nz,LB2D1
        ld      hl,(0E1A0h)
        inc     hl
        ld      (0E1A0h),hl
        djnz    LB2C1
        ret

        ; Referenced from B019, B5FD
        ; --- START PROC LB2E4_CLS_WITH_10h ---
LB2E4_CLS_WITH_10h:
        ld      a,10h
        ld      hl,1800h
        ld      bc,0300h
        call    FILVRM
        ret

        ; Referenced from 7EB2
        ; --- START PROC LB2F0_LDIRVM_BIOS_CHARSET ---
LB2F0_LDIRVM_BIOS_CHARSET:
        push    bc
        ld      hl,1D3Fh
        ld      bc,0180h

        ; Referenced from B308, B311
        ; --- START PROC LB2F7_LDIRVM_AND_MOVE_TO_NEXT_BANK ---
LB2F7_LDIRVM_AND_MOVE_TO_NEXT_BANK:
        call    LDIRVM
        ld      bc,0800h

        ; Referenced from B31D
        ; --- START PROC LB2FD ---
LB2FD:  add     hl,bc
        ex      de,hl
        pop     bc
        ret

        ; Referenced from B032, B038, B03E
        ; --- START PROC LB301_LDIRVM_MAIN_CHRTBL ---
LB301_LDIRVM_MAIN_CHRTBL:
        push    bc
        ld      hl,6000h        ; Source CHRTBL data
        ld      bc,0680h        ; 208 chars
        jr      LB2F7_LDIRVM_AND_MOVE_TO_NEXT_BANK

        ; Referenced from B044, B04A, B050
        ; --- START PROC LB30A_LDIRVM_MAIN_CLRTBL ---
LB30A_LDIRVM_MAIN_CLRTBL:
        push    bc
        ld      hl,7000h        ; Source CLRTBL data
        ld      bc,0680h        ; 208 chars
        jr      LB2F7_LDIRVM_AND_MOVE_TO_NEXT_BANK

        ; Referenced from 7F1F
        ; --- START PROC LB313_LDIRVM_16b_AND_MOVE_TO_NEXT_LINE ---
LB313_LDIRVM_16b_AND_MOVE_TO_NEXT_LINE:
        push    bc
        ld      bc,0010h
        call    LDIRVM
        ld      bc,0020h
        jr      LB2FD

        ; Referenced from 7EBD
        ; --- START PROC LB31F ---
LB31F:  push    bc
        ld      bc,0008h

        ; Referenced from B332
        ; --- START PROC LB323_FILVRM_AND_MOVE_TO_NEXT_BANK ---
LB323_FILVRM_AND_MOVE_TO_NEXT_BANK:
        call    FILVRM
        ld      de,0800h
        add     hl,de
        pop     bc
        ret

        ; Referenced from 7EF6
        ; --- START PROC LB32C_FILVRM_TITLE_CHARS ---
LB32C_FILVRM_TITLE_CHARS:
        push    bc
        ld      bc,0280h
        ld      a,0F0h
        jr      LB323_FILVRM_AND_MOVE_TO_NEXT_BANK

        ; Referenced from 7EEE, B352
        ; --- START PROC LB334_LDIRVM_TITLE_CHARSET ---
LB334_LDIRVM_TITLE_CHARSET:
        push    bc
; Actual title charset
        ld      hl,6700h
        ld      bc,0100h
        call    LDIRVM
        ld      bc,0100h
        add     hl,bc
        ex      de,hl
        ld      hl,6E80h
        ld      bc,0180h
        call    LDIRVM
        ld      bc,0700h
        add     hl,bc
        ex      de,hl
        pop     bc
        djnz    LB334_LDIRVM_TITLE_CHARSET
; "CASIO" (stylized)
        ld      de,1480h
        ld      hl,6680h
        ld      bc,0080h
        call    LDIRVM
        ld      de,3480h
        ld      hl,7680h
        ld      bc,0080h
        call    LDIRVM
        ret

        ; Referenced from 7ECD, B053
        ; --- START PROC LB36D_LDRIVM_SPRTBL ---
LB36D_LDRIVM_SPRTBL:
        ld      de,SPRTBL
        ld      hl,5800h
        ld      bc,0800h
        jp      LDIRVM

        ; Referenced from 7EE3, B5FA, B46A, ADD7, AE73
        ; --- START PROC LB379 ---
LB379:  ld      a,0FFh
        ld      (0E097h),a
        ret

        ; Referenced from 907E, 917E, 90EB, 9219
        ; --- START PROC LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER ---
LB37F_COPY_4ENTITIES_TO_SPRATR_BUFFER:
        ld      hl,0E300h       ; Full entities array [$e300..$e400)
        ld      de,0E100h       ; SPRATR buffer in RAM
        ld      b,04h
        call    LB008_COPY_ENTITIES_TO_SPRATR_BUFFER

        ; Referenced from B196, 8084, B44D, AE45, 8115, 8FF3, B1BF
        ; --- START PROC LB38A_LDIRVM_SPRATR ---
LB38A_LDIRVM_SPRATR:
        ld      de,SPRATR
        ld      hl,0E100h       ; SPRATR buffer in RAM
        ld      bc,0040h
        call    LDIRVM
        ret

        ; Referenced from 8087, AF88, 8103, AF23
        ; --- START PROC LB397_PRINT_SCORE ---
LB397_PRINT_SCORE:
        ld      hl,0E001h ; score
        ld      de,1839h
        ld      bc,0006h
        call    LDIRVM
        ld      hl,0E08Eh ; hi score
        ld      de,1819h
        ld      bc,0006h
        jp      LDIRVM

        ; Referenced from 9773, 9A50, 9914
        ; --- START PROC LB3AF_ADD_SCORE ---
LB3AF_ADD_SCORE:
        ld      b,a
        ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        ret     z
        ld      a,(0E00Eh)
        add     a,b
        daa
        ld      (0E00Eh),a
        jr      nc,LB3EB
        ld      a,01h
        ld      b,a
        ld      a,(0E00Dh)
        add     a,b
        daa
        ld      (0E00Dh),a
        jr      nc,LB3EB
        ld      a,01h
        ld      b,a
        ld      a,(0E00Ch)
        add     a,b
        daa
        ld      (0E00Ch),a
        jr      nc,LB3EB
        ld      a,(0E00Ch)
        ld      (0E094h),a
        ld      a,(0E00Dh)
        ld      (0E095h),a
        ld      a,(0E00Eh)
        ld      (0E096h),a

        ; Referenced from B3BD, B3CA, B3D7
LB3EB:  call    LB3F2
        call    LB40D
        ret

        ; Referenced from B3EB
        ; --- START PROC LB3F2 ---
LB3F2:  ld      hl,0E001h       ; address or value?
        ld      de,0E00Ch       ; address or value?
        ld      b,03h

        ; Referenced from B43D, B40A
        ; --- START PROC LB3FA ---
LB3FA:  ld      a,(de)
        ld      c,a
        and     0F0h
        rrca
        rrca
        rrca
        rrca
        ld      (hl),a
        inc     hl
        ld      a,c
        and     0Fh
        ld      (hl),a
        inc     hl
        inc     de
        djnz    LB3FA
        ret

        ; Referenced from AF20
        ; --- START PROC LB40D ---
LB40D:  ld      de,0E094h
        ld      hl,0E00Ch
        ld      a,(de)
        ld      b,a
        ld      a,(hl)
        cp      b
        ret     c
        jr      nz,LB42C
        inc     de
        inc     hl
        ld      a,(de)
        ld      b,a
        ld      a,(hl)
        cp      b
        ret     c
        jr      nz,LB42E
        inc     de
        inc     hl
        ld      a,(de)
        ld      b,a
        ld      a,(hl)
        cp      b
        ret     c
        jr      LB430

        ; Referenced from B418
LB42C:  inc     de
        inc     hl

        ; Referenced from B421
LB42E:  inc     de
        inc     hl

        ; Referenced from B42A
LB430:  ld      bc,0003h
        lddr
        ld      hl,0E08Eh
        ld      de,0E094h
        ld      b,03h
        jr      LB3FA

        ; Referenced from 8092, AF3A, 8313
        ; --- START PROC LB43F ---
LB43F:  xor     a
        ld      (0E011h),a

        ; Referenced from B448
LB443:  ld      a,(0E011h)
        cp      08h
        jr      c,LB443

        ; Referenced from B45F, B465
LB44A:  call    LB000_COPY_16ENTITIES_TO_SPRATR_BUFFER
        call    LB38A_LDIRVM_SPRATR
        ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        jr      nz,LB45B
        ld      a,(0E026h) ; read input (edge)
        and     a
        ret     nz

        ; Referenced from B454
LB45B:  ld      a,(0E2BDh)
        and     a
        jr      nz,LB44A
        ld      a,(0E2BEh)
        and     a
        jr      nz,LB44A
        ld      (0E011h),a
        call    LB379

        ; Referenced from B472
LB46D:  ld      a,(0E011h)
        cp      10h
        jr      c,LB46D
        ret

        ; Entry Point
        ; --- START PROC LB475_HTIMI_HOOK ---
LB475_HTIMI_HOOK:  ld      a,(0E097h)
        cp      0FFh
        jr      nz,LB483
        call    LBA84
        xor     a
        ld      (0E097h),a

        ; Referenced from B47A
LB483:  ld      a,(0E2BDh)
        ld      b,a
        ld      a,(0E2C1h)
        add     a,b
        and     a
        jr      nz,LB49C
        ld      e,00h
        ld      a,09h
        call    WRTPSG
        ld      e,00h
        ld      a,0Ah
        call    WRTPSG

        ; Referenced from B48C
LB49C:  call    LB77C
        ld      hl,0E010h       ; address or value?     ; delay? (incremented in H.TIMI ?)
        ld      b,10h

        ; Referenced from B4A6
LB4A4:  inc     (hl)
        inc     hl
        djnz    LB4A4
        ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        jr      z,LB51A

; F1 --------------------------------------------------------------------------

        ld      a,06h   ; a = $06 ; F3 F2 F1 CODE CAP GRAPH CTRL SHIFT
        call    SNSMAT
        bit     5,a     ; F1
        jr      z,LB4BD_ON_F1_KEY
; No F1 KEY
        xor     a
        ld      (0E1B4h),a      ; ~OLDKEYish for F1 key
        jr      LB4CA
LB4BD_ON_F1_KEY:
        ld      a,(0E1B4h)      ; ~OLDKEYish for F1 key
        and     a
        jr      nz,LB4CA
; On F1 key
        inc     a
        ld      (0E1B3h),a      ; F1 key pressed?
        ld      (0E1B4h),a      ; ~OLDKEYish for F1 key
; After F1 checks

; STOP ------------------------------------------------------------------------

LB4CA:  ld      a,07h   ; a = $07 ; CR SEL BS STOP TAB ESC F5 F4
        call    SNSMAT
        bit     4,a     ; STOP
        jr      z,LB4D9_ON_STOP_KEY
        xor     a
        ld      (0E1B6h),a      ; ~OLDKEYish for STOP key
        jr      LB4E6
LB4D9_ON_STOP_KEY:
        ld      a,(0E1B6h)      ; ~OLDKEYish for STOP key
        and     a
        jr      nz,LB4E6
        inc     a
        ld      (0E1B5h),a      ; When != 0, enters or exits pause
        ld      (0E1B6h),a      ; ~OLDKEYish for STOP key
; After STOP checks

        ; Referenced from B4D7, B4DD
LB4E6:  ld      de,0E020h       ; address or value?
        ld      hl,0E021h       ; address or value?
        ld      a,03h
        call    LB575_GET_TRIGGER_IN_HL_DE
        ld      de,0E022h       ; address or value?
        ld      hl,0E08Dh       ; address or value?
        ld      a,01h
        call    LB575_GET_TRIGGER_IN_HL_DE
        ld      de,0E020h       ; address or value?
        ld      hl,0E08Bh       ; address or value?
        call    LB58F_GET_GRAPH_AND_SPACE_KEYS

        ; Referenced from B556
LB505:  xor     a
        call    GTSTCK
        ld      (0E181h),a      ; Stick read (keyboard)
        ld      a,01h
        call    GTSTCK
        ld      c,a
        ld      a,(0E181h)      ; Stick read (keyboard)
        or      c
        ld      (0E180h),a      ; Stick read (keyboard OR joystick)
        ret

        ; Referenced from B4AC
LB51A:  ld      a,(0E028h)
        and     a
        jr      z,LB553
        ld      a,(0E016h)
        cp      10h
        jr      c,LB558_GET_ANY_TRIGGER
        xor     a
        ld      (0E016h),a
        ld      a,(0E027h)
        and     a
        jr      z,LB558_GET_ANY_TRIGGER
        ld      hl,(0E029h)
        ld      a,(hl)
        inc     hl
        ld      (0E029h),hl
        ld      b,a
        and     0Fh
        ld      (0E180h),a      ; Stick read (keyboard OR joystick)
        ld      a,b
        and     0F0h
        and     a
        jr      z,LB558_GET_ANY_TRIGGER
        cp      01h
        jr      nz,LB54E
        ld      (0E020h),a
        jr      LB558_GET_ANY_TRIGGER

        ; Referenced from B547
LB54E:  ld      (0E022h),a
        jr      LB558_GET_ANY_TRIGGER

        ; Referenced from B51E
LB553:  call    LB558_GET_ANY_TRIGGER
        jr      LB505

        ; Referenced from B525, B52F, B543, B54C, B553, B551
        ; --- START PROC LB558_GET_ANY_TRIGGER ---
LB558_GET_ANY_TRIGGER:
; SPACE key
        ld      de,0E026h       ; read input (edge)
        ld      hl,0E025h       ; ~OLDKEYish for trigger
        call    LB585_READ_SPACE_IN_HL_DE
        ld      a,(de)
        ld      (0E181h),a      ; Stick read (keyboard)
; Joystick trigger
        ld      hl,0E021h       ; address or value?
        ld      a,01h
        call    LB575_GET_TRIGGER_IN_HL_DE
; Combines
        ld      a,(de)
        ld      b,a
        ld      a,(0E181h)      ; Stick read (keyboard)
        or      b
        ld      (de),a
        ret

        ; Referenced from B56A, B4EE, B4F9
        ; --- START PROC LB575_GET_TRIGGER_IN_HL_DE ---
LB575_GET_TRIGGER_IN_HL_DE:
        call    GTTRIG
        and     a

        ; Referenced from B597, B5A5
        ; --- START PROC LB579 ---
LB579:  jr      nz,LB57E_SET_HL_AND_DE_IF_NOT_HL

        ; Referenced from B58D
        ; --- START PROC LB57B_RESET_HL ---
LB57B_RESET_HL:
        ld      (hl),00h
        ret

        ; Referenced from B58B, B579
        ; --- START PROC LB57E_SET_HL_AND_DE_IF_NOT_HL ---
LB57E_SET_HL_AND_DE_IF_NOT_HL:
        ld      a,(hl)
        and     a
        ret     nz
        inc     a
        ld      (hl),a
        ld      (de),a
        ret

        ; Referenced from B55E
        ; --- START PROC LB585_READ_SPACE_IN_HL_DE ---
LB585_READ_SPACE_IN_HL_DE:
        ld      a,08h   ; a = $08 ; RIGHT DOWN UP LEFT DEL INS HOME SPACE
        call    SNSMAT
        rrca            ; SPACE
        jr      nc,LB57E_SET_HL_AND_DE_IF_NOT_HL
        jr      LB57B_RESET_HL

        ; Referenced from B502
        ; --- START PROC LB58F_GET_GRAPH_AND_SPACE_KEYS ---
LB58F_GET_GRAPH_AND_SPACE_KEYS:
        ld      a,06h   ; a = $06 ; F3 F2 F1 CODE CAP GRAPH CTRL SHIFT
        call    SNSMAT
        cpl
        bit     2,a     ; GRAPH
        call    LB579
        inc     hl
        inc     de
        inc     de
        ld      a,08h  ; a = $08 ; RIGHT DOWN UP LEFT DEL INS HOME SPACE
        call    SNSMAT
        cpl
        bit     0,a     ; SPACE
        jr      LB579


        ; Referenced from 7EFE
        ; --- START PROC LB5A7_CASIO_LOGO_ROUTINE ---
LB5A7_CASIO_LOGO_ROUTINE:
        ld      a,01h
        ld      (0E187h),a
        ld      hl,180Ch
        ld      (0E189h),hl
        ld      hl,1AECh
        ld      (0E18Bh),hl
.LB5B8:  ld      a,(0E014h)
        cp      03h
        jr      c,.LB5B8
        xor     a
        ld      (0E014h),a
        call    LB601_CASIO_LOGO_SUBROUTINE_1
        call    LB65E_CASIO_LOGO_SUBROUTINE_2
        ld      hl,0E187h
        inc     (hl)
        ld      a,(hl)
        cp      15h
        jr      nc,.LB5EA
        cp      09h
        jr      c,.LB5E8
        ld      hl,(0E189h)
        ld      bc,0020h
        add     hl,bc
        ld      (0E189h),hl
        ld      hl,(0E18Bh)
        sbc     hl,bc
        ld      (0E18Bh),hl
.LB5E8:  jr      .LB5B8
.LB5EA:  ld      a,04h
        call    LB777_SET_E2BE_TO_A_IF_GT
.LB5EF:  ld      a,(0E014h)
        cp      80h
        jr      c,.LB5EF
        xor     a
        ld      (0E026h),a ; read input (edge)
        call    LB379
        call    LB2E4_CLS_WITH_10h
        ret

        ; Referenced from B5C3
        ; --- START PROC LB601_CASIO_LOGO_SUBROUTINE_1 ---
LB601_CASIO_LOGO_SUBROUTINE_1:
        ld      a,(0E187h)
        cp      09h
        ret     c
        ld      bc,0008h
        ld      hl,LB6D1
        ld      de,(0E189h)
        call    LDIRVM
        ld      de,0020h
        and     a
        sbc     hl,de
        ex      de,hl
        ld      hl,0B6C8h
        ld      bc,0008h
        call    LDIRVM
        ld      de,0020h
        and     a
        sbc     hl,de
        ex      de,hl
        ld      hl,LB6DA
        ld      bc,0008h
        call    LDIRVM
        ld      bc,0008h
        ld      hl,0B6C8h
        ld      de,(0E18Bh)
        call    LDIRVM
        ld      de,0020h
        add     hl,de
        ex      de,hl
        ld      hl,LB6D1
        ld      bc,0008h
        call    LDIRVM
        ld      de,0020h
        add     hl,de
        ex      de,hl
        ld      hl,LB6DA
        ld      bc,0008h
        call    LDIRVM
        ret

        ; Referenced from B5C6
        ; --- START PROC LB65E_CASIO_LOGO_SUBROUTINE_2 ---
LB65E_CASIO_LOGO_SUBROUTINE_2:
        ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,.LB668
        ld      c,09h
.LB668: ld      hl,1980h
        ld      b,a
        ld      a,l
        sub     b
        ld      l,a
        ex      de,hl
        ld      hl,0B6C8h
        ld      b,00h
        call    LDIRVM
        ld      de,0020h
        add     hl,de
        ex      de,hl
        ld      hl,LB6D1
        ld      a,(0E187h)
        cp      09h
        jr      c,.LB689
        ld      a,09h
.LB689: ld      c,a
        call    LDIRVM
        ld      hl,1960h
        ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,.LB69E
        sub     09h
        add     a,l
        ld      l,a
        ld      c,09h
.LB69E: ex      de,hl
        ld      hl,0B6D0h
        ld      a,l
        sub     c
        jr      nc,.LB6A7
        dec     h
.LB6A7: ld      l,a
        call    LDIRVM
        ld      de,0020h
        add     hl,de
        ex      de,hl
        ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,.LB6BA
        ld      c,09h
.LB6BA: ld      hl,LB6D9
        ld      a,l
        sub     c
        jr      nc,.LB6C2
        dec     h
.LB6C2: ld      l,a
        call    LDIRVM
        ret

LB6C7:                  ; "CASIO" logo NAMTBL
        DB      10h
        DB      80h
        DB      82h
        DB      84h
        DB      86h
        DB      88h
        DB      8Ah
        DB      8Ch
        DB      8Eh
LB6D0:                  ; "CASIO" logo NAMTBL
        DB      10h
LB6D1:
        DB      81h
        DB      83h
        DB      85h
        DB      87h
        DB      89h
        DB      8Bh
        DB      8Dh
        DB      8Fh
LB6D9:                  ; "CASIO" logo NAMTBL
        DB      10h
LB6DA:
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
LB6E1:
        DB      10h
LB6E2:
        DB      10h

        DB      10H
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      0FFh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h

; Read at LBA53, indexed by [$E2BE] *3
LB700:  dw      $BBAC, $BBAC, $BBAC ;  0
        dw      $BBB0, $BBC6, $BBDF ;  1
        dw      $BBF8, $BC1C, $BC3E ;  2
        dw      $BC5A, $BC9F, $BCBC ;  3
        dw      $BCD4, $BCD8, $BCDC ;  4
        dw      $BCE2, $BCE6, $BCEA ;  5
        dw      $BCF0, $BD18, $BD35 ;  6
        dw      $BD56, $BD53, $BD98 ;  7

; Read at LBA95, indexed by E2C0
LB730:  dw      $BB36 ; 0
        dw      $BB3A ; 1
        dw      $BB75 ; 2
        dw      $BB40 ; 3
        dw      $BB56 ; 4
        dw      $BB87 ; 5
        dw      $BB97 ; 6
        dw      $BBA5 ; 7

; Read at LBAD6, indexed by [$E2C2] *2
LB740:  dw      $BBAC, $BBAC ; 0
        dw      $BDE6, $BDF6 ; 1
        dw      $BE08, $BE14 ; 2
        dw      $BE48, $BE5B ; 3
        dw      $BE6E, $BEF4 ; 4
        dw      $BF18, $BFB3 ; 5

        ; Referenced from 871E, 8D3B, 85EE, B164, B142
        ; --- START PROC LB758 ---
LB758:  ld      b,a
        ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        ret     z
        ld      a,b
        ld      hl,0E2C0h
        jr      LB76E

; -----------------------------------------------------------------------------
        ; Referenced from 81C7, 82F4, 843C
        ; --- START PROC LB764_SET_E2C2_TO_A_IF_GT ---
LB764_SET_E2C2_TO_A_IF_GT:
        ld      b,a
        ld      a,(0E000h)      ; Playing (nz) / Attract mode (z) ?
        and     a
        ret     z
        ld      a,b
        ld      hl,0E2C2h

LB76E:  ld      b,a
        ld      a,(hl)
        and     a
        jr      z,.LB775
        cp      b
        ret     c
.LB775: ld      (hl),b
        ret

        ; Referenced from B5EC, 808F, AE2D, AEBB, AF37, 84DB, 8395
        ; --- START PROC LB777_SET_E2BE_TO_A_IF_GT ---
LB777_SET_E2BE_TO_A_IF_GT:
        ld      hl,0E2BEh
        jr      LB76E
; -----------------------------------------------------------------------------

        ; Referenced from B49C
        ; --- START PROC LB77C ---
LB77C:  ld      hl,0E2BDh       ; address or value?
        xor     a
        cp      (hl)
        jr      nz,LB79B
        inc     hl
        cp      (hl)
        jp      nz,LBA53
        inc     hl
        cp      (hl)
        jr      nz,LB7A3
        inc     hl
        cp      (hl)
        jp      nz,LBA95

        ; Referenced from B7A9, BAB7
        ; --- START PROC LB791 ---
LB791:  xor     a
        inc     hl
        cp      (hl)
        jr      nz,LB7AB
        inc     hl
        cp      (hl)
        jp      nz,LBAD6

        ; Referenced from B781
LB79B:  call    LB95E
        jp      c,LBA53
        jr      LB7B1

        ; Referenced from B78A
LB7A3:  call    LB95E
        jp      c,LBA95
        jr      LB791

        ; Referenced from B794
LB7AB:  call    LB95E
        jp      c,LBAD6

        ; Referenced from B7A1, BA77
        ; --- START PROC LB7B1 ---
LB7B1:  ld      a,(0E2BDh)
        and     a
        jr      nz,LB7BD
        ld      a,(0E2BFh)
        and     a
        jr      z,LB7DF

        ; Referenced from B7B5
LB7BD:  ld      hl,0E280h       ; address or value?
        call    LB84C
        ld      bc,0008h        ; address or value?
        xor     a
        call    LB957
        push    af
        ld      de,0E280h       ; address or value?
        call    LB855
        pop     af
        and     a
        jr      z,LB7DF
        cp      01h
        jp      z,LBA7A
        cp      02h
        jp      z,LBABA

        ; Referenced from B7BB, B7D3
LB7DF:  ld      a,(0E2BDh)
        and     a
        jr      nz,LB7EA
        ld      a,(0E2C1h)
        and     a
        ret     z

        ; Referenced from B7E3
LB7EA:  ld      hl,0E292h       ; address or value?
        call    LB84C
        ld      bc,0209h        ; address or value?
        ld      a,(0E088h)
        rrca
        ld      (0E088h),a
        ld      a,01h
        call    LB957
        push    af
        ld      de,0E292h       ; address or value?
        call    LB855
        pop     af
        cp      03h
        jr      z,LB818
        ld      b,a
        ld      a,(0E088h)
        rlca
        ld      (0E088h),a
        ld      a,b
        and     a
        jp      nz,LBAF1

        ; Referenced from B809
LB818:  ld      hl,0E2A4h       ; address or value?
        call    LB84C
        ld      bc,040Ah        ; address or value?
        ld      a,(0E088h)
        rrca
        rrca
        ld      (0E088h),a
        ld      a,02h
        call    LB957
        push    af
        ld      de,0E2A4h       ; address or value?
        call    LB855
        pop     af
        cp      03h
        jp      z,LB925
        ld      b,a
        ld      a,(0E088h)
        rlca
        rlca
        ld      (0E088h),a
        ld      a,b
        and     a
        jp      nz,LBAF1
        jp      LB925

        ; Referenced from B7C0, B7ED, B81B
        ; --- START PROC LB84C ---
LB84C:  ld      de,0E2C3h       ; address or value?

        ; Referenced from B858
        ; --- START PROC LB84F ---
LB84F:  ld      bc,0012h        ; address or value?
        ldir
        ret

        ; Referenced from B7CE, B803, B832
        ; --- START PROC LB855 ---
LB855:  ld      hl,0E2C3h       ; address or value?
        jr      LB84F

        ; Referenced from B95A
        ; --- START PROC LB85A ---
LB85A:  ld      hl,0E2CDh       ; address or value?
        ld      a,(hl)
        and     a
        jr      z,LB866
        call    LB965
        and     a
        ret     z

        ; Referenced from B85F, B8E1
LB866:  ld      iy,0E2CDh       ; address or value?
        ld      hl,(0E2C3h)
        ld      a,(hl)
        cp      0F0h
        jr      nc,LB897
        call    LB9DC
        call    LBA1D
        ld      (0E2C3h),hl
        ld      a,(0E088h)
        res     0,a
        set     3,a

        ; Referenced from B922
LB882:  ld      c,a
        ld      a,(0E2D5h)
        and     a
        ld      b,a
        ld      a,c
        jr      z,LB88E

        ; Referenced from B88C
LB88B:  rlca
        djnz    LB88B

        ; Referenced from B889
LB88E:  ld      (0E088h),a
        call    LBA49
        ld      a,03h
        ret

        ; Referenced from B870
LB897:  jp      z,LB910
        cp      0FFh
        jr      nz,LB8A1
        ld      a,01h
        ret

        ; Referenced from B89C
LB8A1:  cp      0F7h
        jr      nz,LB8A8
        ld      a,02h
        ret

        ; Referenced from B8A3
LB8A8:  cp      0FEh
        jr      nz,LB8B1
        ld      hl,(0E2C5h)
        jr      LB8DE

        ; Referenced from B8AA
LB8B1:  cp      0FDh
        jr      nz,LB8C0
        inc     hl
        ld      a,(hl)
        ld      (iy+05h),a
        inc     hl
        ld      (0E2C7h),hl
        jr      LB8DE

        ; Referenced from B8B3
LB8C0:  cp      0FCh
        jr      nz,LB8D1
        dec     (iy+05h)
        jr      nz,LB8CC
        inc     hl
        jr      LB8DE

        ; Referenced from B8C7
LB8CC:  ld      hl,(0E2C7h)
        jr      LB8DE

        ; Referenced from B8C2
LB8D1:  cp      0FBh
        jr      nz,LB8E3
        inc     hl
        ld      a,(hl)
        ld      (iy+06h),a
        inc     hl
        ld      (0E2C9h),hl

        ; Referenced from B8AF, B8BE, B8CA, B8CF, B8ED, B901, B8F2, B909, B90E
LB8DE:  ld      (0E2C3h),hl
        jr      LB866

        ; Referenced from B8D3
LB8E3:  cp      0FAh
        jr      nz,LB8F4
        dec     (iy+06h)
        jr      nz,LB8EF
        inc     hl
        jr      LB8DE

        ; Referenced from B8EA
LB8EF:  ld      hl,(0E2C9h)
        jr      LB8DE

        ; Referenced from B8E5
LB8F4:  cp      0F9h
        jr      nz,LB903
        inc     hl
        ld      a,(hl)
        ld      (iy+07h),a
        inc     hl
        ld      (0E2CBh),hl
        jr      LB8DE

        ; Referenced from B8F6
LB903:  dec     (iy+07h)
        jr      nz,LB90B
        inc     hl
        jr      LB8DE

        ; Referenced from B906
LB90B:  ld      hl,(0E2CBh)
        jr      LB8DE

        ; Referenced from B897
LB910:  call    LB99B
        inc     hl
        call    LB9DC
        inc     hl
        ld      (0E2C3h),hl
        ld      a,(0E088h)
        res     3,a
        set     0,a
        jp      LB882

        ; Referenced from B838, B849
        ; --- START PROC LB925 ---
LB925:  ld      a,(0E2B6h)
        and     a
        ret     z
        ld      a,(0E2B7h)
        and     a
        ret     z
        ld      a,(0E2B9h)
        and     a
        ret     z
        ld      a,(0E2BBh)
        dec     a
        ld      (0E2BBh),a
        ret     nz
        ld      a,(0E2B9h)
        dec     a
        ld      (0E2B9h),a
        ld      a,(0E2BAh)
        ld      (0E2BBh),a
        ld      a,(0E2B8h)
        ld      b,a
        ld      a,(0E2BCh)
        add     a,b
        ld      (0E2B8h),a
        jp      LBA4E

        ; Referenced from B7C7, B7FC, B82B
        ; --- START PROC LB957 ---
LB957:  ld      (0E2D5h),a
        call    LB85A
        ret

        ; Referenced from B79B, B7A3, B7AB
        ; --- START PROC LB95E ---
LB95E:  ld      b,(hl)
        inc     hl
        ld      a,(hl)
        and     a
        ret     z
        cp      b
        ret

        ; Referenced from B861
        ; --- START PROC LB965 ---
LB965:  inc     hl
        dec     (hl)
        jp      z,LB995
        inc     hl
        ld      a,(hl)
        and     a
        jp      z,LB988
        cp      0Fh
        jr      z,LB98A
        inc     hl
        dec     (hl)
        jr      nz,LB988
        dec     hl
        ld      a,(hl)
        inc     hl
        ld      (hl),a
        inc     hl
        dec     (hl)
        ld      a,(hl)
        call    LBA3B
        and     a
        jr      nz,LB988
        dec     hl
        dec     hl
        ld      (hl),a

        ; Referenced from B96D, B976, B983, B98C
LB988:  xor     a
        ret

        ; Referenced from B972
LB98A:  inc     hl
        dec     (hl)
        jr      nz,LB988
        xor     a
        dec     hl
        ld      (hl),a
        call    LBA3B
        ret

        ; Referenced from B967
LB995:  dec     hl
        xor     a
        ld      (hl),a
        ld      a,01h
        ret

        ; Referenced from B910
        ; --- START PROC LB99B ---
LB99B:  ld      (iy+00h),a
        inc     hl
        ld      a,(hl)
        ld      (0E2B7h),a
        and     a
        jr      nz,LB9C0
        inc     hl
        ld      a,(hl)
        ld      (0E2B8h),a
        call    LBA4E
        xor     a
        ld      (0E2B9h),a
        ld      (0E2BAh),a
        ld      (0E2BBh),a
        ld      (0E2BCh),a
        inc     a
        ld      (0E2B6h),a
        ret

        ; Referenced from B9A4
LB9C0:  ld      (0E2B6h),a
        ld      (0E2BCh),a
        inc     hl
        ld      a,(hl)
        ld      (0E2B8h),a
        call    LBA4E
        inc     hl
        ld      a,(hl)
        ld      (0E2B9h),a
        inc     hl
        ld      a,(hl)
        ld      (0E2BAh),a
        ld      (0E2BBh),a
        ret

        ; Referenced from B872, B914
        ; --- START PROC LB9DC ---
LB9DC:  ld      a,(hl)
        ld      (iy+00h),a
        and     0Fh
        ld      (iy+02h),a
        ld      a,(hl)
        and     0F0h
        rrca
        rrca
        rrca
        rrca
        cp      0Eh
        jr      z,LB9FB
        ld      de,0BA2Dh       ; address or value?
        add     a,e
        jr      nc,LB9F7
        inc     d

        ; Referenced from B9F4
LB9F7:  ld      e,a
        ld      a,(de)
        jr      LB9FD

        ; Referenced from B9EE
LB9FB:  inc     hl
        ld      a,(hl)

        ; Referenced from B9F9
LB9FD:  ld      (iy+01h),a
        ld      a,(iy+02h)
        cp      0Fh
        jr      nz,LBA12
        ld      a,(iy+01h)
        push    bc
        ld      c,a
        srl     a
        ld      b,a
        ld      a,c
        sub     b
        pop     bc

        ; Referenced from BA05
LBA12:  ld      (iy+03h),a
        ld      a,0Fh
        ld      (iy+04h),a      ; status/subroutine index (?)
        jp      LBA3B

        ; Referenced from B875
        ; --- START PROC LBA1D ---
LBA1D:  inc     hl
        ld      a,(hl)
        cp      10h
        jr      nc,LBA28
        call    LBA44
        inc     hl
        ld      a,(hl)

        ; Referenced from BA21
LBA28:  call    LBA40
        inc     hl
        ret

LBA2D:  DB      80h
        DB      60h             ; '`'
        DB      40h             ; '@'
        DB      30h             ; '0'
        DB      20h             ; ' '
        DB      18h
        DB      10h
        DB      0Ch
        DB      08h
        DB      06h
        DB      04h
        DB      03h
        DB      02h
        DB      01h


        ; Referenced from B97F, B991, BA1A
        ; --- START PROC LBA3B ---
LBA3B:  ld      e,a
        ld      a,c

        ; Referenced from BA4C, BA51, BA47, BA42
        ; --- START PROC LBA3D_WRTPSG ---
LBA3D_WRTPSG:
        jp      WRTPSG

        ; Referenced from BA28
        ; --- START PROC LBA40 ---
LBA40:  ld      e,a
        ld      a,b
        jr      LBA3D_WRTPSG

        ; Referenced from BA23
        ; --- START PROC LBA44 ---
LBA44:  ld      e,a
        ld      a,b
        inc     a
        jr      LBA3D_WRTPSG

        ; Referenced from BA87, BA74, BAB1, BAD3, B891
        ; --- START PROC LBA49 ---
LBA49:  ld      e,a
        ld      a,07h
        jr      LBA3D_WRTPSG

        ; Referenced from B954, B9AB, B9CB
        ; --- START PROC LBA4E ---
LBA4E:  ld      e,a
        ld      a,06h
        jr      LBA3D_WRTPSG

        ; Referenced from B785, B79E, BA7E
        ; --- START PROC LBA53 ---
LBA53:  ld      hl,LB700
        ld      a,(0E2BEh)
        ld      (0E2BDh),a
; a * 6
        ld      b,a
        add     a,b
        add     a,b
        add     a,b
        add     a,b
        add     a,b
        call    LBB28_READ_WORD_FROM_TABLE_E280_E282
        inc     hl
        call    LBB09_READ_WORDS_FOM_TABLE_TO_E292_4_E2A4_6_E29C_E2AE
; (a = 0 at this point)
        ld      (0E28Ah),a
        ld      (0E2BEh),a
        ld      a,0F8h

        ; Referenced from BAEE
        ; --- START PROC LBA71 ---
LBA71:  ld      (0E088h),a
        call    LBA49
        jp      LB7B1

        ; Referenced from B7D7
        ; --- START PROC LBA7A ---
LBA7A:  ld      a,(0E2BEh)
        and     a
        jr      nz,LBA53
        ld      (0E2BDh),a
        dec     a

        ; Referenced from B47C
        ; --- START PROC LBA84 ---
LBA84:  ld      (0E088h),a
        call    LBA49
        ld      hl,0E280h       ; address or value?
        ld      b,43h           ; 'C'

        ; Referenced from BA92, BAC8, BAFF
        ; --- START PROC LBA8F_ZEROES_AT_HL_B_BYTES ---
LBA8F_ZEROES_AT_HL_B_BYTES:
        ld      (hl),00h
        inc     hl
        djnz    LBA8F_ZEROES_AT_HL_B_BYTES
        ret

        ; Referenced from B78E, B7A6, BABE
        ; --- START PROC LBA95 ---
LBA95:  ld      hl,LB730
        ld      a,(0E2C0h)
        ld      (0E2BFh),a
        add     a,a
        call    LBB28_READ_WORD_FROM_TABLE_E280_E282
        xor     a
        ld      (0E28Ah),a
        ld      (0E2C0h),a
        ld      a,(0E088h)
        res     0,a
        ld      (0E088h),a
        call    LBA49
        ld      hl,0E2C0h       ; address or value?
        jp      LB791

        ; Referenced from B7DC
        ; --- START PROC LBABA ---
LBABA:  ld      a,(0E2C0h)
        and     a
        jr      nz,LBA95
        ld      (0E2BFh),a
        ld      hl,0E280h       ; address or value?
        ld      b,12h
        call    LBA8F_ZEROES_AT_HL_B_BYTES
        ld      a,(0E088h)
        or      09h

        ; Referenced from BB07
        ; --- START PROC LBAD0 ---
LBAD0:  ld      (0E088h),a
        jp      LBA49

        ; Referenced from B798, B7AE, BAF5
        ; --- START PROC LBAD6 ---
LBAD6:  ld      hl,LB740
        ld      a,(0E2C2h)
        ld      (0E2C1h),a
        add     a,a
        add     a,a
        add     a,l
        ld      l,a
        call    LBB09_READ_WORDS_FOM_TABLE_TO_E292_4_E2A4_6_E29C_E2AE
        ld      (0E2C2h),a
        ld      a,(0E088h)
        and     0F9h
        jp      LBA71

        ; Referenced from B815, B846
        ; --- START PROC LBAF1 ---
LBAF1:  ld      a,(0E2C2h)
        and     a
        jr      nz,LBAD6
        ld      (0E2C1h),a
        ld      hl,0E292h       ; address or value?
        ld      b,24h           ; '$'
        call    LBA8F_ZEROES_AT_HL_B_BYTES
        ld      a,(0E088h)
        or      36h             ; '6'
        jr      LBAD0

        ; Referenced from BA66, BAE3
        ; --- START PROC LBB09_READ_WORDS_FOM_TABLE_TO_E292_4_E2A4_6_E29C_E2AE ---
LBB09_READ_WORDS_FOM_TABLE_TO_E292_4_E2A4_6_E29C_E2AE:
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      (0E292h),de
        ld      (0E294h),de
        inc     hl
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      (0E2A4h),de
        ld      (0E2A6h),de
        xor     a
        ld      (0E29Ch),a
        ld      (0E2AEh),a
        ret

        ; Referenced from BA62, BA9F
        ; --- START PROC LBB28_READ_WORD_FROM_TABLE_E280_E282 ---
LBB28_READ_WORD_FROM_TABLE_E280_E282:
        add     a,l
        ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      (0E280h),de
        ld      (0E282h),de
        ret

; Referenced by table at LB730, read at LBA95, indexed by E2C0
LBB36:  DB      1Ch
        DB      00h
        DB      00h
        DB      0F7h

; Referenced by table at LB730, read at LBA95, indexed by E2C0
LBB3A:  DB      0A1h
        DB      00h
        DB      6Bh
        DB      63h
        DB      35h
        DB      0F7h

; Referenced by table at LB730, read at LBA95, indexed by E2C0
LBB40:  DB      0D1h
        DB      00h
        DB      10h
        DB      0D1h
        DB      80h
        DB      0D1h
        DB      20h
        DB      0D1h
        DB      90h
        DB      0D1h
        DB      30h
        DB      0D1h
        DB      0A0h
        DB      0D1h
        DB      40h
        DB      0D1h
        DB      0B0h
        DB      0D1h
        DB      50h
        DB      0D1h
        DB      0C0h
        DB      0F7h
        DB      0D1h
        DB      00h
        DB      80h
        DB      0D1h
        DB      02h
        DB      80h
        DB      0D1h
        DB      00h
        DB      70h
        DB      0D1h
        DB      02h
        DB      60h
        DB      0D1h
        DB      00h
        DB      60h
        DB      0D1h
        DB      02h
        DB      40h
        DB      0D1h
        DB      00h
        DB      40h
        DB      0D1h
        DB      02h
        DB      20h
        DB      0D1h
        DB      00h
        DB      20h
        DB      0D1h
        DB      02h
        DB      00h
        DB      0F7h
        DB      0C1h
        DB      00h
        DB      0C0h
        DB      0C1h
        DB      0B0h
        DB      0C1h
        DB      0A0h
        DB      0C1h
        DB      90h
        DB      0C1h
        DB      0B8h
        DB      0C1h
        DB      0A8h
        DB      0C1h
        DB      98h
        DB      0C1h
        DB      88h
        DB      0F7h
        DB      0D1h
        DB      03h
        DB      80h
        DB      0D1h
        DB      0A0h
        DB      0D1h
        DB      0C0h
        DB      0D1h
        DB      0E0h
        DB      0D1h
        DB      0D0h
        DB      0D1h
        DB      0B0h
        DB      0D1h
        DB      90h
        DB      0F7h
        DB      0D1h
        DB      00h
        DB      28h
        DB      0D1h
        DB      2Ah
        DB      0D1h
        DB      2Ch
        DB      0D1h
        DB      2Eh
        DB      0D1h
        DB      30h
        DB      0D1h
        DB      32h
        DB      0F7h
        DB      0F0h
        DB      02h
        DB      1Ch
        DB      08h
        DB      02h
        DB      5Ah
        DB      0F7h
        DB      1Ch
        DB      00h
        DB      00h
        DB      0FFh
        DB      63h
        DB      08h
        DB      0EBh
        DB      63h
        DB      07h
        DB      0F2h
        DB      62h
        DB      07h
        DB      80h
        DB      81h
        DB      80h
        DB      81h
        DB      0F2h
        DB      63h
        DB      80h
        DB      63h
        DB      05h
        DB      0F4h
        DB      2Eh
        DB      03h
        DB      57h
        DB      0FFh
        DB      63h
        DB      01h
        DB      0ACh
        DB      63h
        DB      01h
        DB      7Dh
        DB      62h
        DB      02h
        DB      0CFh
        DB      81h
        DB      0CFh
        DB      81h
        DB      7Dh
        DB      63h
        DB      0CFh
        DB      63h
        DB      01h
        DB      40h
        DB      2Eh
        DB      01h
        DB      1Dh
        DB      2Eh
        DB      01h
        DB      1Dh
        DB      0FFh
        DB      63h
        DB      01h
        DB      68h
        DB      63h
        DB      01h
        DB      40h
        DB      62h
        DB      01h
        DB      1Dh
        DB      81h
        DB      1Dh
        DB      81h
        DB      40h
        DB      63h
        DB      1Dh
        DB      63h
        DB      00h
        DB      0E2h
        DB      2Eh
        DB      00h
        DB      0D6h
        DB      2Eh
        DB      00h
        DB      0D6h
        DB      0FEh
        DB      66h
        DB      00h
        DB      0D6h
        DB      84h
        DB      00h
        DB      0E2h
        DB      66h
        DB      0D6h
        DB      83h
        DB      0B4h
        DB      3Eh
        DB      00h
        DB      8Fh
        DB      66h
        DB      97h
        DB      83h
        DB      0BEh
        DB      66h
        DB      8Fh
        DB      83h
        DB      0BEh
        DB      66h
        DB      0A0h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0BEh
        DB      3Eh
        DB      87h
        DB      64h
        DB      8Fh
        DB      0FFh
        DB      0FDh
        DB      06h
        DB      82h
        DB      03h
        DB      57h
        DB      0FCh
        DB      0FDh
        DB      06h
        DB      82h
        DB      03h
        DB      8Ah
        DB      0FCh
        DB      0FDh
        DB      06h
        DB      82h
        DB      03h
        DB      0F9h
        DB      0FCh
        DB      0FDh
        DB      06h
        DB      82h
        DB      04h
        DB      75h
        DB      0FCh
        DB      3Eh
        DB      04h
        DB      35h
        DB      64h
        DB      04h
        DB      75h
        DB      64h
        DB      04h
        DB      75h
        DB      0FFh
        DB      53h
        DB      02h
        DB      3Bh
        DB      53h
        DB      02h
        DB      81h
        DB      37h
        DB      02h
        DB      0CFh
        DB      53h
        DB      02h
        DB      0FAh
        DB      53h
        DB      3Bh
        DB      53h
        DB      81h
        DB      53h
        DB      0CFh
        DB      0FDh
        DB      06h
        DB      81h
        DB      02h
        DB      0CFh
        DB      0FCh
        DB      53h
        DB      02h
        DB      3Bh
        DB      0FEh
        DB      0FDh
        DB      02h
        DB      66h
        DB      06h
        DB      0AEh
        DB      66h
        DB      03h
        DB      57h
        DB      81h
        DB      06h
        DB      0AEh
        DB      81h
        DB      0AEh
        DB      66h
        DB      03h
        DB      57h
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h
        DB      07h
        DB      14h
        DB      66h
        DB      03h
        DB      8Ah
        DB      81h
        DB      07h
        DB      14h
        DB      81h
        DB      14h
        DB      66h
        DB      03h
        DB      8Ah
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h
        DB      07h
        DB      0F2h
        DB      66h
        DB      03h
        DB      0F9h
        DB      81h
        DB      07h
        DB      0F2h
        DB      81h
        DB      0F2h
        DB      66h
        DB      03h
        DB      0F9h
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h
        DB      03h
        DB      0EBh
        DB      66h
        DB      04h
        DB      75h
        DB      81h
        DB      08h
        DB      0EBh
        DB      81h
        DB      0EBh
        DB      66h
        DB      04h
        DB      75h
        DB      0FCh
        DB      0FFh
        DB      10h
        DB      01h
        DB      0ACh
        DB      66h
        DB      01h
        DB      0ACh
        DB      66h
        DB      01h
        DB      53h
        DB      10h
        DB      01h
        DB      1Dh
        DB      66h
        DB      01h
        DB      1Dh
        DB      66h
        DB      01h
        DB      1Dh
        DB      10h
        DB      00h
        DB      0D6h
        DB      66h
        DB      0D6h
        DB      66h
        DB      0E2h
        DB      0Eh
        DB      01h
        DB      1Dh
        DB      0FEh
        DB      0FDh
        DB      08h
        DB      82h
        DB      01h
        DB      0ACh
        DB      82h
        DB      01h
        DB      7Dh
        DB      82h
        DB      01h
        DB      53h
        DB      62h
        DB      01h
        DB      1Dh
        DB      82h
        DB      01h
        DB      7Dh
        DB      66h
        DB      01h
        DB      0ACh
        DB      82h
        DB      01h
        DB      53h
        DB      0FEh
        DB      26h
        DB      00h
        DB      50h
        DB      0FFh
        DB      26h
        DB      00h
        DB      40h
        DB      0FFh
        DB      81h
        DB      00h
        DB      00h
        DB      26h
        DB      20h
        DB      0FFh
        DB      3Ch
        DB      01h
        DB      0ACh
        DB      0FFh
        DB      3Ch
        DB      01h
        DB      1Dh
        DB      0FFh
        DB      0A2h
        DB      00h
        DB      0D6h
        DB      0A2h
        DB      0AAh
        DB      0FEh
        DB      64h
        DB      01h
        DB      0FCh
        DB      64h
        DB      0C5h
        DB      64h
        DB      0ACh
        DB      64h
        DB      02h
        DB      3Bh
        DB      64h
        DB      01h
        DB      40h
        DB      83h
        DB      53h
        DB      84h
        DB      7Dh
        DB      64h
        DB      53h
        DB      64h
        DB      0ACh
        DB      53h
        DB      00h
        DB      0FEh
        DB      82h
        DB      0FEh
        DB      38h
        DB      01h
        DB      1Dh
        DB      72h
        DB      01h
        DB      1Dh
        DB      72h
        DB      1Dh
        DB      72h
        DB      1Dh
        DB      2Eh
        DB      00h
        DB      0D6h
        DB      0FFh
        DB      48h
        DB      02h
        DB      81h
        DB      48h
        DB      0A7h
        DB      48h
        DB      0FAh
        DB      48h
        DB      03h
        DB      57h
        DB      53h
        DB      02h
        DB      81h
        DB      82h
        DB      81h
        DB      38h
        DB      02h
        DB      0A7h
        DB      72h
        DB      02h
        DB      0FAh
        DB      72h
        DB      0FAh
        DB      72h
        DB      0FAh
        DB      2Eh
        DB      03h
        DB      57h
        DB      0FFh
        DB      48h
        DB      01h
        DB      0ACh
        DB      48h
        DB      02h
        DB      3Bh
        DB      48h
        DB      02h
        DB      81h
        DB      48h
        DB      02h
        DB      0A7h
        DB      53h
        DB      01h
        DB      0ACh
        DB      82h
        DB      0ACh
        DB      38h
        DB      0ACh
        DB      72h
        DB      01h
        DB      "}r}r}."
        DB      02h
        DB      0A7h
        DB      0FFh
        DB      92h
        DB      00h
        DB      00h
        DB      0FDh
        DB      04h
        DB      82h
        DB      00h
        DB      0D6h
        DB      82h
        DB      0FEh
        DB      82h
        DB      01h
        DB      53h
        DB      82h
        DB      00h
        DB      0FEh
        DB      0FCh
        DB      0FDh
        DB      04h
        DB      82h
        DB      00h
        DB      0BEh
        DB      82h
        DB      0E2h
        DB      82h
        DB      01h
        DB      40h
        DB      82h
        DB      00h
        DB      0E2h
        DB      0FCh
        DB      0FDh
        DB      04h
        DB      82h
        DB      00h
        DB      0AAh
        DB      82h
        DB      0D6h
        DB      82h
        DB      01h
        DB      1Dh
        DB      82h
        DB      00h
        DB      0D6h
        DB      0FCh
        DB      0FDh
        DB      04h
        DB      82h
        DB      00h
        DB      0A0h
        DB      82h
        DB      0BEh
        DB      82h
        DB      0E2h
        DB      82h
        DB      0BEh
        DB      0FCh
        DB      66h
        DB      00h
        DB      0D6h
        DB      66h
        DB      0E2h
        DB      66h
        DB      0D6h
        DB      66h
        DB      0BEh
        DB      2Ch
        DB      0D6h
        DB      0FFh
        DB      2Eh
        DB      03h
        DB      0F9h
        DB      66h
        DB      0F9h
        DB      66h
        DB      8Ah
        DB      66h
        DB      8Ah
        DB      66h
        DB      02h
        DB      0A7h
        DB      2Eh
        DB      03h
        DB      8Ah
        DB      66h
        DB      8Ah
        DB      66h
        DB      57h
        DB      66h
        DB      02h
        DB      0FAh
        DB      66h
        DB      0A7h
        DB      2Eh
        DB      03h
        DB      57h
        DB      66h
        DB      57h
        DB      66h
        DB      02h
        DB      0FAh
        DB      66h
        DB      0A7h
        DB      66h
        DB      81h
        DB      66h
        DB      02h
        DB      0FAh
        DB      66h
        DB      81h
        DB      66h
        DB      02h
        DB      0FAh
        DB      66h
        DB      03h
        DB      8Ah
        DB      82h
        DB      03h
        DB      57h
        DB      82h
        DB      8Ah
        DB      82h
        DB      02h
        DB      0FAh
        DB      82h
        DB      03h
        DB      57h
        DB      82h
        DB      02h
        DB      0A7h
        DB      82h
        DB      0FAh
        DB      82h
        DB      81h
        DB      82h
        DB      0FAh
        DB      0Eh
        DB      03h
        DB      57h
        DB      0Eh
        DB      03h
        DB      57h
        DB      1Eh
        DB      57h
        DB      1Eh
        DB      57h
        DB      0FEh
        DB      0A1h
        DB      00h
        DB      10h
        DB      0A1h
        DB      20h
        DB      0A1h
        DB      30h
        DB      0A1h
        DB      40h
        DB      0A1h
        DB      50h
        DB      0A1h
        DB      60h
        DB      0A1h
        DB      70h
        DB      0FFh
        DB      0A1h
        DB      00h
        DB      80h
        DB      0A1h
        DB      90h
        DB      0A1h
        DB      0A0h
        DB      0A1h
        DB      0B0h
        DB      0A1h
        DB      0C0h
        DB      0A1h
        DB      0D0h
        DB      0A1h
        DB      0E0h
        DB      0A1h
        DB      0F0h
        DB      0FFh
        DB      10h
        DB      00h
        DB      0BEh
        DB      66h
        DB      0BEh
        DB      66h
        DB      00h
        DB      0CAh
        DB      0Eh
        DB      01h
        DB      1Dh
        DB      0FEh
        DB      0FDh
        DB      04h
        DB      63h
        DB      04h
        DB      75h
        DB      63h
        DB      02h
        DB      3Bh
        DB      81h
        DB      04h
        DB      75h
        DB      81h
        DB      75h
        DB      63h
        DB      02h
        DB      3Bh
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      63h
        DB      05h
        DB      9Eh
        DB      63h
        DB      02h
        DB      0CFh
        DB      81h
        DB      05h
        DB      9Eh
        DB      81h
        DB      9Eh
        DB      63h
        DB      02h
        DB      0CFh
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      63h
        DB      06h
        DB      4Eh
        DB      63h
        DB      03h
        DB      27h
        DB      81h
        DB      06h
        DB      4Eh
        DB      81h
        DB      4Eh
        DB      63h
        DB      03h
        DB      27h
        DB      0FCh
        DB      0FFh
        DB      83h
        DB      01h
        DB      0ACh
        DB      83h
        DB      7Dh
        DB      83h
        DB      53h
        DB      83h
        DB      40h
        DB      83h
        DB      1Dh
        DB      83h
        DB      00h
        DB      0FEh
        DB      83h
        DB      0E2h
        DB      2Eh
        DB      0D6h
        DB      0FFh
        DB      83h
        DB      01h
        DB      53h
        DB      83h
        DB      40h
        DB      83h
        DB      1Dh
        DB      83h
        DB      00h
        DB      0FEh
        DB      83h
        DB      0E2h
        DB      83h
        DB      0D6h
        DB      83h
        DB      0BEh
        DB      2Eh
        DB      0AAh
        DB      0FFh
        DB      82h
        DB      00h
        DB      0FEh
        DB      82h
        DB      0E2h
        DB      66h
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      82h
        DB      0D6h
        DB      82h
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      2Ch
        DB      7Fh
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h
        DB      6Bh
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h
        DB      6Bh
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h
        DB      6Bh
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h
        DB      6Bh
        DB      1Ch
        DB      55h
        DB      82h
        DB      55h
        DB      82h
        DB      5Fh
        DB      82h
        DB      6Bh
        DB      82h
        DB      7Fh
        DB      82h
        DB      5Fh
        DB      82h
        DB      6Bh
        DB      82h
        DB      7Fh
        DB      82h
        DB      8Fh
        DB      64h
        DB      6Bh
        DB      82h
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      64h
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      82h
        DB      0AAh
        DB      64h
        DB      8Fh
        DB      82h
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      64h
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      82h
        DB      0AAh
        DB      64h
        DB      7Fh
        DB      83h
        DB      8Fh
        DB      83h
        DB      7Fh
        DB      83h
        DB      0AAh
        DB      83h
        DB      0BEh
        DB      84h
        DB      0AAh
        DB      84h
        DB      7Fh
        DB      83h
        DB      71h
        DB      83h
        DB      6Bh
        DB      64h
        DB      5Fh
        DB      84h
        DB      71h
        DB      84h
        DB      7Fh
        DB      66h
        DB      5Fh
        DB      84h
        DB      6Bh
        DB      84h
        DB      71h
        DB      81h
        DB      55h
        DB      81h
        DB      5Fh
        DB      81h
        DB      50h
        DB      81h
        DB      55h
        DB      81h
        DB      47h
        DB      81h
        DB      "PL@,9,5"
        DB      0Ch
        DB      40h
        DB      0FFh
        DB      0FBh
        DB      02h
        DB      81h
        DB      05h
        DB      01h
        DB      81h
        DB      05h
        DB      01h
        DB      66h
        DB      02h
        DB      81h
        DB      0FAh
        DB      0FBh
        DB      02h
        DB      81h
        DB      04h
        DB      75h
        DB      82h
        DB      75h
        DB      66h
        DB      02h
        DB      3Bh
        DB      0FAh
        DB      0FBh
        DB      04h
        DB      81h
        DB      03h
        DB      0F9h
        DB      82h
        DB      03h
        DB      0F9h
        DB      63h
        DB      01h
        DB      0FCh
        DB      0FAh
        DB      0FEh
        DB      63h
        DB      01h
        DB      7Dh
        DB      63h
        DB      01h
        DB      0ACh
        DB      63h
        DB      01h
        DB      7Dh
        DB      63h
        DB      00h
        DB      0FEh
        DB      2Ch
        DB      01h
        DB      40h
        DB      82h
        DB      00h
        DB      0FEh
        DB      82h
        DB      01h
        DB      40h
        DB      63h
        DB      01h
        DB      1Dh
        DB      63h
        DB      00h
        DB      0D6h
        DB      63h
        DB      00h
        DB      0FEh
        DB      63h
        DB      01h
        DB      40h
        DB      63h
        DB      01h
        DB      1Dh
        DB      63h
        DB      00h
        DB      0D6h
        DB      63h
        DB      00h
        DB      0FEh
        DB      62h
        DB      01h
        DB      40h
        DB      64h
        DB      01h
        DB      40h
        DB      64h
        DB      01h
        DB      1Dh
        DB      64h
        DB      01h
        DB      40h
        DB      64h
        DB      01h
        DB      53h
        DB      3Ch
        DB      01h
        DB      7Dh
        DB      84h
        DB      02h
        DB      81h
        DB      84h
        DB      02h
        DB      3Bh
        DB      3Ch
        DB      01h
        DB      0FCh
        DB      84h
        DB      02h
        DB      81h
        DB      84h
        DB      02h
        DB      3Bh             ; ';'
        DB      3Ch             ; '<'
        DB      01h
        DB      0FCh
        DB      66h             ; 'f'
        DB      01h
        DB      0ACh
        DB      66h             ; 'f'
        DB      01h
        DB      7Dh             ; '}'
        DB      66h             ; 'f'
        DB      01h
        DB      40h             ; '@'
        DB      66h             ; 'f'
        DB      00h
        DB      0FEh
        DB      66h             ; 'f'
        DB      01h
        DB      7Dh             ; '}'
        DB      66h             ; 'f'
        DB      01h
        DB      40h             ; '@'
        DB      66h             ; 'f'
        DB      00h
        DB      0FEh
        DB      66h             ; 'f'
        DB      00h
        DB      0D6h
        DB      83h
        DB      01h
        DB      40h             ; '@'
        DB      83h
        DB      00h
        DB      0FEh
        DB      84h
        DB      0D6h
        DB      83h
        DB      0BEh
        DB      83h
        DB      00h
        DB      0FEh
        DB      83h
        DB      0D6h
        DB      83h
        DB      0BEh
        DB      83h
        DB      0A0h
        DB      83h
        DB      0D6h
        DB      83h
        DB      0BEh
        DB      83h
        DB      0A0h
        DB      83h
        DB      7Fh
        DB      83h
        DB      0BEh
        DB      83h
        DB      0A0h
        DB      83h
        DB      7Fh
        DB      83h
        DB      6Bh             ; 'k'
        DB      63h             ; 'c'
        DB      00h
        DB      0D6h
        DB      63h             ; 'c'
        DB      0BEh
        DB      63h             ; 'c'
        DB      0AAh
        DB      63h             ; 'c'
        DB      0D6h
        DB      63h             ; 'c'
        DB      0A0h
        DB      63h             ; 'c'
        DB      0D6h
        DB      63h             ; 'c'
        DB      8Fh
        DB      63h             ; 'c'
        DB      0D6h
        DB      0FFh
        DB      0FDh
        DB      08h
        DB      82h
        DB      05h
        DB      01h
        DB      82h
        DB      05h
        DB      01h
        DB      64h             ; 'd'
        DB      02h
        DB      81h
        DB      0FCh
        DB      0FDh
        DB      08h
        DB      82h
        DB      05h
        DB      0F4h
        DB      82h
        DB      0F4h
        DB      64h             ; 'd'
        DB      02h
        DB      0FAh
        DB      0FCh
        DB      0FDh
        DB      08h
        DB      83h
        DB      06h
        DB      0AEh
        DB      83h
        DB      0AEh
        DB      66h             ; 'f'
        DB      03h
        DB      57h             ; 'W'
        DB      0FCh
        DB      82h
        DB      03h
        DB      57h             ; 'W'
        DB      82h
        DB      57h             ; 'W'
        DB      63h             ; 'c'
        DB      03h
        DB      0C0h
        DB      63h             ; 'c'
        DB      03h
        DB      0F9h
        DB      63h             ; 'c'
        DB      04h
        DB      75h             ; 'u'
        DB      63h             ; 'c'
        DB      05h
        DB      01h
        DB      63h             ; 'c'
        DB      05h
        DB      4Dh             ; 'M'
        DB      63h             ; 'c'
        DB      05h
        DB      0F4h
        DB      66h             ; 'f'
        DB      06h
        DB      0AEh
        DB      0FEh
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FBh
        DB      00h
