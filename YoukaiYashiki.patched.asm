
        include "symbols.asm"

	PLAYER_SPRITE_COLOR_1:			equ $05
	PLAYER_SPRITE_COLOR_2:			equ $0b
	PLAYER_ENTERING_WELL_SPRITE_HEIGHT:	equ 12 ; (default value: 10)

	GIRL_SPRITE_COLOR_1:	equ $08
	GIRL_SPRITE_COLOR_2:	equ $0f

	DYING_SPRITE_COLOR_1:	equ $0d
	DYING_SPRITE_COLOR_2:	equ $07

	SCROLL_DELAY:		equ 2 ; 2..? (default value: 4)

	DEBUG_FORCE_CHEAT:	equ 0
	DEBUG_START_AT_AREA:	equ 0 ; 0..4 (default value: 0)

; $4000 -----------------------------------------------------------------------

BASE:   equ     $4000
        org     BASE
        incbin  "original/YoukaiYashiki.rom", 0, $4035 - BASE

; Patches the initialization routine
; - relocatable
; - BIOS charset no longer required
; - extra jumps removed
L4035:	jp	L7E80

; $4038 -----------------------------------------------------------------------

; Patches the map definition
; - multiplexed to save some bytes
; - rooms rearranged to unused slots
L4038:  dw      .MAP_0 -1 ; (adjustment for extra byte)
        dw      .MAP_0 -3 ; (adjustment for multiplexed position)
        dw      .MAP_2
        dw      .MAP_3
        dw      .MAP_4
        dw      .MAP_5 ; "CASIO" screens
.MAP_0: db             0,   0,   0,   0,   0, $07, $09,   0, $0A
        db        0, $01, $02, $03, $04, $06, $08,   0,   0, $0B
.MAP_2: db        0,   0,   0,   0, $05,   0,   0,   0,   0, $0C
	db        0,   0,   0, $19,   0,   0,   0,   0,   0, $0D
        db        0,   0,   0, $18,   0,   0,   0,   0,   0, $0E
        db        0, $20, $1F, $17, $1D, $1E,   0,   0,   0, $0F
        db        0,   0,   0, $1A,   0,   0,   0,   0,   0, $10
        db        0,   0,   0, $1B,   0,   0,   0,   0,   0, $11
.MAP_4: db        0,   0,   0, $1C,   0,   0,   0,   0,   0, $12
        db        0,   0,   0,   0, $34, $37, $38, $39, $3A,   0
        db        0, $30, $31, $32, $35,   0,   0,   0, $3B,   0
        db        0,   0,   0, $33, $36, $3D, $3E,   0, $3C,   0
.MAP_5: db        0,   0,   0,   0,   0,   0, $3F, $40,   0,   0
.MAP_3: db        0, $45, $13, $14, $15, $16,   0, $41, $42,   0
	db      $21, $22, $23,   0,   0,   0,   0,   0, $43, $44
        db        0,   0, $24,   0,   0,   0,   0,   0, $2E, $2F
        db        0,   0, $25,   0,   0,   0,   0,   0, $2D,   0
        db        0,   0, $26, $27, $28, $29, $2a, $2b, $2c,   0
	; db        0,   0,   0,   0,   0,   0,   0,   0,   0,   0 ; (unnecessary?)

; Patches the room definition table
; - relocatable
; - rooms rearranged to unused slots (saves 10b)
L41AC:	equ	$ - 2 ; (adjustment for discarded word)
	; dw	.ROOM_4240 ; $00 ; (unused)
; Rooms of MAP #1
	dw	.ROOM_4240 ; $01
	dw	.ROOM_42af ; $02
	dw	.ROOM_433a ; $03
	dw	.ROOM_436d ; $04
	dw	.ROOM_43a8 ; $05
	dw	.ROOM_43cf ; $06
	dw	.ROOM_4402 ; $07
	dw	.ROOM_4435 ; $08
	dw	.ROOM_4490 ; $09
; Rooms of MAP #2
	dw	.ROOM_449b ; $0A
	dw	.ROOM_44c2 ; $0B
	dw	.ROOM_44f5 ; $0C
	dw	.ROOM_4524 ; $0D
	dw	.ROOM_455b ; $0E
	dw	.ROOM_458a ; $0F
	dw	.ROOM_45bd ; $10
	dw	.ROOM_45f8 ; $11
	dw	.ROOM_4637 ; $12
	dw	.ROOM_4db6 ; $46 "A" ; was: .ROOM_4637 ; $13 (unused)
	dw	.ROOM_4df5 ; $47 "S" ; was: .ROOM_4637 ; $14 (unused)
	dw	.ROOM_4e34 ; $48 "I" ; was: .ROOM_4637 ; $15 (unused)
	dw	.ROOM_4e7f ; $49 "O" ; was: .ROOM_4637 ; $16 (unused)
; Rooms of MAP #3
	dw	.ROOM_4642 ; $17
	dw	.ROOM_46a1 ; $18
	dw	.ROOM_46c4 ; $19
	dw	.ROOM_46f7 ; $1A
	dw	.ROOM_4722 ; $1B
	dw	.ROOM_4759 ; $1C
	dw	.ROOM_4788 ; $1D
	dw	.ROOM_47c3 ; $1E
	dw	.ROOM_47d6 ; $1F
	dw	.ROOM_4819 ; $20
; Rooms of MAP #4
	dw	.ROOM_4854 ; $21
	dw	.ROOM_4870 ; $22
	dw	.ROOM_48a8 ; $23
	dw	.ROOM_48d8 ; $24
	dw	.ROOM_48f0 ; $25
	dw	.ROOM_4914 ; $26
	dw	.ROOM_4938 ; $27
	dw	.ROOM_4968 ; $28
	dw	.ROOM_4988 ; $29
	dw	.ROOM_49b0 ; $2A
	dw	.ROOM_49c8 ; $2B
	dw	.ROOM_49e4 ; $2C
	dw	.ROOM_4a18 ; $2D
	dw	.ROOM_4a40 ; $2E
	dw	.ROOM_4a60 ; $2F
; Rooms of MAP #5
	dw	.ROOM_4a6c ; $30
	dw	.ROOM_4aab ; $31
	dw	.ROOM_4ad3 ; $32
	dw	.ROOM_4aff ; $33
	dw	.ROOM_4b23 ; $34
	dw	.ROOM_4b4b ; $35
	dw	.ROOM_4b7b ; $36
	dw	.ROOM_4ba7 ; $37
	dw	.ROOM_4ba7 ; $38
	dw	.ROOM_4bbb ; $39
	dw	.ROOM_4bcf ; $3A
	dw	.ROOM_4bf7 ; $3B
	dw	.ROOM_4c13 ; $3C
	dw	.ROOM_4c27 ; $3D
	dw	.ROOM_4c66 ; $3E
	dw	.ROOM_4c91 ; $3F
	dw	.ROOM_4cc0 ; $40
	dw	.ROOM_4ce7 ; $41
	dw	.ROOM_4d0b ; $42
	dw	.ROOM_4d23 ; $43
	dw	.ROOM_4d43 ; $44
; Rooms of MAP #6
	dw	.ROOM_4d6f ; $45 "C"

; Patches the room definitions
; - relocatables
; - uses new decoding modes (sky, ground)
; - uses new ladders mode (allows no-top ladders)
; - changes decorations to use the newer graphics

; Rooms of MAP #1 =============================================================

.ROOM_4240:
        db      $fa, 13 ; mist line
        db      $fb ; sky mode ------------------------------------------------
        db      0, 32,8
        db      $fc ; ground mode ---------------------------------------------
	db	14,0, 32,6
	db	$fe ; block mode ----------------------------------------------
	db	8, 0
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	7, 6
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	7, 11
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	7, 15
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	6, 21
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	6, 27
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	 3, 6
	dw	L555A.L55d8_4x1_CLOUDS
	db	 3, 8
	dw	L555A.L55d8_4x1_CLOUDS
	db	 4,10
	dw	L555A.L55d8_4x1_CLOUDS
	db	 2,18
	dw	L555A.L55d8_4x1_CLOUDS
	db	 2,20
	dw	L555A.L55d8_4x1_CLOUDS
	db	 3,22
	dw	L555A.L55d8_4x1_CLOUDS
	db	10, 2 +1
	dw	L555A.L55ba_1x4_TOMB_MARKER
	db	11, 3 +1
	dw	L555A.L55c0_1x3_TOMB_MARKER
	db	10, 9 -1
	dw	L555A.L559a_4x4_TOMBSTONE_GROUP
	db	10,13
	dw	L555A.L559a_4x4_TOMBSTONE_GROUP
	db	12,18
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	12,20
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	10,22
	dw	L555A.L55b0_2x4_TOMB_MARKERS_GROUP
	db	10,24
	dw	L555A.L559a_4x4_TOMBSTONE_GROUP
	db	10,28
	dw	L555A.L55ba_1x4_TOMB_MARKER
	db	$ff

.ROOM_42af:
        db      $fa, 13 ; mist line
        db      $fb ; sky mode ------------------------------------------------
        db      0, 20,7
	db	20, 12,5
        db      $fc ; ground mode ---------------------------------------------
	db	14,0, 32,6
	db	$fe ; block mode ----------------------------------------------
	db	7, 0
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	6, 3
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	6, 8
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	6, 13
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	5, 19
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	4, 23
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	 1, 8
	dw	L555A.L55d2_2x2_MOON
	db	 1, 5
	dw	L555A.L55d8_4x1_CLOUDS
	db	 2, 1
	dw	L555A.L55d8_4x1_CLOUDS
	db	 2, 4
	dw	L555A.L55d8_4x1_CLOUDS
	db	 3, 6
	dw	L555A.L55d8_4x1_CLOUDS
	db	 3,10
	dw	L555A.L55d8_4x1_CLOUDS
	db	10, 2
	dw	L555A.L559a_4x4_TOMBSTONE_GROUP
	db	12, 7
	dw	L555A.EXTRA_4x1_TOMBSTONES_FAR
	db	12, 8
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	12,11
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	10,13
	dw	L555A.L55b0_2x4_TOMB_MARKERS_GROUP
	db	10,15
	dw	L555A.L55ba_1x4_TOMB_MARKER
	db	11,16
	dw	L555A.L55c0_1x3_TOMB_MARKER
	db	12,18
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	12,19
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	12,20
	dw	L555A.L55ac_1x2_SMALL_TOMBSTONE
	db	13,22
	dw	L555A.L55cd_3x1_TOMBSTONE_BASE
	db	 9,23
	dw	L555A.L55ba_1x4_TOMB_MARKER
	db	 9,24
	dw	L555A.L55ba_1x4_TOMB_MARKER
	db	12,26
	dw	L555A.EXTRA_4x1_TOMBSTONES_FAR
	db	 0,28
	dw	L555A.L5560_4x14_HOUSE_EXTERIOR
	db	$ff

.ROOM_433a:
	db	$00 +  0, 0, 32
	db	$00 +  5, 0, 15
	db	$00 +  7,15, 10
	db	$00 + 10, 6,  4
	db	$00 + 10,27,  5
	db	$00 + 14, 0, 11
	db	$00 + 14,13, 19
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 7,21,  7, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	 0, 0
	dw	L555A.L5682_1x11_HOUSE_INTERIOR
	db	14 +1, 0
	dw	L555A.L568E_1x4_STONE_WALL
	db	 2,17
	dw	L555A.L5640_5x3_WINDOW
	db	$ff

.ROOM_436d:
	db	$00 +  0, 0, 32
	db	$00 + 10, 0,  5
	db	$00 +  8, 6,  9
	db	$00 +  6,17,  6
	db	$00 +  4,24,  4
	db	$00 +  9,23,  9
	db	$00 + 14, 0, 32
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 6,19,  8, $30	;
	db	14,10,  5, $30	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,19, $30
	db	$fe ; block mode ----------------------------------------------
	db	 2, 3
	dw	L555A.L5640_5x3_WINDOW
	db	10, 6 +1
	dw	L555A.L561C_3x4_DOOR
	db	10,10
	dw	L555A.L562E_3x4_DOOR_CAT
	db	$ff

.ROOM_43a8:
	db	$00 +  7, 9, 15
	db	$00 + 13, 5, 11
	db	$00 + 15,20,  9
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,19,  7, $38	; (no top)
	db	 7,11,  6, $30	;
	db	 7,22,  8, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	 8,20
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	17,29
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_43cf:
	db	$00 +  0, 0, 32
	db	$00 +  9, 0, 10
	db	$00 +  6,13, 19
	db	$00 + 14, 0, 32
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 9, 7,  5, $30	;
	db	14,17,  5, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	 2, 9
	dw	L555A.L5640_5x3_WINDOW
	db	 2,22
	dw	L555A.L5640_5x3_WINDOW
	db	10,18
	dw	L555A.L5651_2x4_SHELVING
	db	10,22 +1
	dw	L555A.L561C_3x4_DOOR
	db	10,26
	dw	L555A.L561C_3x4_DOOR
	db	$ff

.ROOM_4402:
	db	$00 +  0, 0, 32
	db	$00 +  6, 0, 27
	db	$00 + 13,11,  4
	db	$00 + 11,17, 15
	db	$00 + 17, 0, 21
	db	$00 + 19,28,  4
	db	$fd ; ladder mode ---------------------------------------------
	db	 6, 2, 11, $30	;
	db	17, 7,  3, $30	;
	db	11,24,  9, $30	;
	db	$f9 ; single char mode ----------------------------------------
	db	19, 7, $38
	db	19,24, $38
	db	$fe ; block mode ----------------------------------------------
	db	 7,28
	dw	L555A.L562E_3x4_DOOR_CAT
	db	$ff

.ROOM_4435:
	db	$00 +  0, 0,  6
	db	$00 +  6, 0,  4
	db	$00 + 10, 4,  7
	db	$00 +  8,12,  4
	db	$00 +  6,17,  4
	db	$00 +  3,22,  5
	db	$00 +  8,23,  7
	db	$00 + 14, 0, 11
	db	$00 + 19, 0, 11
	db	$40 + 14,11, 21	; (rocky floor)
	db	$40 + 19,11, 21	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 0, 7, 10, $38	; (no top)
	db	 0,24,  3, $38	; (no top)
	db	 8,26,  6, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	10,13
	dw	L555A.EXTRA_8x4_DOOR_MOUNTAINS
	db	12,29
	dw	L555A.L55e8_3x2_WELL
	db	14 +1,11
	dw	L555A.L568E_1x4_STONE_WALL
	db	17, 8
	dw	L555A.L567e_1x2_STATUE
	db	$ff

.ROOM_4490:
	db	$00 + 11, 0,  4
	db	$00 + 19, 0, 32
	db	$ff

; Rooms of MAP #2 =============================================================

.ROOM_449b:
	db	$00 +  6,22,  5
	db	$00 +  8,16,  4
	db	$00 + 11, 5,  9
	db	$00 + 15,14, 10
	db	$00 + 19, 0, 18
	db	$00 + 19,23,  9
	db	$f9 ; single char mode ----------------------------------------
	db	19,14, $31
	db	19,27, $31
	db	$fe ; block mode ----------------------------------------------
	db	 4,24
	dw	L555A.L55e8_3x2_WELL
	db	 7,24
	dw	L555A.EXTRA_3x2_VINES
	db	12, 8
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_44c2:
	db	$00 +  4,12,  7
	db	$00 +  7, 7,  6
	db	$00 +  8,24,  5
	db	$00 + 11, 3,  6
	db	$00 + 13,26,  6
	db	$00 + 15, 9, 10
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,14,  4, $39	; (no top)
	db	 0,27,  8, $39	; (no top)
	db	15,10,  5, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,10, $39
	db	$fe ; block mode ----------------------------------------------
	db	 5,14
	dw	L555A.EXTRA_4x2_VINES
	db	14,27
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_44f5:
	db	$00 +  4, 9,  6
	db	$00 +  4,23,  4
	db	$00 +  8,26,  5
	db	$00 + 12, 6,  5
	db	$00 + 17,10,  6
	db	$00 + 14,23,  5
	db	$fd ; ladder mode ---------------------------------------------
	db	17,13,  3, $31	;
	db	 0,10,  4, $39	; (no top)
	db	 8,26,  6, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,13, $39
	db	$fe ; block mode ----------------------------------------------
	db	 9,29
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	 5,11
	dw	L555A.EXTRA_3x2_VINES
	db	$ff

.ROOM_4524:
	db	$00 +  4,11,  4
	db	$00 +  6, 7,  3
	db	$00 +  8, 4,  3
	db	$00 + 11, 0,  5
	db	$00 + 14, 5,  3
	db	$00 + 16, 9,  4
	db	$00 + 13,14,  4
	db	$00 + 13,24,  3
	db	$00 + 10,28,  4
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,13,  4, $39	; (no top)
	db	13,15,  7, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,15, $39
	db	$fe ; block mode ----------------------------------------------
	db	12, 1
	dw	L555A.EXTRA_3x2_VINES
	db	$ff

.ROOM_455b:
	db	$00 +  4,15,  2
	db	$00 +  3,23,  9
	db	$00 +  7, 0,  8
	db	$00 +  7,12,  3
	db	$00 + 10,15,  3
	db	$00 +  7,27,  3
	db	$00 +  8,23,  4
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,15,  4, $39	; (no top)
	db	 7, 5, 13, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19, 5, $39
	db	$fe ; block mode ----------------------------------------------
	db	 8, 3
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	 9,23
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_458a:
	db	$00 +  3, 3,  4
	db	$00 +  6, 1,  3
	db	$00 +  9, 6,  8
	db	$00 + 12, 1,  3
	db	$00 + 14, 6,  8
	db	$00 + 16, 1,  3
	db	$00 + 10,27,  5
	db	$fd ; ladder mode ---------------------------------------------
	db	 0, 5,  3, $39	; (no top)
	db	14,12,  6, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,12, $39
	db	$fe ; block mode ----------------------------------------------
	db	 8,29
	dw	L555A.L55e8_3x2_WELL
	db	11,28
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_45bd:
	db	$00 +  4, 9,  6
	db	$00 +  8, 6,  5
	db	$00 + 12, 3,  5
	db	$00 + 16, 0,  5
	db	$00 + 10,25,  7
	db	$00 + 10,18,  1
	db	$00 + 14,15,  1
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,12,  4, $39	; (no top)
	db	14,12,  6, $31	;
	db	11,15,  3, $31	;
	db	 7,18,  3, $31	;
	db	 7,25,  3, $31	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,12, $39
	db	$fe ; block mode ----------------------------------------------
	db	 9, 8
	dw	L555A.EXTRA_3x2_VINES
	db	$ff

.ROOM_45f8:
        db      $fa, 18 ; mist line
	db	$00 +  3, 5,  5
	db	$00 +  6,12,  1
	db	$00 + 11, 8,  1
	db	$00 + 15,11,  1
	db	$00 + 16,17,  1
	db	$00 + 12,16,  3
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,12,  6, $39	; (no top)
	db	 7, 8,  4, $31	;
	db	 9,11,  6, $31	;
	db	12,17,  4, $31	;
	db	16,14,  3, $31	;
	db	$fe ; block mode ----------------------------------------------
	db	17,25
	dw	L555A.L55e8_3x2_WELL
	db	17, 2
	dw	L555A.L567e_1x2_STATUE
	db	$ff

.ROOM_4637:
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	$ff

; Rooms of MAP #3 =============================================================

.ROOM_4642:
	db	$00 +  0, 0, 32
	db	$00 +  5, 0,  4
	db	$00 +  5, 7, 25
	db	$00 +  8,24,  8
	db	$00 + 10, 0, 11
	db	$00 + 10,14, 10
	db	$00 + 12,26,  6
	db	$00 + 15, 0,  4
	db	$00 + 15, 7,  4
	db	$00 + 15,14,  7
	db	$00 + 15,24,  8
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,15,  5, $38	; (no top)
	db	$f9 ; single char mode ----------------------------------------
	db	19, 8, $30
	db	19,24, $30
	db	$fe ; block mode ----------------------------------------------
	db	 6, 2
	dw	L555A.EXTRA_8x4_DOOR_MOUNTAINS
	db	 6,17
	dw	L555A.L562E_3x4_DOOR_CAT
	db	 2,24
	dw	L555A.L5640_5x3_WINDOW
	db	17, 4
	dw	L555A.L55e8_3x2_WELL
	db	17,21
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_46a1:
	db	$00 + 13, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 0, 9, 13, $38	; (no top)
	db	 0,24, 13, $38	; (no top)
	db	13,15,  7, $30	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,15, $38
	db	$fe ; block mode ----------------------------------------------
	db	11,18
	dw	L555A.L55e8_3x2_WELL
	db	14,19
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_46c4:
	db	$00 +  3, 9,  4
	db	$00 +  4,25,  7
	db	$00 +  5, 3,  4
	db	$00 +  7, 9,  4
	db	$00 +  8,16, 13
	db	$00 + 10, 3,  4
	db	$00 + 14, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 8,20,  6, $30	;
	db	14, 9,  6, $30	;
	db	14,24,  6, $30	;
	db	$f9 ; single char mode ----------------------------------------
	db	19, 9, $38
	db	19,24, $38
	db	$fe ; block mode ----------------------------------------------
	db	 0,30
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	15,22
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_46f7:
	db	$00 +  5, 6,  6
	db	$00 +  9,22,  5
	db	$00 + 11,13,  6
	db	$00 + 14, 9, 11
	db	$fd ; ladder mode ---------------------------------------------
	db	 0, 8,  5, $38	; (no top)
	db	 0,24,  9, $38	; (no top)
	db	17,16,  3, $30	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,16, $38
	db	$fe ; block mode ----------------------------------------------
	db	 6, 6
	dw	L555A.EXTRA_3x2_VINES
	db	$ff

.ROOM_4722:
	db	$00 +  4, 0, 13
	db	$00 +  4,20, 12
	db	$00 +  9,10,  6
	db	$00 + 13, 6,  6
	db	$00 + 16,13,  6
	db	$00 + 19, 0, 23
	db	$fd ; ladder mode ---------------------------------------------
	db	 4, 3, 15, $30	;
	db	 4,24, 16, $30	;
	db	 0,16, 16, $38	; (no top)
	db	$f9 ; single char mode ----------------------------------------
	db	19,24, $38
	db	19,16, $30
	db	$fe ; block mode ----------------------------------------------
	db	11, 6
	dw	L555A.L55e8_3x2_WELL
	db	10,14
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4759:
	db	$00 +  9, 0, 20
	db	$00 + 14, 3,  4
	db	$00 + 14,10,  5
	db	$00 + 14,18,  3
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,16,  9, $38	; (no top)
	db	 0,24, 19, $38	; (no top)
	db	14, 4,  5, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	 7, 7
	dw	L555A.L567e_1x2_STATUE
	db	10, 5
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_4788:
	db	$00 +  0, 0, 32
	db	$00 +  5, 0, 14
	db	$00 +  5,23,  9
	db	$00 +  8, 0, 20
	db	$00 +  8,21,  8
	db	$00 + 12, 0,  7
	db	$00 + 15, 0,  7
	db	$00 + 13,12,  7
	db	$00 + 13,22, 10
	db	$00 + 19, 0, 32
	db	$fe ; block mode ----------------------------------------------
	db	 1, 5 +1
	dw	L555A.L561C_3x4_DOOR
	db	 1,10
	dw	L555A.L561C_3x4_DOOR
	db	17,25
	dw	L555A.L55e8_3x2_WELL
	db	17,14
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_47c3:
	db	$00 +  5, 0,  3
	db	$00 + 13, 0,  5
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	14, 9,  5, $30	;
	db	$ff

.ROOM_47d6:
	db	$00 +  0, 0, 32
	db	$00 + 19, 0, 32
	db	$00 +  6, 0,  6
	db	$00 + 13, 0,  4
	db	$00 +  5,10,  6
	db	$00 +  5,21,  5
	db	$00 +  5,30,  2
	db	$00 + 10, 7, 11
	db	$00 + 10,19,  9
	db	$00 + 10,29,  3
	db	$00 + 15, 6, 12
	db	$00 + 15,19,  9
	db	$00 + 15,29,  3
	db	$fe ; block mode ----------------------------------------------
	db	 2, 2
	dw	L555A.L561C_3x4_DOOR
	db	11,11
	dw	L555A.L5651_2x4_SHELVING
	db	11,22
	dw	L555A.L5651_2x4_SHELVING
	db	$ff

.ROOM_4819:
	db	$00 +  0, 0, 32
	db	$00 + 19, 0, 32
	db	$00 + 13, 0, 32
	db	$00 +  6, 0, 15
	db	$00 +  6,18,  7
	db	$00 +  6,27,  5
	db	$fd ; ladder mode ---------------------------------------------
	db	13,10,  6, $30	;
	db	 6,21,  7, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	 9,24
	dw	L555A.L561C_3x4_DOOR
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	17,24
	dw	L555A.L567e_1x2_STATUE
	db	 9, 3
	dw	L555A.EXTRA_8x4_DOOR_MOUNTAINS
	db	14,18
	dw	L555A.L568e_1x5_STONE_WALL
	db	$ff

; Rooms of MAP #4 =============================================================

.ROOM_4854:
	db	$00 + 11,12,  4
	db	$00 + 10,16,  5
	db	$00 +  9,21,  3
	db	$00 +  8,24,  3
	db	$00 +  7,27,  5
        db      $fa, 13 ; mist line
        db      $fb ; sky mode ------------------------------------------------
        db      0, 27,4
        db      27, 5,3
        db      $fc ; ground mode ---------------------------------------------
	db	14, 0, 32, 6
	db	$fe ; block mode ----------------------------------------------
	db	4, 0
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	3, 5
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	3, 11
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	3, 16
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	2, 22
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	1, 27
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	 1, 10
	dw	L555A.L55d2_2x2_MOON
	db	 1, 7
	dw	L555A.L55d8_4x1_CLOUDS
	db	 2, 13
	dw	L555A.L55d8_4x1_CLOUDS
	db	10, 1
	dw	L555A.L559a_4x4_TOMBSTONE_GROUP
	db	12, 5
	dw	L555A.EXTRA_4x1_TOMBSTONES_FAR
	db	$ff

.ROOM_4870:
	db	$00 +  7, 0,  5
	db	$00 +  6, 5,  3
	db	$00 +  5, 8,  3
	db	$00 +  4,11,  3
	db	$00 +  7,14,  3
	db	$00 +  8,17,  3
	db	$00 +  9,20,  3
	db	$00 +  6,24,  8
	db	$00 + 11,23,  9
	db	$00 + 16, 6, 26
        db      $fc ; ground mode ---------------------------------------------
	db	14, 0,  6, 6
	db	17, 6, 26, 3
	db	$fd ; ladder mode ---------------------------------------------
	db	 4,12, 12, $33	;
	db	$fe ; block mode ----------------------------------------------
	db	0, 0
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	10,21
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_48a8:
	db	$00 +  6, 0,  8
	db	$00 + 11, 0, 11
	db	$00 + 11,14,  4
	db	$00 + 10,18,  3
	db	$00 +  9,21,  3
	db	$00 + 16, 0, 23
        db      $fc ; ground mode ---------------------------------------------
	db	17, 0, 23, 3
	db	 7,25,  7,13
	db	$fd ; ladder mode ---------------------------------------------
	db	16,20,  4, $33	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,20, $3b
	db	$fe ; block mode ----------------------------------------------
	db	 5,28
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_48d8:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0, 23,20
	db	 0,25,  7,20
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,20, 20, $3b	; (no top)
	db	$f9 ; single char mode ----------------------------------------
	db	19,20, $3b
	db	$ff

.ROOM_48f0:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  7,20
	db	 0, 7, 16,11
	db	14,10, 13, 6
	db	 0,25,  7,20
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,20, 14, $3b	; (no top)
	db	14, 9,  6, $33	;
	db	$f9 ; single char mode ----------------------------------------
	db	19, 9, $3b
	db	$fe ; block mode ----------------------------------------------
	db	11,14
	dw	L555A.EXTRA_5x2_STALACTITE
	db	$ff

.ROOM_4914:
	db	$40 + 19, 0, 32	; (rocky floor)
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  7, 3
	db	 0,10, 13, 3
	db	 7,12, 20,10
	db	$fd ; ladder mode ---------------------------------------------
	db	 0, 9, 19, $3b	; (no top)
	db	$fe ; block mode ----------------------------------------------
	db	 3, 1
	dw	L555A.EXTRA_5x2_STALACTITE
	db	 3,18
	dw	L555A.EXTRA_4x2_STALACTITE
	db	17, 3
	dw	L555A.L55e8_3x2_WELL
	db	17, 1
	dw	L555A.L567e_1x2_STATUE
	db	$ff

.ROOM_4938:
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$00 +  7,16, 16
	db	$00 + 14,20,  3
	db	$00 + 13,23,  3
	db	$00 + 12,26,  6
        db      $fc ; ground mode ---------------------------------------------
	db	 7, 0,  8,10
	db	10, 8,  2, 7
	db	13,10,  2, 4
	db	15,12,  8, 2
	db	$fd ; ladder mode ---------------------------------------------
	db	 7,21,  7, $33	;
	db	$fe ; block mode ----------------------------------------------
	db	13,15
	dw	L555A.L55e8_3x2_WELL
	db	17,15
	dw	L555A.EXTRA_3x2_VINES
	db	$ff

.ROOM_4968:
	db	$00 +  7, 0, 32
	db	$00 + 12, 0, 26
	db	$40 + 19, 0,  5	; (rocky floor)
        db      $fc ; ground mode ---------------------------------------------
	db	18, 5,  4, 2
	db	17, 9,  5, 3
	db	16,14, 18, 4
	db	$fd ; ladder mode ---------------------------------------------
	db	 7,28,  9, $33	;
	db	$ff

.ROOM_4988:
	db	$00 +  7, 0, 13
	db	$00 +  4,18, 14
        db      $fc ; ground mode ---------------------------------------------
	db	16, 0,  8, 4
	db	15, 8,  5, 5
	db	14,13,  5, 6
	db	13,18,  8, 7
	db	10,26,  6,10
	db	$fd ; ladder mode ---------------------------------------------
	db	 4,20,  9, $33	;
	db	$fe ; block mode ----------------------------------------------
	db	12,15
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_49b0:
	db	$00 +  4, 0,  8
        db      $fc ; ground mode ---------------------------------------------
	db	10, 0,  8,10
	db	13, 8, 24, 7
	db	 4, 8, 24, 4
	db	 0, 8, 24, 2
	db	$fe ; block mode ----------------------------------------------
	db	 2,24
	dw	L555A.EXTRA_5x2_STALACTITE
	db	 5, 2
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_49c8:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0, 22, 2
	db	 4, 0, 22, 4
	db	 0,22, 10, 8
	db	13, 0, 32, 7
	db	$fe ; block mode ----------------------------------------------
	db	 8,19
	dw	L555A.EXTRA_5x2_STALACTITE
	db	11,14
	dw	L555A.L55e8_3x2_WELL
	db	 2,20
	dw	L555A.L567e_1x2_STATUE
	db	$ff

.ROOM_49e4:
	db	$00 +  5, 8,  9
	db	$00 + 10,20,  2
	db	$00 +  9,23,  2
	db	$00 +  8,26,  3
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  5, 8
	db	13, 0, 32, 7
	db	$fd ; ladder mode ---------------------------------------------
	db	 5, 9,  8, $33	;
	db	 0,15,  5, $3b	; (no top)
	db	 0,27,  8, $3b	; (no top)
	db	$fe ; block mode ----------------------------------------------
	db	 3,10
	dw	L555A.L55e8_3x2_WELL
	db	 6,12
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_4a18:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  5,20
	db	 0, 5,  6,18
	db	 0,11, 12, 7
	db	10,11, 12, 7
	db	$fd ; ladder mode ---------------------------------------------
	db	10,15, 10, $33	;
	db	 0,27, 20, $3b	; (no top)
	db	$f9 ; single char mode ----------------------------------------
	db	19,15, $3b
	db	19,27, $3b
	db	$ff

.ROOM_4a40:
	db	$00 + 15,20, 12
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  9,20
	db	 0, 9, 21, 7
	db	18, 9, 14, 2
	db	$fd ; ladder mode ---------------------------------------------
	db	15,27,  5, $33	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,27, $3b
	db	$fe ; block mode ----------------------------------------------
	db	16,12
	dw	L555A.L55e8_3x2_WELL
	db	16,25
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4a60:
        db      $fc ; ground mode ---------------------------------------------
	db	15, 0,  5, 5
	db	18, 5, 27, 2
	db	$ff

; Rooms of MAP #5 =============================================================

.ROOM_4a6c:
        db      $fa, 18 ; mist line
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$00 +  9, 0,  5
	db	$00 + 14,10,  1
	db	$00 + 15,14,  1
	db	$00 + 16,18,  1
	db	$00 + 15,22,  1
	db	$00 + 14,27,  1
	db	$00 +  9,27,  5
	db	$00 +  4, 7,  4
	db	$fd ; ladder mode ---------------------------------------------
	db	 9, 4, 10, $32	;
	db	 9,10,  5, $32	;
	db	 7,14,  8, $32	;
	db	 4,18, 12, $32	;
	db	 7,22,  8, $32	;
	db	 9,27,  5, $32	;
	db	$ff

.ROOM_4aab:
        db      $fa, 18 ; mist line
	db	$00 +  4, 2,  4
	db	$00 +  6,11,  4
	db	$00 +  4,18,  4
	db	$00 +  3,25,  7
	db	$00 +  9, 0,  8
	db	$00 + 14, 2,  8
	db	$40 + 19, 0, 10	; (rocky floor)
        db      $fc ; ground mode ---------------------------------------------
	db	10,10, 22,10
	db	$fe ; block mode ----------------------------------------------
	db	15, 8
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	 8,20
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_4ad3:
	db	$00 +  3, 0,  5
	db	$00 +  5, 6,  3
	db	$00 +  6,10,  3
	db	$00 +  4,14,  4
	db	$00 +  7,18,  3
	db	$00 +  7,24,  8
        db      $fc ; ground mode ---------------------------------------------
	db	10, 0, 15,10
	db	 8,24,  8,12
	db	$fd ; ladder mode ---------------------------------------------
	db	 7,19, 13, $32	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,19, $3a
	db	$ff

.ROOM_4aff:
        db      $fa, 14 ; mist line
	db	$00 +  7,18, 14
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0, 15,20
	db	 0,24,  8, 4
	db	 8,24,  8,12
	db	15,15,  9, 5
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,19,  7, $3a	; (no top)
	db	$fe ; block mode ----------------------------------------------
	db	13,18
	dw	L555A.L55e8_3x2_WELL
	db	 8,22
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4b23:
	db	$00 +  7, 9,  6
        db      $fb ; sky mode ------------------------------------------------
        db      9, 21,3
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  2,17
	db	 0, 2,  7, 5
	db	 0,30,  2,11
	db	 7, 2,  7,10
	db	14,16, 16, 6
	db	$fd ; ladder mode ---------------------------------------------
	db	 7,11, 13, $32	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,11, $3a
	db	$fe ; block mode ----------------------------------------------
	db	 1,9
	dw	L555A.EXTRA_5x2_MOUNTAINS_LEFT
	db	 2,14
	dw	L555A.EXTRA_5x2_MOUNTAINS_LEFT
	db	 2,19
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	 1,25
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	 0,15
	dw	L555A.L55D8_4x1_CLOUDS
	db	 1,18
	dw	L555A.L55D8_4x1_CLOUDS
	db	12,22
	dw	L555A.L55e8_3x2_WELL
	db	 5, 3
	dw	L555A.L567e_1x2_STATUE
	db	 5, 5
	dw	L555A.EXTRA_4x2_STALACTITE
	db	$ff

.ROOM_4b4b:
        db      $fa, 16 ; mist line
	db	$00 + 10,10,  3
	db	$00 + 12,15,  3
	db	$00 + 14,20,  3
	db	$00 + 11,24,  3
	db	$00 +  7, 0,  6
        db      $fc ; ground mode ---------------------------------------------
	db	 8, 0,  6,12
	db	17, 6, 23, 3
	db	 0,16, 13, 8
	db	 0,29,  3,20
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,11, 10, $3a	; (no top)
	db	$fe ; block mode ----------------------------------------------
	db	 8,17
	dw	L555A.EXTRA_5x2_STALACTITE
	db	 8,27
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4b7b:
	db	$00 +  5, 7, 25
	db	$00 + 10,11, 21
	db	$00 + 14, 9, 23
	db	$00 +  7, 0,  4
	db	$40 + 19, 0, 32	; (rocky floor)
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  2, 4
	db	 8, 0,  4,12
	db	$fd ; ladder mode ---------------------------------------------
	db	 5,14,  5, $32	;
	db	10,22,  4, $32	;
	db	14,17,  5, $32	;
	db	$fe ; block mode ----------------------------------------------
	db	 6,12
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	17, 4
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_4ba7:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  7,11
	db	 0,11, 10,11
	db	 0,25,  7,11
	db	14, 0, 32, 6
	db	$ff

.ROOM_4bbb:
	db	$00 +  6, 9, 23
        db      $fb ; sky mode ------------------------------------------------
        db      2, 11,2
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  2,11
	db	14, 0, 32, 6
	db	$fd ; ladder mode ---------------------------------------------
	db	 6,11,  8, $32	;
	db	$fe ; block mode ----------------------------------------------
	db	 2, 2
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	 1, 8
	dw	L555A.EXTRA_5x2_MOUNTAINS
	db	 0,13
	dw	L555A.EXTRA_6x2_MOUNTAINS
	db	 0, 6
	dw	L555A.L55D2_2x2_MOON
	db	 0, 3
	dw	L555A.L55D8_4x1_CLOUDS
	db	$ff

.ROOM_4bcf:
	db	$00 +  6, 0,  7
	db	$00 +  8, 8,  5
	db	$00 +  4,15, 11
	db	$00 +  7,24,  8
        db      $fc ; ground mode ---------------------------------------------
	db	14, 0,  9, 6
	db	14,11,  7, 6
	db	14,20, 12, 6
	db	$fd ; ladder mode ---------------------------------------------
	db	 4,16, 10, $32	;
	db	$fe ; block mode ----------------------------------------------
	db	12,26
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_4bf7:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0,  3,20
	db	 0, 3,  6, 3
	db	12, 3, 15, 8
	db	 7, 5,  6, 3
	db	 0,11,  7,10
	db	 0,20, 12,20
	db	$fe ; block mode ----------------------------------------------
	db	 3, 5
	dw	L555A.EXTRA_4x2_STALACTITE
	db	10,10
	dw	L555A.EXTRA_5x2_STALACTITE
	db	$ff

.ROOM_4c13:
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0, 18, 2
	db	 0,20, 12, 2
	db	16, 0, 32, 4
	db	$fe ; block mode ----------------------------------------------
	db	14,25
	dw	L555A.L55e8_3x2_WELL
	db	$ff

.ROOM_4c27:
	db	$00 +  5, 0,  4
	db	$00 +  5, 6,  4
	db	$00 +  5,13,  4
	db	$00 +  5,20,  4
	db	$00 +  5,27,  5
	db	$00 + 10, 0,  4
	db	$00 +  8, 6,  3
	db	$00 + 11,11, 10
	db	$00 + 10,25,  7
	db	$00 + 14, 0,  8
	db	$00 + 14,11,  4
	db	$00 + 14,17,  3
	db	$00 + 14,23,  4
	db	$00 + 14,29,  3
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$ff

.ROOM_4c66:
	db	$00 +  5, 0, 13
	db	$00 + 10, 0, 18
	db	$00 + 14, 0,  6
	db	$00 + 14, 8, 13
	db	$00 + 10,23,  3
	db	$00 +  9,26,  3
	db	$00 +  8,29,  3
	db	$40 + 19, 0, 32	; (rocky floor)
	db	$fd ; ladder mode ---------------------------------------------
	db	 5,11,  5, $32	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,22, $32
	db	$fe ; block mode ----------------------------------------------
	db	 9,30
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4c91:
	db	$00 +  4,11, 14
	db	$00 + 11, 8,  8
	db	$00 + 15, 4,  6
	db	$00 + 16,17, 12
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,22,  4, $3a	; (no top)
	db	 4,12,  7, $32	;
	db	 4,20, 12, $32	;
	db	15, 7,  4, $32	;
	db	16,26,  3, $32	;
	db	$fe ; block mode ----------------------------------------------
	db	 5,18
	dw	L555A.EXTRA_2x2_SPIDERWEB
	db	$ff

.ROOM_4cc0:
	db	$00 +  6, 8,  5
	db	$00 +  4,21,  4
	db	$00 + 11, 9, 15
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 6,10,  5, $32	;
	db	 4,22,  7, $32	;
	db	11,15,  8, $32	;
	db	$f9 ; single char mode ----------------------------------------
	db	19,10, $32
	db	19,22, $32
	db	$fe ; block mode ----------------------------------------------
	db	15,2
	dw	L555A.EXTRA_8x4_DOOR_MOUNTAINS
	db	15,23
	dw	L555A.L562E_3x4_DOOR_CAT
	db	15,26
	dw	L555A.L561C_3x4_DOOR
	db	$ff

.ROOM_4ce7:
	db	$00 +  7,21, 11
        db      $fc ; ground mode ---------------------------------------------
	db	10, 7, 25, 4
	db	10, 0,  7,10
	db	16, 7, 25, 4
	db	$fd ; ladder mode ---------------------------------------------
	db	 0,10, 16, $3a	; (no top)
	db	 0,22,  7, $3a	; (no top)
	db	$fe ; block mode ----------------------------------------------
	db	14,22
	dw	L555A.EXTRA_4x2_STALACTITE
	db	$ff

.ROOM_4d0b:
	db	$00 +  7, 0, 21
	db	$00 +  7,25,  7
        db      $fc ; ground mode ---------------------------------------------
	db	10, 0, 14, 4
	db	16, 0, 32, 4
	db	$fe ; block mode ----------------------------------------------
	db	 8,17
	dw	L555A.EXTRA_3x2_VINES
	db	 8,25
	dw	L555A.EXTRA_4x2_VINES
	db	14,8
	dw	L555A.EXTRA_5x2_STALACTITE
	db	14,30
	dw	L555A.L567e_1x2_STATUE
	db	$ff

.ROOM_4d23:
	db	$00 + 10,15, 12
        db      $fc ; ground mode ---------------------------------------------
	db	 0, 0, 15,20
	db	 0,15, 12, 5
	db	 0,29,  3, 5
	db	18,15, 17, 2
	db	$fd ; ladder mode ---------------------------------------------
	db	10,21,  8, $32	;
	db	$fe ; block mode ----------------------------------------------
	db	 8,18
	dw	L555A.L55e8_3x2_WELL
	db	11,17
	dw	L555A.EXTRA_4x2_VINES
	db	$ff

.ROOM_4d43:
	db	$00 +  9, 7,  5
	db	$00 + 15,10, 12
	db	$00 +  9,20,  5
        db      $fc ; ground mode ---------------------------------------------
	db	18, 0, 32, 2
	db	$fd ; ladder mode ---------------------------------------------
	db	 5,11,  4, $32	;
	db	 9,10,  6, $32	;
	db	 5,20,  4, $32	;
	db	 9,21,  6, $32	;
	db	15,13,  3, $32	;
	db	15,18,  3, $32	;
	db	$ff

; Rooms of MAP #6 =============================================================

.ROOM_4d6f:
	db	$00 +  4, 4,  5
	db	$00 +  4,11, 12
	db	$00 +  4,25,  5
	db	$00 +  7, 1,  3
	db	$00 +  7,28,  3
	db	$00 +  8,15,  6
	db	$00 + 10, 4,  5
	db	$00 + 10,25,  5
	db	$00 + 15,11, 12
	db	$00 +  0, 0, 32
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 4,11, 11, $30	;
	db	10, 6,  9, $30	;
	db	10,27,  9, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	 1, 0
	dw	L555A.L565b_1x18_STONE_WALL
	db	 1,31
	dw	L555A.L565b_1x18_STONE_WALL
	db	$ff

.ROOM_4db6:
	db	$00 +  0, 0, 32
	db	$00 +  4,11, 12
	db	$00 +  8, 4,  5
	db	$00 +  8,25,  5
	db	$00 +  9,12, 10
	db	$00 + 15,10,  3
	db	$00 + 15,21,  3
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 8, 6, 11, $30	;
	db	 4,11, 11, $30	;
	db	 4,22, 11, $30	;
	db	 8,27, 11, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	 1, 0
	dw	L555A.L565b_1x18_STONE_WALL
	db	 1,31
	dw	L555A.L565b_1x18_STONE_WALL
	db	$ff

.ROOM_4df5:
	db	$00 +  0, 0, 32
	db	$00 +  4,11, 12
	db	$00 +  9,11, 12
	db	$00 + 15,11, 12
	db	$00 +  7, 4,  5
	db	$00 +  4,26,  5
	db	$00 + 12,26,  5
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 7, 6, 12, $30	;
	db	 4,11,  5, $30	;
	db	 9,22,  6, $30	;
	db	12,28,  7, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	 1, 0
	dw	L555A.L565b_1x18_STONE_WALL
	db	 1,31
	dw	L555A.L565b_1x18_STONE_WALL
	db	$ff

.ROOM_4e34:
	db	$00 +  0, 0, 32
	db	$00 +  3,14,  5
	db	$00 +  6,10,  3
	db	$00 +  6,20,  3
	db	$00 +  9, 4,  5
	db	$00 +  9,24,  5
	db	$00 + 12,10,  3
	db	$00 + 12,20,  3
	db	$00 + 15, 6,  3
	db	$00 + 15,14,  5
	db	$00 + 15,24,  3
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 3,16, 12, $30	;
	db	15, 7,  4, $30	;
	db	15,25,  4, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	 1, 0
	dw	L555A.L565b_1x18_STONE_WALL
	db	 1,31
	dw	L555A.L565b_1x18_STONE_WALL
	db	$ff

.ROOM_4e7f:
	db	$00 +  0, 0, 32
	db	$00 +  4,11, 12
	db	$00 +  6, 4,  5
	db	$00 +  6,25,  5
	db	$00 + 10, 4,  5
	db	$00 + 10,25,  5
	db	$00 + 15,11, 12
	db	$00 + 19, 0, 32
	db	$fd ; ladder mode ---------------------------------------------
	db	 4,11, 11, $30	;
	db	 4,22, 11, $30	;
	db	10, 6,  9, $30	;
	db	10,27,  9, $30	;
	db	$fe ; block mode ----------------------------------------------
	db	17, 1
	dw	L555A.L55e8_3x2_WELL
	db	 1, 0
	dw	L555A.L565b_1x18_STONE_WALL
	db	 1,31
	dw	L555A.L565b_1x18_STONE_WALL
	db	$ff

; Patches the room entities definition table
; - relocatable
; - rooms rearranged to unused slots (saves 10b)
L4EBE:	equ	$ - 2 ; (adjustment for discarded word)
        ; dw      $4f52 ; $00 ; (unused)
; Rooms of MAP #1
        dw      $4f52 + (-$4F52 +L4f52)	; $01
        dw      $4f5a + (-$4F52 +L4f52)	; $02
        dw      $4f65 + (-$4F52 +L4f52)	; $03
        dw      $4f7c + (-$4F52 +L4f52)	; $04
        dw      $4f99 + (-$4F52 +L4f52)	; $05
        dw      $4fb1 + (-$4F52 +L4f52)	; $06
        dw      $4fd6 + (-$4F52 +L4f52)	; $07
        dw      $4ff0 + (-$4F52 +L4f52)	; $08
	dw      $5011 + (-$4F52 +L4f52)	; $09
; Rooms of MAP #2
        dw      $5027 + (-$4F52 +L4f52)	; $0A
        dw      $5037 + (-$4F52 +L4f52)	; $0B
        dw      $504a + (-$4F52 +L4f52)	; $0C
        dw      $505d + (-$4F52 +L4f52)	; $0D
        dw      $5070 + (-$4F52 +L4f52)	; $0E
        dw      $507f + (-$4F52 +L4f52)	; $0F
        dw      $5092 + (-$4F52 +L4f52)	; $10
        dw      $50a1 + (-$4F52 +L4f52)	; $11
        dw      $50bb + (-$4F52 +L4f52)	; $12
        dw      $543f + (-$4F52 +L4f52)	; $46 "A" ; (was: $4f52 ; $13 (unused) )
        dw      $545b + (-$4F52 +L4f52)	; $47 "S" ; (was: $4f52 ; $14 (unused) )
        dw      $547b + (-$4F52 +L4f52)	; $48 "I" ; (was: $4f52 ; $15 (unused) )
        dw      $5497 + (-$4F52 +L4f52)	; $49 "O" ; (was: $4f52 ; $16 (unused) )
; Rooms of MAP #3
        dw      $50c1 + (-$4F52 +L4f52) ; $17
        dw      $50e1 + (-$4F52 +L4f52) ; $18
        dw      $50f9 + (-$4F52 +L4f52) ; $19
        dw      $510c + (-$4F52 +L4f52) ; $1A
        dw      $511f + (-$4F52 +L4f52) ; $1B
        dw      $5138 + (-$4F52 +L4f52) ; $1C
        dw      $5155 + (-$4F52 +L4f52) ; $1D
        dw      $518b + (-$4F52 +L4f52) ; $1E
        dw      $518d + (-$4F52 +L4f52) ; $1F
        dw      $51b3 + (-$4F52 +L4f52) ; $20
; Rooms of MAP #4
        dw      $51e8 + (-$4F52 +L4f52) ; $21
        dw      $51f0 + (-$4F52 +L4f52) ; $22
        dw      $5209 + (-$4F52 +L4f52) ; $23
        dw      $5216 + (-$4F52 +L4f52) ; $24
        dw      $5218 + (-$4F52 +L4f52) ; $25
        dw      $5221 + (-$4F52 +L4f52) ; $26
        dw      $5238 + (-$4F52 +L4f52) ; $27
        dw      $5252 + (-$4F52 +L4f52) ; $28
        dw      $5264 + (-$4F52 +L4f52) ; $29
        dw      $5282 + (-$4F52 +L4f52)	; $2A
        dw      $528d + (-$4F52 +L4f52)	; $2B
        dw      $52a3 + (-$4F52 +L4f52)	; $2C
        dw      $52af + (-$4F52 +L4f52)	; $2D
        dw      $52bb + (-$4F52 +L4f52)	; $2E
        dw      $52c1 + (-$4F52 +L4f52)	; $2F
; Rooms of MAP #5
        dw      $52c3 + (-$4F52 +L4f52) ; $30
        dw      $52d9 + (-$4F52 +L4f52) ; $31
        dw      $52f3 + (-$4F52 +L4f52) ; $32
        dw      $5306 + (-$4F52 +L4f52) ; $33
        dw      $5312 + (-$4F52 +L4f52) ; $34
        dw      $5322 + (-$4F52 +L4f52) ; $35
        dw      $5328 + (-$4F52 +L4f52) ; $36
        dw      $533d + (-$4F52 +L4f52) ; $37
        dw      $533d + (-$4F52 +L4f52) ; $38
        dw      $5347 + (-$4F52 +L4f52) ; $39
        dw      $5362 + (-$4F52 +L4f52) ; $3A
        dw      $5377 + (-$4F52 +L4f52) ; $3B
        dw      $5380 + (-$4F52 +L4f52) ; $3C
        dw      $5389 + (-$4F52 +L4f52) ; $3D
        dw      $53ab + (-$4F52 +L4f52) ; $3E
        dw      $53ce + (-$4F52 +L4f52) ; $3F
        dw      $53e6 + (-$4F52 +L4f52) ; $40
        dw      $5405 + (-$4F52 +L4f52) ; $41
        dw      $540d + (-$4F52 +L4f52)	; $42
        dw      $541c + (-$4F52 +L4f52)	; $43
        dw      $5425 + (-$4F52 +L4f52)	; $44
; Rooms of MAP #6
        dw      $5427 + (-$4F52 +L4f52)	; $45 "C"

; Room entities (not decoded yet)
L4F52: incbin  "original/YoukaiYashiki.rom", $4f52 - BASE, $54C7 - $4f52

; Patches floor definitions table and floor definitions
; - Table no longer required due new floor mode decode
; - 2x Grass floor removed (decoded by ground routine now)
; L54C7:
L54CF: incbin  "resources/patched/decoration/namtbl@54cf.tmx.bin"

; Patches 11x blank character (used by L8500 "clear 11x11" routine)
; - Relocated; frees 11b
L554F:

; Patches the NAMTBL decorations
; - Adds new decorations that use the newer graphics
; - Relocates or reuses some decorations
; - Some existing decorations have been modified, replaced, or are no longer used
L555A:

; 1x1: top/middle ladder chars (patches top/bottom of the screen) -------------

; Patches 1x1 NAMTBL decorations:
; - No longer needed; single char mode added to screen decoder
; .L555A_1x1_LADDER_TOP:	db      1,1, $30
; .L567B_1x1_ROPE_TOP:		db      1,1, $31
; .L5675_1x1_LADDER_TOP:	db      1,1, $32
; .L555D_1x1_LADDER_MID:	db      1,1, $38
; .L5678_1x1_ROPE_MID:		db      1,1, $39
; .L5672_1x1_LADDER2_MID:	db      1,1, $3A
; .L566F_1x1_PLANT_MID:		db      1,1, $3B

; Decorations exclusives of rooms of MAP #1 -----------------------------------

; 2x2: moon
.L55D2_2x2_MOON:
        db      2,2
        incbin  "resources/patched/decoration/namtbl@55d4.tmx.bin"
; 4x1: clouds (was: 2x1)
.L55D8_4x1_CLOUDS:
        db      4,1
        incbin  "resources/patched/decoration/namtbl@55da.tmx.bin"

; 4x4: tombstone and wooden tomb markers
.L559A_4x4_TOMBSTONE_GROUP:
        db      4,4
        incbin  "resources/patched/decoration/namtbl@559c.tmx.bin"
; 1x2: small tombstone
.L55AC_1x2_SMALL_TOMBSTONE:
        db      1,2
        incbin  "resources/patched/decoration/namtbl@55ae.tmx.bin"
; 2x4: wooden tomb markers
.L55B0_2x4_TOMB_MARKERS_GROUP:
        db      2,4
        incbin  "resources/patched/decoration/namtbl@55b2.tmx.bin"
; 1x4: wooden tomb marker
.L55BA_1x4_TOMB_MARKER:
        db      1,4
        incbin  "resources/patched/decoration/namtbl@55bc.tmx.bin"
; 1x3: shorter wooden tomb marker
.L55C0_1x3_TOMB_MARKER:
        db      1,3
        incbin  "resources/patched/decoration/namtbl@55bc.tmx.bin", 0, 3
; 2x3: shorter wooden tomb markers ; (currently unused)
; .L55C5:
;         db      2,3
;         incbin  "resources/patched/decoration/namtbl@55c7.tmx.bin"
; 3x1: tombstone base (was: 3x1)
.L55CD_3x1_TOMBSTONE_BASE:
        db      3,1
        incbin  "resources/patched/decoration/namtbl@55cf.tmx.bin"
; 4x1: far tombstones
.EXTRA_4x1_TOMBSTONES_FAR:
        db      4,1
        incbin  "resources/patched/decoration/namtbl@extra4.tmx.bin"

; 5x2: sky border, mountains
.EXTRA_5x2_MOUNTAINS:
        db      5,2
        incbin  "resources/patched/decoration/namtbl@extra2.tmx.bin"
; 6x2: sky border, mountains
.EXTRA_6x2_MOUNTAINS:
        db      6,2
        incbin  "resources/patched/decoration/namtbl@extra3.tmx.bin"
; 5x2: sky border, mountains
.EXTRA_5x2_MOUNTAINS_LEFT:
        db      5,2
        incbin  "resources/patched/decoration/namtbl@extra10.tmx.bin"

; 4x14: house exterior
.L5560_4x14_HOUSE_EXTERIOR:
        db      4,14
        incbin  "resources/patched/decoration/namtbl@5562.tmx.bin"
; 1x11: wall to house exterior (was: 1x10)
.L5682_1x11_HOUSE_INTERIOR:
        db      1,11
        incbin  "resources/patched/decoration/namtbl@5684.tmx.bin"

; Rest of decorations ---------------------------------------------------------

; 1x18: vertical stone wall
.L565b_1x18_STONE_WALL:
        db      1,18
        incbin  "resources/patched/decoration/namtbl@565d.tmx.bin"
; 1x5: vertical stone wall
.L568E_1x5_STONE_WALL:
        db      1,5
        incbin  "resources/patched/decoration/namtbl@5690.tmx.bin"
; 1x4: shorter vertical stone wall
.L568E_1x4_STONE_WALL:
        db      1,4
        incbin  "resources/patched/decoration/namtbl@5690.tmx.bin", 1, 4

; 3x2: well
.L55E8_3x2_WELL:
        db      3,2
        incbin  "resources/patched/decoration/namtbl@55ea.tmx.bin"

; 3x4: closed door, some broken cristals (was: 4x4)
.L561C_3x4_DOOR:
        db      3,4
        incbin  "resources/patched/decoration/namtbl@561e.tmx.bin"
; 3x4: closed door, cat (was: 4x4)
.L562E_3x4_DOOR_CAT:
        db      3,4
        incbin  "resources/patched/decoration/namtbl@5630.tmx.bin"
; 5x3: closed window
.L5640_5x3_WINDOW: equ L9CBA ; (reuses tongue monster version)
; 8x4: open door
.EXTRA_8x4_DOOR_MOUNTAINS:
	db      8,4
        incbin  "resources/patched/decoration/namtbl@extra1.tmx.bin"

; 2x4: shelving
.L5651_2x4_SHELVING:
        db      2,4
        incbin  "resources/patched/decoration/namtbl@5653.tmx.bin"

; 1x2: statue
.L567E_1x2_STATUE:
        db      1,2
        incbin  "resources/patched/decoration/namtbl@5680.tmx.bin"

; 2x2: spiderweb
.EXTRA_2x2_SPIDERWEB:
        db      2,2
        incbin  "resources/patched/decoration/namtbl@extra5.tmx.bin"

; 4x2: vines group
.EXTRA_4x2_VINES:
        db      4,2
        incbin  "resources/patched/decoration/namtbl@extra6.tmx.bin"

; 4x2: stalactite group
.EXTRA_4x2_STALACTITE:
        db      4,2
        incbin  "resources/patched/decoration/namtbl@extra7.tmx.bin"

; 5x2: stalactite sparse group
.EXTRA_5x2_STALACTITE:
        db      5,2
        incbin  "resources/patched/decoration/namtbl@extra8.tmx.bin"

; 3x2: compact vines group
.EXTRA_3x2_VINES:
        db      3,2
        incbin  "resources/patched/decoration/namtbl@extra9.tmx.bin"

; Not strictly decorations (relocated in proper subroutine) -------------------

.L55DC:	equ L9707.L55DC_2x2_ITEM_SCROLL	; 2x2: scroll item
.L55E2:	equ L9707.L55E2_2x2_ITEM_CLEAR	; 2x2: blank (removes scroll item)
.L55F0:	equ L94FC.L55F0_3x3_FIRE_0	; 3x3: fire (0 rows up)
.L55FB:	equ L94FC.L55FB_3x3_FIRE_1	; 3x3: fire (1 row up)
.L5606:	equ L94FC.L5606_3x3_FIRE_2	; 3x3: fire (2 rows up)
.L5611:	equ L94FC.L5611_3x3_FIRE_3	; 3x3: fire (3 rows up)

; Patches the title NAMTBL
; - relocatable
L5695:	IFEXIST ENGLISH
        	incbin  "resources/patched/text/namtbl@5695.en.tmx.bin"
	ELSE
		incbin  "resources/patched/text/namtbl@5695.jp.tmx.bin"
	ENDIF

; Patches the literals

; "CASIO" (stylized)
; L56D5: ; Relocated

; "PUSH TRIG:1 OR SPACE"
; L56DB: ; Relocated

; "COPYRIGHT 1986 c CASIO"
; L56EF: ; Relocated

; Relocated and patched literals
; - relocatables
; - "CASIO" (stylized) embedded in main charset
; - updated texts

; "HISCORE:0000000"
L5705:  db      $18, $19, $23, $13, $1F, $22, $15, $0A
	db	$00, $00, $00, $00, $00, $00, $00

; "GAME OVER"
L5714:	db      $17, $11, $1D, $15, $10, $1F, $26, $15
	db	$22

; L571D: ; (formerly unused area)

ALTCLRTBL._0: equ  L7000 + $0208 ; (embedded in main charset)
ALTCLRTBL._1:
        incbin  "resources/patched/charset@6088.altclrtbl.png.clr", $0030, $0030
ALTCLRTBL._2:
        incbin  "resources/patched/charset@6088.altclrtbl.png.clr", $0060, $0030
ALTCLRTBL._3:
        incbin  "resources/patched/charset@6088.altclrtbl.png.clr", $0090, $0030
ALTCLRTBL._4:
        incbin  "resources/patched/charset@6088.altclrtbl.png.clr", $00c0, $0030

; Patches the sprite patterns
; - relocatable
        SPRITE_BLANK_PATTERN:   equ     $39 * 32
L5800:	incbin  "resources/patched/sprites@5800.png.spr", 0, SPRITE_BLANK_PATTERN
        db      $00, $00, $00, $00, $00, $00, $00, $00
	db	$00, $00, $00, $00, $00, $00, $00, $00
        db      $00, $00, $00, $00, $00, $00, $00, $00
	db	$00, $00, $00, $00, $00, $00, $00, $00
        incbin  "resources/patched/sprites@5800.png.spr", SPRITE_BLANK_PATTERN

; Patches the main CHRTBL
; - Full charset
; - Relocatable
L6000:	IFEXIST ENGLISH
		incbin  "resources/patched/charset@6000.en.png.chr", 0, $0208
		incbin  "resources/patched/charset@6088.altclrtbl.png.chr", 0, $0030
		incbin  "resources/patched/charset@6000.en.png.chr", $0238
	ELSE
		incbin  "resources/patched/charset@6000.jp.png.chr", 0, $0208
		incbin  "resources/patched/charset@6088.altclrtbl.png.chr", 0, $0030
		incbin  "resources/patched/charset@6000.jp.png.chr", $0238
	ENDIF

; "CASIO" (stylized) CHRTBL/CLRTBL no longer necessary

; Patches the title CHRTBL
; - Contiguous
; - Relocatable
L6700:	IFEXIST ENGLISH
		incbin  "resources/patched/text/charset@6700.en.png.chr"
	ELSE
		incbin  "resources/patched/text/charset@6700.jp.png.chr"
	ENDIF

; Patches the bosses CHRTBL
; - Relocatable
L6800:	incbin  "resources/patched/bosses/charset@6800.png.chr", 0, $06A0

; Patches the main CLRTBL
; - Full charset
; - Relocatable
L7000:	IFEXIST ENGLISH
		incbin  "resources/patched/charset@6000.en.png.clr", 0, $0208
		incbin  "resources/patched/charset@6088.altclrtbl.png.clr", 0, $0030
		incbin  "resources/patched/charset@6000.en.png.clr", $0238
	ELSE
		incbin  "resources/patched/charset@6000.jp.png.clr", 0, $0208
	        incbin  "resources/patched/charset@6088.altclrtbl.png.clr", 0, $0030
		incbin  "resources/patched/charset@6000.jp.png.clr", $0238
	ENDIF

; "CASIO" (stylized) CHRTBL/CLRTBL no longer necessary

; Patches the bosses NAMTBL definitions ($7700, reference: L82BF, L83EB, L8411, L8474)
L7700:	incbin  "resources/patched/bosses/namtbl@7700.tmx.bin"
L7740:	incbin  "resources/patched/bosses/namtbl@7740.tmx.bin"
L7780:	incbin  "resources/patched/bosses/namtbl@7780.tmx.bin"
L77c0:	incbin  "resources/patched/bosses/namtbl@77c0.tmx.bin"

; Patches the bosses CLRTBL
; - Relocatable
L7800:	incbin  "resources/patched/bosses/charset@6800.png.clr", 0, $06A0

; (presumed unused area no longer available)

; (padding to relocated 7e80: should make padding to $8003 0!)
	padding_to_7ec8_formerly_7e80: equ $7ec8 - $
	ds	$7ec8 - $, $ff

; $7e80 -----------------------------------------------------------------------

; Patches the cartridge initialization routine
; - relocatable
; - BIOS charset no longer required
L7E80:
; Zeroes RAM
        ld      hl, $E000
	ld	de, $e000 +1
        ld      bc, $1100 -1
	ld      (hl),l		; l = $00
	ldir
; Init SP
        ld      sp, $F200
; Sets H.TIMI hook
        ld      hl, $B475	; H.TIMI hook
        ld      (HTIMI + 1),hl
        ld      a, $0C3		; opcode for "JP"
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
; LDIRVM the SPRTBL
	ld      hl, L5800
	ld      de, SPRTBL
        ld      bc, $0800
        call      LDIRVM
; SCREEN ,2
	ld	hl, RG1SAV
	set	1, [hl] ; (first call to ENASCR will actually apply to the VDP)
; screen ,,0
	xor	a
	ld	[CLIKSW], a
; Initializes the Hi-score
        ld      a,03h
        ld      (0E090h), a	; Hi-score x 10,000 (character)
        ld      a,30h
        ld      (0E095h), a	; Hi-score x 1,000 (BCD)
        ei

; Patches the game initialization routine
; - relocatable
L7EE3:	call    LB379
        call    $B016	; DISSCR and CLS (with $10)
; LDIRVM title chars CHRTBL
        ld      de, $0200
        ld      b, 03h
        call    LB334	; LDIRVM title charset (x3)
; FILVRM title chars CLRTBL
        ld      hl, $2200
        ld      b, 03h
.L7EF6: call    $B32C	; FILVRM title charset (x1)
        djnz    .L7EF6

; "CASIO" logo
        call    ENASCR
        call    $B5A7	; "CASIO" logo routine

; Patches the title screen routine
; - relocatable, shorter
; - Simplifies the invulnerability cheat
; - Makes the title definition relocatable
.L7F01:
; Checks cheat keys
        ld      a, $08          ; a = $08 ; RIGHT DOWN UP LEFT DEL INS HOME SPACE
        call    SNSMAT
        cp      $F3             ; DEL INS pressed?
	IF (DEBUG_FORCE_CHEAT = 1)
        	nop
		nop
	ELSE
        	jr      nz, .L7F17      ; no
	ENDIF
; yes: activates cheat
        ld      a, 1
        ld      ($E023), a
.L7F17: ld      hl, L5695	; (relocatable)
        ld      de, $1908
        ld      b, 4
.L7F1F: call    LB313		; LDIRVMs 16b and moves to next line
        djnz    .L7F1F
; Prints title screen
        ld      hl, L56D5       ; "CASIO" (stylized) (relocatable)
        ld      de, $1A0D + SCR_WIDTH*3 -4
        ld      bc, 6     +8
        call    LDIRVM
        ld      hl, L56DB       ; "PUSH TRIG:1 OR SPACE" (relocatable)
        ld      de, $1A46 - SCR_WIDTH*3 +1
        ld      bc, 20    -2
        call    LDIRVM
        ld      hl, L56EF	; "COPYRIGHT 1986 c CASIO" (relocatable)
        ld      de, $1A85 + SCR_WIDTH -3
        ld      bc, 22    +6
        call    LDIRVM
        call    ENASCR
; Waits for key
        xor     a
        ld      (0E018h),a
.L7F4F: ld      a,(0E018h)
        cp      0F0h
        jp      nc, .L7F63	; Wait consumed: attract mode
        ld      a, (0E026h)
        and     a
        jr      z, .L7F4F	; No trigger: keeps waiting
        xor     a
        ld      (0E026h), a
        jr      .L7FA3		; Trigger: starts game

; Patches the attract mode
; - relocatable, shorter
; - slightly more variety
.L7F63: xor     a
        ld      ($0E00A),a      ; Area = 0
        inc	a
        ld      ($0E0A2),a      ; Map Y
        ld      a,r
	and	$03		; 0..3
	inc	a		; 1..4
        ld      ($0E0A1),a      ; Map X
; Starts attact mode
.L7F89: xor     a
        ld      ($0E098), a
        ld      ($0E023), a     ; No invulnerability cheat
        ld      ($0E0A9), a     ; Energy = 0
        inc     a
        ld      ($0E028), a
        ld      hl, $0000
        ld      ($0E029), hl
        ld      ($0E0A8), a     ; Lives = 1
        jp      $800D

; Patches the title screen routine
; - relocatable
.L7FA3:
; Zeroes game RAM (1/2)
	ld      hl,0E001h ; Score (digits)
        ld      b,06h
.L7FA8: ld      (hl),00h
        inc     hl
        djnz    .L7FA8
        xor     a
        ld      ($E00C), a ; Score (BCD)
        ld      ($E00D), a
        ld      ($E00E), a
	; (falls through)

; Patches the game initialization
; - relocatable
L7FB7:  xor     a
        ld      ($E027), a
        ld      ($E028), a
        ld      ($E0A9), a      ; Energy = 0
        ld      ($E0AA), a
	IF (DEBUG_START_AT_AREA = 0)
		ld	($E00A), a	; Area = 0
	ENDIF
        ld      ($E098), a
        inc     a
        ld      ($E000), a	; Active = 1
	IF (DEBUG_START_AT_AREA = 0)
		ld      ($e0a1), a	; Map X = 1
		ld      ($e0a2), a	; Map Y = 1
		ld      ($e0a3), a	; Current screen = 1
	ELSE
		ld	a, DEBUG_START_AT_AREA
		ld      ($E00A), a      ; Area
		call	LAEE1.SET_MAP_X_Y ; Sets map x, y ($E0A1, $E0A2) based on area ($E00A)
		call	L93A7		; Set screen index ($e0a3) based on area and map x, y ($E00A, $E0A1, $E0A2)
	ENDIF
        ld      a, 3
        ld      ($E0A8), a      ; Lives = 3
; Checks invulnerability cheat
        ld      a,($E023)
        and     a
        jr      z, .L7FE7	; no
; yes
        ld      a, 6
        ld      ($E0A9), a      ; Energy = 6
.L7FE7:
; Zeroes game RAM (2/2)
	ld      hl, $E02B
        ld      b, 58h
.L7FEC: ld      (hl), 00h
        inc     hl
        djnz    .L7FEC
;       jp      L8003 ; (falls through)

; (padding: should be reduced to 0!)
	padding_to_8003_should_be_0: equ $8003 - $
	ds	$8003 - $, $00	; nops

; $8003 -----------------------------------------------------------------------

L8003:	incbin  "original/YoukaiYashiki.rom", $8003 - BASE, $8018 - $8003

; Patches jump to relocated post-initialization routine (3/3)
L8018:	jp	L7FB7

L801B:	incbin  "original/YoukaiYashiki.rom", $801b - BASE, $802e - $801b

; Patches jump to relocated print HUD routine
L802E:	call	LB056

L8031:	incbin  "original/YoukaiYashiki.rom", $8031 - BASE, $8075 - $8031

; Patches the player sprite colors (at game start)
L8075:	ld      (ix + $03), PLAYER_SPRITE_COLOR_1
L8079:	ld      (ix + $12), $6C
L807D:  ld      (ix + $13), PLAYER_SPRITE_COLOR_2

; Patches jump to relocated post-initialization routine (1/3)
L8081:	incbin  "original/YoukaiYashiki.rom", $8081 - BASE, $8126 - $8081

L8126:	jp	L7EE3

L8129:	incbin  "original/YoukaiYashiki.rom", $8129 - BASE, $81CB - $8129

; $81CB -----------------------------------------------------------------------

; Patches the blink scroll item routine to use CLRTBL data
L81CB:
; Checks no-op and frame counter
        ld      a, (0E1B9h)
        and     a
        ret     z
        ld      a, (0E015h)
        cp      08h
        ret     c
        xor     a
        ld      (0E015h), a
; Changes status
	ld	hl, $E1BA
	ld	a, [hl]
	xor	$ff
	ld	[hl], a
	ld	de, CLRTBL + 0 * CLRTBL_SIZE + $8c * 8
        jr      z, .L81CB_LDIRVM
; Old FILVRM with yellow
	ex	de, hl ; hl = $2000 + $8c * 8
	call	.FILVRM
	ld	hl, CLRTBL + 1 * CLRTBL_SIZE + $8c * 8
	call	.FILVRM
	ld	hl, CLRTBL + 2 * CLRTBL_SIZE + $8c * 8
.FILVRM:
	ld	a, $50
	ld	bc, 4 * 8 ; (4 chars)
	jp	FILVRM
.L81CB_LDIRVM:
; Old FILVRM with white
	ld	hl, L7000 + $8c * 8
	ld	bc, 4 * 8 ; (4 chars)
	jr	LDIRVM_3_BANKS

; (padding: 3 bytes)
	padding_to_8206: equ $8206 - $
	ds	$8206 - $, $ff

; Patches the blink scroll item routine to use CLRTBL data
L8206:
        ld      a, ($E00A)	; floor color index
	ld	de, .TABLE
; a >= 4 ?
	cp	4
	jr	nc, .L8206_LDIRVM
; a < 4:
	inc	a
.LOOP:
	inc	de
	inc	de
	dec	a
	jr	nz, .LOOP
.L8206_LDIRVM:
; hl = [de]
	ld	a, [de]
	ld	l, a
	inc	de
	ld	a, [de]
	ld	h, a
	ld	de, CLRTBL + $41 * 8
	ld	bc, 6 * 8

; 3x LDIRVM, moving to the next bank
LDIRVM_3_BANKS:
	call	.LDIRVM_1_BANK
	call	.LDIRVM_1_BANK
.LDIRVM_1_BANK:
	push	hl
	push	de
	push	bc
	call	LDIRVM
	pop	bc
	pop	de ; Moves to the next bank
	ld	a, d
	add	8
	ld	d, a
	pop	hl
	ret

L8206.TABLE:
	dw	ALTCLRTBL._4	; 4 = green
	dw	ALTCLRTBL._0	; 0 = red
	dw	ALTCLRTBL._1	; 1 = yellow
	dw	ALTCLRTBL._2	; 2 = blue
	dw	ALTCLRTBL._3	; 3 = grey

; Patched WRTPSG routine
; - located here to take advantage of free bytes
LBA49.PATCHED:
	and     $BF
        ld      e, a
        ld      a, 07h
        jp      WRTPSG

; (padding: 11 bytes)
	padding_to_8252: equ $8252 - $
	ds	$8252 - $, $ff

; $8252 -----------------------------------------------------------------------

L8252:  incbin  "original/YoukaiYashiki.rom", $8252 - BASE, $82cc - $8252

; Patches the bosses NAMTBL source data addresses
L82CC:	ld      hl, L7700
L82CF:	incbin  "original/YoukaiYashiki.rom", $82cf - BASE, $83f9 - $82cf
L83F9:	ld	hl, L7780
L83FC:	incbin  "original/YoukaiYashiki.rom", $83fc - BASE, $841f - $83fc
L841F:	ld      hl, L7740
L8422:	incbin  "original/YoukaiYashiki.rom", $8422 - BASE, $8482 - $8422
L8482:	ld	hl, L77C0

L8485:	incbin  "original/YoukaiYashiki.rom", $8485 - BASE, $84E5 - $8485

; Patches the LDIRVM boss charset routine
L84E5:	ld      de, L7800 - L6800 ; (actual diff may be not $1000)

L84E8:	incbin  "original/YoukaiYashiki.rom", $84E8 - BASE, $8506 - $84E8

; Patches the clear LDIRVM boss routine
L8506:	ld      hl, L554F.RELOCATED ; (makes source data relocatable)

L8509:	incbin  "original/YoukaiYashiki.rom", $8509 - BASE, $8533 - $8509

; Patches the bosses CHRTBL source data addresses
L8533:  dw      L6800 +   0 *8
L8535:  dw      L6800 +  96 *8
L8537:  dw      L6800 +  48 *8
L8539:  dw      L6800 + 144 *8
L853B:  dw      L6800 + 144 *8

L853d:	incbin  "original/YoukaiYashiki.rom", $853d - BASE, $8670 - $853d

; Patches the Y coord of the shoots that dissapear
L8670:  ld      (ix + $20), SPAT_OB

L8674:	incbin  "original/YoukaiYashiki.rom", $8674 - BASE, $86AB - $8674

; Patches the player sprite colors (after invulnerability) 1/2
L86AB:  ld      (ix + $03), PLAYER_SPRITE_COLOR_1
L86AF:  jr      $86BD
L86B1:  ld      (ix + $03), PLAYER_SPRITE_COLOR_1

L86B5:  incbin  "original/YoukaiYashiki.rom", $86b5 - BASE, $86d0 - $86b5

; Patches the player sprite colors (after invulnerability) 2/2
L86D0:  ld      (ix + $03), PLAYER_SPRITE_COLOR_1

L86D4:  incbin  "original/YoukaiYashiki.rom", $86d4 - BASE, $904b - $86d4

; Patches the scroll speed
L904B:	cp	SCROLL_DELAY
L904D:  incbin  "original/YoukaiYashiki.rom", $904d - BASE, $90b8 - $904d
L90B8:	cp	SCROLL_DELAY
L96BA:  incbin  "original/YoukaiYashiki.rom", $90ba - BASE, $9127 - $90ba
L9127:	cp	SCROLL_DELAY
L9129:  incbin  "original/YoukaiYashiki.rom", $9129 - BASE, $91c6 - $9129
L91C6:	cp	SCROLL_DELAY
L91C8:  incbin  "original/YoukaiYashiki.rom", $91c8 - BASE, $9257 - $91c8

; $9257 -----------------------------------------------------------------------

; Patches the screen decoding routines
; - Makes room definition relocatable
; - Adds sky mode (FD prefix)
; - Modified ground mode
; - Modified floor mode (saves 64b in floor definitions, and 1b per invocation)
; - Allows no-top ladders (saves bytes in room definitions)

L9257:
; Clears screen data
        ld      hl, $e700
	ld	de, $e700 +1
        ld      bc, $0280 -1
	ld      (hl), $80
	ldir

; Locates the screen definition: de = [$41ac + [$e0a3] * 2]
        ld      hl, L41AC
        ld      a, ($E0A3)
        add     a
        add     l
        jr      nc, $ + 3
        inc     h
	ld      l,a
        ld      e, (hl)
        inc     hl
        ld      d, (hl)

; Decodes the screen
.DECODE:
        ld      a, (de)
.CHECK_MODE:

; Byte 1: F9? ; ---------------------------------------------------------------
        cp      $f9
        jr      nz, .NO_SINGLE_CHAR_MODE
	inc	de

; Single char mode: y,x, character

.NEXT_CHAR:
        ld      a, (de)
; Byte 1: $F?
        cp      $f0
	jp	nc, .CHECK_MODE
; Reads offset in HL
        call    .READ_OFFSET
; Reads char
        ld      a, (de)
	inc	de
	ld	(hl), a
; Next element
        jr      .NEXT_CHAR

.NO_SINGLE_CHAR_MODE:

; Byte 1: FA? ; ---------------------------------------------------------------
        cp      $fa
        jr      nz, .NO_MIST_MODE
	inc	de

; Mist mode: y (assumes x=0, w=32, h=1)

; Reads offset in hl
	ld      a, (de)
	inc	de
        ld	hl, $e700
        and     a
        jr	z, .MIST_HL_OK
        ld      bc, SCR_WIDTH
.MIST_HL_LOOP:
	add     hl, bc
        dec	a
	jr	nz, .MIST_HL_LOOP
.MIST_HL_OK:
	ld	b, SCR_WIDTH
.MIST_CHAR:
	ld      (hl), $cb	; mist character
        inc     hl
        djnz	.MIST_CHAR
; Next element
	jp	.DECODE		; (non permanent mode)

.NO_MIST_MODE:

; Byte 1: FB? ; ---------------------------------------------------------------
        cp      $fb
        jr      nz, .NO_SKY_MODE
	inc	de

; Sky mode: x, w,h (assumes y=0)

.NEXT_SKY:
	ld      a, (de)
; Byte 1: $F?
        cp      $f0
	jr	nc, .CHECK_MODE
	inc	de
; Reads offset in hl
        ld	hl, $e700
	add	l
	ld	l, a
; Reads horizontal size in b
        ld      a, (de)
        ld      b, a
        inc     de
; Reads vertical size in c
        ld      a, (de)
        ld      c, a
        inc     de
.SKY_ROW:
	push	bc		; (preserves counters)
	push	hl		; (preserves target)
.SKY_CHAR:
	ld      (hl), $ff	; sky character
        inc     hl
        djnz	.SKY_CHAR
; Next row: updates target
	pop	hl		; (restores target)
	ld	bc, $20
	add	hl, bc
	pop	bc		; (restores counters)
; Next row or next element
	dec	c
	jr	nz, .SKY_ROW
        jp      .NEXT_SKY

.NO_SKY_MODE:

; Byte 1: FC? ; ---------------------------------------------------------------
        cp      $fc
        jr      nz, .NO_GROUND_MODE
	inc	de

; Ground mode: y,x, w,h

.NEXT_GROUND:
	ld      a, (de)
; Byte 1: $F?
        cp      $f0
	jr	nc, .CHECK_MODE
; Checks Y = 0
	or	a
	ld	h, $4c		; Base char: $4c $50 $54 (top)
	jr	nz, $ + 4
	ld	h, $4e		; Base char: $4e $52 $56 (mid)
	push	hl		; (preserves base char)
; Reads offset in hl
	ld      a, (de)
        call    .READ_OFFSET
; Reads horizontal size in b
        ld      a, (de)
        ld      b, a
        inc     de
; Reads vertical size in c
        ld      a, (de)
        ld      c, a
        inc     de
; For every row
        ld      a, ($E0A0)	; Area index: 0 1 2 3 4 5
	or	1		; Area index: 1 1 3 3 5 5
	dec	a		; Area index: 0 0 2 2 4 4
	add	a		; Area index: 0 0 4 4 8 8
	ex	(sp), hl	; (preserves target, restores base char)
	add	h		; Area index: $4b $50 $54 (top)
				; or:         $4e $52 $56 (mid)
	pop	hl		; (restores target)
; Prints alternating rows
.GROUND_ROW:
	push	bc		; (preserves counters)
	push	hl		; (preserves target)
; Applies odd/even displacement
	and	$fe		; aaaa aaa0
	xor	c		; ???? ???c
	and	$fe		; ???? ???0
	xor	c		; aaaa aaac
.GROUND_CHAR:
	ld      (hl), a
        inc     hl
	xor	$01		; (alternates GROUND_CHAR)
        djnz	.GROUND_CHAR
; Next row: ensures non-top blocks
	or	$02		; aaaa aa1c
; Next row: updates target
	pop	hl		; (restores target)
	ld	bc, $20
	add	hl, bc
	pop	bc		; (restores counters)
; Next row or next element
	dec	c
	jr	nz, .GROUND_ROW
        jr      .NEXT_GROUND

.NO_GROUND_MODE:

; Byte 1: FD? ; ---------------------------------------------------------------
        cp      $fd
        jr      nz, .NO_LADDER_MODE
        inc     de

; Ladder mode: y,x, h, first char (assumes w=1)

.NEXT_LADDER:
        ld      a, (de)
; Byte 1: $F?
        cp      $f0
	jp	nc, .CHECK_MODE
; Reads offset in HL
        call    .READ_OFFSET
; Reads lenght in B
        ld      a,(de)
        ld      b,a
	dec	b		; (top not in loop)
        inc     de
; Reads first char type
        ld      a, (de)
        inc     de
        push    de		; (preserves reader)
; Prints char
.LADDER_CHAR:
        ld      (hl), a
	or	$08		; Forces next char to be mid ladder
	push	bc		; (preserves counter)
	ld	bc, $0020
	add	hl, bc
	pop	bc		; (restores counter)
	djnz	.LADDER_CHAR
; Print bottom char
	xor	$0c
	ld	(hl), a
	pop	de		; (restoures reader)
	jr	.NEXT_LADDER

.NO_LADDER_MODE:

; Byte 1: FE? ; ----------------------------------------------------------------
        cp      $fe
        jr      nz, .NO_BLOCK_MODE
        inc     de

; Block mode: y,x, data address

.NEXT_BLOCK:
        ld      a, (de)
; Byte 1: $F?
        cp      $f0
	jp	nc, .CHECK_MODE
; Reads offset in HL
        call    .READ_OFFSET
; Reads pointer
	push	hl		; (preserves offset)
	ex	de, hl		; (hl = read pointer)
        ld      e, (hl)
        inc     hl
        ld      d, (hl)
	inc	hl		; (de = block pointer)
	ex	(sp), hl	; (preserves read pointer, hl = offset)
	ex	de, hl		; (hl = block pointer, de = offset)
; Reads width
        ld      c, (hl)
        inc     hl
; Reads height
        ld      b, (hl)
        inc     hl
.BLOCK_ROW:
	push	bc		; (preserves counters)
	push	de		; (preserves target)
	ld	b, 0
	ldir
	ex	(sp), hl	; (restores target, preserves source)
	ld	bc, SCR_WIDTH	; moves target down
	add	hl, bc
	ex	de, hl
	pop	hl		; (restores source)
	pop	bc		; (restores counters)
	djnz	.BLOCK_ROW
        pop     de		; (restores read pointer)
; Unpacks next block
        jr      .NEXT_BLOCK

.NO_BLOCK_MODE:

; Byte 1: FF? ; ---------------------------------------------------------------
        cp      $ff
	ret	z	; finished

; Floor mode (default) ; 0t yyyyyy, x, w (assumed h = 1)

	push	af	; (preseves floor type)
	and	$3f	; (removes floor type for offset)
; Reads offset in HL
        call    .READ_OFFSET
; Reads length in BC
        ld      a,(de)
	ld	b, 0
        ld      c, a
        inc     de
; Reads floor type
	pop	af	; (restores floor type)
	and	$c0	; a = $00, $c0
	rrca		; a = $00, $60
        push    de ; (preserves reader)
; Locates the source data
	ex	de, hl ; target in de
; hl = $54CF + a * 32
	ld	hl, L54CF
	add	l
	ld	l, a
	jr	nc, $ + 3
	inc	h
; Copies bc bytes from [de] to [hl]
	ldir
; Unpacks next
        pop     de ; (restores reader)
        jp      .DECODE

; param de: read pointer
; param a: (de -1), Y coordinate
; ret hl: E700 + offset
; ret de: updated read pointer
.READ_OFFSET:
	inc	de
; hl = E700 + $20 * a
        ld      hl, $E700
        and     a
        jr	z, .L939E
        ld      bc, SCR_WIDTH
.L939A: add     hl, bc
        dec	a
	jr	nz, .L939A
.L939E:
; Next byte is horizontal offset
        ld      a, (de)
        inc     de
        add     a, l
	ld      l, a
        ret     nc
        inc     h
        ret

; Relocated literal: "CASIO" (stylized)
L56D5:	db      $0b, $10, $0c, $0d, $0e, $0f, $2b, $2c	; "cCASIO_"
	db	$10, $10, $01, $09, $08, $06		; " 1986"

; (padding: 0 bytes)
	padding_to_93A7: equ $93A7 - $
	ds	$93A7 - $, $ff

; $93A7 -----------------------------------------------------------------------

L93A7:	incbin  "original/YoukaiYashiki.rom", $93A7 - BASE, $940c - $93A7

; Patches the room entities decoding routine
L940C:	ld      hl, L4EBE ; (makes source data relocatable)

L940F:	incbin  "original/YoukaiYashiki.rom", $940f - BASE, $94fc - $940f

; $94fc -----------------------------------------------------------------------

; Patches the print fire routine
; (MUST be 161 bytes long)
L94FC:  ld      a, (0E1B8h)
        and     a
        ret     nz
        ld      a, (iy + 05h)
        and     a
        jr      nz, .L9524
        call    $A08B
        ld      de, -$0020
        add     hl, de
        ld      (iy + 07h),l
        ld      (iy + 08h),h
.L9514: ld      a, r
        and     3Fh
        add     a, 80h
        ld      (iy + 06h), a           ; framecounter (?)
        ld      (iy + 05h), 1
        ret

; Determines the frame
.L9524:
; (shared by all frames)
        dec     (iy + 06h)              ; framecounter (?)
        ret     nz
        ld      l, (iy + 07h)
        ld      h, (iy + 08h)
; prints the proper frame
        dec     a
        jr      z, .FRAME_0             ; 1 = 1 row up
        dec     a
        jr      z, .FRAME_1             ; 2 = 2 rows up
        dec     a
        jr      z, .FRAME_2             ; 3 = 3 rows up
        dec     a
        jr      z, .FRAME_1             ; 4 = 2 rows up
        dec     a
        jr      z, .FRAME_0             ; 5 = 1 row up
; none
        ld      de, .L55F0_3x3_FIRE_0   ; no rows up, relocatable
        call    .SUB_2
        jp      .L9514

.FRAME_0:
        ld      de, .L55FB_3x3_FIRE_1   ; 1 row up, relocatable
        jr      .SUB_0

.FRAME_1:
        ld      de, .L5606_3x3_FIRE_2   ; 2 rows up, relocatable
.SUB_0:
        ld      (iy + 06h), $10         ; framecounter (?)
.SUB_1:
        inc     (iy + 05h)
.SUB_2:
        jp      $A0AD                   ; print block routine

.FRAME_2:
        ld      (iy + 06h), $20         ; framecounter (?)
        ld      de, .L5611_3x3_FIRE_3   ; 3 rows up, relocatable
        jr      .SUB_1

; (related NAMTBL decorations moved here from L555A section)
.L55F0_3x3_FIRE_0:
        db      3,3
        incbin  "resources/patched/decoration/namtbl@55f2.tmx.bin", 0, 9
.L55FB_3x3_FIRE_1:
        db      3,3
        incbin  "resources/patched/decoration/namtbl@55f2.tmx.bin", 3, 9
.L5606_3x3_FIRE_2:
        db      3,3
        incbin  "resources/patched/decoration/namtbl@55f2.tmx.bin", 6, 9
.L5611_3x3_FIRE_3:
        db      3,3
        incbin  "resources/patched/decoration/namtbl@55f2.tmx.bin", 9, 9

; (relocated NAMTBL decoration)
; 3x4: tongue monster (was: 3x3)
L9CEF.RELOCATED:
        db      3,4
        incbin  "resources/patched/decoration/namtbl@9cef.tmx.bin"

; (padding: 4 bytes)
	padding_to_959D: equ $959D - $
	ds	$959D - $, $ff

; $959D -----------------------------------------------------------------------

L959D:	incbin  "original/YoukaiYashiki.rom", $959D - BASE, $95DF - $959D

; Patches the player sprite colors (entering well)
L95DF:	ld      a, PLAYER_SPRITE_COLOR_1
L95E1:	ld      ($E3E3), a
L95E4:	ld      a, PLAYER_SPRITE_COLOR_2

; Patches the player entering well sprite height
L95E6:	incbin  "original/YoukaiYashiki.rom", $95E6 - BASE, $963B - $95E6
L963B:	cp	PLAYER_ENTERING_WELL_SPRITE_HEIGHT
L963D:	incbin  "original/YoukaiYashiki.rom", $963d - BASE, $9674 - $963d
L9674:	add	PLAYER_ENTERING_WELL_SPRITE_HEIGHT
        ld      ($E3E0), a
        ld      ($E3F0), a
        add     a, 16 - PLAYER_ENTERING_WELL_SPRITE_HEIGHT
L967E:	incbin  "original/YoukaiYashiki.rom", $967e - BASE, $96C8 - $967e
L96C8:	cp	PLAYER_ENTERING_WELL_SPRITE_HEIGHT
L96CA:	incbin  "original/YoukaiYashiki.rom", $96CA - BASE, $9707 - $96CA

; $9707 -----------------------------------------------------------------------

; Patches the print scroll item, and print scrolls and keys (HUD) routines

; Patches the print scroll item routine
L9707:  ld      a, (iy + 04h)
        and     a
        jr      nz, .L9741
        ld      a, (iy + 03h)
        ld      hl, 0E02Ch
; hl += a
        add     a, l
        jr      nc, $ + 3
        inc     h
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz, $A080 ; _ZEROES_16b_AT_IY

        inc     (iy+04h)
        ld      (iy+05h), l
        ld      (iy+06h), h
        call    $A08B
        ld      (iy+07h), l
        ld      (iy+08h), h
        ld      de, .L55DC_2x2_ITEM_SCROLL          ; (relocatable)
        call    $A0AD                   ; print block routine
        ld      hl, $E1B9
        inc     [hl]
.L9741: ld      bc,01FFh
        call    $AFC5
        ret     nc
        ld      bc,04FCh
        call    $AFE8
        ret     nc
        ld      l, (iy+05h)
        ld      h, (iy+06h)
        inc     (hl)
        ld      l, (iy+07h)
        ld      h, (iy+08h)
        ld      de, .L55E2_2x2_ITEM_CLEAR          ; (relocatable)
        call    $A0AD                   ; print block routine
        call    .L977C                  ; print keys (HUD)
        call    $A080
        ld      hl, $E1B9
        dec     [hl]
        ld      a, 20h
        call    $B3AF                   ; add score routine
        ld      a, 01h
        jp      $B758

; (related NAMTBL decorations moved here from L555A section)
.L55DC_2x2_ITEM_SCROLL:	db      2,2, $8C, $8E, $8D, $8F ; 2x2: scroll item
.L55E2_2x2_ITEM_CLEAR:  db	2,2, $80, $80, $80, $80 ; 2x2: blank (removes scroll item)

; Patches the print scrolls and keys (HUD) routine
.L977C:
; Checks scroll count
        ld      a, (0E02Bh)
        inc     a
        ld      (0E02Bh), a
        cp      05h
        jr      c, .L97C8
        xor     a
        ld      (0E02Bh), a
; Clears scroll area
        ld      hl, 1AC1h
        ld      bc, 0004h
        ld      a, 60h
        call    FILVRM
        ld      hl, 1AE1h
        ld      bc, 0004h
        ld      a, 10h
        call    FILVRM
; ???
        ld      a, 03h
        call    $B764
; Increases key count
	ld	hl, $e046
	inc	[hl]
        ld      b, $00
	ld	c, [hl]
; Print keys (HUD)
        ld      hl,180Ah
        ld      a, $6f		; Key (HUD) top character (patched)
        call    FILVRM
        ld      hl,182Ah
        ld      a, ($e046)
        ld      c, a
        ld      a, $7f		; Key (HUD) bottom character (patched)
        jp	FILVRM

.L97C8:
; Prints scrolls (HUD)
        ld      hl, 1AC1h
	ld      a, (0E02Bh)
        ld      b, $00
        ld      c, a
        ld      a, $6e		; Scroll (HUD) character (patched)
        call    FILVRM
        ld      hl, 1AE1h
        ld      a, (0E02Bh)
        ld      c, a
        ld      a, $7e          ; Scroll (HUD) bottom character (patched)
        jp      FILVRM

; (padding: 10 bytes)
	padding_to_97E3: equ $97E3 - $
	ds	$97E3 - $, $ff

; $97E3 -----------------------------------------------------------------------

L97E3:	incbin  "original/YoukaiYashiki.rom", $97E3 - BASE, $9991 - $97E3

; Patches the NAMTBL definitions for the HUD
L9991:	db	$60, $70	; camera
L9993:	db	$60, $71	; flashlight
L9995:	db	$60, $72	; geta shoe
L9997:	db	$60, $73	; onigiri

L9999:	incbin  "original/YoukaiYashiki.rom", $9999 - BASE, $9B61 - $9999

; $9B61 -----------------------------------------------------------------------

; Patches the tongue monster routine to use 3x4 instead of 3x3
; (MUST be 38 bytes long)
L9B61:
        cp      $02
        jr      nz, $9B9D
        ld      a, (0E019h)
        and     $0F
        ret     nz
        ld      a, (iy + 08h)
        inc     (iy + 08h)
        cp      $03
        jr      nz, .L9B87
        inc     (iy + 04h)
; Coordinates
        ld      a, (iy + $05)
        add     -$20            ; (adjust due extra row)
        ld      l, a
        ld      h, (iy + $06)
; Definition
        ld      de, L9CEF.RELOCATED	; newer 3x4: tongue monster definition
        jp      $A0AD
.L9B87:
; 224/208 clock cycles, 38 bytes

; $9B87 -----------------------------------------------------------------------

L9B87:	incbin  "original/YoukaiYashiki.rom", $9B87 - BASE, $9cba - $9B87

; $9cba ----------------------------------------------------------------------

; Patches the closed window NAMTBL definitions

; 5x3: closed window (tongue monster)
L9CBA:  db      5,3
        incbin  "resources/patched/decoration/namtbl@9cbc.tmx.bin", 0, 15

; 5x3: half-open window (tongue monster)
L9CCB:  db      5,3
        incbin  "resources/patched/decoration/namtbl@9cbc.tmx.bin", 15, 15

; 5x3: open window (tongue monster)
L9CDC:  db      5,3
        incbin  "resources/patched/decoration/namtbl@9cbc.tmx.bin", 15, 15

; 3x4: tongue monster (was: 3x3)
	; (newer version bigger and does not fit; moved away)

; Relocated 11x blank character (used by L8500 "clear 11x11" routine)
L554F.RELOCATED:
	db      $80, $80, $80, $80, $80, $80, $80, $80
	db	$80, $80, $80

; (padding: 0 bytes)
	padding_to_9cf8: equ $9cf8 - $
	ds	$9cf8 - $, $ff

; $9cf8 ----------------------------------------------------------------------

L9CF8:	incbin  "original/YoukaiYashiki.rom", $9cf8 - BASE, $a7ab - $9cf8

; Patches the girl sprite colors
LA7AB:  ld      (iy + $03), GIRL_SPRITE_COLOR_1
LA7AF:  ld      (iy + $13), GIRL_SPRITE_COLOR_2
	; (falls through)

LA7B3:	incbin  "original/YoukaiYashiki.rom", $a7b3 - BASE, $a839 - $a7b3

; $a839 ----------------------------------------------------------------------

; Patches the ending NAMTBL
LA839:	IFEXIST ENGLISH
		incbin  "resources/patched/text/namtbl@a839.en.tmx.bin"
	ELSE
		incbin  "resources/patched/text/namtbl@a839.jp.tmx.bin"
	ENDIF

; $a853 ----------------------------------------------------------------------

LA853:	incbin  "original/YoukaiYashiki.rom", $a853 - BASE, $A9D6 - $a853

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

LA9FA:	incbin  "original/YoukaiYashiki.rom", $a9fa - BASE, $ae62 - $a9fa

; Patches the player dying sprite colors routine
; (MUST be 10 bytes long)
LAE62:	ld      (ix + 03h), DYING_SPRITE_COLOR_1
	ld      (ix + 13h), DYING_SPRITE_COLOR_2
	nop
	nop
	; (falls through)

LAE6C:	incbin  "original/YoukaiYashiki.rom", $ae6c - BASE, $aee1 - $ae6c

; $aee1 -----------------------------------------------------------------------

LAEE1:
	IF (DEBUG_START_AT_AREA = 0)

	incbin  "original/YoukaiYashiki.rom", $aee1 - BASE, $af20 - $aee1

	ELSE

; Patches the reset map coordinates based on current area
; - Allows to be called during initialization (easier testing)
; (MUST be 63 bytes long)
	ld      a, ($E00A)      ; Area
	call	.SET_MAP_X_Y
	jp	$800D		; (preserves original behaviour)

.SET_MAP_X_Y:
	ld	hl, .TABLE
	add	a
	add	l
	ld	l, a
	jr	nc, $ + 3
	inc	h
	ld	de, $E0A1
	ldi	; Map X
	ldi	; Map Y
	ret

.TABLE:
	db	1, 1	; Map 0
	db	1, 1	; Map 1
	db	1, 3	; Map 2
	db	0, 1	; Map 3
	db	1, 2	; Map 4

; (padding)
	padding_to_af20: equ $af20 - $
	ds	$af20 - $, $ff

	ENDIF

; $af20 -----------------------------------------------------------------------

LAF20:	incbin  "original/YoukaiYashiki.rom", $af20 - BASE, $af2c - $af20

; Patches the game over routine
; - Makes literal relocatable
LAF2C:	ld      hl, L5714

LAF2F:	incbin  "original/YoukaiYashiki.rom", $af2f - BASE, $af4a - $af2f

; Patches jump to relocated post-initialization routine (2/3)
LAF4A:	jp	L7EE3

LAF4D:	incbin  "original/YoukaiYashiki.rom", $af4d - BASE, $b02f - $af4d

; $b02f ----------------------------------------------------------------------

; Patches the LDIRVM main charset routines
; - Full charset
; - SPRTBL initialization removed (already initialized)
LB02F:
; CHRTBL
        ld      de, CHRTBL
        call    LB301
        ld      de, CHRTBL + CHRTBL_SIZE
        call    LB301
        ld      de, CHRTBL + CHRTBL_SIZE * 2
        call    LB301
; CLRTBL
        ld      de, CLRTBL
        call    LB30A
        ld      de, CLRTBL + CLRTBL_SIZE
        call    LB30A
        ld      de, CLRTBL + CLRTBL_SIZE * 2
        jp    	LB30A

; Patches the print empty HUD routine
; - Makes literals relocatables
LB056:
; Top
        ld      hl, L5705        ; "HISCORE:0000000"
        ld      de, $1811        ; (17,0)
        ld      bc, 15
        call    LDIRVM
        ld      hl, L5705 + 2    ; "SCORE:0000000"
        ld      de, $1833        ; (19,1)
        ld      bc, 13
        call    LDIRVM
; Bottom
        ld      hl, $1AC0        ; (0,22)
        ld      bc, 32
        ld      a, $60           ; (separator char)
        jp    	FILVRM

; (padding: 4 bytes)
	padding_to_b07a: equ $b07a - $
	ds	$b07a - $, $ff

; $b07a ----------------------------------------------------------------------

LB07A:	incbin  "original/YoukaiYashiki.rom", $b07a - BASE, $b301 - $b07a

; $b301 ----------------------------------------------------------------------

; Patches the LDIRVM main charset routines
; - Full charset
LB301:
        push    bc
        ld      hl, L6000
        ld      bc, CHRTBL_SIZE
        jr      $B2F7		; LDIRVM and move to next bank

LB30A:
        push    bc
        ld      hl, L7000
        ld      bc, CHRTBL_SIZE
        jr      $B2F7		; LDIRVM and move to next bank

; $b313 ----------------------------------------------------------------------

LB313:	incbin  "original/YoukaiYashiki.rom", $b313 - BASE, $b334 - $b313

; $b334 ----------------------------------------------------------------------

; Patches the LDIRVM title charset routine
; - Makes definition contiguous and relocatable
LB334:	push    bc	; (preserves counter)
; Title charset
        ld      hl, L6700
        ld      bc, $02BE
        call    LDIRVM
; Moves to the next bank
        ld      bc, $0800
        add     hl, bc
        ex      de, hl
        pop     bc	; (restores counter)
        djnz    LB334
; "CASIO" (stylized) removed: no longer a separate charset
	ret

; Patches the LDIRVM sprite patterns routine
; - Removed; embedded in initialization

; Relocated literal: "PUSH TRIG:1 OR SPACE"
L56DB:	db      $20, $25, $23, $18, $10, $24, $22, $19	; "PUSH TRI"
	db	$17, $10, $1F, $22, $10, $23, $20, $11	; "G OR SPA"
	db	$13, $15				; "CE"

; Relocated literal: "COPYRIGHT 1986 c CASIO"
L56EF:	db      $17, $16, $28, $0a, $29, $11, $2A, $19	; "GFX:YAZI"
	db	$1F, $18, $10, $13, $1F, $14, $15, $0a	; "OH CODE:"
	db	$1e, $15, $23, $24, $22, $25, $1f, $10	; "NESTRUO "
	db	$02, $00, $02, $01			; "2021"

; (padding: 0 bytes)
	padding_to_b379: equ $b379 - $
	ds	$b379 - $, $ff

; $b379 -----------------------------------------------------------------------

; Patches the calls to use the WRTPSG patched routine
LB379:	incbin  "original/YoukaiYashiki.rom", $b379 - BASE, $B891 - $b379
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
