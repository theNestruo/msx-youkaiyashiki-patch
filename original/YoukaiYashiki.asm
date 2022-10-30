
        ORG     4000h

        DB      41h             ; 'A'
        DB      42h             ; 'B'
        DB      10h
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h

        ; Entry Point
        ; --- START PROC L4010 ---
L4010:  di
        call    0041h
        call    0138h
        rrca
        rrca
        and     03h
        ld      c,a
        ld      b,00h
        ld      hl,0FCC1h       ; address or value?
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
        call    0024h
        jp      L8000

L4038:  DB      44h             ; 'D'
        DB      40h             ; '@'
        DB      62h             ; 'b'
        DB      40h             ; '@'
        DB      0C6h
        DB      40h             ; '@'
        DB      0Ch
        DB      41h             ; 'A'
        DB      3Eh             ; '>'
        DB      41h             ; 'A'
        DB      8Eh
        DB      41h             ; 'A'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      09h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      02h
        DB      03h
        DB      04h
        DB      06h
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      05h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Ah
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Bh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Dh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Eh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Fh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      11h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      12h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      19h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      1Fh
        DB      17h
        DB      1Dh
        DB      1Eh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      1Ah
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      1Bh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      1Ch
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      21h             ; '!'
        DB      22h             ; '"'
        DB      23h             ; '#'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      24h             ; '$'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      2Eh             ; '.'
        DB      2Fh             ; '/'
        DB      00h
        DB      00h
        DB      25h             ; '%'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      2Dh             ; '-'
        DB      00h
        DB      00h
        DB      00h
        DB      "&'()*+,"
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      "4789:"
        DB      00h
        DB      00h
        DB      30h             ; '0'
        DB      31h             ; '1'
        DB      32h             ; '2'
        DB      35h             ; '5'
        DB      00h
        DB      00h
        DB      00h
        DB      3Bh             ; ';'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      33h             ; '3'
        DB      36h             ; '6'
        DB      3Dh             ; '='
        DB      3Eh             ; '>'
        DB      00h
        DB      3Ch             ; '<'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      3Fh             ; '?'
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      41h             ; 'A'
        DB      42h             ; 'B'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      43h             ; 'C'
        DB      44h             ; 'D'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      "EFGHI"
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      42h             ; 'B'
        DB      40h             ; '@'
        DB      42h             ; 'B'
        DB      0AFh
        DB      "B:CmC"
        DB      0A8h
        DB      43h             ; 'C'
        DB      0CFh
        DB      43h             ; 'C'
        DB      02h
        DB      44h             ; 'D'
        DB      35h             ; '5'
        DB      44h             ; 'D'
        DB      90h
        DB      44h             ; 'D'
        DB      9Bh
        DB      44h             ; 'D'
        DB      0C2h
        DB      44h             ; 'D'
        DB      0F5h
        DB      "D$E[E"
        DB      8Ah
        DB      45h             ; 'E'
        DB      0BDh
        DB      45h             ; 'E'
        DB      0F8h
        DB      "E7F7F7F7F7FBF"
        DB      0A1h
        DB      46h             ; 'F'
        DB      0C4h
        DB      46h             ; 'F'
        DB      0F7h
        DB      46h             ; 'F'
        DB      22h             ; '"'
        DB      47h             ; 'G'
        DB      59h             ; 'Y'
        DB      47h             ; 'G'
        DB      88h
        DB      47h             ; 'G'
        DB      0C3h
        DB      47h             ; 'G'
        DB      0D6h
        DB      47h             ; 'G'
        DB      19h
        DB      "HTHpH"
        DB      0A8h
        DB      48h             ; 'H'
        DB      0D8h
        DB      48h             ; 'H'
        DB      0F0h
        DB      48h             ; 'H'
        DB      14h
        DB      "I8IhI"
        DB      88h
        DB      49h             ; 'I'
        DB      0B0h
        DB      49h             ; 'I'
        DB      0C8h
        DB      49h             ; 'I'
        DB      0E4h
        DB      49h             ; 'I'
        DB      18h
        DB      "J@J`JlJ"
        DB      0ABh
        DB      4Ah             ; 'J'
        DB      0D3h
        DB      4Ah             ; 'J'
        DB      0FFh
        DB      "J#KKK{K"
        DB      0A7h
        DB      4Bh             ; 'K'
        DB      0A7h
        DB      4Bh             ; 'K'
        DB      0BBh
        DB      4Bh             ; 'K'
        DB      0CFh
        DB      4Bh             ; 'K'
        DB      0F7h
        DB      4Bh             ; 'K'
        DB      13h
        DB      "L'LfL"
        DB      91h
        DB      4Ch             ; 'L'
        DB      0C0h
        DB      4Ch             ; 'L'
        DB      0E7h
        DB      4Ch             ; 'L'
        DB      0Bh
        DB      "M#MCMoM"
        DB      0B6h
        DB      4Dh             ; 'M'
        DB      0F5h
        DB      4Dh             ; 'M'
        DB      34h             ; '4'
        DB      4Eh             ; 'N'
        DB      7Fh
        DB      4Eh             ; 'N'
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      00h
        DB      0Fh
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      11h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      12h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0Ah
        DB      02h
        DB      0BAh
        DB      55h             ; 'U'
        DB      0Bh
        DB      03h
        DB      0C0h
        DB      55h             ; 'U'
        DB      0Ah
        DB      05h
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Ah
        DB      09h
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Ah
        DB      0Dh
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Ch
        DB      12h
        DB      0ACh
        DB      55h             ; 'U'
        DB      0Ch
        DB      14h
        DB      0ACh
        DB      55h             ; 'U'
        DB      0Ah
        DB      16h
        DB      0B0h
        DB      55h             ; 'U'
        DB      0Ah
        DB      18h
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Ah
        DB      1Ch
        DB      0BAh
        DB      55h             ; 'U'
        DB      0Ah
        DB      1Dh
        DB      0B0h
        DB      55h             ; 'U'
        DB      03h
        DB      0Ah
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      0Ch
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      0Eh
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      10h
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      13h
        DB      0D2h
        DB      55h             ; 'U'
        DB      03h
        DB      12h
        DB      0D8h
        DB      55h             ; 'U'
        DB      04h
        DB      11h
        DB      0D8h
        DB      55h             ; 'U'
        DB      05h
        DB      12h
        DB      0D8h
        DB      55h             ; 'U'
        DB      05h
        DB      14h
        DB      0D8h
        DB      55h             ; 'U'
        DB      05h
        DB      16h
        DB      0D8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      00h
        DB      0Fh
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      11h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      12h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0Ah
        DB      00h
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Bh
        DB      04h
        DB      0C5h
        DB      55h             ; 'U'
        DB      0Bh
        DB      06h
        DB      0C0h
        DB      55h             ; 'U'
        DB      0Bh
        DB      07h
        DB      0C5h
        DB      55h             ; 'U'
        DB      0Ah
        DB      08h
        DB      9Ah
        DB      55h             ; 'U'
        DB      0Ah
        DB      0Ch
        DB      0B0h
        DB      55h             ; 'U'
        DB      0Ch
        DB      0Dh
        DB      0ACh
        DB      55h             ; 'U'
        DB      0Ch
        DB      0Eh
        DB      0ACh
        DB      55h             ; 'U'
        DB      0Ch
        DB      0Fh
        DB      0ACh
        DB      55h             ; 'U'
        DB      0Ch
        DB      10h
        DB      0ACh
        DB      55h             ; 'U'
        DB      08h
        DB      0Fh
        DB      0B0h
        DB      55h             ; 'U'
        DB      0Ah
        DB      11h
        DB      9Ah
        DB      55h             ; 'U'
        DB      09h
        DB      15h
        DB      0BAh
        DB      55h             ; 'U'
        DB      09h
        DB      16h
        DB      0BAh
        DB      55h             ; 'U'
        DB      09h
        DB      17h
        DB      0BAh
        DB      55h             ; 'U'
        DB      09h
        DB      18h
        DB      0BAh
        DB      55h             ; 'U'
        DB      0Dh
        DB      15h
        DB      0CDh
        DB      55h             ; 'U'
        DB      00h
        DB      1Ch
        DB      60h             ; '`'
        DB      55h             ; 'U'
        DB      03h
        DB      07h
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      09h
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      0Bh
        DB      0D8h
        DB      55h             ; 'U'
        DB      02h
        DB      11h
        DB      0D8h
        DB      55h             ; 'U'
        DB      02h
        DB      13h
        DB      0D8h
        DB      55h             ; 'U'
        DB      02h
        DB      15h
        DB      0D8h
        DB      55h             ; 'U'
        DB      04h
        DB      0Bh
        DB      0D8h
        DB      55h             ; 'U'
        DB      04h
        DB      0Dh
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      15h
        DB      0D8h
        DB      55h             ; 'U'
        DB      03h
        DB      17h
        DB      0D8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      05h
        DB      00h
        DB      0Fh
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Ah
        DB      03h
        DB      0Ah
        DB      06h
        DB      04h
        DB      03h
        DB      0Ah
        DB      1Bh
        DB      05h
        DB      03h
        DB      0Eh
        DB      00h
        DB      0Bh
        DB      03h
        DB      0Eh
        DB      0Dh
        DB      13h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      07h
        DB      15h
        DB      07h
        DB      00h
        DB      0FFh
        DB      00h
        DB      00h
        DB      82h
        DB      56h             ; 'V'
        DB      0Eh
        DB      00h
        DB      8Eh
        DB      56h             ; 'V'
        DB      02h
        DB      11h
        DB      40h             ; '@'
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0Ah
        DB      00h
        DB      05h
        DB      03h
        DB      08h
        DB      06h
        DB      09h
        DB      03h
        DB      06h
        DB      11h
        DB      06h
        DB      03h
        DB      04h
        DB      18h
        DB      04h
        DB      03h
        DB      09h
        DB      17h
        DB      09h
        DB      03h
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      06h
        DB      13h
        DB      08h
        DB      00h
        DB      0Eh
        DB      0Ah
        DB      05h
        DB      00h
        DB      0FFh
        DB      13h
        DB      13h
        DB      5Ah             ; 'Z'
        DB      55h             ; 'U'
        DB      02h
        DB      03h
        DB      40h             ; '@'
        DB      56h             ; 'V'
        DB      0Ah
        DB      06h
        DB      1Ch
        DB      56h             ; 'V'
        DB      0Ah
        DB      0Ah
        DB      2Eh             ; '.'
        DB      56h             ; 'V'
        DB      0FFh
        DB      07h
        DB      09h
        DB      0Fh
        DB      03h
        DB      0Dh
        DB      05h
        DB      0Bh
        DB      03h
        DB      0Fh
        DB      14h
        DB      09h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      00h
        DB      13h
        DB      07h
        DB      00h
        DB      07h
        DB      0Bh
        DB      06h
        DB      00h
        DB      07h
        DB      16h
        DB      08h
        DB      00h
        DB      0FFh
        DB      11h
        DB      1Dh
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      13h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      09h
        DB      00h
        DB      0Ah
        DB      03h
        DB      06h
        DB      0Dh
        DB      13h
        DB      03h
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      09h
        DB      07h
        DB      05h
        DB      00h
        DB      0Eh
        DB      11h
        DB      05h
        DB      00h
        DB      0FFh
        DB      02h
        DB      09h
        DB      40h             ; '@'
        DB      56h             ; 'V'
        DB      02h
        DB      16h
        DB      40h             ; '@'
        DB      56h             ; 'V'
        DB      0Ah
        DB      12h
        DB      51h             ; 'Q'
        DB      56h             ; 'V'
        DB      0Ah
        DB      16h
        DB      1Ch
        DB      56h             ; 'V'
        DB      0Ah
        DB      1Ah
        DB      1Ch
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      06h
        DB      00h
        DB      1Bh
        DB      03h
        DB      0Dh
        DB      0Bh
        DB      04h
        DB      03h
        DB      0Bh
        DB      11h
        DB      0Fh
        DB      03h
        DB      11h
        DB      00h
        DB      15h
        DB      03h
        DB      13h
        DB      1Ch
        DB      04h
        DB      03h
        DB      0FFh
        DB      06h
        DB      02h
        DB      0Bh
        DB      00h
        DB      11h
        DB      07h
        DB      03h
        DB      00h
        DB      0Bh
        DB      18h
        DB      09h
        DB      00h
        DB      0FFh
        DB      13h
        DB      07h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      07h
        DB      1Ch
        DB      2Eh             ; '.'
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      06h
        DB      03h
        DB      06h
        DB      00h
        DB      04h
        DB      03h
        DB      0Ah
        DB      04h
        DB      07h
        DB      03h
        DB      08h
        DB      0Ch
        DB      04h
        DB      03h
        DB      06h
        DB      11h
        DB      04h
        DB      03h
        DB      03h
        DB      16h
        DB      05h
        DB      03h
        DB      08h
        DB      17h
        DB      07h
        DB      03h
        DB      0Eh
        DB      00h
        DB      0Bh
        DB      03h
        DB      13h
        DB      00h
        DB      0Bh
        DB      03h
        DB      0Eh
        DB      0Bh
        DB      15h
        DB      02h
        DB      13h
        DB      0Bh
        DB      15h
        DB      02h
        DB      0FFh
        DB      00h
        DB      07h
        DB      0Ah
        DB      00h
        DB      00h
        DB      18h
        DB      03h
        DB      00h
        DB      08h
        DB      1Ah
        DB      06h
        DB      00h
        DB      0FFh
        DB      00h
        DB      07h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      00h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      0Eh
        DB      0Bh
        DB      8Eh
        DB      56h             ; 'V'
        DB      0Ah
        DB      0Ch
        DB      1Ch
        DB      56h             ; 'V'
        DB      0Ah
        DB      10h
        DB      1Ch
        DB      56h             ; 'V'
        DB      0Ah
        DB      13h
        DB      1Ch
        DB      56h             ; 'V'
        DB      11h
        DB      08h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0Ch
        DB      1Dh
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      0Bh
        DB      00h
        DB      04h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      06h
        DB      16h
        DB      05h
        DB      03h
        DB      08h
        DB      10h
        DB      04h
        DB      03h
        DB      0Bh
        DB      05h
        DB      09h
        DB      03h
        DB      0Fh
        DB      0Eh
        DB      0Ah
        DB      03h
        DB      13h
        DB      00h
        DB      12h
        DB      03h
        DB      13h
        DB      17h
        DB      09h
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      13h
        DB      0Eh
        DB      7Bh             ; '{'
        DB      56h             ; 'V'
        DB      13h
        DB      1Bh
        DB      7Bh             ; '{'
        DB      56h             ; 'V'
        DB      04h
        DB      18h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      04h
        DB      0Ch
        DB      07h
        DB      03h
        DB      07h
        DB      07h
        DB      06h
        DB      03h
        DB      08h
        DB      18h
        DB      05h
        DB      03h
        DB      0Bh
        DB      03h
        DB      06h
        DB      03h
        DB      0Dh
        DB      1Ah
        DB      06h
        DB      03h
        DB      0Fh
        DB      09h
        DB      0Ah
        DB      03h
        DB      0FFh
        DB      00h
        DB      0Eh
        DB      04h
        DB      01h
        DB      00h
        DB      1Bh
        DB      08h
        DB      01h
        DB      0Fh
        DB      0Ah
        DB      05h
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Eh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      00h
        DB      1Bh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      0Ah
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      0FFh
        DB      04h
        DB      09h
        DB      06h
        DB      03h
        DB      04h
        DB      17h
        DB      04h
        DB      03h
        DB      08h
        DB      1Ah
        DB      05h
        DB      03h
        DB      0Ch
        DB      06h
        DB      05h
        DB      03h
        DB      11h
        DB      0Ah
        DB      06h
        DB      03h
        DB      0Eh
        DB      17h
        DB      05h
        DB      03h
        DB      0FFh
        DB      11h
        DB      0Dh
        DB      03h
        DB      01h
        DB      00h
        DB      0Ah
        DB      04h
        DB      01h
        DB      08h
        DB      1Ah
        DB      06h
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Ah
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      0Dh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      0FFh
        DB      04h
        DB      0Bh
        DB      04h
        DB      03h
        DB      06h
        DB      07h
        DB      03h
        DB      03h
        DB      08h
        DB      04h
        DB      03h
        DB      03h
        DB      0Bh
        DB      00h
        DB      05h
        DB      03h
        DB      0Eh
        DB      05h
        DB      03h
        DB      03h
        DB      10h
        DB      09h
        DB      04h
        DB      03h
        DB      0Dh
        DB      0Eh
        DB      04h
        DB      03h
        DB      0Dh
        DB      18h
        DB      03h
        DB      03h
        DB      0Ah
        DB      1Ch
        DB      04h
        DB      03h
        DB      0FFh
        DB      00h
        DB      0Dh
        DB      04h
        DB      01h
        DB      0Dh
        DB      0Fh
        DB      07h
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Dh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      0Fh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      0FFh
        DB      04h
        DB      0Fh
        DB      02h
        DB      03h
        DB      03h
        DB      17h
        DB      09h
        DB      03h
        DB      07h
        DB      00h
        DB      08h
        DB      03h
        DB      07h
        DB      0Ch
        DB      03h
        DB      03h
        DB      0Ah
        DB      0Fh
        DB      03h
        DB      03h
        DB      07h
        DB      1Bh
        DB      03h
        DB      03h
        DB      08h
        DB      17h
        DB      04h
        DB      03h
        DB      0FFh
        DB      00h
        DB      0Fh
        DB      04h
        DB      01h
        DB      07h
        DB      05h
        DB      0Dh
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Fh
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      05h
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      0FFh
        DB      03h
        DB      03h
        DB      04h
        DB      03h
        DB      06h
        DB      01h
        DB      03h
        DB      03h
        DB      09h
        DB      06h
        DB      08h
        DB      03h
        DB      0Ch
        DB      01h
        DB      03h
        DB      03h
        DB      0Eh
        DB      06h
        DB      08h
        DB      03h
        DB      10h
        DB      01h
        DB      03h
        DB      03h
        DB      0Ah
        DB      1Bh
        DB      05h
        DB      03h
        DB      0FFh
        DB      00h
        DB      05h
        DB      03h
        DB      01h
        DB      0Eh
        DB      0Ch
        DB      06h
        DB      01h
        DB      0FFh
        DB      00h
        DB      05h
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      0Ch
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      08h
        DB      1Dh
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      04h
        DB      09h
        DB      06h
        DB      03h
        DB      08h
        DB      06h
        DB      05h
        DB      03h
        DB      0Ch
        DB      03h
        DB      05h
        DB      03h
        DB      10h
        DB      00h
        DB      05h
        DB      03h
        DB      0Ah
        DB      19h
        DB      07h
        DB      03h
        DB      0Ah
        DB      12h
        DB      01h
        DB      03h
        DB      0Eh
        DB      0Fh
        DB      01h
        DB      03h
        DB      0FFh
        DB      00h
        DB      0Ch
        DB      04h
        DB      01h
        DB      0Eh
        DB      0Ch
        DB      06h
        DB      01h
        DB      0Bh
        DB      0Fh
        DB      03h
        DB      01h
        DB      07h
        DB      12h
        DB      03h
        DB      01h
        DB      07h
        DB      19h
        DB      03h
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Ch
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      13h
        DB      0Ch
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      0FFh
        DB      03h
        DB      05h
        DB      05h
        DB      03h
        DB      06h
        DB      0Ch
        DB      01h
        DB      03h
        DB      0Bh
        DB      08h
        DB      01h
        DB      03h
        DB      0Fh
        DB      0Bh
        DB      01h
        DB      03h
        DB      10h
        DB      11h
        DB      01h
        DB      03h
        DB      0Ch
        DB      10h
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      00h
        DB      0Ch
        DB      06h
        DB      01h
        DB      07h
        DB      08h
        DB      04h
        DB      01h
        DB      09h
        DB      0Bh
        DB      06h
        DB      01h
        DB      0Ch
        DB      11h
        DB      04h
        DB      01h
        DB      10h
        DB      0Eh
        DB      03h
        DB      01h
        DB      0FFh
        DB      00h
        DB      0Ch
        DB      78h             ; 'x'
        DB      56h             ; 'V'
        DB      11h
        DB      19h
        DB      0E8h
        DB      55h             ; 'U'
        DB      11h
        DB      02h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      00h
        DB      00h
        DB      0Fh
        DB      03h
        DB      00h
        DB      10h
        DB      10h
        DB      03h
        DB      05h
        DB      00h
        DB      04h
        DB      03h
        DB      05h
        DB      07h
        DB      19h
        DB      03h
        DB      0Ah
        DB      00h
        DB      0Bh
        DB      03h
        DB      0Ah
        DB      0Eh
        DB      0Ah
        DB      03h
        DB      08h
        DB      18h
        DB      08h
        DB      03h
        DB      0Ch
        DB      1Ah
        DB      06h
        DB      03h
        DB      0Fh
        DB      00h
        DB      04h
        DB      03h
        DB      0Fh
        DB      07h
        DB      04h
        DB      03h
        DB      0Fh
        DB      0Eh
        DB      07h
        DB      03h
        DB      0Fh
        DB      18h
        DB      08h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      00h
        DB      0Fh
        DB      05h
        DB      00h
        DB      0FFh
        DB      06h
        DB      02h
        DB      1Ch
        DB      56h             ; 'V'
        DB      06h
        DB      07h
        DB      2Eh             ; '.'
        DB      56h             ; 'V'
        DB      06h
        DB      11h
        DB      1Ch
        DB      56h             ; 'V'
        DB      02h
        DB      18h
        DB      40h             ; '@'
        DB      56h             ; 'V'
        DB      00h
        DB      0Fh
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      08h
        DB      5Ah             ; 'Z'
        DB      55h             ; 'U'
        DB      13h
        DB      18h
        DB      5Ah             ; 'Z'
        DB      55h             ; 'U'
        DB      11h
        DB      04h
        DB      0E8h
        DB      55h             ; 'U'
        DB      11h
        DB      15h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      0Dh
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      00h
        DB      09h
        DB      0Dh
        DB      00h
        DB      00h
        DB      18h
        DB      0Dh
        DB      00h
        DB      0Dh
        DB      0Fh
        DB      07h
        DB      00h
        DB      0FFh
        DB      0Bh
        DB      12h
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      09h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      00h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      0Fh
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      0FFh
        DB      03h
        DB      09h
        DB      04h
        DB      03h
        DB      04h
        DB      19h
        DB      07h
        DB      03h
        DB      05h
        DB      03h
        DB      04h
        DB      03h
        DB      07h
        DB      09h
        DB      04h
        DB      03h
        DB      08h
        DB      10h
        DB      0Dh
        DB      03h
        DB      0Ah
        DB      03h
        DB      04h
        DB      03h
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      08h
        DB      14h
        DB      06h
        DB      00h
        DB      0Eh
        DB      09h
        DB      06h
        DB      00h
        DB      0Eh
        DB      18h
        DB      06h
        DB      00h
        DB      0FFh
        DB      13h
        DB      09h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      0FFh
        DB      05h
        DB      06h
        DB      06h
        DB      03h
        DB      09h
        DB      16h
        DB      05h
        DB      03h
        DB      0Bh
        DB      0Dh
        DB      06h
        DB      03h
        DB      0Eh
        DB      09h
        DB      0Bh
        DB      03h
        DB      0FFh
        DB      00h
        DB      08h
        DB      05h
        DB      00h
        DB      00h
        DB      18h
        DB      09h
        DB      00h
        DB      11h
        DB      10h
        DB      03h
        DB      00h
        DB      0FFh
        DB      00h
        DB      08h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      00h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      10h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      0FFh
        DB      04h
        DB      00h
        DB      0Dh
        DB      03h
        DB      04h
        DB      14h
        DB      0Ch
        DB      03h
        DB      09h
        DB      0Ah
        DB      06h
        DB      03h
        DB      0Dh
        DB      06h
        DB      06h
        DB      03h
        DB      10h
        DB      0Dh
        DB      06h
        DB      03h
        DB      13h
        DB      00h
        DB      17h
        DB      03h
        DB      0FFh
        DB      04h
        DB      03h
        DB      0Fh
        DB      00h
        DB      04h
        DB      18h
        DB      10h
        DB      00h
        DB      00h
        DB      10h
        DB      10h
        DB      00h
        DB      0FFh
        DB      0Bh
        DB      06h
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      10h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      13h
        DB      10h
        DB      5Ah             ; 'Z'
        DB      55h             ; 'U'
        DB      0FFh
        DB      09h
        DB      00h
        DB      14h
        DB      03h
        DB      0Eh
        DB      03h
        DB      04h
        DB      03h
        DB      0Eh
        DB      0Ah
        DB      05h
        DB      03h
        DB      0Eh
        DB      12h
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      00h
        DB      10h
        DB      09h
        DB      00h
        DB      00h
        DB      18h
        DB      13h
        DB      00h
        DB      0Eh
        DB      04h
        DB      05h
        DB      00h
        DB      0FFh
        DB      00h
        DB      10h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      00h
        DB      18h
        DB      5Dh             ; ']'
        DB      55h             ; 'U'
        DB      07h
        DB      07h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      05h
        DB      00h
        DB      0Eh
        DB      03h
        DB      05h
        DB      17h
        DB      09h
        DB      03h
        DB      08h
        DB      00h
        DB      14h
        DB      03h
        DB      08h
        DB      15h
        DB      08h
        DB      03h
        DB      0Ch
        DB      00h
        DB      07h
        DB      03h
        DB      0Fh
        DB      00h
        DB      07h
        DB      03h
        DB      0Dh
        DB      0Ch
        DB      07h
        DB      03h
        DB      0Dh
        DB      16h
        DB      0Ah
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      05h
        DB      1Ch
        DB      56h             ; 'V'
        DB      01h
        DB      0Ah
        DB      1Ch
        DB      56h             ; 'V'
        DB      11h
        DB      19h
        DB      0E8h
        DB      55h             ; 'U'
        DB      11h
        DB      0Eh
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      05h
        DB      00h
        DB      03h
        DB      03h
        DB      0Dh
        DB      00h
        DB      05h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      0Eh
        DB      09h
        DB      05h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      06h
        DB      00h
        DB      06h
        DB      03h
        DB      0Dh
        DB      00h
        DB      04h
        DB      03h
        DB      05h
        DB      0Ah
        DB      06h
        DB      03h
        DB      05h
        DB      15h
        DB      05h
        DB      03h
        DB      05h
        DB      1Eh
        DB      02h
        DB      03h
        DB      0Ah
        DB      07h
        DB      0Bh
        DB      03h
        DB      0Ah
        DB      13h
        DB      09h
        DB      03h
        DB      0Ah
        DB      1Dh
        DB      03h
        DB      03h
        DB      0Fh
        DB      06h
        DB      0Ch
        DB      03h
        DB      0Fh
        DB      13h
        DB      09h
        DB      03h
        DB      0Fh
        DB      1Dh
        DB      03h
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      02h
        DB      02h
        DB      1Ch
        DB      56h             ; 'V'
        DB      0Bh
        DB      0Bh
        DB      51h             ; 'Q'
        DB      56h             ; 'V'
        DB      0Bh
        DB      16h
        DB      51h             ; 'Q'
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0Dh
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      06h
        DB      00h
        DB      0Fh
        DB      03h
        DB      06h
        DB      12h
        DB      07h
        DB      03h
        DB      06h
        DB      1Bh
        DB      05h
        DB      03h
        DB      0FFh
        DB      0Dh
        DB      0Ah
        DB      06h
        DB      00h
        DB      06h
        DB      15h
        DB      07h
        DB      00h
        DB      0FFh
        DB      09h
        DB      18h
        DB      1Ch
        DB      56h             ; 'V'
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      11h
        DB      18h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      09h
        DB      03h
        DB      1Ch
        DB      56h             ; 'V'
        DB      09h
        DB      07h
        DB      2Eh             ; '.'
        DB      56h             ; 'V'
        DB      0Eh
        DB      12h
        DB      8Eh
        DB      56h             ; 'V'
        DB      0FFh
        DB      0Bh
        DB      0Ch
        DB      04h
        DB      03h
        DB      0Ah
        DB      10h
        DB      05h
        DB      03h
        DB      09h
        DB      15h
        DB      03h
        DB      03h
        DB      08h
        DB      18h
        DB      03h
        DB      03h
        DB      07h
        DB      1Bh
        DB      05h
        DB      03h
        DB      0FEh
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      06h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      00h
        DB      05h
        DB      03h
        DB      06h
        DB      05h
        DB      03h
        DB      03h
        DB      05h
        DB      08h
        DB      03h
        DB      03h
        DB      04h
        DB      0Bh
        DB      03h
        DB      03h
        DB      07h
        DB      0Eh
        DB      03h
        DB      03h
        DB      08h
        DB      11h
        DB      03h
        DB      03h
        DB      09h
        DB      14h
        DB      03h
        DB      03h
        DB      06h
        DB      18h
        DB      08h
        DB      03h
        DB      0Bh
        DB      17h
        DB      09h
        DB      03h
        DB      10h
        DB      06h
        DB      1Ah
        DB      03h
        DB      0FEh
        DB      0Eh
        DB      00h
        DB      06h
        DB      06h
        DB      11h
        DB      06h
        DB      1Ah
        DB      03h
        DB      0FFh
        DB      04h
        DB      0Ch
        DB      0Ch
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      06h
        DB      00h
        DB      08h
        DB      03h
        DB      0Bh
        DB      00h
        DB      0Bh
        DB      03h
        DB      0Bh
        DB      0Eh
        DB      04h
        DB      03h
        DB      0Ah
        DB      12h
        DB      03h
        DB      03h
        DB      09h
        DB      15h
        DB      03h
        DB      03h
        DB      10h
        DB      00h
        DB      17h
        DB      03h
        DB      0FEh
        DB      11h
        DB      00h
        DB      17h
        DB      03h
        DB      07h
        DB      19h
        DB      07h
        DB      0Dh
        DB      0FFh
        DB      10h
        DB      14h
        DB      04h
        DB      03h
        DB      0FFh
        DB      05h
        DB      1Ch
        DB      0E8h
        DB      55h             ; 'U'
        DB      13h
        DB      14h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      17h
        DB      14h
        DB      00h
        DB      19h
        DB      07h
        DB      14h
        DB      0FFh
        DB      00h
        DB      14h
        DB      14h
        DB      03h
        DB      0FFh
        DB      00h
        DB      14h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      13h
        DB      14h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      17h
        DB      0Bh
        DB      0Bh
        DB      00h
        DB      07h
        DB      09h
        DB      0Eh
        DB      0Ah
        DB      0Dh
        DB      06h
        DB      00h
        DB      19h
        DB      09h
        DB      14h
        DB      0FFh
        DB      00h
        DB      14h
        DB      0Eh
        DB      03h
        DB      0Eh
        DB      09h
        DB      06h
        DB      03h
        DB      0FFh
        DB      00h
        DB      14h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      13h
        DB      09h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      07h
        DB      03h
        DB      00h
        DB      0Ah
        DB      0Dh
        DB      03h
        DB      07h
        DB      0Ch
        DB      14h
        DB      0Ah
        DB      0FFh
        DB      00h
        DB      09h
        DB      13h
        DB      03h
        DB      0FFh
        DB      11h
        DB      03h
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      09h
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      11h
        DB      01h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      07h
        DB      10h
        DB      10h
        DB      03h
        DB      0Eh
        DB      14h
        DB      03h
        DB      03h
        DB      0Dh
        DB      17h
        DB      03h
        DB      03h
        DB      0Ch
        DB      1Ah
        DB      06h
        DB      03h
        DB      0FEh
        DB      07h
        DB      00h
        DB      08h
        DB      0Ah
        DB      0Ah
        DB      08h
        DB      02h
        DB      07h
        DB      0Dh
        DB      0Ah
        DB      02h
        DB      04h
        DB      0Fh
        DB      0Ch
        DB      08h
        DB      02h
        DB      0FFh
        DB      07h
        DB      15h
        DB      07h
        DB      03h
        DB      0FFh
        DB      0Dh
        DB      0Fh
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      07h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0Ch
        DB      00h
        DB      1Ah
        DB      03h
        DB      13h
        DB      00h
        DB      05h
        DB      03h
        DB      0FEh
        DB      12h
        DB      05h
        DB      04h
        DB      02h
        DB      11h
        DB      09h
        DB      05h
        DB      03h
        DB      10h
        DB      0Eh
        DB      12h
        DB      04h
        DB      0FFh
        DB      07h
        DB      1Ch
        DB      09h
        DB      03h
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      00h
        DB      0Dh
        DB      03h
        DB      04h
        DB      12h
        DB      0Eh
        DB      03h
        DB      0FEh
        DB      10h
        DB      00h
        DB      08h
        DB      04h
        DB      0Fh
        DB      08h
        DB      05h
        DB      05h
        DB      0Eh
        DB      0Dh
        DB      05h
        DB      06h
        DB      0Dh
        DB      12h
        DB      08h
        DB      07h
        DB      0Ah
        DB      1Ah
        DB      06h
        DB      0Ah
        DB      0FFh
        DB      04h
        DB      14h
        DB      09h
        DB      03h
        DB      0FFh
        DB      0Ch
        DB      0Fh
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      04h
        DB      00h
        DB      08h
        DB      03h
        DB      0FEh
        DB      0Ah
        DB      00h
        DB      08h
        DB      0Ah
        DB      0Dh
        DB      08h
        DB      18h
        DB      07h
        DB      04h
        DB      08h
        DB      18h
        DB      04h
        DB      00h
        DB      08h
        DB      18h
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      16h
        DB      02h
        DB      04h
        DB      00h
        DB      16h
        DB      04h
        DB      00h
        DB      16h
        DB      0Ah
        DB      08h
        DB      0Dh
        DB      00h
        DB      20h             ; ' '
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0Bh
        DB      0Eh
        DB      0E8h
        DB      55h             ; 'U'
        DB      02h
        DB      14h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      05h
        DB      08h
        DB      09h
        DB      03h
        DB      0Ah
        DB      14h
        DB      02h
        DB      03h
        DB      09h
        DB      17h
        DB      02h
        DB      03h
        DB      08h
        DB      1Ah
        DB      03h
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      05h
        DB      08h
        DB      0Dh
        DB      00h
        DB      20h             ; ' '
        DB      07h
        DB      0FFh
        DB      05h
        DB      09h
        DB      08h
        DB      03h
        DB      00h
        DB      0Fh
        DB      05h
        DB      03h
        DB      00h
        DB      1Bh
        DB      08h
        DB      03h
        DB      0FFh
        DB      03h
        DB      0Ah
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      0Fh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      00h
        DB      1Bh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      05h
        DB      14h
        DB      00h
        DB      05h
        DB      06h
        DB      12h
        DB      00h
        DB      0Bh
        DB      0Ch
        DB      07h
        DB      0Ah
        DB      0Bh
        DB      0Ch
        DB      07h
        DB      0FFh
        DB      0Ah
        DB      0Fh
        DB      0Ah
        DB      03h
        DB      00h
        DB      1Bh
        DB      14h
        DB      03h
        DB      0FFh
        DB      13h
        DB      0Fh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      00h
        DB      1Bh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      13h
        DB      1Bh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0Fh
        DB      14h
        DB      0Ch
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      0Bh
        DB      0Bh
        DB      00h
        DB      09h
        DB      07h
        DB      12h
        DB      00h
        DB      17h
        DB      02h
        DB      0FFh
        DB      0Fh
        DB      1Bh
        DB      05h
        DB      03h
        DB      0FFh
        DB      10h
        DB      0Ch
        DB      0E8h
        DB      55h             ; 'U'
        DB      13h
        DB      1Bh
        DB      6Fh             ; 'o'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0FEh
        DB      0Fh
        DB      00h
        DB      05h
        DB      05h
        DB      12h
        DB      05h
        DB      1Bh
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      09h
        DB      00h
        DB      05h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0Eh
        DB      0Ah
        DB      01h
        DB      03h
        DB      0Fh
        DB      0Eh
        DB      01h
        DB      03h
        DB      10h
        DB      12h
        DB      01h
        DB      03h
        DB      0Fh
        DB      16h
        DB      01h
        DB      03h
        DB      0Eh
        DB      1Bh
        DB      01h
        DB      03h
        DB      09h
        DB      1Bh
        DB      05h
        DB      03h
        DB      04h
        DB      07h
        DB      04h
        DB      03h
        DB      0FFh
        DB      09h
        DB      04h
        DB      0Ah
        DB      02h
        DB      09h
        DB      0Ah
        DB      05h
        DB      02h
        DB      07h
        DB      0Eh
        DB      08h
        DB      02h
        DB      04h
        DB      12h
        DB      0Ch
        DB      02h
        DB      07h
        DB      16h
        DB      08h
        DB      02h
        DB      09h
        DB      1Bh
        DB      05h
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      04h
        DB      02h
        DB      04h
        DB      03h
        DB      06h
        DB      0Bh
        DB      04h
        DB      03h
        DB      04h
        DB      12h
        DB      04h
        DB      03h
        DB      03h
        DB      19h
        DB      07h
        DB      03h
        DB      09h
        DB      00h
        DB      08h
        DB      03h
        DB      0Eh
        DB      02h
        DB      08h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FEh
        DB      0Ah
        DB      0Ah
        DB      16h
        DB      0Ah
        DB      0FFh
        DB      0FFh
        DB      08h
        DB      14h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      03h
        DB      00h
        DB      05h
        DB      03h
        DB      05h
        DB      06h
        DB      03h
        DB      03h
        DB      06h
        DB      0Ah
        DB      03h
        DB      03h
        DB      04h
        DB      0Eh
        DB      04h
        DB      03h
        DB      07h
        DB      12h
        DB      03h
        DB      03h
        DB      07h
        DB      18h
        DB      08h
        DB      03h
        DB      0FEh
        DB      0Ah
        DB      00h
        DB      0Fh
        DB      0Ah
        DB      08h
        DB      18h
        DB      08h
        DB      0Ch
        DB      0FFh
        DB      07h
        DB      13h
        DB      0Dh
        DB      02h
        DB      0FFh
        DB      13h
        DB      13h
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0FFh
        DB      07h
        DB      12h
        DB      0Eh
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      0Fh
        DB      14h
        DB      00h
        DB      18h
        DB      08h
        DB      04h
        DB      08h
        DB      18h
        DB      08h
        DB      0Ch
        DB      0Fh
        DB      0Fh
        DB      09h
        DB      05h
        DB      0FFh
        DB      00h
        DB      13h
        DB      07h
        DB      02h
        DB      0FFh
        DB      0Dh
        DB      12h
        DB      0E8h
        DB      55h             ; 'U'
        DB      00h
        DB      13h
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0FFh
        DB      07h
        DB      09h
        DB      06h
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      09h
        DB      05h
        DB      05h
        DB      00h
        DB      02h
        DB      02h
        DB      07h
        DB      00h
        DB      09h
        DB      0Ah
        DB      0Eh
        DB      10h
        DB      10h
        DB      06h
        DB      0FFh
        DB      07h
        DB      0Bh
        DB      0Dh
        DB      02h
        DB      0FFh
        DB      13h
        DB      0Bh
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0Ch
        DB      16h
        DB      0E8h
        DB      55h             ; 'U'
        DB      05h
        DB      03h
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0Ah
        DB      0Ah
        DB      03h
        DB      03h
        DB      0Ch
        DB      0Fh
        DB      03h
        DB      03h
        DB      0Eh
        DB      14h
        DB      03h
        DB      03h
        DB      0Bh
        DB      18h
        DB      03h
        DB      03h
        DB      07h
        DB      00h
        DB      06h
        DB      03h
        DB      0FEh
        DB      08h
        DB      00h
        DB      06h
        DB      0Ch
        DB      11h
        DB      06h
        DB      1Ah
        DB      03h
        DB      00h
        DB      10h
        DB      10h
        DB      08h
        DB      08h
        DB      1Dh
        DB      03h
        DB      0Ah
        DB      0FFh
        DB      00h
        DB      0Bh
        DB      0Ah
        DB      02h
        DB      0FFh
        DB      00h
        DB      0Bh
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0FFh
        DB      05h
        DB      07h
        DB      19h
        DB      03h
        DB      0Ah
        DB      0Bh
        DB      15h
        DB      03h
        DB      0Eh
        DB      09h
        DB      17h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FEh
        DB      00h
        DB      00h
        DB      02h
        DB      04h
        DB      07h
        DB      00h
        DB      04h
        DB      0Dh
        DB      0FFh
        DB      05h
        DB      0Eh
        DB      05h
        DB      02h
        DB      0Ah
        DB      16h
        DB      04h
        DB      02h
        DB      0Eh
        DB      11h
        DB      05h
        DB      02h
        DB      0FFh
        DB      11h
        DB      04h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      07h
        DB      0Bh
        DB      00h
        DB      0Bh
        DB      0Ah
        DB      0Bh
        DB      00h
        DB      19h
        DB      07h
        DB      0Bh
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      06h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      06h
        DB      09h
        DB      17h
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      04h
        DB      0Bh
        DB      0Eh
        DB      00h
        DB      20h             ; ' '
        DB      06h
        DB      0FFh
        DB      06h
        DB      0Bh
        DB      08h
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      06h
        DB      00h
        DB      07h
        DB      03h
        DB      08h
        DB      08h
        DB      05h
        DB      03h
        DB      04h
        DB      0Fh
        DB      0Bh
        DB      03h
        DB      07h
        DB      18h
        DB      08h
        DB      03h
        DB      0FEh
        DB      0Eh
        DB      00h
        DB      09h
        DB      06h
        DB      0Eh
        DB      0Bh
        DB      07h
        DB      06h
        DB      0Eh
        DB      14h
        DB      0Ch
        DB      06h
        DB      0FFh
        DB      04h
        DB      10h
        DB      0Ah
        DB      02h
        DB      0FFh
        DB      0Ch
        DB      1Ah
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      09h
        DB      03h
        DB      03h
        DB      00h
        DB      03h
        DB      11h
        DB      0Ch
        DB      03h
        DB      0Fh
        DB      08h
        DB      07h
        DB      05h
        DB      06h
        DB      03h
        DB      00h
        DB      0Bh
        DB      07h
        DB      0Ah
        DB      00h
        DB      14h
        DB      0Ch
        DB      14h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      12h
        DB      02h
        DB      00h
        DB      14h
        DB      0Ch
        DB      02h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      04h
        DB      0FFh
        DB      0FFh
        DB      0Eh
        DB      19h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      05h
        DB      00h
        DB      04h
        DB      03h
        DB      05h
        DB      06h
        DB      04h
        DB      03h
        DB      05h
        DB      0Dh
        DB      04h
        DB      03h
        DB      05h
        DB      14h
        DB      04h
        DB      03h
        DB      05h
        DB      1Bh
        DB      05h
        DB      03h
        DB      0Ah
        DB      00h
        DB      04h
        DB      03h
        DB      08h
        DB      06h
        DB      03h
        DB      03h
        DB      0Bh
        DB      0Bh
        DB      0Ah
        DB      03h
        DB      0Ah
        DB      19h
        DB      07h
        DB      03h
        DB      0Eh
        DB      00h
        DB      08h
        DB      03h
        DB      0Eh
        DB      0Bh
        DB      04h
        DB      03h
        DB      0Eh
        DB      11h
        DB      03h
        DB      03h
        DB      0Eh
        DB      17h
        DB      04h
        DB      03h
        DB      0Eh
        DB      1Dh
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      05h
        DB      00h
        DB      0Dh
        DB      03h
        DB      0Ah
        DB      00h
        DB      12h
        DB      03h
        DB      0Eh
        DB      00h
        DB      06h
        DB      03h
        DB      0Eh
        DB      08h
        DB      0Dh
        DB      03h
        DB      0Ah
        DB      17h
        DB      03h
        DB      03h
        DB      09h
        DB      1Ah
        DB      03h
        DB      03h
        DB      08h
        DB      1Dh
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      05h
        DB      0Bh
        DB      05h
        DB      02h
        DB      0FFh
        DB      13h
        DB      16h
        DB      75h             ; 'u'
        DB      56h             ; 'V'
        DB      0FFh
        DB      04h
        DB      0Bh
        DB      0Eh
        DB      03h
        DB      0Bh
        DB      08h
        DB      08h
        DB      03h
        DB      0Fh
        DB      04h
        DB      06h
        DB      03h
        DB      10h
        DB      11h
        DB      0Ch
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      00h
        DB      16h
        DB      04h
        DB      02h
        DB      04h
        DB      0Ch
        DB      07h
        DB      02h
        DB      04h
        DB      14h
        DB      0Ch
        DB      02h
        DB      0Fh
        DB      07h
        DB      04h
        DB      02h
        DB      10h
        DB      1Ah
        DB      03h
        DB      02h
        DB      0FFh
        DB      00h
        DB      16h
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0FFh
        DB      06h
        DB      08h
        DB      05h
        DB      03h
        DB      04h
        DB      15h
        DB      04h
        DB      03h
        DB      0Bh
        DB      09h
        DB      0Fh
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      06h
        DB      0Ah
        DB      05h
        DB      02h
        DB      04h
        DB      16h
        DB      07h
        DB      02h
        DB      0Bh
        DB      0Fh
        DB      08h
        DB      02h
        DB      0FFh
        DB      13h
        DB      0Ah
        DB      75h             ; 'u'
        DB      56h             ; 'V'
        DB      13h
        DB      16h
        DB      75h             ; 'u'
        DB      56h             ; 'V'
        DB      0FFh
        DB      07h
        DB      15h
        DB      0Bh
        DB      03h
        DB      0FEh
        DB      0Ah
        DB      00h
        DB      20h             ; ' '
        DB      04h
        DB      0Eh
        DB      00h
        DB      07h
        DB      02h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      04h
        DB      0FFh
        DB      00h
        DB      0Ah
        DB      10h
        DB      02h
        DB      00h
        DB      16h
        DB      07h
        DB      02h
        DB      0FFh
        DB      00h
        DB      0Ah
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      00h
        DB      16h
        DB      72h             ; 'r'
        DB      56h             ; 'V'
        DB      0FFh
        DB      07h
        DB      00h
        DB      15h
        DB      03h
        DB      07h
        DB      19h
        DB      07h
        DB      03h
        DB      0FEh
        DB      0Ah
        DB      00h
        DB      0Eh
        DB      04h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      04h
        DB      0FFh
        DB      0FFh
        DB      0Eh
        DB      1Eh
        DB      7Eh             ; '~'
        DB      56h             ; 'V'
        DB      0FFh
        DB      0Ah
        DB      0Fh
        DB      0Ch
        DB      03h
        DB      0FEh
        DB      00h
        DB      00h
        DB      0Fh
        DB      14h
        DB      00h
        DB      0Fh
        DB      0Ch
        DB      05h
        DB      00h
        DB      1Dh
        DB      03h
        DB      05h
        DB      12h
        DB      0Fh
        DB      11h
        DB      02h
        DB      0FFh
        DB      0Ah
        DB      15h
        DB      08h
        DB      02h
        DB      0FFh
        DB      08h
        DB      12h
        DB      0E8h
        DB      55h             ; 'U'
        DB      0FFh
        DB      09h
        DB      07h
        DB      05h
        DB      03h
        DB      0Fh
        DB      0Ah
        DB      0Ch
        DB      03h
        DB      09h
        DB      14h
        DB      05h
        DB      03h
        DB      0FEh
        DB      12h
        DB      00h
        DB      20h             ; ' '
        DB      02h
        DB      0FFh
        DB      05h
        DB      0Bh
        DB      04h
        DB      02h
        DB      09h
        DB      0Ah
        DB      06h
        DB      02h
        DB      05h
        DB      14h
        DB      04h
        DB      02h
        DB      09h
        DB      15h
        DB      06h
        DB      02h
        DB      0Fh
        DB      0Dh
        DB      03h
        DB      02h
        DB      0Fh
        DB      12h
        DB      03h
        DB      02h
        DB      0FFh
        DB      0FFh
        DB      04h
        DB      04h
        DB      05h
        DB      03h
        DB      04h
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      04h
        DB      19h
        DB      05h
        DB      03h
        DB      07h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      1Ch
        DB      03h
        DB      03h
        DB      08h
        DB      0Fh
        DB      06h
        DB      03h
        DB      0Ah
        DB      04h
        DB      05h
        DB      03h
        DB      0Ah
        DB      19h
        DB      05h
        DB      03h
        DB      0Fh
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      04h
        DB      0Bh
        DB      0Bh
        DB      00h
        DB      0Ah
        DB      06h
        DB      09h
        DB      00h
        DB      0Ah
        DB      1Bh
        DB      09h
        DB      00h
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      01h
        DB      00h
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      01h
        DB      1Fh
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      04h
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      08h
        DB      04h
        DB      05h
        DB      03h
        DB      08h
        DB      19h
        DB      05h
        DB      03h
        DB      09h
        DB      0Ch
        DB      0Ah
        DB      03h
        DB      0Fh
        DB      0Ah
        DB      03h
        DB      03h
        DB      0Fh
        DB      15h
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      08h
        DB      06h
        DB      0Bh
        DB      00h
        DB      04h
        DB      0Bh
        DB      0Bh
        DB      00h
        DB      04h
        DB      16h
        DB      0Bh
        DB      00h
        DB      08h
        DB      1Bh
        DB      0Bh
        DB      00h
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      01h
        DB      00h
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      01h
        DB      1Fh
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      04h
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      09h
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      0Fh
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      07h
        DB      04h
        DB      05h
        DB      03h
        DB      04h
        DB      1Ah
        DB      05h
        DB      03h
        DB      0Ch
        DB      1Ah
        DB      05h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      07h
        DB      06h
        DB      0Ch
        DB      00h
        DB      04h
        DB      0Bh
        DB      05h
        DB      00h
        DB      09h
        DB      16h
        DB      06h
        DB      00h
        DB      0Ch
        DB      1Ch
        DB      07h
        DB      00h
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      01h
        DB      00h
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      01h
        DB      1Fh
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      03h
        DB      0Eh
        DB      05h
        DB      03h
        DB      06h
        DB      0Ah
        DB      03h
        DB      03h
        DB      06h
        DB      14h
        DB      03h
        DB      03h
        DB      09h
        DB      04h
        DB      05h
        DB      03h
        DB      09h
        DB      18h
        DB      05h
        DB      03h
        DB      0Ch
        DB      0Ah
        DB      03h
        DB      03h
        DB      0Ch
        DB      14h
        DB      03h
        DB      03h
        DB      0Fh
        DB      06h
        DB      03h
        DB      03h
        DB      0Fh
        DB      0Eh
        DB      05h
        DB      03h
        DB      0Fh
        DB      18h
        DB      03h
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      03h
        DB      10h
        DB      0Ch
        DB      00h
        DB      0Fh
        DB      07h
        DB      04h
        DB      00h
        DB      0Fh
        DB      19h
        DB      04h
        DB      00h
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      01h
        DB      00h
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      01h
        DB      1Fh
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      0FFh
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      04h
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      06h
        DB      04h
        DB      05h
        DB      03h
        DB      06h
        DB      19h
        DB      05h
        DB      03h
        DB      0Ah
        DB      04h
        DB      05h
        DB      03h
        DB      0Ah
        DB      19h
        DB      05h
        DB      03h
        DB      0Fh
        DB      0Bh
        DB      0Ch
        DB      03h
        DB      13h
        DB      00h
        DB      20h             ; ' '
        DB      03h
        DB      0FFh
        DB      04h
        DB      0Bh
        DB      0Bh
        DB      00h
        DB      04h
        DB      16h
        DB      0Bh
        DB      00h
        DB      0Ah
        DB      06h
        DB      09h
        DB      00h
        DB      0Ah
        DB      1Bh
        DB      09h
        DB      00h
        DB      0FFh
        DB      11h
        DB      01h
        DB      0E8h
        DB      55h             ; 'U'
        DB      01h
        DB      00h
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      01h
        DB      1Fh
        DB      5Bh             ; '['
        DB      56h             ; 'V'
        DB      0FFh
        DB      "ROROZOeO|O"
        DB      99h
        DB      4Fh             ; 'O'
        DB      0B1h
        DB      4Fh             ; 'O'
        DB      0D6h
        DB      4Fh             ; 'O'
        DB      0F0h
        DB      4Fh             ; 'O'
        DB      11h
        DB      "P'P7PJP]PpP"
        DB      7Fh
        DB      50h             ; 'P'
        DB      92h
        DB      50h             ; 'P'
        DB      0A1h
        DB      50h             ; 'P'
        DB      0BBh
        DB      "PRORORORO"
        DB      0C1h
        DB      50h             ; 'P'
        DB      0E1h
        DB      50h             ; 'P'
        DB      0F9h
        DB      50h             ; 'P'
        DB      0Ch
        DB      51h             ; 'Q'
        DB      1Fh
        DB      "Q8QUQ"
        DB      8Bh
        DB      51h             ; 'Q'
        DB      8Dh
        DB      51h             ; 'Q'
        DB      0B3h
        DB      51h             ; 'Q'
        DB      0E8h
        DB      51h             ; 'Q'
        DB      0F0h
        DB      51h             ; 'Q'
        DB      09h
        DB      52h             ; 'R'
        DB      16h
        DB      52h             ; 'R'
        DB      18h
        DB      "R!R8RRRdR"
        DB      82h
        DB      52h             ; 'R'
        DB      8Dh
        DB      52h             ; 'R'
        DB      0A3h
        DB      52h             ; 'R'
        DB      0AFh
        DB      52h             ; 'R'
        DB      0BBh
        DB      52h             ; 'R'
        DB      0C1h
        DB      52h             ; 'R'
        DB      0C3h
        DB      52h             ; 'R'
        DB      0D9h
        DB      52h             ; 'R'
        DB      0F3h
        DB      52h             ; 'R'
        DB      06h
        DB      53h             ; 'S'
        DB      12h
        DB      53h             ; 'S'
        DB      22h             ; '"'
        DB      "S(S=S=SGSbSwS"
        DB      80h
        DB      53h             ; 'S'
        DB      89h
        DB      53h             ; 'S'
        DB      0ABh
        DB      53h             ; 'S'
        DB      0CEh
        DB      53h             ; 'S'
        DB      0E6h
        DB      53h             ; 'S'
        DB      05h
        DB      54h             ; 'T'
        DB      0Dh
        DB      54h             ; 'T'
        DB      1Ch
        DB      "T%T'T?T[T{T"
        DB      97h
        DB      54h             ; 'T'
        DB      58h             ; 'X'
        DB      10h
        DB      01h
        DB      50h             ; 'P'
        DB      0C0h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      60h             ; '`'
        DB      50h             ; 'P'
        DB      01h
        DB      58h             ; 'X'
        DB      0D0h
        DB      01h
        DB      50h             ; 'P'
        DB      80h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      28h             ; '('
        DB      48h             ; 'H'
        DB      03h
        DB      70h             ; 'p'
        DB      80h
        DB      03h
        DB      98h
        DB      0A8h
        DB      03h
        DB      0FFh
        DB      28h             ; '('
        DB      18h
        DB      02h
        DB      03h
        DB      58h             ; 'X'
        DB      38h             ; '8'
        DB      07h
        DB      00h
        DB      20h             ; ' '
        DB      0C0h
        DB      10h
        DB      0Ah
        DB      0FFh
        DB      40h             ; '@'
        DB      48h             ; 'H'
        DB      03h
        DB      30h             ; '0'
        DB      98h
        DB      03h
        DB      98h
        DB      0A0h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      70h             ; 'p'
        DB      00h
        DB      0Ch
        DB      0FFh
        DB      20h             ; ' '
        DB      68h             ; 'h'
        DB      10h
        DB      0Ah
        DB      20h             ; ' '
        DB      0C8h
        DB      02h
        DB      01h
        DB      48h             ; 'H'
        DB      0E0h
        DB      0Ch
        DB      01h
        DB      0FFh
        DB      40h             ; '@'
        DB      70h             ; 'p'
        DB      09h
        DB      20h             ; ' '
        DB      0C0h
        DB      09h
        DB      0FFh
        DB      88h
        DB      0ECh
        DB      01h
        DB      1Ch
        DB      98h
        DB      20h             ; ' '
        DB      02h
        DB      02h
        DB      80h
        DB      0C0h
        DB      07h
        DB      01h
        DB      68h             ; 'h'
        DB      70h             ; 'p'
        DB      0Ch
        DB      02h
        DB      0FFh
        DB      30h             ; '0'
        DB      80h
        DB      03h
        DB      48h             ; 'H'
        DB      18h
        DB      03h
        DB      50h             ; 'P'
        DB      0A8h
        DB      02h
        DB      70h             ; 'p'
        DB      80h
        DB      03h
        DB      98h
        DB      80h
        DB      0Ch
        DB      0FFh
        DB      20h             ; ' '
        DB      08h
        DB      10h
        DB      05h
        DB      70h             ; 'p'
        DB      50h             ; 'P'
        DB      11h
        DB      07h
        DB      30h             ; '0'
        DB      0A0h
        DB      02h
        DB      05h
        DB      98h
        DB      0A8h
        DB      0Ch
        DB      03h
        DB      98h
        DB      0C8h
        DB      0Ch
        DB      04h
        DB      0FFh
        DB      30h             ; '0'
        DB      60h             ; '`'
        DB      03h
        DB      58h             ; 'X'
        DB      0D0h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      50h             ; 'P'
        DB      78h             ; 'x'
        DB      02h
        DB      0FFh
        DB      30h             ; '0'
        DB      38h             ; '8'
        DB      02h
        DB      04h
        DB      38h             ; '8'
        DB      60h             ; '`'
        DB      07h
        DB      02h
        DB      68h             ; 'h'
        DB      60h             ; '`'
        DB      08h
        DB      01h
        DB      0FFh
        DB      50h             ; 'P'
        DB      40h             ; '@'
        DB      03h
        DB      30h             ; '0'
        DB      68h             ; 'h'
        DB      01h
        DB      70h             ; 'p'
        DB      80h
        DB      03h
        DB      40h             ; '@'
        DB      0C8h
        DB      03h
        DB      98h
        DB      28h             ; '('
        DB      0Ch
        DB      0FFh
        DB      60h             ; '`'
        DB      0ECh
        DB      01h
        DB      0Eh
        DB      70h             ; 'p'
        DB      50h             ; 'P'
        DB      0Ch
        DB      17h
        DB      30h             ; '0'
        DB      98h
        DB      08h
        DB      02h
        DB      98h
        DB      40h             ; '@'
        DB      03h
        DB      08h
        DB      0FFh
        DB      0FFh
        DB      68h             ; 'h'
        DB      70h             ; 'p'
        DB      13h
        DB      08h
        DB      78h             ; 'x'
        DB      70h             ; 'p'
        DB      13h
        DB      06h
        DB      90h
        DB      70h             ; 'p'
        DB      13h
        DB      03h
        DB      90h
        DB      98h
        DB      13h
        DB      03h
        DB      90h
        DB      0A8h
        DB      13h
        DB      03h
        DB      0FFh
        DB      10h
        DB      90h
        DB      02h
        DB      98h
        DB      10h
        DB      0Ch
        DB      0FFh
        DB      20h             ; ' '
        DB      0C4h
        DB      01h
        DB      1Ah
        DB      40h             ; '@'
        DB      88h
        DB      08h
        DB      03h
        DB      0FFh
        DB      50h             ; 'P'
        DB      30h             ; '0'
        DB      09h
        DB      60h             ; '`'
        DB      70h             ; 'p'
        DB      09h
        DB      70h             ; 'p'
        DB      0E0h
        DB      09h
        DB      0FFh
        DB      68h             ; 'h'
        DB      0E8h
        DB      02h
        DB      07h
        DB      58h             ; 'X'
        DB      20h             ; ' '
        DB      0Ch
        DB      05h
        DB      0FFh
        DB      60h             ; '`'
        DB      40h             ; '@'
        DB      09h
        DB      70h             ; 'p'
        DB      60h             ; '`'
        DB      09h
        DB      60h             ; '`'
        DB      80h
        DB      09h
        DB      0FFh
        DB      40h             ; '@'
        DB      0E8h
        DB      0Ah
        DB      05h
        DB      60h             ; '`'
        DB      38h             ; '8'
        DB      08h
        DB      06h
        DB      0FFh
        DB      50h             ; 'P'
        DB      80h
        DB      09h
        DB      40h             ; '@'
        DB      58h             ; 'X'
        DB      09h
        DB      60h             ; '`'
        DB      0A0h
        DB      09h
        DB      0FFh
        DB      50h             ; 'P'
        DB      0E8h
        DB      02h
        DB      09h
        DB      60h             ; '`'
        DB      08h
        DB      07h
        DB      04h
        DB      0FFh
        DB      40h             ; '@'
        DB      30h             ; '0'
        DB      01h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      09h
        DB      50h             ; 'P'
        DB      0D0h
        DB      09h
        DB      0FFh
        DB      18h
        DB      0D8h
        DB      02h
        DB      08h
        DB      0FFh
        DB      50h             ; 'P'
        DB      40h             ; '@'
        DB      09h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      09h
        DB      30h             ; '0'
        DB      80h
        DB      09h
        DB      0FFh
        DB      40h             ; '@'
        DB      0ECh
        DB      01h
        DB      1Dh
        DB      80h
        DB      10h
        DB      02h
        DB      06h
        DB      0FFh
        DB      00h
        DB      05h
        DB      06h
        DB      90h
        DB      80h
        DB      09h
        DB      40h             ; '@'
        DB      50h             ; 'P'
        DB      09h
        DB      0FFh
        DB      50h             ; 'P'
        DB      0E0h
        DB      02h
        DB      0Ah
        DB      0FFh
        DB      90h
        DB      90h
        DB      05h
        DB      00h
        DB      00h
        DB      00h
        DB      30h             ; '0'
        DB      60h             ; '`'
        DB      09h
        DB      40h             ; '@'
        DB      0C0h
        DB      09h
        DB      0FFh
        DB      88h
        DB      0CCh
        DB      01h
        DB      10h
        DB      98h
        DB      10h
        DB      03h
        DB      01h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      07h
        DB      05h
        DB      0FFh
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      05h
        DB      0FFh
        DB      28h             ; '('
        DB      98h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      50h             ; 'P'
        DB      90h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      78h             ; 'x'
        DB      78h             ; 'x'
        DB      03h
        DB      98h
        DB      88h
        DB      0Ch
        DB      0FFh
        DB      98h
        DB      58h             ; 'X'
        DB      11h
        DB      0Ah
        DB      88h
        DB      24h             ; '$'
        DB      01h
        DB      1Eh
        DB      88h
        DB      0ACh
        DB      01h
        DB      11h
        DB      0FFh
        DB      20h             ; ' '
        DB      0C0h
        DB      01h
        DB      68h             ; 'h'
        DB      0C0h
        DB      0Ch
        DB      0FFh
        DB      58h             ; 'X'
        DB      94h
        DB      01h
        DB      12h
        DB      10h
        DB      68h             ; 'h'
        DB      10h
        DB      0Ah
        DB      68h             ; 'h'
        DB      20h             ; ' '
        DB      0Ch
        DB      06h
        DB      68h             ; 'h'
        DB      0E0h
        DB      0Ch
        DB      07h
        DB      0FFh
        DB      70h             ; 'p'
        DB      0B0h
        DB      07h
        DB      20h             ; ' '
        DB      80h
        DB      09h
        DB      40h             ; '@'
        DB      0A0h
        DB      04h
        DB      0FFh
        DB      18h
        DB      58h             ; 'X'
        DB      02h
        DB      0Bh
        DB      40h             ; '@'
        DB      0D8h
        DB      02h
        DB      0Ch
        DB      0FFh
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      09h
        DB      58h             ; 'X'
        DB      70h             ; 'p'
        DB      03h
        DB      70h             ; 'p'
        DB      80h
        DB      0Ch
        DB      0FFh
        DB      70h             ; 'p'
        DB      40h             ; '@'
        DB      02h
        DB      0Eh
        DB      58h             ; 'X'
        DB      80h
        DB      0Ah
        DB      07h
        DB      0FFh
        DB      20h             ; ' '
        DB      38h             ; '8'
        DB      03h
        DB      58h             ; 'X'
        DB      0A0h
        DB      02h
        DB      98h
        DB      60h             ; '`'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      78h             ; 'x'
        DB      0D0h
        DB      09h
        DB      0FFh
        DB      58h             ; 'X'
        DB      34h             ; '4'
        DB      01h
        DB      15h
        DB      50h             ; 'P'
        DB      58h             ; 'X'
        DB      07h
        DB      05h
        DB      0FFh
        DB      98h
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      48h             ; 'H'
        DB      60h             ; '`'
        DB      04h
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      09h
        DB      40h             ; '@'
        DB      0A0h
        DB      09h
        DB      0FFh
        DB      70h             ; 'p'
        DB      58h             ; 'X'
        DB      02h
        DB      0Dh
        DB      48h             ; 'H'
        DB      38h             ; '8'
        DB      03h
        DB      02h
        DB      70h             ; 'p'
        DB      98h
        DB      08h
        DB      04h
        DB      0FFh
        DB      28h             ; '('
        DB      38h             ; '8'
        DB      03h
        DB      28h             ; '('
        DB      0C0h
        DB      03h
        DB      40h             ; '@'
        DB      48h             ; 'H'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      68h             ; 'h'
        DB      0C8h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      7Ch             ; '|'
        DB      80h
        DB      02h
        DB      98h
        DB      30h             ; '0'
        DB      04h
        DB      0FFh
        DB      98h
        DB      40h             ; '@'
        DB      11h
        DB      08h
        DB      98h
        DB      98h
        DB      11h
        DB      10h
        DB      88h
        DB      74h             ; 't'
        DB      01h
        DB      13h
        DB      88h
        DB      0CCh
        DB      01h
        DB      03h
        DB      28h             ; '('
        DB      0D8h
        DB      0Ah
        DB      08h
        DB      40h             ; '@'
        DB      70h             ; 'p'
        DB      0Ch
        DB      08h
        DB      68h             ; 'h'
        DB      0B8h
        DB      08h
        DB      09h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      50h             ; 'P'
        DB      70h             ; 'p'
        DB      03h
        DB      78h             ; 'x'
        DB      40h             ; '@'
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      70h             ; 'p'
        DB      0Ch
        DB      0FFh
        DB      20h             ; ' '
        DB      80h
        DB      10h
        DB      0Fh
        DB      20h             ; ' '
        DB      0D0h
        DB      10h
        DB      0Fh
        DB      78h             ; 'x'
        DB      68h             ; 'h'
        DB      0Ah
        DB      09h
        DB      78h             ; 'x'
        DB      0C0h
        DB      08h
        DB      0Ah
        DB      50h             ; 'P'
        DB      60h             ; '`'
        DB      0Ch
        DB      0Ah
        DB      50h             ; 'P'
        DB      0B8h
        DB      0Ch
        DB      09h
        DB      0FFh
        DB      98h
        DB      68h             ; 'h'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      0D0h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      68h             ; 'h'
        DB      0C0h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      30h             ; '0'
        DB      48h             ; 'H'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      30h             ; '0'
        DB      98h
        DB      04h
        DB      0FFh
        DB      20h             ; ' '
        DB      70h             ; 'p'
        DB      10h
        DB      09h
        DB      88h
        DB      0Ch
        DB      01h
        DB      02h
        DB      30h             ; '0'
        DB      18h
        DB      02h
        DB      0Fh
        DB      98h
        DB      0C0h
        DB      03h
        DB      03h
        DB      30h             ; '0'
        DB      0B8h
        DB      0Ch
        DB      0Bh
        DB      30h             ; '0'
        DB      0D8h
        DB      08h
        DB      0Bh
        DB      0FFh
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      02h
        DB      70h             ; 'p'
        DB      00h
        DB      0Ch
        DB      0FFh
        DB      0FFh
        DB      80h
        DB      90h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      58h             ; 'X'
        DB      0C8h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      14h
        DB      80h
        DB      02h
        DB      0FFh
        DB      30h             ; '0'
        DB      48h             ; 'H'
        DB      07h
        DB      06h
        DB      38h             ; '8'
        DB      78h             ; 'x'
        DB      08h
        DB      0Ch
        DB      0FFh
        DB      80h
        DB      04h
        DB      06h
        DB      0FFh
        DB      28h             ; '('
        DB      0E4h
        DB      01h
        DB      0Ah
        DB      80h
        DB      58h             ; 'X'
        DB      11h
        DB      0Bh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      09h
        DB      0FFh
        DB      70h             ; 'p'
        DB      58h             ; 'X'
        DB      02h
        DB      10h
        DB      0FFh
        DB      38h             ; '8'
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      80h
        DB      0Ch
        DB      0FFh
        DB      88h
        DB      1Ch
        DB      01h
        DB      1Fh
        DB      98h
        DB      0A0h
        DB      02h
        DB      13h
        DB      98h
        DB      08h
        DB      03h
        DB      05h
        DB      0FFh
        DB      38h             ; '8'
        DB      0C0h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      60h             ; '`'
        DB      0E0h
        DB      03h
        DB      98h
        DB      00h
        DB      0Ch
        DB      0FFh
        DB      68h             ; 'h'
        DB      7Ch             ; '|'
        DB      01h
        DB      12h
        DB      50h             ; 'P'
        DB      40h             ; '@'
        DB      02h
        DB      14h
        DB      80h
        DB      68h             ; 'h'
        DB      07h
        DB      07h
        DB      0FFh
        DB      38h             ; '8'
        DB      70h             ; 'p'
        DB      07h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      58h             ; 'X'
        DB      80h
        DB      09h
        DB      0FFh
        DB      38h             ; '8'
        DB      88h
        DB      02h
        DB      11h
        DB      0FFh
        DB      10h
        DB      50h             ; 'P'
        DB      02h
        DB      38h             ; '8'
        DB      30h             ; '0'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      68h             ; 'h'
        DB      0B0h
        DB      03h
        DB      0FFh
        DB      60h             ; '`'
        DB      7Ch             ; '|'
        DB      01h
        DB      02h
        DB      38h             ; '8'
        DB      30h             ; '0'
        DB      0Ch
        DB      0Ch
        DB      78h             ; 'x'
        DB      50h             ; 'P'
        DB      0Ch
        DB      0Dh
        DB      68h             ; 'h'
        DB      0C0h
        DB      08h
        DB      0Dh
        DB      0FFh
        DB      50h             ; 'P'
        DB      60h             ; '`'
        DB      09h
        DB      60h             ; '`'
        DB      80h
        DB      09h
        DB      58h             ; 'X'
        DB      0B0h
        DB      09h
        DB      0FFh
        DB      0FFh
        DB      69h             ; 'i'
        DB      0B0h
        DB      07h
        DB      68h             ; 'h'
        DB      00h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      40h             ; '@'
        DB      0Ch
        DB      0FFh
        DB      58h             ; 'X'
        DB      74h             ; 't'
        DB      01h
        DB      0Dh
        DB      20h             ; ' '
        DB      0A0h
        DB      03h
        DB      04h
        DB      0FFh
        DB      20h             ; ' '
        DB      80h
        DB      02h
        DB      68h             ; 'h'
        DB      80h
        DB      03h
        DB      0FFh
        DB      18h
        DB      54h             ; 'T'
        DB      01h
        DB      03h
        DB      0FFh
        DB      30h             ; '0'
        DB      60h             ; '`'
        DB      09h
        DB      68h             ; 'h'
        DB      98h
        DB      09h
        DB      0FFh
        DB      50h             ; 'P'
        DB      60h             ; '`'
        DB      02h
        DB      12h
        DB      0FFh
        DB      0FFh
        DB      80h
        DB      64h             ; 'd'
        DB      01h
        DB      0Ch
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      88h
        DB      0B0h
        DB      05h
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      78h             ; 'x'
        DB      03h
        DB      20h             ; ' '
        DB      80h
        DB      02h
        DB      0FFh
        DB      20h             ; ' '
        DB      40h             ; '@'
        DB      0Ch
        DB      19h
        DB      48h             ; 'H'
        DB      10h
        DB      0Ch
        DB      1Ah
        DB      0FFh
        DB      50h             ; 'P'
        DB      0C0h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      18h
        DB      0D8h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      40h             ; '@'
        DB      0A4h
        DB      01h
        DB      14h
        DB      50h             ; 'P'
        DB      78h             ; 'x'
        DB      11h
        DB      06h
        DB      20h             ; ' '
        DB      98h
        DB      0Ch
        DB      18h
        DB      0FFh
        DB      50h             ; 'P'
        DB      40h             ; '@'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      80h
        DB      01h
        DB      0FFh
        DB      38h             ; '8'
        DB      0E0h
        DB      02h
        DB      15h
        DB      10h
        DB      0A0h
        DB      10h
        DB      0Fh
        DB      0FFh
        DB      40h             ; '@'
        DB      60h             ; '`'
        DB      09h
        DB      60h             ; '`'
        DB      0B0h
        DB      09h
        DB      0FFh
        DB      68h             ; 'h'
        DB      94h
        DB      01h
        DB      15h
        DB      0FFh
        DB      70h             ; 'p'
        DB      0B0h
        DB      03h
        DB      18h
        DB      20h             ; ' '
        DB      09h
        DB      0FFh
        DB      60h             ; '`'
        DB      0B4h
        DB      01h
        DB      09h
        DB      38h             ; '8'
        DB      18h
        DB      03h
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      58h             ; 'X'
        DB      0C0h
        DB      02h
        DB      16h
        DB      0FFh
        DB      28h             ; '('
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      50h             ; 'P'
        DB      90h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      60h             ; '`'
        DB      0Ch
        DB      0FFh
        DB      88h
        DB      24h             ; '$'
        DB      01h
        DB      20h             ; ' '
        DB      0FFh
        DB      0FFh
        DB      10h
        DB      38h             ; '8'
        DB      12h
        DB      0Ah
        DB      10h
        DB      0A8h
        DB      12h
        DB      0Ah
        DB      0FFh
        DB      70h             ; 'p'
        DB      00h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      30h             ; '0'
        DB      0C0h
        DB      0Ch
        DB      0FFh
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      0Ch
        DB      0Eh
        DB      30h             ; '0'
        DB      0C0h
        DB      0Ch
        DB      16h
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      08h
        DB      10h
        DB      78h             ; 'x'
        DB      0A0h
        DB      07h
        DB      08h
        DB      0FFh
        DB      68h             ; 'h'
        DB      0C0h
        DB      05h
        DB      0FFh
        DB      60h             ; '`'
        DB      0D4h
        DB      01h
        DB      0Bh
        DB      48h             ; 'H'
        DB      48h             ; 'H'
        DB      07h
        DB      09h
        DB      20h             ; ' '
        DB      90h
        DB      08h
        DB      11h
        DB      38h             ; '8'
        DB      0D8h
        DB      0Ch
        DB      0Fh
        DB      0FFh
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      09h
        DB      0FFh
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      02h
        DB      17h
        DB      0FFh
        DB      0ECh
        DB      00h
        DB      0Bh
        DB      0FFh
        DB      70h             ; 'p'
        DB      0CCh
        DB      01h
        DB      17h
        DB      0FFh
        DB      98h
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      58h             ; 'X'
        DB      78h             ; 'x'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      58h             ; 'X'
        DB      78h             ; 'x'
        DB      02h
        DB      18h
        DB      10h
        DB      48h             ; 'H'
        DB      10h
        DB      08h
        DB      10h
        DB      0B8h
        DB      10h
        DB      08h
        DB      98h
        DB      40h             ; '@'
        DB      11h
        DB      0Bh
        DB      98h
        DB      0A0h
        DB      11h
        DB      0Bh
        DB      0FFh
        DB      98h
        DB      00h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      70h             ; 'p'
        DB      80h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      50h             ; 'P'
        DB      30h             ; '0'
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      28h             ; '('
        DB      30h             ; '0'
        DB      0Ch
        DB      0FFh
        DB      50h             ; 'P'
        DB      0C0h
        DB      0Ch
        DB      10h
        DB      48h             ; 'H'
        DB      0D8h
        DB      0Ch
        DB      11h
        DB      40h             ; '@'
        DB      0F0h
        DB      0Ch
        DB      12h
        DB      0FFh
        DB      50h             ; 'P'
        DB      38h             ; '8'
        DB      09h
        DB      48h             ; 'H'
        DB      80h
        DB      09h
        DB      60h             ; '`'
        DB      90h
        DB      09h
        DB      20h             ; ' '
        DB      70h             ; 'p'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0Ch
        DB      0FFh
        DB      78h             ; 'x'
        DB      18h
        DB      02h
        DB      19h
        DB      0FFh
        DB      99h
        DB      30h             ; '0'
        DB      07h
        DB      30h             ; '0'
        DB      40h             ; '@'
        DB      09h
        DB      30h             ; '0'
        DB      50h             ; 'P'
        DB      09h
        DB      58h             ; 'X'
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      98h
        DB      90h
        DB      0Ch
        DB      80h
        DB      05h
        DB      06h
        DB      0FFh
        DB      30h             ; '0'
        DB      58h             ; 'X'
        DB      0Ch
        DB      1Ch
        DB      20h             ; ' '
        DB      0B8h
        DB      0Ch
        DB      1Bh
        DB      0FFh
        DB      51h             ; 'Q'
        DB      90h
        DB      07h
        DB      80h
        DB      0C0h
        DB      0Ch
        DB      0FFh
        DB      0FFh
        DB      38h             ; '8'
        DB      60h             ; '`'
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      40h             ; '@'
        DB      0Ch
        DB      0FFh
        DB      80h
        DB      0F0h
        DB      03h
        DB      06h
        DB      0FFh
        DB      50h             ; 'P'
        DB      0B0h
        DB      0Ch
        DB      0FFh
        DB      40h             ; '@'
        DB      94h
        DB      01h
        DB      1Ah
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      98h
        DB      80h
        DB      08h
        DB      80h
        DB      80h
        DB      02h
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      01h
        DB      48h             ; 'H'
        DB      90h
        DB      04h
        DB      0Ah
        DB      28h             ; '('
        DB      30h             ; '0'
        DB      07h
        DB      0Bh
        DB      40h             ; '@'
        DB      0F0h
        DB      07h
        DB      0Ch
        DB      0FFh
        DB      98h
        DB      80h
        DB      08h
        DB      48h             ; 'H'
        DB      88h
        DB      0Ch
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      04h
        DB      28h             ; '('
        DB      80h
        DB      07h
        DB      0Dh
        DB      40h             ; '@'
        DB      30h             ; '0'
        DB      0Ah
        DB      12h
        DB      40h             ; '@'
        DB      0D8h
        DB      0Ah
        DB      13h
        DB      50h             ; 'P'
        DB      0A0h
        DB      06h
        DB      03h
        DB      0FFh
        DB      98h
        DB      80h
        DB      08h
        DB      98h
        DB      0B0h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      38h             ; '8'
        DB      28h             ; '('
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      48h             ; 'H'
        DB      80h
        DB      04h
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      07h
        DB      28h             ; '('
        DB      0E0h
        DB      05h
        DB      0Eh
        DB      60h             ; '`'
        DB      0E0h
        DB      0Ch
        DB      13h
        DB      0FFh
        DB      98h
        DB      80h
        DB      08h
        DB      98h
        DB      40h             ; '@'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      70h             ; 'p'
        DB      01h
        DB      50h             ; 'P'
        DB      0A0h
        DB      01h
        DB      60h             ; '`'
        DB      28h             ; '('
        DB      01h
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      0Fh
        DB      20h             ; ' '
        DB      80h
        DB      06h
        DB      0Fh
        DB      0FFh
        DB      98h
        DB      80h
        DB      08h
        DB      98h
        DB      50h             ; 'P'
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      80h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      78h             ; 'x'
        DB      80h
        DB      0Ch
        DB      0FFh
        DB      88h
        DB      0Ch
        DB      01h
        DB      1Bh
        DB      30h             ; '0'
        DB      40h             ; '@'
        DB      0Ch
        DB      15h
        DB      30h             ; '0'
        DB      0D8h
        DB      0Ch
        DB      14h
        DB      28h             ; '('
        DB      88h
        DB      04h
        DB      10h
        DB      80h
        DB      88h
        DB      07h
        DB      11h
        DB      50h             ; 'P'
        DB      38h             ; '8'
        DB      08h
        DB      14h
        DB      58h             ; 'X'
        DB      0D0h
        DB      07h
        DB      12h
        DB      0FFh
        DB      0CFh
        DB      54h             ; 'T'
        DB      0EFh
        DB      54h             ; 'T'
        DB      0Fh
        DB      "U/UHIJIJHHJHHIJHJJIIJHHIHJIIIJHJJJHOOKKKOKKOOKOOKOOOOOOOKKOOOKOKKKKLLLMNNNMLMMMLNNNMMNMMNNMLNMLLNMMCABCFCFDEFCABDEFCFDEFCFCFCABCF"
        DB      44h             ; 'D'
        DB      45h             ; 'E'
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      01h
        DB      01h
        DB      30h             ; '0'
        DB      01h
        DB      01h
        DB      38h             ; '8'
        DB      04h
        DB      0Eh
        DB      80h
        DB      80h
        DB      0F2h
        DB      5Ch             ; '\'
        DB      80h
        DB      0F4h
        DB      0F8h
        DB      5Dh             ; ']'
        DB      80h
        DB      0F3h
        DB      0F7h
        DB      5Eh             ; '^'
        DB      80h
        DB      0F8h
        DB      0FBh
        DB      5Fh             ; '_'
        DB      0FFh
        DB      0EFh
        DB      0F0h
        DB      5Fh             ; '_'
        DB      0ECh
        DB      0EDh
        DB      0EEh
        DB      58h             ; 'X'
        DB      0F6h
        DB      59h             ; 'Y'
        DB      59h             ; 'Y'
        DB      59h             ; 'Y'
        DB      0FAh
        DB      5Ah             ; 'Z'
        DB      5Ah             ; 'Z'
        DB      5Ah             ; 'Z'
        DB      0FEh
        DB      5Bh             ; '['
        DB      5Bh             ; '['
        DB      5Bh             ; '['
        DB      0FEh
        DB      5Bh             ; '['
        DB      5Bh             ; '['
        DB      5Bh             ; '['
        DB      80h
        DB      0F1h
        DB      0F1h
        DB      7Ch             ; '|'
        DB      80h
        DB      0F5h
        DB      80h
        DB      80h
        DB      80h
        DB      0F9h
        DB      80h
        DB      80h
        DB      80h
        DB      0FDh
        DB      80h
        DB      80h
        DB      04h
        DB      04h
        DB      80h
        DB      80h
        DB      0C2h
        DB      0C3h
        DB      80h
        DB      0C5h
        DB      0C6h
        DB      0C7h
        DB      80h
        DB      0C9h
        DB      0CAh
        DB      80h
        DB      0CCh
        DB      0CDh
        DB      0CEh
        DB      80h
        DB      01h
        DB      02h
        DB      0C5h
        DB      0C9h
        DB      02h
        DB      04h
        DB      0C2h
        DB      0C3h
        DB      0C6h
        DB      0C7h
        DB      0CAh
        DB      80h
        DB      0CFh
        DB      80h
        DB      01h
        DB      04h
        DB      0C0h
        DB      0C4h
        DB      0C8h
        DB      0CFh
        DB      01h
        DB      03h
        DB      0C0h
        DB      0C4h
        DB      0C8h
        DB      02h
        DB      03h
        DB      0C2h
        DB      0C3h
        DB      0C6h
        DB      0C7h
        DB      0CAh
        DB      80h
        DB      03h
        DB      01h
        DB      0CCh
        DB      0CDh
        DB      0CEh
        DB      02h
        DB      02h
        DB      80h
        DB      68h             ; 'h'
        DB      6Ch             ; 'l'
        DB      6Dh             ; 'm'
        DB      02h
        DB      01h
        DB      0E8h
        DB      0E9h
        DB      02h
        DB      02h
        DB      8Ch
        DB      8Eh
        DB      8Dh
        DB      8Fh
        DB      02h
        DB      02h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      03h
        DB      02h
        DB      "efgijk"
        DB      03h
        DB      03h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      03h
        DB      03h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0A1h
        DB      0A2h
        DB      0A3h
        DB      03h
        DB      03h
        DB      80h
        DB      80h
        DB      80h
        DB      0A1h
        DB      0A2h
        DB      0A3h
        DB      0A5h
        DB      0A6h
        DB      0A7h
        DB      03h
        DB      03h
        DB      0A1h
        DB      0A2h
        DB      0A3h
        DB      0A5h
        DB      0A6h
        DB      0A7h
        DB      0A9h
        DB      0AAh
        DB      0ABh
        DB      04h
        DB      04h
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AFh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AFh
        DB      0AFh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      04h
        DB      04h
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0A4h
        DB      0AEh
        DB      0AFh
        DB      0AEh
        DB      0A8h
        DB      0AEh
        DB      0AEh
        DB      0AEh
        DB      0ACh
        DB      0ADh
        DB      0AEh
        DB      0AEh
        DB      05h
        DB      03h
        DB      83h
        DB      81h
        DB      82h
        DB      81h
        DB      89h
        DB      83h
        DB      81h
        DB      86h
        DB      81h
        DB      89h
        DB      83h
        DB      81h
        DB      82h
        DB      81h
        DB      89h
        DB      02h
        DB      04h
        DB      92h
        DB      93h
        DB      96h
        DB      97h
        DB      9Ah
        DB      9Bh
        DB      9Eh
        DB      9Fh
        DB      01h
        DB      12h
        DB      "LMMLNMLNMMNLMNMNLN"
        DB      01h
        DB      01h
        DB      3Bh             ; ';'
        DB      01h
        DB      01h
        DB      3Ah             ; ':'
        DB      01h
        DB      01h
        DB      32h             ; '2'
        DB      01h
        DB      01h
        DB      39h             ; '9'
        DB      01h
        DB      01h
        DB      31h             ; '1'
        DB      01h
        DB      02h
        DB      0EAh
        DB      0EBh
        DB      01h
        DB      0Ah
        DB      "XYZXZYXYZY"
        DB      01h
        DB      05h
        DB      "LMLNN@ABCPQRS`abcpqrsDEFGTUVWdef"
        DB      10h
        DB      "tuvwHIJKXYZ[hijkxyz{LMNO\]^_lmno|}~"
        DB      7Fh
        DB      9Ah
        DB      9Bh
        DB      9Ch
        DB      9Dh
        DB      9Eh
        DB      9Fh
        DB      20h             ; ' '
        DB      25h             ; '%'
        DB      23h             ; '#'
        DB      18h
        DB      10h
        DB      24h             ; '$'
        DB      22h             ; '"'
        DB      19h
        DB      17h
        DB      0Ah
        DB      01h
        DB      10h
        DB      1Fh
        DB      22h             ; '"'
        DB      10h
        DB      23h             ; '#'
        DB      20h             ; ' '
        DB      11h
        DB      13h
        DB      15h
        DB      13h
        DB      1Fh
        DB      20h             ; ' '
        DB      29h             ; ')'
        DB      22h             ; '"'
        DB      19h
        DB      17h
        DB      18h
        DB      24h             ; '$'
        DB      10h
        DB      01h
        DB      09h
        DB      08h
        DB      06h
        DB      10h
        DB      99h
        DB      10h
        DB      13h
        DB      11h
        DB      23h             ; '#'
        DB      19h
        DB      1Fh
        DB      18h
        DB      19h
        DB      23h             ; '#'
        DB      13h
        DB      1Fh
        DB      22h             ; '"'
        DB      15h
        DB      0Ah
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      17h
        DB      11h
        DB      1Dh
        DB      15h
        DB      10h
        DB      1Fh
        DB      26h             ; '&'
        DB      15h
        DB      22h             ; '"'
        DB      00h
        DB      0FFh
        DB      00h
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      14h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      14h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      10h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      0EFh
        DB      00h
        DB      7Fh
        DB      00h
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      0FFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      00h
        DB      0EFh
        DB      00h
        DB      2Fh             ; '/'
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      7Fh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      00h
        DB      7Fh
        DB      00h
        DB      7Fh
        DB      00h
        DB      0EFh
        DB      00h
        DB      0EFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FBh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0AFh
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0BFh
        DB      00h
        DB      0EFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      0EFh
        DB      00h
        DB      00h
        DB      0EFh
        DB      00h
        DB      7Fh
        DB      00h
        DB      0EFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      7Fh
        DB      00h
        DB      0AFh
        DB      00h
        DB      0BFh
        DB      00h
        DB      0FFh
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      7Fh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      7Fh
        DB      00h
        DB      0FFh
        DB      00h
        DB      00h
        DB      0EFh
        DB      00h
        DB      2Fh             ; '/'
        DB      00h
        DB      0FFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      0FFh
        DB      00h
        DB      0BFh
        DB      00h
        DB      0FFh
        DB      00h
        DB      7Fh
        DB      0FFh
        DB      00h
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      2Fh             ; '/'
        DB      00h
        DB      0EFh
        DB      00h
        DB      6Fh             ; 'o'
        DB      00h
        DB      7Fh
        DB      00h
        DB      7Bh             ; '{'
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      07h
        DB      07h
        DB      03h
        DB      05h
        DB      07h
        DB      07h
        DB      0Fh
        DB      07h
        DB      03h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      0A0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      07h
        DB      07h
        DB      03h
        DB      05h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      03h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      0A0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      1Eh
        DB      0Eh
        DB      1Ch
        DB      00h
        DB      07h
        DB      0Ch
        DB      0Eh
        DB      0Fh
        DB      07h
        DB      13h
        DB      38h             ; '8'
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      86h
        DB      0Eh
        DB      00h
        DB      0C0h
        DB      0FCh
        DB      0F8h
        DB      38h             ; '8'
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Eh
        DB      0Eh
        DB      04h
        DB      00h
        DB      07h
        DB      0Ch
        DB      0Eh
        DB      0Fh
        DB      07h
        DB      0Bh
        DB      0Ch
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      86h
        DB      0Eh
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F8h
        DB      0F0h
        DB      20h             ; ' '
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Eh
        DB      0Eh
        DB      04h
        DB      00h
        DB      07h
        DB      0Ch
        DB      0Eh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      02h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      86h
        DB      0Eh
        DB      00h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      61h             ; 'a'
        DB      70h             ; 'p'
        DB      00h
        DB      03h
        DB      07h
        DB      1Fh
        DB      0Fh
        DB      04h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      20h             ; ' '
        DB      00h
        DB      0E0h
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      0F0h
        DB      0E0h
        DB      0D0h
        DB      30h             ; '0'
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      61h             ; 'a'
        DB      70h             ; 'p'
        DB      00h
        DB      03h
        DB      03h
        DB      03h
        DB      01h
        DB      01h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      20h             ; ' '
        DB      00h
        DB      0E0h
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      40h             ; '@'
        DB      01h
        DB      03h
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      61h             ; 'a'
        DB      70h             ; 'p'
        DB      00h
        DB      03h
        DB      3Fh             ; '?'
        DB      1Fh
        DB      1Ch
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      78h             ; 'x'
        DB      70h             ; 'p'
        DB      38h             ; '8'
        DB      00h
        DB      0E0h
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      0F0h
        DB      0E0h
        DB      0C8h
        DB      1Ch
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Dh
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      07h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      1Ch
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      60h             ; '`'
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      00h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      0FCh
        DB      38h             ; '8'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      07h
        DB      0Fh
        DB      07h
        DB      1Ch
        DB      38h             ; '8'
        DB      7Ch             ; '|'
        DB      6Fh             ; 'o'
        DB      23h             ; '#'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      70h             ; 'p'
        DB      18h
        DB      0Ch
        DB      1Eh
        DB      0F6h
        DB      0C4h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      08h
        DB      00h
        DB      80h
        DB      0C2h
        DB      0E4h
        DB      0E0h
        DB      0E0h
        DB      0E4h
        DB      0C2h
        DB      80h
        DB      00h
        DB      08h
        DB      04h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      10h
        DB      00h
        DB      01h
        DB      43h             ; 'C'
        DB      27h             ; '''
        DB      07h
        DB      07h
        DB      27h             ; '''
        DB      43h             ; 'C'
        DB      01h
        DB      00h
        DB      10h
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      02h
        DB      00h
        DB      02h
        DB      07h
        DB      07h
        DB      0Eh
        DB      0Eh
        DB      0Ch
        DB      1Ch
        DB      0Ch
        DB      06h
        DB      03h
        DB      00h
        DB      80h
        DB      20h             ; ' '
        DB      00h
        DB      40h             ; '@'
        DB      0A0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      "px00`"
        DB      0C0h
        DB      00h
        DB      01h
        DB      04h
        DB      00h
        DB      02h
        DB      05h
        DB      03h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Eh
        DB      1Eh
        DB      0Ch
        DB      0Ch
        DB      06h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      40h             ; '@'
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0E0h
        DB      "pp080`"
        DB      0C0h
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      05h
        DB      07h
        DB      1Fh
        DB      1Fh
        DB      37h             ; '7'
        DB      36h             ; '6'
        DB      37h             ; '7'
        DB      1Bh
        DB      0Eh
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      60h             ; '`'
        DB      0F8h
        DB      0ECh
        DB      0FCh
        DB      78h             ; 'x'
        DB      0F0h
        DB      0B8h
        DB      0F8h
        DB      0ECh
        DB      0C8h
        DB      78h             ; 'x'
        DB      20h             ; ' '
        DB      00h
        DB      03h
        DB      02h
        DB      0Ch
        DB      09h
        DB      08h
        DB      18h
        DB      " hHQH$1"
        DB      1Ah
        DB      0Ch
        DB      00h
        DB      0F0h
        DB      10h
        DB      10h
        DB      9Ch
        DB      02h
        DB      12h
        DB      02h
        DB      84h
        DB      88h
        DB      44h             ; 'D'
        DB      04h
        DB      12h
        DB      36h             ; '6'
        DB      84h
        DB      0D8h
        DB      30h             ; '0'
        DB      00h
        DB      00h
        DB      01h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      1Fh
        DB      1Eh
        DB      1Eh
        DB      1Dh
        DB      1Fh
        DB      1Fh
        DB      0Fh
        DB      0Fh
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0F0h
        DB      0F8h
        DB      0F8h
        DB      0BCh
        DB      7Ch             ; '|'
        DB      7Ch             ; '|'
        DB      0FCh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      "p88<}"
        DB      9Fh
        DB      0Eh
        DB      09h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      0Eh
        DB      0Eh
        DB      0Ch
        DB      1Ch
        DB      5Eh             ; '^'
        DB      0FDh
        DB      0B8h
        DB      0C8h
        DB      84h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      09h
        DB      0Fh
        DB      1Eh
        DB      1Dh
        DB      3Ch             ; '<'
        DB      18h
        DB      18h
        DB      18h
        DB      08h
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      50h             ; 'P'
        DB      0F0h
        DB      0B8h
        DB      0DCh
        DB      9Ch
        DB      0Ch
        DB      0Ch
        DB      0Ch
        DB      08h
        DB      08h
        DB      01h
        DB      02h
        DB      03h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      06h
        DB      05h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      00h
        DB      40h             ; '@'
        DB      0A0h
        DB      0E0h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      00h
        DB      08h
        DB      14h
        DB      1Ch
        DB      08h
        DB      08h
        DB      08h
        DB      04h
        DB      03h
        DB      0Fh
        DB      19h
        DB      37h             ; '7'
        DB      6Fh             ; 'o'
        DB      7Fh
        DB      3Fh             ; '?'
        DB      1Fh
        DB      00h
        DB      10h
        DB      28h             ; '('
        DB      38h             ; '8'
        DB      10h
        DB      10h
        DB      10h
        DB      20h             ; ' '
        DB      0C0h
        DB      0F0h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      0FEh
        DB      0FCh
        DB      0F8h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Eh
        DB      0Ch
        DB      19h
        DB      "8lNOGC"
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      38h             ; '8'
        DB      18h
        DB      0Ch
        DB      0Eh
        DB      19h
        DB      39h             ; '9'
        DB      0F9h
        DB      0F0h
        DB      0E0h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      60h             ; '`'
        DB      80h
        DB      80h
        DB      80h
        DB      0C3h
        DB      4Fh             ; 'O'
        DB      7Fh
        DB      1Fh
        DB      1Fh
        DB      37h             ; '7'
        DB      38h             ; '8'
        DB      1Ch
        DB      0Fh
        DB      0Fh
        DB      3Bh             ; ';'
        DB      20h             ; ' '
        DB      60h             ; '`'
        DB      02h
        DB      02h
        DB      02h
        DB      0E2h
        DB      0F2h
        DB      0FEh
        DB      0FCh
        DB      0FCh
        DB      0F6h
        DB      0Eh
        DB      1Eh
        DB      0FCh
        DB      0F8h
        DB      0EEh
        DB      02h
        DB      03h
        DB      01h
        DB      03h
        DB      07h
        DB      06h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      0Fh
        DB      1Eh
        DB      0Ch
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0B0h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      78h             ; 'x'
        DB      30h             ; '0'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      18h
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      08h
        DB      18h
        DB      0Ch
        DB      0Ch
        DB      18h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      60h             ; '`'
        DB      00h
        DB      00h
        DB      10h
        DB      18h
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      18h
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      18h
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      07h
        DB      00h
        DB      23h             ; '#'
        DB      61h             ; 'a'
        DB      0C0h
        DB      00h
        DB      20h             ; ' '
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0C1h
        DB      01h
        DB      0F1h
        DB      0E1h
        DB      01h
        DB      03h
        DB      06h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      07h
        DB      00h
        DB      03h
        DB      21h             ; '!'
        DB      60h             ; '`'
        DB      40h             ; '@'
        DB      00h
        DB      10h
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0C1h
        DB      01h
        DB      0F1h
        DB      0E1h
        DB      00h
        DB      00h
        DB      04h
        DB      0Ch
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      07h
        DB      00h
        DB      03h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0C1h
        DB      01h
        DB      0F1h
        DB      0E1h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      07h
        DB      83h
        DB      80h
        DB      8Fh
        DB      87h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      30h             ; '0'
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      0C0h
        DB      84h
        DB      06h
        DB      02h
        DB      00h
        DB      08h
        DB      18h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      07h
        DB      83h
        DB      80h
        DB      8Fh
        DB      87h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      06h
        DB      07h
        DB      83h
        DB      80h
        DB      8Fh
        DB      87h
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      0C4h
        DB      86h
        DB      03h
        DB      00h
        DB      04h
        DB      02h
        DB      02h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      02h
        DB      05h
        DB      0Fh
        DB      07h
        DB      63h             ; 'c'
        DB      38h             ; '8'
        DB      18h
        DB      00h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      60h             ; '`'
        DB      30h             ; '0'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      40h             ; '@'
        DB      0E0h
        DB      0C0h
        DB      86h
        DB      1Ch
        DB      18h
        DB      00h
        DB      02h
        DB      02h
        DB      06h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      02h
        DB      07h
        DB      03h
        DB      10h
        DB      0DCh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0A0h
        DB      0F0h
        DB      0E0h
        DB      08h
        DB      3Bh             ; ';'
        DB      01h
        DB      00h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      02h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      02h
        DB      0C0h
        DB      00h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      20h             ; ' '
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0A0h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0E0h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      05h
        DB      03h
        DB      06h
        DB      06h
        DB      03h
        DB      01h
        DB      06h
        DB      45h             ; 'E'
        DB      45h             ; 'E'
        DB      7Fh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      10h
        DB      0D0h
        DB      0E0h
        DB      0B0h
        DB      0B0h
        DB      0E0h
        DB      0C0h
        DB      0B0h
        DB      0D1h
        DB      0D1h
        DB      0FFh
        DB      07h
        DB      0Fh
        DB      1Fh
        DB      "8;;;8"
        DB      1Bh
        DB      1Bh
        DB      0Fh
        DB      07h
        DB      03h
        DB      02h
        DB      02h
        DB      0Eh
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      38h             ; '8'
        DB      0DCh
        DB      0DCh
        DB      0DCh
        DB      3Ch             ; '<'
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      70h             ; 'p'
        DB      00h
        DB      07h
        DB      0Fh
        DB      1Fh
        DB      "8;;;8;"
        DB      1Bh
        DB      0Fh
        DB      07h
        DB      1Fh
        DB      10h
        DB      30h             ; '0'
        DB      00h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      38h             ; '8'
        DB      0DCh
        DB      0DCh
        DB      0DCh
        DB      3Ch             ; '<'
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0FCh
        DB      04h
        DB      06h
        DB      01h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      07h
        DB      0Eh
        DB      0Ch
        DB      19h
        DB      1Ch
        DB      3Eh             ; '>'
        DB      3Fh             ; '?'
        DB      7Fh
        DB      7Fh
        DB      0C0h
        DB      00h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      38h             ; '8'
        DB      98h
        DB      0CCh
        DB      9Ch
        DB      3Eh             ; '>'
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      07h
        DB      06h
        DB      02h
        DB      03h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      00h
        DB      05h
        DB      03h
        DB      06h
        DB      07h
        DB      03h
        DB      05h
        DB      02h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      60h             ; '`'
        DB      0C0h
        DB      0A0h
        DB      40h             ; '@'
        DB      00h
        DB      80h
        DB      "HLl.:"
        DB      1Bh
        DB      19h
        DB      09h
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      70h             ; 'p'
        DB      0D0h
        DB      0D8h
        DB      48h             ; 'H'
        DB      4Ch             ; 'L'
        DB      06h
        DB      07h
        DB      03h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Eh
        DB      1Eh
        DB      1Ch
        DB      1Ch
        DB      18h
        DB      08h
        DB      08h
        DB      0Ch
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      "`p000x"
        DB      0F8h
        DB      0Eh
        DB      02h
        DB      07h
        DB      0Fh
        DB      09h
        DB      19h
        DB      19h
        DB      1Dh
        DB      1Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      01h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0FCh
        DB      02h
        DB      0Fh
        DB      19h
        DB      39h             ; '9'
        DB      39h             ; '9'
        DB      1Dh
        DB      1Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      03h
        DB      01h
        DB      80h
        DB      0E0h
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      38h             ; '8'
        DB      78h             ; 'x'
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      02h
        DB      06h
        DB      06h
        DB      0Eh
        DB      0Bh
        DB      1Bh
        DB      12h
        DB      32h             ; '2'
        DB      60h             ; '`'
        DB      0E0h
        DB      0C0h
        DB      00h
        DB      01h
        DB      12h
        DB      32h             ; '2'
        DB      36h             ; '6'
        DB      74h             ; 't'
        DB      5Ch             ; '\'
        DB      0D8h
        DB      98h
        DB      90h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      07h
        DB      02h
        DB      01h
        DB      18h
        DB      78h             ; 'x'
        DB      0F0h
        DB      80h
        DB      00h
        DB      00h
        DB      10h
        DB      78h             ; 'x'
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0F0h
        DB      0A0h
        DB      0C0h
        DB      18h
        DB      1Eh
        DB      0Eh
        DB      03h
        DB      00h
        DB      00h
        DB      08h
        DB      1Eh
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      1Fh
        DB      00h
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      00h
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      00h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      "{{{{{"
        DB      00h
        DB      "{{{{{"
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      98h
        DB      0Ah
        DB      0Ch
        DB      08h
        DB      08h
        DB      0Ch
        DB      04h
        DB      05h
        DB      06h
        DB      04h
        DB      06h
        DB      02h
        DB      02h
        DB      01h
        DB      00h
        DB      00h
        DB      41h             ; 'A'
        DB      22h             ; '"'
        DB      21h             ; '!'
        DB      40h             ; '@'
        DB      87h
        DB      4Ch             ; 'L'
        DB      18h
        DB      02h
        DB      07h
        DB      4Dh             ; 'M'
        DB      0Fh
        DB      07h
        DB      1Bh
        DB      00h
        DB      80h
        DB      80h
        DB      02h
        DB      01h
        DB      01h
        DB      02h
        DB      0C4h
        DB      62h             ; 'b'
        DB      30h             ; '0'
        DB      80h
        DB      0C0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0C0h
        DB      0B0h
        DB      00h
        DB      00h
        DB      01h
        DB      02h
        DB      01h
        DB      40h             ; '@'
        DB      80h
        DB      47h             ; 'G'
        DB      2Ch             ; ','
        DB      38h             ; '8'
        DB      42h             ; 'B'
        DB      07h
        DB      0Dh
        DB      0Fh
        DB      07h
        DB      1Bh
        DB      00h
        DB      02h
        DB      00h
        DB      00h
        DB      00h
        DB      82h
        DB      04h
        DB      0C2h
        DB      61h             ; 'a'
        DB      31h             ; '1'
        DB      82h
        DB      0C0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0C0h
        DB      0B0h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      1Dh
        DB      18h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      70h             ; 'p'
        DB      30h             ; '0'
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      05h
        DB      03h
        DB      07h
        DB      07h
        DB      03h
        DB      01h
        DB      00h
        DB      0Eh
        DB      19h
        DB      21h             ; '!'
        DB      31h             ; '1'
        DB      03h
        DB      1Fh
        DB      16h
        DB      10h
        DB      10h
        DB      0D0h
        DB      0E0h
        DB      0B0h
        DB      0B0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      0C4h
        DB      0ECh
        DB      0F8h
        DB      0C0h
        DB      0E0h
        DB      74h             ; 't'
        DB      34h             ; '4'
        DB      1Ch
        DB      0Dh
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      01h
        DB      00h
        DB      01h
        DB      03h
        DB      03h
        DB      05h
        DB      05h
        DB      01h
        DB      00h
        DB      01h
        DB      01h
        DB      0D8h
        DB      0E0h
        DB      0B0h
        DB      0B0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      0E0h
        DB      08h
        DB      0Bh
        DB      07h
        DB      0Dh
        DB      0Dh
        DB      07h
        DB      03h
        DB      01h
        DB      23h             ; '#'
        DB      37h             ; '7'
        DB      1Fh
        DB      03h
        DB      07h
        DB      2Eh             ; '.'
        DB      2Ch             ; ','
        DB      38h             ; '8'
        DB      20h             ; ' '
        DB      0A0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      70h             ; 'p'
        DB      98h
        DB      84h
        DB      8Ch
        DB      0C0h
        DB      0F8h
        DB      68h             ; 'h'
        DB      08h
        DB      1Bh
        DB      07h
        DB      0Dh
        DB      0Dh
        DB      07h
        DB      03h
        DB      01h
        DB      03h
        DB      03h
        DB      03h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      01h
        DB      07h
        DB      0B0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0A0h
        DB      0A0h
        DB      80h
        DB      00h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      07h
        DB      1Fh
        DB      17h
        DB      16h
        DB      12h
        DB      10h
        DB      70h             ; 'p'
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0B0h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      00h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      00h
        DB      00h
        DB      00h
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
        DB      00h
        DB      00h
        DB      10h
        DB      0Ch
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0B0h
        DB      0E0h
        DB      0C0h
        DB      00h
        DB      0F8h
        DB      70h             ; 'p'
        DB      00h
        DB      00h
        DB      04h
        DB      18h
        DB      03h
        DB      07h
        DB      07h
        DB      1Fh
        DB      17h
        DB      16h
        DB      12h
        DB      10h
        DB      70h             ; 'p'
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0B0h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      00h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      00h
        DB      00h
        DB      00h
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
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0B0h
        DB      0E0h
        DB      0C0h
        DB      00h
        DB      0FCh
        DB      70h             ; 'p'
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      03h
        DB      07h
        DB      0Fh
        DB      ">,,$ a"
        DB      03h
        DB      03h
        DB      03h
        DB      07h
        DB      0Fh
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0B0h
        DB      10h
        DB      10h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      02h
        DB      03h
        DB      01h
        DB      00h
        DB      04h
        DB      0Ch
        DB      38h             ; '8'
        DB      20h             ; ' '
        DB      00h
        DB      02h
        DB      06h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0A0h
        DB      0E0h
        DB      80h
        DB      00h
        DB      20h             ; ' '
        DB      30h             ; '0'
        DB      18h
        DB      08h
        DB      00h
        DB      80h
        DB      0C0h
        DB      18h
        DB      3Ch             ; '<'
        DB      24h             ; '$'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      81h
        DB      0FFh
        DB      18h
        DB      18h
        DB      18h
        DB      28h             ; '('
        DB      34h             ; '4'
        DB      3Ch             ; '<'
        DB      0Ch
        DB      10h
        DB      18h
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      0E7h
        DB      0E1h
        DB      0E3h
        DB      0E7h
        DB      0E7h
        DB      0A7h
        DB      0C7h
        DB      38h             ; '8'
        DB      18h
        DB      3Ch             ; '<'
        DB      24h             ; '$'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      81h
        DB      0FFh
        DB      18h
        DB      18h
        DB      18h
        DB      28h             ; '('
        DB      34h             ; '4'
        DB      3Ch             ; '<'
        DB      0Ch
        DB      10h
        DB      18h
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      18h
        DB      18h
        DB      1Eh
        DB      1Ch
        DB      98h
        DB      58h             ; 'X'
        DB      78h             ; 'x'
        DB      38h             ; '8'
        DB      18h
        DB      3Ch             ; '<'
        DB      24h             ; '$'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      81h
        DB      0FFh
        DB      18h
        DB      18h
        DB      18h
        DB      28h             ; '('
        DB      34h             ; '4'
        DB      3Ch             ; '<'
        DB      0Ch
        DB      10h
        DB      18h
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0FFh
        DB      19h
        DB      1Bh
        DB      1Eh
        DB      1Eh
        DB      9Ch
        DB      58h             ; 'X'
        DB      78h             ; 'x'
        DB      38h             ; '8'
        DB      00h
        DB      08h
        DB      0Bh
        DB      0Eh
        DB      1Ch
        DB      18h
        DB      3Ch             ; '<'
        DB      24h             ; '$'
        DB      08h
        DB      08h
        DB      0FCh
        DB      16h
        DB      33h             ; '3'
        DB      21h             ; '!'
        DB      61h             ; 'a'
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      "dDECg-8"
        DB      00h
        DB      40h             ; '@'
        DB      80h
        DB      81h
        DB      01h
        DB      01h
        DB      03h
        DB      02h
        DB      00h
        DB      03h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F0h
        DB      00h
        DB      00h
        DB      80h
        DB      0F8h
        DB      0FFh
        DB      0EFh
        DB      0F7h
        DB      7Fh
        DB      0Eh
        DB      00h
        DB      00h
        DB      0DFh
        DB      0DFh
        DB      0DFh
        DB      0DFh
        DB      0DDh
        DB      00h
        DB      00h
        DB      01h
        DB      1Fh
        DB      0DFh
        DB      0DAh
        DB      0DFh
        DB      0DFh
        DB      0C0h
        DB      00h
        DB      0F8h
        DB      0FBh
        DB      0DBh
        DB      0FBh
        DB      0FBh
        DB      83h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      0EFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      0A1h
        DB      0B3h
        DB      86h
        DB      84h
        DB      8Ch
        DB      58h             ; 'X'
        DB      5Ch             ; '\'
        DB      1Ch
        DB      01h
        DB      49h             ; 'I'
        DB      0EBh
        DB      0FBh
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      24h             ; '$'
        DB      0A4h
        DB      04h
        DB      26h             ; '&'
        DB      36h             ; '6'
        DB      7Fh
        DB      12h
        DB      14h
        DB      5Ah             ; 'Z'
        DB      52h             ; 'R'
        DB      0FFh
        DB      0FAh
        DB      0F6h
        DB      95h
        DB      0B5h
        DB      0B9h
        DB      0F1h
        DB      0FFh
        DB      38h             ; '8'
        DB      33h             ; '3'
        DB      0C6h
        DB      60h             ; '`'
        DB      00h
        DB      0Eh
        DB      1Bh
        DB      70h             ; 'p'
        DB      00h
        DB      0C9h
        DB      30h             ; '0'
        DB      03h
        DB      04h
        DB      0CEh
        DB      08h
        DB      20h             ; ' '
        DB      11h
        DB      41h             ; 'A'
        DB      04h
        DB      31h             ; '1'
        DB      48h             ; 'H'
        DB      10h
        DB      1Ch
        DB      4Fh             ; 'O'
        DB      0FFh
        DB      0F7h
        DB      0BDh
        DB      0F7h
        DB      0FBh
        DB      0FFh
        DB      0BFh
        DB      0FEh
        DB      70h             ; 'p'
        DB      0B9h
        DB      0FFh
        DB      0FFh
        DB      0EFh
        DB      0EEh
        DB      0E7h
        DB      0DBh
        DB      0BBh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DFh
        DB      0DBh
        DB      7Dh             ; '}'
        DB      79h             ; 'y'
        DB      72h             ; 'r'
        DB      0FFh
        DB      0BFh
        DB      7Bh             ; '{'
        DB      7Dh             ; '}'
        DB      0FEh
        DB      7Eh             ; '~'
        DB      9Ch
        DB      0E0h
        DB      0F3h
        DB      7Fh
        DB      0BFh
        DB      0DFh
        DB      0DFh
        DB      9Eh
        DB      0DCh
        DB      17h
        DB      7Fh
        DB      7Eh             ; '~'
        DB      58h             ; 'X'
        DB      0F1h
        DB      0Ah
        DB      0BFh
        DB      10h
        DB      7Ch             ; '|'
        DB      0FEh
        DB      0E4h
        DB      21h             ; '!'
        DB      0BBh
        DB      0F7h
        DB      65h             ; 'e'
        DB      3Fh             ; '?'
        DB      0DCh
        DB      0FEh
        DB      7Ah             ; 'z'
        DB      3Fh             ; '?'
        DB      48h             ; 'H'
        DB      82h
        DB      0FFh
        DB      13h
        DB      3Fh             ; '?'
        DB      88h
        DB      0EDh
        DB      0FEh
        DB      68h             ; 'h'
        DB      0FEh
        DB      7Ah             ; 'z'
        DB      30h             ; '0'
        DB      0FFh
        DB      0F7h
        DB      0F7h
        DB      0BEh
        DB      0B6h
        DB      0B6h
        DB      0B6h
        DB      0B7h
        DB      0FFh
        DB      0EFh
        DB      0EDh
        DB      0EDh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0FFh
        DB      0BFh
        DB      0BDh
        DB      0BDh
        DB      0BDh
        DB      0BDh
        DB      0BDh
        DB      0BFh
        DB      0BFh
        DB      0DFh
        DB      0FBh
        DB      0FBh
        DB      0BBh
        DB      0BBh
        DB      0BBh
        DB      0BBh
        DB      0FFh
        DB      0FFh
        DB      81h
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0FFh
        DB      0FCh
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DFh
        DB      0DBh
        DB      0DBh
        DB      0DBh
        DB      0DBh
        DB      0FBh
        DB      0FBh
        DB      0BBh
        DB      0BFh
        DB      0BFh
        DB      0FFh
        DB      0FBh
        DB      0BFh
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      82h
        DB      82h
        DB      00h
        DB      82h
        DB      82h
        DB      0DAh
        DB      00h
        DB      38h             ; '8'
        DB      28h             ; '('
        DB      0EEh
        DB      82h
        DB      82h
        DB      00h
        DB      82h
        DB      82h
        DB      0FEh
        DB      0BEh
        DB      0BEh
        DB      0BEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      00h
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      0FEh
        DB      0BEh
        DB      0FEh
        DB      0BEh
        DB      0BEh
        DB      0FEh
        DB      0FFh
        DB      75h             ; 'u'
        DB      40h             ; '@'
        DB      06h
        DB      00h
        DB      3Ch             ; '<'
        DB      00h
        DB      3Eh             ; '>'
        DB      20h             ; ' '
        DB      8Eh
        DB      8Eh
        DB      21h             ; '!'
        DB      00h
        DB      7Eh             ; '~'
        DB      00h
        DB      0FDh
        DB      82h
        DB      31h             ; '1'
        DB      25h             ; '%'
        DB      8Ch
        DB      00h
        DB      3Ch             ; '<'
        DB      00h
        DB      0F4h
        DB      00h
        DB      0C0h
        DB      70h             ; 'p'
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      18h
        DB      1Ch
        DB      1Ch
        DB      3Eh             ; '>'
        DB      00h
        DB      37h             ; '7'
        DB      37h             ; '7'
        DB      00h
        DB      3Eh             ; '>'
        DB      3Eh             ; '>'
        DB      00h
        DB      0FDh
        DB      00h
        DB      0EFh
        DB      0EFh
        DB      00h
        DB      0FDh
        DB      0FDh
        DB      00h
        DB      0F4h
        DB      00h
        DB      0BCh
        DB      0BCh
        DB      00h
        DB      0F4h
        DB      0F4h
        DB      00h
        DB      00h
        DB      "@@`8?"
        DB      1Fh
        DB      0Fh
        DB      1Ch
        DB      1Ch
        DB      3Ch             ; '<'
        DB      7Ch             ; '|'
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      "~nvnnnv~>"
        DB      1Eh
        DB      00h
        DB      00h
        DB      00h
        DB      5Ch             ; '\'
        DB      0FFh
        DB      0A7h
        DB      0C3h
        DB      0C3h
        DB      0E7h
        DB      0FFh
        DB      00h
        DB      80h
        DB      80h
        DB      0C1h
        DB      0C1h
        DB      0C1h
        DB      80h
        DB      80h
        DB      00h
        DB      38h             ; '8'
        DB      44h             ; 'D'
        DB      0FEh
        DB      7Eh             ; '~'
        DB      24h             ; '$'
        DB      24h             ; '$'
        DB      00h
        DB      18h
        DB      3Ch             ; '<'
        DB      3Ch             ; '<'
        DB      42h             ; 'B'
        DB      42h             ; 'B'
        DB      0C3h
        DB      0C3h
        DB      7Eh             ; '~'
        DB      70h             ; 'p'
        DB      18h
        DB      1Ch
        DB      ">6>6>"
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      3Fh             ; '?'
        DB      3Ch             ; '<'
        DB      00h
        DB      00h
        DB      01h
        DB      05h
        DB      06h
        DB      0FAh
        DB      0F2h
        DB      60h             ; '`'
        DB      0C0h
        DB      0C0h
        DB      07h
        DB      42h             ; 'B'
        DB      0FFh
        DB      0E5h
        DB      0C3h
        DB      0C3h
        DB      0E7h
        DB      0FFh
        DB      0FEh
        DB      0FDh
        DB      0FBh
        DB      0F7h
        DB      0EFh
        DB      0DFh
        DB      0BFh
        DB      7Fh
        DB      00h
        DB      00h
        DB      00h
        DB      3Ch             ; '<'
        DB      24h             ; '$'
        DB      24h             ; '$'
        DB      3Ch             ; '<'
        DB      08h
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      7Eh             ; '~'
        DB      3Ch             ; '<'
        DB      18h
        DB      0FFh
        DB      0C0h
        DB      0FFh
        DB      60h             ; '`'
        DB      0FFh
        DB      04h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      08h
        DB      08h
        DB      38h             ; '8'
        DB      08h
        DB      38h             ; '8'
        DB      08h
        DB      00h
        DB      00h
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E7h
        DB      0E7h
        DB      0E7h
        DB      0E7h
        DB      0E7h
        DB      0E7h
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      38h             ; '8'
        DB      6Ch             ; 'l'
        DB      6Ch             ; 'l'
        DB      00h
        DB      6Ch             ; 'l'
        DB      6Ch             ; 'l'
        DB      00h
        DB      6Ch             ; 'l'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0E7h
        DB      0E7h
        DB      24h             ; '$'
        DB      0A5h
        DB      24h             ; '$'
        DB      0E7h
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0FEh
        DB      0F2h
        DB      0FAh
        DB      0F2h
        DB      0FEh
        DB      0FFh
        DB      6Ch             ; 'l'
        DB      38h             ; '8'
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      38h             ; '8'
        DB      7Ch             ; '|'
        DB      0FFh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      4Fh             ; 'O'
        DB      5Fh             ; '_'
        DB      4Fh             ; 'O'
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      06h
        DB      06h
        DB      07h
        DB      06h
        DB      06h
        DB      07h
        DB      06h
        DB      07h
        DB      06h
        DB      07h
        DB      07h
        DB      07h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      40h             ; '@'
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      "~~^^~~"
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0FEh
        DB      0FAh
        DB      0FAh
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      60h             ; '`'
        DB      00h
        DB      02h
        DB      06h
        DB      07h
        DB      3Fh             ; '?'
        DB      3Eh             ; '>'
        DB      06h
        DB      04h
        DB      0Ch
        DB      80h
        DB      80h
        DB      80h
        DB      81h
        DB      0FFh
        DB      81h
        DB      81h
        DB      81h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      0C1h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      10h
        DB      10h
        DB      30h             ; '0'
        DB      38h             ; '8'
        DB      28h             ; '('
        DB      10h
        DB      00h
        DB      00h
        DB      04h
        DB      1Ch
        DB      0F8h
        DB      78h             ; 'x'
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      81h
        DB      87h
        DB      81h
        DB      81h
        DB      81h
        DB      81h
        DB      0FEh
        DB      0FEh
        DB      01h
        DB      0FFh
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      18h
        DB      18h
        DB      18h
        DB      18h
        DB      3Ch             ; '<'
        DB      38h             ; '8'
        DB      7Ch             ; '|'
        DB      7Eh             ; '~'
        DB      0FEh
        DB      0FFh
        DB      5Fh             ; '_'
        DB      6Eh             ; 'n'
        DB      3Ch             ; '<'
        DB      0FEh
        DB      0FEh
        DB      0DEh
        DB      0DEh
        DB      0DEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      0C0h
        DB      80h
        DB      00h
        DB      7Eh             ; '~'
        DB      0C3h
        DB      00h
        DB      00h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      05h
        DB      00h
        DB      00h
        DB      10h
        DB      10h
        DB      1Ah
        DB      8Ch
        DB      0Ch
        DB      1Ah
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      00h
        DB      00h
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      6Eh             ; 'n'
        DB      64h             ; 'd'
        DB      60h             ; '`'
        DB      05h
        DB      01h
        DB      01h
        DB      05h
        DB      07h
        DB      03h
        DB      03h
        DB      03h
        DB      7Eh             ; '~'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0FFh
        DB      08h
        DB      10h
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      80h
        DB      20h             ; ' '
        DB      0A0h
        DB      0E0h
        DB      0A0h
        DB      00h
        DB      "`qsqp``"
        DB      0Bh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      01h
        DB      10h
        DB      18h
        DB      ":x||>8"
        DB      0A0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      0C8h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      "@``py|~"
        DB      00h
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      6Fh             ; 'o'
        DB      5Fh             ; '_'
        DB      1Fh
        DB      00h
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      00h
        DB      7Fh
        DB      1Dh
        DB      "AcG[}"
        DB      87h
        DB      87h
        DB      87h
        DB      87h
        DB      87h
        DB      87h
        DB      87h
        DB      87h
        DB      0FFh
        DB      "~~N^N~"
        DB      0FFh
        DB      18h
        DB      1Ch
        DB      0Eh
        DB      06h
        DB      06h
        DB      0Eh
        DB      0Ch
        DB      18h
        DB      0Ch
        DB      08h
        DB      18h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      00h
        DB      87h
        DB      0A7h
        DB      0A7h
        DB      8Fh
        DB      7Eh             ; '~'
        DB      7Eh             ; '~'
        DB      3Ch             ; '<'
        DB      18h
        DB      0FFh
        DB      "~~rzr~"
        DB      0FFh
        DB      18h
        DB      "0p``p8"
        DB      18h
        DB      3Ch             ; '<'
        DB      81h
        DB      18h
        DB      3Ch             ; '<'
        DB      7Eh             ; '~'
        DB      7Eh             ; '~'
        DB      3Ch             ; '<'
        DB      18h
        DB      0FFh
        DB      "~~~~~~"
        DB      0FFh
        DB      00h
        DB      01h
        DB      03h
        DB      07h
        DB      0Dh
        DB      0Bh
        DB      1Fh
        DB      1Fh
        DB      18h
        DB      0E7h
        DB      0F7h
        DB      0EFh
        DB      0EEh
        DB      0DFh
        DB      0DFh
        DB      45h             ; 'E'
        DB      00h
        DB      80h
        DB      0E0h
        DB      0F0h
        DB      03h
        DB      23h             ; '#'
        DB      22h             ; '"'
        DB      0FEh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      71h             ; 'q'
        DB      3Fh             ; '?'
        DB      00h
        DB      1Eh
        DB      1Ah
        DB      1Eh
        DB      1Eh
        DB      3Ch             ; '<'
        DB      01h
        DB      03h
        DB      01h
        DB      0FBh
        DB      0E7h
        DB      0FFh
        DB      0FFh
        DB      1Ch
        DB      70h             ; 'p'
        DB      0F1h
        DB      0FFh
        DB      "|hxx<"
        DB      00h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      08h
        DB      1Ch
        DB      1Ch
        DB      14h
        DB      1Ch
        DB      1Ch
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      " ppPp"
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      "````8(((8(88"
        DB      0FFh
        DB      0FFh
        DB      0E7h
        DB      0FFh
        DB      0E7h
        DB      0E7h
        DB      0FFh
        DB      0EFh
        DB      "PPPqQQrS"
        DB      0E0h
        DB      0A0h
        DB      0C0h
        DB      40h             ; '@'
        DB      0C0h
        DB      80h
        DB      80h
        DB      80h
        DB      "pPpppppp"
        DB      0EFh
        DB      0F7h
        DB      0FFh
        DB      0E7h
        DB      0E7h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      "ssSwvvvt"
        DB      00h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      03h
        DB      00h
        DB      03h
        DB      03h
        DB      03h
        DB      1Ah
        DB      0Fh
        DB      1Ah
        DB      1Fh
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DDh
        DB      0ADh
        DB      0EBh
        DB      0B7h
        DB      00h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0A8h
        DB      78h             ; 'x'
        DB      68h             ; 'h'
        DB      0B8h
        DB      "pppppppp"
        DB      00h
        DB      10h
        DB      19h
        DB      1Dh
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      7Eh             ; '~'
        DB      0FFh
        DB      7Eh             ; '~'
        DB      0FFh
        DB      0C3h
        DB      89h
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      08h
        DB      98h
        DB      0B8h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      03h
        DB      01h
        DB      0FEh
        DB      81h
        DB      0C3h
        DB      0FFh
        DB      0FFh
        DB      0DBh
        DB      5Ah             ; 'Z'
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      7Fh
        DB      03h
        DB      03h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      82h
        DB      84h
        DB      0F8h
        DB      00h
        DB      02h
        DB      03h
        DB      07h
        DB      07h
        DB      06h
        DB      0Eh
        DB      0Ch
        DB      0Ch
        DB      7Fh
        DB      "mm}/?;"
        DB      1Bh
        DB      0FBh
        DB      0FBh
        DB      0DBh
        DB      0DEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      7Eh             ; '~'
        DB      08h
        DB      18h
        DB      10h
        DB      00h
        DB      40h             ; '@'
        DB      0E0h
        DB      0E0h
        DB      40h             ; '@'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      1Bh
        DB      1Fh
        DB      1Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      1Fh
        DB      3Fh             ; '?'
        DB      7Eh             ; '~'
        DB      7Eh             ; '~'
        DB      0FCh
        DB      0FCh
        DB      0DCh
        DB      0DCh
        DB      0ECh
        DB      0ECh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      0Fh
        DB      1Fh
        DB      7Fh
        DB      0FFh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0ECh
        DB      0ECh
        DB      0DEh
        DB      9Eh
        DB      7Eh             ; '~'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      1Bh
        DB      7Bh             ; '{'
        DB      0BBh
        DB      0C7h
        DB      3Eh             ; '>'
        DB      7Eh             ; '~'
        DB      3Ch             ; '<'
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      78h             ; 'x'
        DB      0FFh
        DB      7Eh             ; '~'
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0E1h
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      00h
        DB      00h
        DB      0FEh
        DB      0FEh
        DB      0FCh
        DB      78h             ; 'x'
        DB      0FEh
        DB      0FCh
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      54h             ; 'T'
        DB      0BEh
        DB      0D7h
        DB      6Dh             ; 'm'
        DB      14h
        DB      00h
        DB      00h
        DB      00h
        DB      6Ah             ; 'j'
        DB      0F6h
        DB      0FDh
        DB      29h             ; ')'
        DB      0C4h
        DB      00h
        DB      38h             ; '8'
        DB      7Ch             ; '|'
        DB      0FEh
        DB      92h
        DB      0FEh
        DB      6Ch             ; 'l'
        DB      38h             ; '8'
        DB      7Ch             ; '|'
        DB      0FEh
        DB      0EEh
        DB      "ll||h"
        DB      0FEh
        DB      03h
        DB      03h
        DB      07h
        DB      06h
        DB      06h
        DB      06h
        DB      06h
        DB      06h
        DB      0F7h
        DB      0F7h
        DB      77h             ; 'w'
        DB      7Fh
        DB      0EEh
        DB      0EEh
        DB      0EEh
        DB      0EFh
        DB      7Fh
        DB      7Fh
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0DDh
        DB      0DFh
        DB      0BBh
        DB      0BBh
        DB      0BBh
        DB      0FBh
        DB      7Fh
        DB      0FFh
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B8h
        DB      7Ch             ; '|'
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      61h             ; 'a'
        DB      0FFh
        DB      83h
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      0E7h
        DB      0FFh
        DB      0E0h
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      0FEh
        DB      0Fh
        DB      0Fh
        DB      1Dh
        DB      1Dh
        DB      19h
        DB      3Bh             ; ';'
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      07h
        DB      0Eh
        DB      0Eh
        DB      0FFh
        DB      83h
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0Fh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Dh
        DB      0Fh
        DB      1Bh
        DB      0DDh
        DB      0DBh
        DB      0FBh
        DB      0BBh
        DB      0F7h
        DB      77h             ; 'w'
        DB      7Fh
        DB      7Fh
        DB      3Fh             ; '?'
        DB      77h             ; 'w'
        DB      77h             ; 'w'
        DB      77h             ; 'w'
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      0ABh
        DB      83h
        DB      0FFh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      1Bh
        DB      7Ch             ; '|'
        DB      0F8h
        DB      0D0h
        DB      0D0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DFh
        DB      0DBh
        DB      0DBh
        DB      0DBh
        DB      0DBh
        DB      "@BRPP"
        DB      10h
        DB      0FFh
        DB      0FFh
        DB      "??;++++/"
        DB      00h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      7Eh             ; '~'
        DB      81h
        DB      0BDh
        DB      0A1h
        DB      0A1h
        DB      0BDh
        DB      81h
        DB      7Eh             ; '~'
        DB      7Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      7Fh
        DB      03h
        DB      04h
        DB      08h
        DB      08h
        DB      0Fh
        DB      08h
        DB      08h
        DB      08h
        DB      0C0h
        DB      20h             ; ' '
        DB      10h
        DB      10h
        DB      0F0h
        DB      10h
        DB      10h
        DB      10h
        DB      7Fh
        DB      80h
        DB      80h
        DB      7Eh             ; '~'
        DB      01h
        DB      01h
        DB      01h
        DB      0FEh
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      7Eh             ; '~'
        DB      81h
        DB      81h
        DB      81h
        DB      81h
        DB      81h
        DB      81h
        DB      7Eh             ; '~'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      40h             ; '@'
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      70h             ; 'p'
        DB      0D0h
        DB      0C8h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      1Fh
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      80h
        DB      00h
        DB      00h
        DB      01h
        DB      19h
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      19h
        DB      12h
        DB      0C8h
        DB      0C4h
        DB      0FEh
        DB      0FFh
        DB      0FEh
        DB      06h
        DB      05h
        DB      05h
        DB      7Eh             ; '~'
        DB      0Fh
        DB      07h
        DB      07h
        DB      06h
        DB      06h
        DB      8Fh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0F8h
        DB      0F0h
        DB      02h
        DB      04h
        DB      04h
        DB      04h
        DB      04h
        DB      06h
        DB      03h
        DB      01h
        DB      05h
        DB      05h
        DB      08h
        DB      08h
        DB      08h
        DB      10h
        DB      22h             ; '"'
        DB      0E2h
        DB      0E4h
        DB      06h
        DB      06h
        DB      0Ah
        DB      0Bh
        DB      09h
        DB      11h
        DB      30h             ; '0'
        DB      0E0h
        DB      00h
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      60h             ; '`'
        DB      40h             ; '@'
        DB      80h
        DB      0C0h
        DB      00h
        DB      00h
        DB      09h
        DB      0Fh
        DB      0Eh
        DB      08h
        DB      00h
        DB      00h
        DB      0E3h
        DB      0F3h
        DB      0BAh
        DB      18h
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      0E1h
        DB      82h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0E0h
        DB      70h             ; 'p'
        DB      3Ch             ; '<'
        DB      1Fh
        DB      1Eh
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      90h
        DB      0D6h
        DB      0D2h
        DB      0D2h
        DB      92h
        DB      92h
        DB      00h
        DB      00h
        DB      00h
        DB      7Fh
        DB      43h             ; 'C'
        DB      01h
        DB      01h
        DB      61h             ; 'a'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      80h
        DB      00h
        DB      18h
        DB      1Ch
        DB      0Ch
        DB      08h
        DB      08h
        DB      08h
        DB      08h
        DB      08h
        DB      94h
        DB      98h
        DB      90h
        DB      90h
        DB      90h
        DB      93h
        DB      93h
        DB      90h
        DB      12h
        DB      0Eh
        DB      0Eh
        DB      3Fh             ; '?'
        DB      0F3h
        DB      0E1h
        DB      80h
        DB      38h             ; '8'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F8h
        DB      0FCh
        DB      19h
        DB      1Ah
        DB      1Ch
        DB      1Ch
        DB      18h
        DB      00h
        DB      00h
        DB      00h
        DB      90h
        DB      0A0h
        DB      0A1h
        DB      0E0h
        DB      0C1h
        DB      81h
        DB      80h
        DB      80h
        DB      18h
        DB      18h
        DB      18h
        DB      0FFh
        DB      0DFh
        DB      19h
        DB      18h
        DB      18h
        DB      78h             ; 'x'
        DB      30h             ; '0'
        DB      00h
        DB      00h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      83h
        DB      8Fh
        DB      8Ch
        DB      80h
        DB      80h
        DB      00h
        DB      18h
        DB      08h
        DB      0FFh
        DB      81h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FCh
        DB      0F8h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      3Fh             ; '?'
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FCh
        DB      0E0h
        DB      0FFh
        DB      0FDh
        DB      0FCh
        DB      80h
        DB      0FFh
        DB      80h
        DB      60h             ; '`'
        DB      00h
        DB      00h
        DB      0E0h
        DB      38h             ; '8'
        DB      04h
        DB      0F2h
        DB      98h
        DB      8Ch
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FCh
        DB      0C8h
        DB      80h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0FCh
        DB      86h
        DB      0FFh
        DB      0FFh
        DB      3Fh             ; '?'
        DB      0FFh
        DB      0FCh
        DB      0CEh
        DB      0C0h
        DB      0E0h
        DB      70h             ; 'p'
        DB      78h             ; 'x'
        DB      0ECh
        DB      0E6h
        DB      0FAh
        DB      72h             ; 'r'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0EFh
        DB      0E3h
        DB      0FBh
        DB      0FBh
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      78h             ; 'x'
        DB      0F8h
        DB      0EFh
        DB      0E7h
        DB      0F7h
        DB      0FBh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      70h             ; 'p'
        DB      0B8h
        DB      0D8h
        DB      0D8h
        DB      0F8h
        DB      0F4h
        DB      0FCh
        DB      0FCh
        DB      0EBh
        DB      0FBh
        DB      0EBh
        DB      7Bh             ; '{'
        DB      7Bh             ; '{'
        DB      0F3h
        DB      0FDh
        DB      0FCh
        DB      0BEh
        DB      0FCh
        DB      7Fh
        DB      98h
        DB      0FCh
        DB      6Fh             ; 'o'
        DB      0BDh
        DB      0ECh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FDh
        DB      0FDh
        DB      0FEh
        DB      0F7h
        DB      0F7h
        DB      78h             ; 'x'
        DB      7Ah             ; 'z'
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0DEh
        DB      7Eh             ; '~'
        DB      0A3h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      31h             ; '1'
        DB      87h
        DB      0FFh
        DB      0BFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DFh
        DB      80h
        DB      80h
        DB      80h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F7h
        DB      0FFh
        DB      0B2h
        DB      0B2h
        DB      0D3h
        DB      0F3h
        DB      69h             ; 'i'
        DB      0F9h
        DB      0FDh
        DB      0FCh
        DB      0FFh
        DB      0FCh
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      0FDh
        DB      0F5h
        DB      "_]}??w"
        DB      0FDh
        DB      0FCh
        DB      0FEh
        DB      0D6h
        DB      92h
        DB      9Bh
        DB      59h             ; 'Y'
        DB      5Fh             ; '_'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0C0h
        DB      0C0h
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      7Fh
        DB      7Fh
        DB      73h             ; 's'
        DB      5Fh             ; '_'
        DB      0DFh
        DB      5Fh             ; '_'
        DB      0F7h
        DB      37h             ; '7'
        DB      0F7h
        DB      0F7h
        DB      5Fh             ; '_'
        DB      27h             ; '''
        DB      27h             ; '''
        DB      0A3h
        DB      0A3h
        DB      0A7h
        DB      0A7h
        DB      87h
        DB      0F8h
        DB      0FCh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      0Fh
        DB      0FEh
        DB      0FCh
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      0F8h
        DB      0E3h
        DB      0E3h
        DB      47h             ; 'G'
        DB      0C3h
        DB      81h
        DB      01h
        DB      00h
        DB      00h
        DB      86h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Eh
        DB      1Eh
        DB      3Ch             ; '<'
        DB      0F8h
        DB      01h
        DB      03h
        DB      07h
        DB      0Dh
        DB      1Fh
        DB      36h             ; '6'
        DB      7Ch             ; '|'
        DB      0F8h
        DB      0B0h
        DB      60h             ; '`'
        DB      40h             ; '@'
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      7Fh
        DB      47h             ; 'G'
        DB      0Fh
        DB      3Fh             ; '?'
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      7Fh
        DB      0FFh
        DB      04h
        DB      07h
        DB      37h             ; '7'
        DB      37h             ; '7'
        DB      3Fh             ; '?'
        DB      0F6h
        DB      0FBh
        DB      0F9h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      01h
        DB      03h
        DB      05h
        DB      1Fh
        DB      2Fh             ; '/'
        DB      38h             ; '8'
        DB      79h             ; 'y'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      06h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      03h
        DB      05h
        DB      0Bh
        DB      1Eh
        DB      3Ch             ; '<'
        DB      78h             ; 'x'
        DB      0F0h
        DB      0E3h
        DB      0C3h
        DB      87h
        DB      07h
        DB      05h
        DB      0Bh
        DB      0Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      3Fh             ; '?'
        DB      7Fh
        DB      7Ch             ; '|'
        DB      7Dh             ; '}'
        DB      7Dh             ; '}'
        DB      0FDh
        DB      0FFh
        DB      0FFh
        DB      87h
        DB      1Bh
        DB      79h             ; 'y'
        DB      0DDh
        DB      75h             ; 'u'
        DB      0FDh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      3Fh             ; '?'
        DB      6Fh             ; 'o'
        DB      0DFh
        DB      1Bh
        DB      3Ah             ; ':'
        DB      76h             ; 'v'
        DB      64h             ; 'd'
        DB      0FCh
        DB      0FBh
        DB      0E3h
        DB      0E7h
        DB      0EEh
        DB      6Ch             ; 'l'
        DB      68h             ; 'h'
        DB      28h             ; '('
        DB      2Ah             ; '*'
        DB      0EDh
        DB      0FDh
        DB      0FDh
        DB      0F9h
        DB      7Ah             ; 'z'
        DB      72h             ; 'r'
        DB      66h             ; 'f'
        DB      6Fh             ; 'o'
        DB      01h
        DB      03h
        DB      07h
        DB      0Fh
        DB      1Fh
        DB      3Eh             ; '>'
        DB      7Ch             ; '|'
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0E1h
        DB      83h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      ",0???"
        DB      1Fh
        DB      1Fh
        DB      0Fh
        DB      0CFh
        DB      1Fh
        DB      0DFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      3Fh             ; '?'
        DB      7Fh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      1Eh
        DB      1Eh
        DB      ">,|hX"
        DB      0F0h
        DB      0Eh
        DB      0Eh
        DB      0Eh
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      0FFh
        DB      0F8h
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      07h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0C5h
        DB      0CFh
        DB      0FFh
        DB      0F7h
        DB      7Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      06h
        DB      0Dh
        DB      0Fh
        DB      1Bh
        DB      1Fh
        DB      3Eh             ; '>'
        DB      7Ch             ; '|'
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      03h
        DB      00h
        DB      00h
        DB      3Fh             ; '?'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0E0h
        DB      0F8h
        DB      0FEh
        DB      3Fh             ; '?'
        DB      0Fh
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      00h
        DB      0Eh
        DB      1Fh
        DB      "8000p"
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      78h             ; 'x'
        DB      04h
        DB      03h
        DB      0Fh
        DB      1Fh
        DB      0Fh
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      0F0h
        DB      78h             ; 'x'
        DB      7Ch             ; '|'
        DB      3Dh             ; '='
        DB      1Eh
        DB      1Fh
        DB      0Fh
        DB      0Fh
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      0F0h
        DB      0E0h
        DB      60h             ; '`'
        DB      20h             ; ' '
        DB      0A0h
        DB      80h
        DB      0F0h
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0Fh
        DB      0E0h
        DB      0F8h
        DB      0FCh
        DB      0FDh
        DB      0F1h
        DB      0E7h
        DB      0EFh
        DB      0Fh
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      01h
        DB      03h
        DB      0C0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0B0h
        DB      0B0h
        DB      90h
        DB      0D0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      00h
        DB      80h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0F8h
        DB      0D8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      80h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      03h
        DB      07h
        DB      07h
        DB      07h
        DB      0E8h
        DB      0F0h
        DB      0F0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      90h
        DB      0FFh
        DB      0F0h
        DB      0FEh
        DB      0FFh
        DB      3Fh             ; '?'
        DB      03h
        DB      01h
        DB      01h
        DB      80h
        DB      80h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      1Fh
        DB      1Fh
        DB      90h
        DB      90h
        DB      0B0h
        DB      0A0h
        DB      20h             ; ' '
        DB      0A0h
        DB      20h             ; ' '
        DB      20h             ; ' '
        DB      1Fh
        DB      1Fh
        DB      0FFh
        DB      0FFh
        DB      0F8h
        DB      0E3h
        DB      8Fh
        DB      3Eh             ; '>'
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      20h             ; ' '
        DB      20h             ; ' '
        DB      0A0h
        DB      0A0h
        DB      20h             ; ' '
        DB      30h             ; '0'
        DB      10h
        DB      10h
        DB      03h
        DB      07h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      0FCh
        DB      0F8h
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      0Fh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FBh
        DB      0F1h
        DB      18h
        DB      88h
        DB      88h
        DB      0ECh
        DB      0ECh
        DB      0F2h
        DB      0F3h
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      0Fh
        DB      1Fh
        DB      7Fh
        DB      0FEh
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      1Fh
        DB      03h
        DB      07h
        DB      06h
        DB      07h
        DB      1Fh
        DB      1Fh
        DB      0FCh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      30h             ; '0'
        DB      0F8h
        DB      0FEh
        DB      0FFh
        DB      0C0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      80h
        DB      00h
        DB      0Fh
        DB      07h
        DB      06h
        DB      00h
        DB      03h
        DB      07h
        DB      07h
        DB      06h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      1Fh
        DB      1Fh
        DB      3Fh             ; '?'
        DB      7Fh
        DB      40h             ; '@'
        DB      1Fh
        DB      0FFh
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      0FEh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      01h
        DB      03h
        DB      03h
        DB      03h
        DB      07h
        DB      04h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E4h
        DB      0E0h
        DB      0FFh
        DB      07h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      08h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      3Fh             ; '?'
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0C0h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FCh
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0FCh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0FCh
        DB      0F8h
        DB      0F0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      0FFh
        DB      0FFh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0F8h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      80h
        DB      80h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0FEh
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0C0h
        DB      0F8h
        DB      0FEh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0E0h
        DB      0F8h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      0FEh
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      "  `````"
        DB      10h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0C0h
        DB      0F9h
        DB      0F2h
        DB      0E7h
        DB      8Fh
        DB      0AFh
        DB      2Fh             ; '/'
        DB      4Fh             ; 'O'
        DB      0DFh
        DB      00h
        DB      00h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      10h
        DB      18h
        DB      38h             ; '8'
        DB      38h             ; '8'
        DB      30h             ; '0'
        DB      74h             ; 't'
        DB      0CCh
        DB      1Ch
        DB      1Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0DFh
        DB      0DFh
        DB      0DFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0Fh
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0FCh
        DB      0FCh
        DB      70h             ; 'p'
        DB      00h
        DB      10h
        DB      0E0h
        DB      0E0h
        DB      80h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FCh
        DB      0F8h
        DB      0F8h
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      3Fh             ; '?'
        DB      1Fh
        DB      0F8h
        DB      0F8h
        DB      0FCh
        DB      0FCh
        DB      0FCh
        DB      0FCh
        DB      0FCh
        DB      0FAh
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      07h
        DB      0Fh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      0BEh
        DB      0FEh
        DB      0EFh
        DB      0FFh
        DB      0BFh
        DB      0FFh
        DB      0F7h
        DB      0FFh
        DB      0Fh
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      0FCh
        DB      4Eh             ; 'N'
        DB      4Fh             ; 'O'
        DB      03h
        DB      07h
        DB      06h
        DB      07h
        DB      0Fh
        DB      1Bh
        DB      7Fh
        DB      0FFh
        DB      0EFh
        DB      0EFh
        DB      0FEh
        DB      0FAh
        DB      0EEh
        DB      0FCh
        DB      0BAh
        DB      0EEh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      4Fh             ; 'O'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Ch             ; '|'
        DB      0FFh
        DB      0FDh
        DB      0FFh
        DB      0FFh
        DB      0EDh
        DB      0F9h
        DB      0FFh
        DB      7Dh             ; '}'
        DB      0E8h
        DB      7Ch             ; '|'
        DB      0C6h
        DB      0DCh
        DB      0F0h
        DB      44h             ; 'D'
        DB      0C0h
        DB      00h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      0C7h
        DB      0EFh
        DB      0CFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0C7h
        DB      00h
        DB      0BCh
        DB      0C7h
        DB      0EFh
        DB      0CDh
        DB      0DEh
        DB      0D0h
        DB      9Ch
        DB      74h             ; 't'
        DB      0D4h
        DB      70h             ; 'p'
        DB      44h             ; 'D'
        DB      10h
        DB      54h             ; 'T'
        DB      68h             ; 'h'
        DB      40h             ; '@'
        DB      07h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      1Fh
        DB      1Fh
        DB      04h
        DB      06h
        DB      06h
        DB      06h
        DB      06h
        DB      0Eh
        DB      0Eh
        DB      04h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      07h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      03h
        DB      07h
        DB      1Fh
        DB      3Fh             ; '?'
        DB      03h
        DB      1Fh
        DB      0FFh
        DB      14h
        DB      0FFh
        DB      0C0h
        DB      0FFh
        DB      0FFh
        DB      04h
        DB      0Ch
        DB      0Ch
        DB      ",$48?"
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      3Fh             ; '?'
        DB      7Fh
        DB      0Ch
        DB      18h
        DB      38h             ; '8'
        DB      30h             ; '0'
        DB      70h             ; 'p'
        DB      60h             ; '`'
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      3Fh             ; '?'
        DB      3Fh             ; '?'
        DB      3Eh             ; '>'
        DB      02h
        DB      19h
        DB      0Fh
        DB      07h
        DB      03h
        DB      07h
        DB      03h
        DB      07h
        DB      07h
        DB      07h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      40h             ; '@'
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      80h
        DB      0FFh
        DB      80h
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0E0h
        DB      8Dh
        DB      0B9h
        DB      73h             ; 's'
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      3Fh             ; '?'
        DB      0FFh
        DB      0FFh
        DB      0Fh
        DB      0Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      80h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      80h
        DB      0FEh
        DB      0FCh
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      03h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      03h
        DB      07h
        DB      "??????7?"
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0Fh
        DB      1Fh
        DB      3Fh             ; '?'
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      17h
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      0Bh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0FCh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      01h
        DB      01h
        DB      01h
        DB      03h
        DB      03h
        DB      07h
        DB      0Eh
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      0FCh
        DB      0FCh
        DB      0F0h
        DB      0Dh
        DB      0Fh
        DB      0Bh
        DB      07h
        DB      00h
        DB      06h
        DB      07h
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      0DFh
        DB      3Bh             ; ';'
        DB      80h
        DB      80h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0Ch
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      1Fh
        DB      05h
        DB      07h
        DB      07h
        DB      01h
        DB      03h
        DB      03h
        DB      00h
        DB      00h
        DB      0BAh
        DB      0BEh
        DB      0B6h
        DB      9Eh
        DB      9Eh
        DB      16h
        DB      0Eh
        DB      08h
        DB      61h             ; 'a'
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      0F7h
        DB      77h             ; 'w'
        DB      77h             ; 'w'
        DB      73h             ; 's'
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      3Fh             ; '?'
        DB      1Fh
        DB      0Fh
        DB      03h
        DB      01h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      03h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      3Fh             ; '?'
        DB      1Fh
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      07h
        DB      07h
        DB      07h
        DB      03h
        DB      03h
        DB      1Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      1Fh
        DB      0Fh
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      1Fh
        DB      07h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      02h
        DB      03h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FCh
        DB      0F0h
        DB      40h             ; '@'
        DB      00h
        DB      0Fh
        DB      00h
        DB      00h
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      0C0h
        DB      0C0h
        DB      80h
        DB      80h
        DB      03h
        DB      03h
        DB      03h
        DB      02h
        DB      02h
        DB      02h
        DB      02h
        DB      02h
        DB      0FCh
        DB      0C4h
        DB      83h
        DB      00h
        DB      00h
        DB      00h
        DB      01h
        DB      06h
        DB      00h
        DB      0Ch
        DB      10h
        DB      0E0h
        DB      0E0h
        DB      0B8h
        DB      04h
        DB      02h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      06h
        DB      04h
        DB      04h
        DB      0Ch
        DB      58h             ; 'X'
        DB      78h             ; 'x'
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      0Ch
        DB      1Ch
        DB      1Fh
        DB      18h
        DB      00h
        DB      00h
        DB      4Fh             ; 'O'
        DB      7Ch             ; '|'
        DB      01h
        DB      03h
        DB      0FFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0FFh
        DB      61h             ; 'a'
        DB      00h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      0C0h
        DB      20h             ; ' '
        DB      00h
        DB      00h
        DB      04h
        DB      07h
        DB      03h
        DB      00h
        DB      00h
        DB      80h
        DB      00h
        DB      00h
        DB      7Fh
        DB      0E0h
        DB      80h
        DB      00h
        DB      00h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      70h             ; 'p'
        DB      0FFh
        DB      01h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      02h
        DB      0FCh
        DB      70h             ; 'p'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      0Fh
        DB      0Fh
        DB      08h
        DB      10h
        DB      00h
        DB      20h             ; ' '
        DB      30h             ; '0'
        DB      30h             ; '0'
        DB      0FFh
        DB      0FFh
        DB      10h
        DB      10h
        DB      00h
        DB      00h
        DB      00h
        DB      04h
        DB      82h
        DB      0C3h
        DB      02h
        DB      02h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      06h
        DB      02h
        DB      03h
        DB      03h
        DB      02h
        DB      02h
        DB      0FFh
        DB      10h
        DB      10h
        DB      1Eh
        DB      0FFh
        DB      10h
        DB      10h
        DB      1Fh
        DB      0C6h
        DB      "D$// `"
        DB      0C0h
        DB      00h
        DB      00h
        DB      00h
        DB      0FCh
        DB      0F8h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      3Fh             ; '?'
        DB      3Ch             ; '<'
        DB      00h
        DB      0F0h
        DB      12h
        DB      13h
        DB      13h
        DB      0FFh
        DB      89h
        DB      09h
        DB      19h
        DB      00h
        DB      10h
        DB      0Ch
        DB      06h
        DB      0C3h
        DB      23h             ; '#'
        DB      01h
        DB      00h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0C0h
        DB      0C0h
        DB      00h
        DB      00h
        DB      07h
        DB      07h
        DB      04h
        DB      00h
        DB      00h
        DB      00h
        DB      31h             ; '1'
        DB      0E1h
        DB      81h
        DB      03h
        DB      02h
        DB      1Eh
        DB      1Ch
        DB      00h
        DB      01h
        DB      06h
        DB      18h
        DB      70h             ; 'p'
        DB      70h             ; 'p'
        DB      00h
        DB      00h
        DB      00h
        DB      60h             ; '`'
        DB      70h             ; 'p'
        DB      3Ch             ; '<'
        DB      3Eh             ; '>'
        DB      1Ch
        DB      08h
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      3Fh             ; '?'
        DB      7Fh
        DB      0FFh
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0FFh
        DB      7Fh
        DB      3Fh             ; '?'
        DB      00h
        DB      00h
        DB      00h
        DB      0E0h
        DB      0F0h
        DB      0F8h
        DB      78h             ; 'x'
        DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      39h             ; '9'
        DB      79h             ; 'y'
        DB      0F9h
        DB      0F3h
        DB      0E3h
        DB      00h
        DB      00h
        DB      00h
        DB      3Eh             ; '>'
        DB      3Eh             ; '>'
        DB      7Fh
        DB      77h             ; 'w'
        DB      77h             ; 'w'
        DB      0E3h
        DB      0E3h
        DB      0E3h
        DB      0FFh
        DB      0FFh
        DB      0C1h
        DB      80h
        DB      80h
        DB      00h
        DB      00h
        DB      00h
        DB      03h
        DB      07h
        DB      0Fh
        DB      0Fh
        DB      0Fh
        DB      8Fh
        DB      87h
        DB      83h
        DB      0C0h
        DB      0CFh
        DB      0CFh
        DB      0E7h
        DB      0E3h
        DB      00h
        DB      00h
        DB      00h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      00h
        DB      0FEh
        DB      0FFh
        DB      0FFh
        DB      07h
        DB      07h
        DB      0FFh
        DB      0FFh
        DB      0FEh
        DB      00h
        DB      00h
        DB      00h
        DB      38h             ; '8'
        DB      39h             ; '9'
        DB      0BBh
        DB      0BBh
        DB      3Bh             ; ';'
        DB      3Bh             ; ';'
        DB      3Bh             ; ';'
        DB      0BBh
        DB      0BBh
        DB      0BBh
        DB      0BBh
        DB      39h             ; '9'
        DB      38h             ; '8'
        DB      00h
        DB      00h
        DB      00h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0C1h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0C1h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      00h
        DB      00h
        DB      00h
        DB      80h
        DB      0C0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0C0h
        DB      80h
        DB      00h
        DB      0E6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0AFh
        DB      0E0h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A0h
        DB      0E3h
        DB      0E3h
        DB      0E3h
        DB      0AFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0AFh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0A0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0AFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0AFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "``````"
        DB      0F0h
        DB      0F0h
        DB      "``o````"
        DB      0F0h
        DB      0F0h
        DB      "`````"
        DB      0F0h
        DB      0F0h
        DB      "```````"
        DB      0F0h
        DB      "``````"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "oo``o"
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
        DB      "  222222    2222    2222"
        DB      0CFh
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0CFh
        DB      0E0h
        DB      0E0h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0F0h
        DB      0E0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0F0h
        DB      60h             ; '`'
        DB      0E0h
        DB      60h             ; '`'
        DB      0E0h
        DB      60h             ; '`'
        DB      0E0h
        DB      0E0h
        DB      60h             ; '`'
        DB      0E0h
        DB      60h             ; '`'
        DB      0E0h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0E0h
        DB      60h             ; '`'
        DB      0CFh
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0C3h
        DB      0CFh
        DB      0C3h
        DB      0C3h
        DB      "``oo`````ooo`````o``````````````"
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0FCh
        DB      0C0h
        DB      0FCh
        DB      0C0h
        DB      0C0h
        DB      0FCh
        DB      0FCh
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0FCh
        DB      0FCh
        DB      0CFh
        DB      0FCh
        DB      0C0h
        DB      0FCh
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      "````````"
        DB      0DFh
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
        DB      0F0h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      6Fh             ; 'o'
        DB      0E6h
        DB      0E6h
        DB      0E6h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E6h
        DB      0E6h
        DB      0E6h
        DB      0E6h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E6h
        DB      0E6h
        DB      0E6h
        DB      0E6h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0DFh
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0EFh
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      0EFh
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B4h
        DB      0B4h
        DB      0B4h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0D0h
        DB      0DFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      40h             ; '@'
        DB      0EFh
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      40h             ; '@'
        DB      0EFh
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
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0DFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      "ppo`o`o`oo"
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      "```````p"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      6Fh             ; 'o'
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      80h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
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
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "````o```````````"
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      60h             ; '`'
        DB      0F0h
        DB      0F0h
        DB      "ppppp"
        DB      0B0h
        DB      "`````````o````oo"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "@pppp"
        DB      7Fh
        DB      "ppp````````oo```ooo"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      8Fh
        DB      0B8h
        DB      0B8h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      0B8h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
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
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      96h
        DB      96h
        DB      96h
        DB      96h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      40h             ; '@'
        DB      0F5h
        DB      0F5h
        DB      0F5h
        DB      0F5h
        DB      0F5h
        DB      0F0h
        DB      0F0h
        DB      6Fh             ; 'o'
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      0A6h
        DB      6Fh             ; 'o'
        DB      0F0h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      0F9h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      0BAh
        DB      0F0h
        DB      90h
        DB      90h
        DB      90h
        DB      0A9h
        DB      0A9h
        DB      0A9h
        DB      90h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      90h
        DB      90h
        DB      80h
        DB      80h
        DB      80h
        DB      90h
        DB      80h
        DB      80h
        DB      0BAh
        DB      0B9h
        DB      0AFh
        DB      9Fh
        DB      0F9h
        DB      0F9h
        DB      98h
        DB      8Fh
        DB      90h
        DB      90h
        DB      80h
        DB      80h
        DB      60h             ; '`'
        DB      0F0h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
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
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      "PPPPPPP@OT_PPP"
        DB      0F0h
        DB      0F0h
        DB      "PPPPPPP"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "PPPP@@@dPP__"
        DB      0F0h
        DB      0F0h
        DB      9Fh
        DB      9Fh
        DB      "PPPP@@@d"
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
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
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
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BAh
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BAh
        DB      0BAh
        DB      0AFh
        DB      0A0h
        DB      0F0h
        DB      0BFh
        DB      0BFh
        DB      0BAh
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0F0h
        DB      0F0h
        DB      0BAh
        DB      0BAh
        DB      0BAh
        DB      0BAh
        DB      0A0h
        DB      0A0h
        DB      0A0h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      80h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      6Fh             ; 'o'
        DB      0F0h
        DB      "o`o`oo"
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0A0h
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      9Fh
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      90h
        DB      9Fh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0AFh
        DB      0AFh
        DB      0AFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A9h
        DB      0A9h
        DB      0A9h
        DB      0A9h
        DB      0A9h
        DB      0A9h
        DB      9Fh
        DB      9Fh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0B2h
        DB      0B3h
        DB      90h
        DB      91h
        DB      92h
        DB      93h
        DB      80h
        DB      0B5h
        DB      0B6h
        DB      0B7h
        DB      94h
        DB      95h
        DB      96h
        DB      97h
        DB      0B8h
        DB      0B9h
        DB      0BAh
        DB      0BBh
        DB      98h
        DB      99h
        DB      9Ah
        DB      9Bh
        DB      0BCh
        DB      0BDh
        DB      0BEh
        DB      0BFh
        DB      9Ch
        DB      9Dh
        DB      9Eh
        DB      9Fh
        DB      0C0h
        DB      0C1h
        DB      0C2h
        DB      0C3h
        DB      0B4h
        DB      0A1h
        DB      0A2h
        DB      0A3h
        DB      0C4h
        DB      0C5h
        DB      0C6h
        DB      0C7h
        DB      0A4h
        DB      0A5h
        DB      0A6h
        DB      0A7h
        DB      0C8h
        DB      0C9h
        DB      0CAh
        DB      0CBh
        DB      0A8h
        DB      0A9h
        DB      0AAh
        DB      0ABh
        DB      0CCh
        DB      0CDh
        DB      0CEh
        DB      0CFh
        DB      0ACh
        DB      0ADh
        DB      0AEh
        DB      0AFh
        DB      80h
        DB      80h
        DB      0B2h
        DB      0B3h
        DB      90h
        DB      91h
        DB      92h
        DB      93h
        DB      80h
        DB      80h
        DB      0B6h
        DB      0B7h
        DB      94h
        DB      80h
        DB      96h
        DB      97h
        DB      80h
        DB      0B9h
        DB      0BAh
        DB      0BBh
        DB      98h
        DB      80h
        DB      9Ah
        DB      9Bh
        DB      80h
        DB      0BDh
        DB      0BEh
        DB      0BFh
        DB      9Ch
        DB      9Dh
        DB      9Eh
        DB      9Fh
        DB      80h
        DB      0C0h
        DB      0BCh
        DB      0B8h
        DB      0A0h
        DB      0A1h
        DB      0A2h
        DB      0A3h
        DB      80h
        DB      0B5h
        DB      0B4h
        DB      0B1h
        DB      0A4h
        DB      0A5h
        DB      0A6h
        DB      0A7h
        DB      80h
        DB      80h
        DB      80h
        DB      0B0h
        DB      0A8h
        DB      0A9h
        DB      0AAh
        DB      0ABh
        DB      80h
        DB      80h
        DB      95h
        DB      99h
        DB      0ACh
        DB      0ADh
        DB      0AEh
        DB      0AFh
        DB      0B0h
        DB      80h
        DB      0B2h
        DB      0B3h
        DB      90h
        DB      91h
        DB      80h
        DB      93h
        DB      0B4h
        DB      0B5h
        DB      0B6h
        DB      0B7h
        DB      94h
        DB      95h
        DB      96h
        DB      97h
        DB      0B8h
        DB      0B9h
        DB      0BAh
        DB      0BBh
        DB      98h
        DB      99h
        DB      9Ah
        DB      9Bh
        DB      80h
        DB      0BDh
        DB      0BEh
        DB      0BFh
        DB      9Ch
        DB      9Dh
        DB      9Eh
        DB      80h
        DB      80h
        DB      0C1h
        DB      0C2h
        DB      0C3h
        DB      0A0h
        DB      0A1h
        DB      0A2h
        DB      80h
        DB      80h
        DB      0C5h
        DB      0C6h
        DB      0C7h
        DB      0A4h
        DB      0A5h
        DB      0A6h
        DB      80h
        DB      80h
        DB      0C9h
        DB      0CAh
        DB      0CBh
        DB      0A8h
        DB      0A9h
        DB      0AAh
        DB      80h
        DB      80h
        DB      0CDh
        DB      0CEh
        DB      0CFh
        DB      0ACh
        DB      0ADh
        DB      0AEh
        DB      80h
        DB      80h
        DB      0AFh
        DB      0B3h
        DB      0E1h
        DB      0E1h
        DB      9Eh
        DB      9Fh
        DB      80h
        DB      0B7h
        DB      0BBh
        DB      0E1h
        DB      0E1h
        DB      0E1h
        DB      0E1h
        DB      9Bh
        DB      97h
        DB      0BFh
        DB      0E1h
        DB      0C1h
        DB      0CCh
        DB      96h
        DB      0E1h
        DB      0E1h
        DB      95h
        DB      0DCh
        DB      0D0h
        DB      0D4h
        DB      93h
        DB      93h
        DB      92h
        DB      0E1h
        DB      91h
        DB      0DCh
        DB      0E1h
        DB      0E0h
        DB      93h
        DB      93h
        DB      98h
        DB      0E1h
        DB      99h
        DB      0E4h
        DB      0E1h
        DB      0E1h
        DB      0E5h
        DB      9Ah
        DB      0E1h
        DB      0E1h
        DB      9Ch
        DB      0E2h
        DB      0E3h
        DB      0E1h
        DB      0E1h
        DB      0E1h
        DB      0E1h
        DB      9Dh
        DB      80h
        DB      80h
        DB      0E6h
        DB      0E7h
        DB      0E1h
        DB      0E1h
        DB      0D8h
        DB      0A2h
        DB      80h
        DB      74h             ; 't'
        DB      74h             ; 't'
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      74h             ; 't'
        DB      74h             ; 't'
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      "t@O@@tOtt"
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@"
        DB      7Fh
        DB      7Fh
        DB      7Fh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      7Fh
        DB      7Fh
        DB      74h             ; 't'
        DB      74h             ; 't'
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      "@@OO@O@@@@@@@@@@"
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      "@@@@OOOO@@@@@@@@"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      "OOO@@@@@@@@@@@@@"
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
        DB      0FFh
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F8h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      "OOO@O@@@@@@@@"
        DB      0FFh
        DB      0F8h
        DB      0F8h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      "@@@@@@@@@@@@@@@@"
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      "@@@@@@@@@@@@@@@@"
        DB      0F8h
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F0h
        DB      "@@@@@@@"
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@@@@@@@@@@@@@@@"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "@@@@OO@@Ottttt"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      "@@@@@@@OOO"
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      74h             ; 't'
        DB      74h             ; 't'
        DB      7Fh
        DB      0F7h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      "@@@@@@@@@@@@@@@@"
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@@@"
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@@@@@@@@@@@"
        DB      0F0h
        DB      0F0h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@@@"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F0h
        DB      0F0h
        DB      "@@@@@@@@@@@O@@"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      0F4h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      "@@@@@@@@@@@@"
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
        DB      0F0h
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      6Fh             ; 'o'
        DB      6Fh             ; 'o'
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "```````"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      60h             ; '`'
        DB      0F0h
        DB      "```````"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "````````````````"
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      "````````````````"
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      "````````````````"
        DB      0B0h
        DB      0B0h
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0B0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      "````````````````"
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      "````````````````"
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0F0h
        DB      "````````````````"
        DB      0CBh
        DB      0CBh
        DB      0CBh
        DB      0CBh
        DB      0C0h
        DB      0C0h
        DB      0F0h
        DB      0F0h
        DB      0C0h
        DB      0C0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "``o``oooo`````````o"
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0FBh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      "o````"
        DB      0C0h
        DB      0C0h
        DB      0C0h
        DB      "`oo``"
        DB      0C0h
        DB      0C0h
        DB      0CFh
        DB      0FBh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0C0h
        DB      0C0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0CFh
        DB      0CBh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0F0h
        DB      0BFh
        DB      0FBh
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0FFh
        DB      0F0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0F0h
        DB      0BFh
        DB      0BFh
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0BFh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0FBh
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      0B0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0F8h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0F8h
        DB      0FFh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F8h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      80h
        DB      80h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EAh
        DB      0E0h
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0EFh
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
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
        DB      0F0h
        DB      0F0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0F8h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0FEh
        DB      0EFh
        DB      0FEh
        DB      0EFh
        DB      0EFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0A0h
        DB      0EAh
        DB      0E0h
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0EAh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0FEh
        DB      0EFh
        DB      0FEh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0FEh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0FEh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0FFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      0E0h
        DB      0E0h
        DB      0FEh
        DB      0F0h
        DB      0E0h
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0EFh
        DB      0E0h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
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
        DB      0F0h
        DB      0F0h
        DB      0FFh
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      0F8h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0F8h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      8Fh
        DB      80h
        DB      80h
        DB      80h
        DB      80h
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
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h
        DB      0F0h


        ; Referenced from 8000
        ; --- START PROC L7E80 ---
L7E80:  ld      hl,0E000h       ; address or value?
        ld      bc,1100h        ; address or value?

        ; Referenced from 7E8A, 7E8C
L7E86:  ld      (hl),00h
        inc     hl
        dec     c
        jr      nz,L7E86
        djnz    L7E86
        ld      sp,0F200h       ; address or value?
        ld      hl,0B475h       ; address or value?
        ld      (0FDA0h),hl
        ld      a,0C3h
        ld      (0FD9Fh),a
        call    007Eh
        xor     a
        ld      (0F3EAh),a
        ld      (0F3EBh),a
        dec     a
        ld      (0F3E9h),a
        call    0062h
        ld      de,0000h        ; address or value?
        ld      b,03h

        ; Referenced from 7EB5
L7EB2:  call    LB2F0
        djnz    L7EB2
        xor     a
        ld      hl,0080h        ; address or value?
        ld      b,03h

        ; Referenced from 7EC0
L7EBD:  call    LB31F
        djnz    L7EBD
        ld      hl,2000h        ; address or value?
        ld      bc,1800h        ; address or value?
        ld      a,0F0h
        call    0056h
        call    LB36D
        ld      a,0A2h
        ld      b,a
        ld      c,01h
        call    0047h
        ld      a,03h
        ld      (0E090h),a
        ld      a,30h           ; '0'
        ld      (0E095h),a
        ei

        ; Referenced from 8126, AF4A
        ; --- START PROC L7EE3 ---
L7EE3:  call    LB379
        call    LB016
        ld      de,0200h        ; address or value?
        ld      b,03h
        call    LB334
        ld      hl,2200h        ; address or value?
        ld      b,03h

        ; Referenced from 7EF9
L7EF6:  call    LB32C
        djnz    L7EF6
        call    0044h
        call    LB5A7
        ld      a,01h
        call    0141h
        cp      0E0h
        jr      nz,L7F17
        xor     a
        call    0141h
        bit     0,a
        jr      z,L7F17
        ld      a,01h
        ld      (0E023h),a

        ; Referenced from 7F08, 7F10
L7F17:  ld      hl,5695h        ; address or value?
        ld      de,1908h        ; address or value?
        ld      b,04h

        ; Referenced from 7F22
L7F1F:  call    LB313
        djnz    L7F1F
        ld      hl,56D5h        ; address or value?
        ld      de,1A0Dh        ; address or value?
        ld      bc,0006h        ; address or value?
        call    005Ch
        ld      hl,56DBh        ; address or value?
        ld      de,1A46h        ; address or value?
        ld      bc,0014h        ; address or value?
        call    005Ch
        ld      hl,56EFh        ; address or value?
        ld      de,1A85h        ; address or value?
        ld      bc,0016h        ; address or value?
        call    005Ch
        call    0044h
        xor     a
        ld      (0E018h),a

        ; Referenced from 7F5B
L7F4F:  ld      a,(0E018h)
        cp      0F0h
        jp      nc,L7F63
        ld      a,(0E026h)
        and     a
        jr      z,L7F4F
        xor     a
        ld      (0E026h),a
        jr      L7FA3

        ; Referenced from 7F54
L7F63:  ld      a,r
        and     03h
        cp      02h
        jr      c,L7F7A
        xor     a
        ld      (0E00Ah),a
        inc     a
        ld      (0E0A2h),a
        ld      a,02h
        ld      (0E0A1h),a
        jr      L7F89

        ; Referenced from 7F69
L7F7A:  ld      a,00h
        ld      (0E00Ah),a
        ld      a,04h
        ld      (0E0A1h),a
        ld      a,01h
        ld      (0E0A2h),a

        ; Referenced from 7F78
L7F89:  xor     a
        ld      (0E098h),a
        ld      (0E023h),a
        ld      (0E0A9h),a
        inc     a
        ld      (0E028h),a
        ld      hl,0000h        ; address or value?
        ld      (0E029h),hl
        ld      (0E0A8h),a
        jp      L800D

        ; Referenced from 7F61
L7FA3:  ld      hl,0E001h       ; address or value?
        ld      b,06h

        ; Referenced from 7FAB
L7FA8:  ld      (hl),00h
        inc     hl
        djnz    L7FA8
        xor     a
        ld      (0E00Eh),a
        ld      (0E00Dh),a
        ld      (0E00Ch),a

        ; Referenced from 8018
        ; --- START PROC L7FB7 ---
L7FB7:  xor     a
        ld      (0E027h),a
        ld      (0E028h),a
        ld      (0E0A9h),a
        ld      (0E0AAh),a
        ld      (0E00Ah),a
        ld      (0E098h),a
        inc     a
        ld      (0E000h),a
        ld      (0E0A1h),a
        ld      (0E0A2h),a
        ld      (0E0A3h),a
        ld      a,03h
        ld      (0E0A8h),a
        ld      a,(0E023h)
        and     a
        jr      z,L7FE7
        ld      a,06h
        ld      (0E0A9h),a

        ; Referenced from 7FE0
L7FE7:  ld      hl,0E02Bh       ; address or value?
        ld      b,58h           ; 'X'

        ; Referenced from 7FEF
L7FEC:  ld      (hl),00h
        inc     hl
        djnz    L7FEC
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
L8003:  ld      hl,0E0B0h       ; address or value?
        ld      b,40h           ; '@'

        ; Referenced from 800B
L8008:  ld      (hl),00h
        inc     hl
        djnz    L8008

        ; Referenced from 7FA0, AEF0, AF01, AF10, AF1D
        ; --- START PROC L800D ---
L800D:  ld      a,(0E047h)
        cp      02h
        jr      nz,L801B
        xor     a
        ld      (0E047h),a
        jp      L7FB7

        ; Referenced from 8012
L801B:  ld      a,(0E00Ah)
        ld      (0E0A0h),a
        ld      a,(0E098h)
        and     a
        jr      nz,L8033
        inc     a
        ld      (0E098h),a
        call    LB016
        call    LB056
        jr      L8036

        ; Referenced from 8025
L8033:  call    LB01C

        ; Referenced from 8031
L8036:  ld      hl,0E700h       ; address or value?
        ld      bc,0280h        ; address or value?

        ; Referenced from 8042
L803C:  ld      (hl),80h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,L803C
        call    L93A7
        call    L9257
        ld      hl,0E700h       ; address or value?
        ld      de,1840h        ; address or value?
        ld      bc,0280h        ; address or value?
        call    005Ch
        call    LB07A
        ld      ix,0E300h       ; address or value?
        ld      (ix+00h),0ECh
        ld      (ix+10h),0ECh
        ld      (ix+01h),30h    ; '0'
        ld      (ix+11h),30h    ; '0'
        ld      (ix+02h),0Ch
        ld      (ix+07h),0Ch
        ld      (ix+03h),0Dh
        ld      (ix+12h),6Ch    ; 'l'
        ld      (ix+13h),0Bh
        call    L8206
        call    LB38A
        call    LB397
        call    0044h
        ld      a,02h
        call    LB777
        call    LB43F
        xor     a
        ld      (0E010h),a
        ld      (0E022h),a
        ld      (0E020h),a
        ld      (0E026h),a
        ld      (0E180h),a
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
        ld      a,(0E1B3h)
        and     a
        jr      nz,L8129
        ld      a,(0E1B5h)
        and     a
        jp      nz,L8141
        ld      a,(0E011h)
        cp      01h
        jr      c,L8118
        xor     a
        ld      (0E011h),a
        call    L81AD
        ld      a,(0E1B7h)
        and     a
        jr      z,L80EE
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
        call    LB397
        call    LA1B9
        call    L8252
        call    L9452
        call    L81CB

        ; Referenced from 80EC
L8112:  call    LB000
        call    LB38A

        ; Referenced from 80D2, 815A, 81AA
L8118:  ld      a,(0E000h)
        and     a
        jp      nz,L80B1
        ld      a,(0E026h)
        and     a
        jp      z,L80B1
        jp      L7EE3

        ; Referenced from 80C4
L8129:  ld      a,(0E0A9h)
        and     a
        jr      nz,L8139
        inc     a
        ld      (0E0A8h),a
        ld      (0E183h),a
        jp      L80B1

        ; Referenced from 812D
L8139:  ld      a,02h
        ld      (0E183h),a
        jp      L80B1

        ; Referenced from 80CA
L8141:  xor     a
        ld      (0E1B5h),a
        ld      a,(0E1B7h)
        cpl
        ld      (0E1B7h),a
        and     a
        jr      nz,L815C
        ld      hl,0E1C0h       ; address or value?
        ld      de,0E300h       ; address or value?
        ld      bc,0040h        ; address or value?
        ldir
        jr      L8118

        ; Referenced from 814D
L815C:  ld      hl,0E300h       ; address or value?
        ld      de,0E1C0h       ; address or value?
        ld      bc,0040h        ; address or value?
        ldir
        ld      (ix+02h),0D0h
        ld      (ix+12h),0C8h
        ld      (ix+22h),0C0h
        ld      (ix+32h),0C4h
        ld      a,(ix+00h)
        sub     10h
        ld      (ix+00h),a
        ld      (ix+10h),a
        add     a,10h
        ld      (ix+20h),a
        ld      (ix+30h),a
        ld      a,(ix+01h)
        sub     08h
        cp      0F8h
        jr      c,L8194
        xor     a

        ; Referenced from 8191
L8194:  ld      (ix+21h),a
        add     a,10h
        cp      0Eh
        jr      nc,L819F
        ld      a,0F0h

        ; Referenced from 819B
L819F:  ld      (ix+31h),a
        ld      (ix+23h),0Ah
        ld      (ix+33h),0Ah
        jp      L8118

        ; Referenced from 80D8
        ; --- START PROC L81AD ---
L81AD:  ld      a,(0E1B0h)
        and     a
        jr      z,L81B7
        ld      a,02h
        jr      L81C7

        ; Referenced from 81B1
L81B7:  ld      a,(0E0A0h)
        ld      b,a
        ld      a,(0E00Ah)
        cp      b
        jr      nz,L81C5
        ld      a,05h
        jr      L81C7

        ; Referenced from 81BF
L81C5:  ld      a,04h

        ; Referenced from 81B5, 81C3
L81C7:  call    LB764
        ret

        ; Referenced from 810F
        ; --- START PROC L81CB ---
L81CB:  ld      a,(0E1B9h)
        and     a
        ret     z
        ld      a,(0E015h)
        cp      08h
        ret     c
        xor     a
        ld      (0E015h),a
        ld      a,(0E1BAh)
        cpl
        ld      (0E1BAh),a
        and     a
        jr      nz,L81E8
        ld      a,0B0h
        jr      L81EA

        ; Referenced from 81E2
L81E8:  ld      a,0F0h

        ; Referenced from 81E6
L81EA:  ld      hl,2460h        ; address or value?
        ld      bc,0020h        ; address or value?
        call    0056h
        ld      hl,2C60h        ; address or value?
        ld      bc,0020h        ; address or value?
        call    0056h
        ld      hl,3460h        ; address or value?
        ld      bc,0020h        ; address or value?
        call    0056h
        ret

        ; Referenced from 9662, 8081, 8FDF
        ; --- START PROC L8206 ---
L8206:  ld      a,(0E00Ah)
        and     a
        jr      z,L821C
        cp      01h
        jr      z,L8220
        cp      02h
        jr      z,L8224
        cp      03h
        jr      z,L8228
        ld      a,30h           ; '0'
        jr      L822A

        ; Referenced from 820A
L821C:  ld      a,60h           ; '`'
        jr      L822A

        ; Referenced from 820E
L8220:  ld      a,0A0h
        jr      L822A

        ; Referenced from 8212
L8224:  ld      a,40h           ; '@'
        jr      L822A

        ; Referenced from 8216
L8228:  ld      a,0E0h

        ; Referenced from 821A, 821E, 8222, 8226
L822A:  ld      (0E19Ch),a
        ld      hl,2208h        ; address or value?
        ld      bc,0038h        ; address or value?
        ld      a,(0E19Ch)
        call    0056h
        ld      hl,2A08h        ; address or value?
        ld      bc,0038h        ; address or value?
        ld      a,(0E19Ch)
        call    0056h
        ld      hl,3208h        ; address or value?
        ld      bc,0038h        ; address or value?
        ld      a,(0E19Ch)
        call    0056h
        ret

        ; Referenced from 8109
        ; --- START PROC L8252 ---
L8252:  ld      a,(0E047h)
        and     a
        ret     nz
        ld      a,(0E00Ah)
        ld      b,a
        ld      a,(0E0A0h)
        ld      c,a
        cp      b
        ret     nz
        ld      a,(0E046h)
        inc     b
        cp      b
        ret     c
        ld      a,(0E186h)
        cp      01h
        jp      z,L82F8
        ld      a,(0E1B0h)
        and     a
        jr      nz,L82A7
        ld      hl,852Eh        ; address or value?
        ld      a,c
        add     a,l
        ld      l,a
        ld      b,(hl)
        ld      a,(0E0A3h)
        cp      b
        ret     nz
        ld      a,01h
        ld      (0E1B8h),a
        ld      a,(ix+01h)
        cp      28h             ; '('
        ret     c
        ld      a,(0E1B1h)
        and     a
        jr      nz,L82A7
        inc     a
        ld      (0E1B1h),a
        ld      hl,8533h        ; address or value?
        ld      a,c
        add     a,a
        add     a,l
        jr      nc,L829F
        inc     h

        ; Referenced from 829C
L829F:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        call    L84DF

        ; Referenced from 8273, 8290
L82A7:  ld      a,(0E0A0h)
        and     a
        jr      z,L82BF
        cp      01h
        jp      z,L83EB
        cp      02h
        jp      z,L8411
        cp      03h
        jp      z,L8474
        jp      L84AD

        ; Referenced from 82AB
L82BF:  ld      a,(0E1B0h)
        and     a
        jr      nz,L82D5
        inc     a
        ld      (0E1B0h),a
        ld      de,194Fh        ; address or value?
        ld      hl,7700h        ; address or value?
        call    L8519
        ld      bc,7090h        ; address or value?

        ; Referenced from 82C3
L82D5:  ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L8323
        xor     a
        ld      (0E404h),a
        ld      (0E414h),a
        ld      (0E424h),a
        ld      de,1947h        ; address or value?
        call    L8500
        ld      de,194Ch        ; address or value?
        call    L8500
        ld      a,01h
        call    LB764
        ret

        ; Referenced from 826C
L82F8:  ld      a,(0E3E1h)
        inc     a
        ld      (0E3E1h),a
        ld      (0E3F1h),a
        cp      0F4h
        jr      c,L8317
        ld      a,0ECh
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        ld      a,02h
        ld      (0E186h),a
        call    LB43F
        ret

        ; Referenced from 8304
L8317:  ld      a,(0E010h)
        and     08h
        rrca
        add     a,0B0h
        ld      (0E3F2h),a
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
        call    LB146

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
        ld      a,(0E1B0h)
        inc     a
        ld      (0E1B0h),a
        cp      06h
        jr      nc,L8393

        ; Referenced from 837E, 8382
L838F:  call    L8670

        ; Referenced from 8361, 8368, 836C, 8373, 8377
L8392:  ret

        ; Referenced from 840E, 8471, 84AA, 838D
L8393:  ld      a,07h
        call    LB777
        call    LB1A5
        ld      a,0A0h
        ld      (0E3E1h),a
        ld      (0E3F1h),a
        ld      a,70h           ; 'p'
        ld      (0E3E0h),a
        ld      a,80h
        ld      (0E3F0h),a
        ld      a,0ACh
        ld      (0E3E2h),a
        ld      a,0B0h
        ld      (0E3F2h),a
        ld      a,0Fh
        ld      (0E3F3h),a
        ld      a,07h
        ld      (0E1B0h),a
        ld      a,(0E00Ah)
        add     a,a
        add     a,05h
        ld      (0E3E3h),a
        call    L8569
        ld      a,(0E0A0h)
        cp      03h
        jr      nz,L83D9
        ld      de,192Ch        ; address or value?
        jr      L83E2

        ; Referenced from 83D2
L83D9:  ld      de,194Ch        ; address or value?
        call    L8500
        ld      de,1947h        ; address or value?

        ; Referenced from 83D7
L83E2:  call    L8500
        ld      a,01h
        ld      (0E186h),a
        ret

        ; Referenced from 82AF
L83EB:  ld      a,(0E1B0h)
        and     a
        jp      nz,L8408
        inc     a
        ld      (0E1B0h),a
        ld      de,19AFh        ; address or value?
        ld      hl,7780h        ; address or value?
        call    L8519
        ld      a,10h
        ld      (0E344h),a
        ld      (0E354h),a
        ret

        ; Referenced from 83EF
L8408:  ld      a,(0E1B2h)
        cp      0Ah
        ret     c
        jp      L8393

        ; Referenced from 82B4
L8411:  ld      a,(0E1B0h)
        and     a
        jp      nz,L842D
        inc     a
        ld      (0E1B0h),a
        ld      de,19AFh        ; address or value?
        ld      hl,7740h        ; address or value?
        call    L8519
        ld      a,11h
        ld      (0E344h),a
        ld      (0E354h),a

        ; Referenced from 8415
L842D:  ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L8443
        ld      de,194Ch        ; address or value?

        ; Referenced from 849E
L8437:  call    L8500
        ld      a,01h
        call    LB764
        call    LB1A5
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
        call    LB146

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
        jp      L8393

        ; Referenced from 82B9
L8474:  ld      a,(0E1B0h)
        and     a
        jp      nz,L8494
        inc     a
        ld      (0E1B0h),a
        ld      de,198Fh        ; address or value?
        ld      hl,77C0h        ; address or value?
        call    L8519
        ld      a,12h
        ld      (0E344h),a
        ld      (0E354h),a
        inc     a
        ld      (0E364h),a

        ; Referenced from 8478
L8494:  ld      a,(ix+01h)
        cp      20h             ; ' '
        jr      nc,L84A1
        ld      de,192Ch        ; address or value?
        jp      L8437

        ; Referenced from 8499
L84A1:  ld      a,(0E1B2h)
        cp      05h
        ret     c
        call    LB1A5
        jp      L8393

        ; Referenced from 82BC
L84AD:  ld      a,(0E1B0h)
        and     a
        jr      nz,L84C4
        inc     a
        ld      (0E1B0h),a
        ld      (0E1B1h),a
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
        ld      (0E047h),a
        xor     a
        ld      (0E1B0h),a
        ld      (0E1B2h),a
        ld      (0E1B8h),a
        ld      a,07h
        call    LB777
        ret

        ; Referenced from 82A4
        ; --- START PROC L84DF ---
L84DF:  ld      de,0480h        ; address or value?
        call    L84EC
        ld      de,1000h        ; address or value?
        add     hl,de
        ld      de,2480h        ; address or value?

        ; Referenced from 84E2
        ; --- START PROC L84EC ---
L84EC:  ld      b,03h

        ; Referenced from 84FD
L84EE:  push    bc
        push    hl
        ld      bc,02C0h        ; address or value?
        call    005Ch
        ld      bc,0800h        ; address or value?
        add     hl,bc
        ex      de,hl
        pop     hl
        pop     bc
        djnz    L84EE
        ret

        ; Referenced from 82E9, 82EF, 8437, 83DC, 83E2
        ; --- START PROC L8500 ---
L8500:  ld      b,0Bh

        ; Referenced from 8512
L8502:  push    bc
        ld      bc,000Bh        ; address or value?
        ld      hl,554Fh        ; address or value?
        call    005Ch
        ld      de,0020h        ; address or value?
        add     hl,de
        ex      de,hl
        pop     bc
        djnz    L8502
        xor     a
        ld      (0E1B0h),a
        ret

        ; Referenced from 82CF, 83FC, 8422, 8485
        ; --- START PROC L8519 ---
L8519:  ld      c,08h

        ; Referenced from 852B
L851B:  push    bc
        ld      bc,0008h        ; address or value?
        call    005Ch
        pop     bc
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        ex      de,hl
        dec     c
        jr      nz,L851B
        ret

L852E:  DB      09h
        DB      12h
        DB      1Eh
        DB      2Fh             ; '/'
        DB      44h             ; 'D'
        DB      00h
        DB      68h             ; 'h'
        DB      00h
        DB      6Ch             ; 'l'
        DB      00h
        DB      6Ah             ; 'j'
        DB      80h
        DB      6Bh             ; 'k'
        DB      80h
        DB      6Bh             ; 'k'


        ; Referenced from AB74, 8569
        ; --- START PROC L853D ---
L853D:  xor     a
        ld      (0E1A0h),a
        ld      (0E012h),a
        ld      (0E013h),a

        ; Referenced from 854C, 8563
L8547:  ld      a,(0E012h)
        cp      01h
        jr      c,L8547
        xor     a
        ld      (0E012h),a
        ld      a,(0E013h)
        cp      41h             ; 'A'
        ret     nc
        and     04h
        and     a
        jr      nz,L8565

        ; Referenced from 8567
L855D:  ld      (0F3EBh),a
        call    0062h
        jr      L8547

        ; Referenced from 855B
L8565:  ld      a,0Fh
        jr      L855D

        ; Referenced from 83CA
        ; --- START PROC L8569 ---
L8569:  call    L853D
        ld      a,05h
        ld      (0E1A6h),a

        ; Referenced from 85BA
L8571:  ld      hl,2480h        ; address or value?
        ld      (0E1A0h),hl
        ld      hl,2C80h        ; address or value?
        ld      (0E1A2h),hl
        ld      hl,3480h        ; address or value?
        ld      (0E1A4h),hl
        ld      bc,02C0h        ; address or value?

        ; Referenced from 85B1
L8586:  ld      hl,(0E1A0h)
        call    004Ah
        push    bc
        ld      b,a
        ld      a,r
        and     b
        call    004Dh
        inc     hl
        ld      (0E1A0h),hl
        ld      hl,(0E1A2h)
        call    004Dh
        inc     hl
        ld      (0E1A2h),hl
        ld      hl,(0E1A4h)
        call    004Dh
        inc     hl
        ld      (0E1A4h),hl
        inc     de
        pop     bc
        dec     bc
        ld      a,c
        or      b
        jr      nz,L8586
        ld      a,(0E1A6h)
        dec     a
        ld      (0E1A6h),a
        jr      nz,L8571
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
        ld      a,(0E0A9h)
        srl     a
        ld      b,a
        ld      a,(0E0A8h)
        cp      b
        jr      z,L85E8
        ld      (ix+0Dh),01h
        jr      L85EC

        ; Referenced from 85E0
L85E8:  ld      (ix+0Dh),02h

        ; Referenced from 85E6
L85EC:  ld      a,03h
        call    LB758
        ld      a,(ix+00h)
        ld      (ix+20h),a
        ld      a,(ix+01h)
        ld      (ix+21h),a
        ld      (ix+23h),0Bh
        ld      a,(ix+17h)
        and     a
        jr      nz,L8611
        ld      (ix+18h),00h
        ld      (ix+22h),28h    ; '('
        jr      L8619

        ; Referenced from 8605
L8611:  ld      (ix+18h),01h
        ld      (ix+22h),2Ch    ; ','

        ; Referenced from 85C1, 860F
L8619:  xor     a
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

        ; Referenced from 9AC7, A352, A06A, A5BE, AA93, AB60, 8628, 863D, 865C, 838F
        ; --- START PROC L8670 ---
L8670:  ld      (ix+20h),0F0h
        ld      (ix+0Dh),00h
        ld      (ix+19h),00h
        ret

        ; Referenced from 80F1
        ; --- START PROC L867D ---
L867D:  ld      a,(ix+1Fh)
        and     a
        jp      z,L86BD
        inc     (ix+1Fh)
        jr      nz,L8696
        inc     (ix+1Fh)
        inc     (ix+1Eh)
        ld      a,(ix+1Eh)
        cp      05h
        jr      z,L86B1

        ; Referenced from 8687
L8696:  ld      a,(ix+1Eh)
        cp      04h
        jr      c,L86A5
        ld      a,(0E012h)
        and     04h
        and     a
        jr      nz,L86AB

        ; Referenced from 869B
L86A5:  ld      (ix+03h),00h
        jr      L86BD

        ; Referenced from 86A3
L86AB:  ld      (ix+03h),0Dh
        jr      L86BD

        ; Referenced from 8694
L86B1:  ld      (ix+03h),0Dh
        ld      (ix+1Eh),00h
        ld      (ix+1Fh),00h

        ; Referenced from 8681, 86A9, 86AF
L86BD:  ld      a,(ix+1Ah)
        and     a
        ret     z
        inc     (ix+1Ah)
        ld      a,(ix+1Ah)
        cp      20h             ; ' '
        jr      c,L86D5
        ld      (ix+1Ah),00h
        ld      (ix+03h),0Dh
        ret

        ; Referenced from 86CA
L86D5:  ld      a,(0E012h)
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
        ld      a,(0E047h)
        cp      02h
        ret     z
        ld      a,(ix+05h)
        and     a
        ret     nz
        ld      a,(ix+09h)
        and     a
        ret     nz
        ld      a,(0E180h)
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
        ld      hl,0E0A2h       ; address or value?
        dec     (hl)
        call    L93A7
        and     a
        jr      nz,L8841
        ld      hl,0E0A2h       ; address or value?
        inc     (hl)
        call    L93A7
        ret

        ; Referenced from 8837
L8841:  ld      (0E0A3h),a
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
        ld      hl,0E0A2h       ; address or value?
        inc     (hl)
        call    L93A7
        and     a
        jr      nz,L886A
        ld      hl,0E0A2h       ; address or value?
        dec     (hl)
        call    L93A7
        xor     a
        ret

        ; Referenced from 885F
L886A:  ld      (0E0A3h),a
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
        ld      hl,0E0A1h       ; address or value?
        inc     (hl)
        call    L93A7
        and     a
        jr      nz,L889C

        ; Referenced from 889F
L888F:  ld      hl,0E0A1h       ; address or value?
        dec     (hl)
        call    L93A7
        ld      a,(0E012h)
        jp      L8A9B

        ; Referenced from 888D
L889C:  call    L88E9
        jr      nc,L888F
        ld      a,c
        ld      (0E0A3h),a
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
L88B8:  ld      a,(0E0A1h)
        and     a
        jr      z,L88D4
        ld      a,(0E198h)
        and     a
        ret     nz
        ld      hl,0E0A1h       ; address or value?
        dec     (hl)
        call    L93A7
        and     a
        jr      nz,L88DA

        ; Referenced from 88DD
L88CD:  ld      hl,0E0A1h       ; address or value?
        inc     (hl)
        call    L93A7

        ; Referenced from 88BC
L88D4:  ld      a,(0E012h)
        jp      L8C2B

        ; Referenced from 88CB
L88DA:  call    L88E9
        jr      nc,L88CD
        ld      a,c
        ld      (0E0A3h),a
        ld      a,04h
        ld      (0E198h),a
        ret

        ; Referenced from 889C, 88DA
        ; --- START PROC L88E9 ---
L88E9:  ld      c,a
        ld      a,(0E0A0h)
        cp      00h
        jr      z,L8917
        cp      01h
        jr      z,L8910
        cp      02h
        jr      z,L890B
        cp      03h
        jr      z,L8904
        ld      a,c
        cp      44h             ; 'D'
        jr      z,L891E
        jr      L8929

        ; Referenced from 88FB
L8904:  ld      a,c
        cp      2Fh             ; '/'
        jr      z,L891E
        jr      L8929

        ; Referenced from 88F7
L890B:  ld      a,c
        cp      1Eh
        jr      z,L891E

        ; Referenced from 88F3
L8910:  ld      a,c
        cp      12h
        jr      z,L891E
        jr      L8929

        ; Referenced from 88EF
L8917:  ld      a,c
        cp      09h
        jr      z,L891E
        jr      L8929

        ; Referenced from 8900, 891A, 8913, 890E, 8907
L891E:  ld      a,(0E0A0h)
        ld      b,a
        inc     b
        ld      a,(0E046h)
        cp      b
        jr      c,L892B

        ; Referenced from 8902, 891C, 8915, 8909
L8929:  scf
        ret

        ; Referenced from 8927
L892B:  xor     a
        ret

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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8947
L8946:  add     hl,de
        djnz    L8946
        jr      L894E

        ; Referenced from 8932, 893D
L894B:  ld      hl,0E700h       ; address or value?

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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8998
L8992:  add     hl,de
        jr      L8998

        ; Referenced from 897E, 8989
L8995:  ld      hl,0E700h       ; address or value?

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
        ; --- START PROC L8A9B ---
L8A9B:  and     04h
        add     a,0Ch
        ld      (ix+02h),a
        ld      (ix+07h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ld      (ix+17h),00h
        ret

        ; Referenced from 8A85, 8A90
        ; --- START PROC L8AAF ---
L8AAF:  ld      a,(0E012h)
        jr      L8A9B

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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8ACE
L8ACD:  add     hl,de
        djnz    L8ACD
        jr      L8AD5

        ; Referenced from 8AB9, 8AC5
L8AD2:  ld      hl,0E700h       ; address or value?

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
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8AEF
L8AFA:  ld      de,0040h        ; address or value?
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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8B17
L8B16:  add     hl,de
        djnz    L8B16
        jr      L8B1E

        ; Referenced from 8B0D
L8B1B:  ld      hl,0E700h       ; address or value?

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
        jr      nc,L8BED
        ld      a,(ix+01h)
        ld      b,a
        and     0Fh
        cp      08h
        jr      c,L8BCC
        cp      0Ch
        jr      nc,L8BED

        ; Referenced from 8BE1
L8BBF:  ld      a,b
        set     2,a
        and     0FCh

        ; Referenced from 8BD5
L8BC4:  ld      (ix+01h),a
        ld      (ix+11h),a
        jr      L8B94

        ; Referenced from 8BB9
L8BCC:  cp      04h
        jr      nc,L8BED

        ; Referenced from 8BEB
L8BD0:  ld      a,b
        set     2,a
        and     0F4h
        jr      L8BC4

        ; Referenced from 8B92
L8BD7:  ld      a,(ix+01h)
        ld      b,a
        and     0Fh
        cp      0Ch
        jr      c,L8BE3
        jr      L8BBF

        ; Referenced from 8BDF
L8BE3:  cp      04h
        jr      c,L8BED
        cp      08h
        jr      nc,L8BED
        jr      L8BD0

        ; Referenced from 8BAF, 8BBD, 8BCE, 8BE5, 8BE9
L8BED:  ld      a,(ix+04h)
        and     a
        ret     nz
        ld      (ix+04h),01h
        ld      a,(ix+02h)
        ld      (ix+07h),a
        ld      (ix+02h),24h    ; '$'
        ld      (ix+12h),84h
        ret

        ; Referenced from 88B5
        ; --- START PROC L8C05 ---
L8C05:  ld      (ix+04h),00h
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
        ; --- START PROC L8C2B ---
L8C2B:  and     04h
        add     a,14h
        ld      (ix+02h),a
        ld      (ix+07h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        ld      (ix+17h),01h
        ret

        ; Referenced from 8C15, 8C20
        ; --- START PROC L8C3F ---
L8C3F:  ld      a,(0E012h)
        jr      L8C2B

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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8C5E
L8C5D:  add     hl,de
        djnz    L8C5D
        jr      L8C65

        ; Referenced from 8C49, 8C54
L8C62:  ld      hl,0E700h       ; address or value?

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
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 8C7F
L8C8A:  ld      de,0040h        ; address or value?
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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

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
        ld      hl,0E700h       ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from 8CEB
L8CEA:  add     hl,de
        djnz    L8CEA
        jr      L8CF2

        ; Referenced from 8CD6, 8CE2
L8CEF:  ld      hl,0E700h       ; address or value?

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
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,(hl)
        ld      (ix+15h),a
        ret

        ; Referenced from 80FA
        ; --- START PROC L8D0F ---
L8D0F:  ld      a,(0E047h)
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
        ld      a,(0E180h)
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
        ld      hl,8F91h        ; address or value?
        jr      L8DD6

        ; Referenced from 8DCC
L8DD3:  ld      hl,8FA2h        ; address or value?

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
        ld      hl,8F91h        ; address or value?
        jr      L8E49

        ; Referenced from 8E3F
L8E46:  ld      hl,8FA2h        ; address or value?

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
        ld      a,(0E0A9h)
        and     a
        jr      z,L8F8C

        ; Referenced from 8F7F
L8F87:  ld      (ix+1Bh),01h
        ret

        ; Referenced from 8F85
L8F8C:  ld      (ix+1Bh),00h
        ret

L8F91:  DB      03h
        DB      03h
        DB      02h
        DB      02h
        DB      01h
        DB      01h
        DB      01h
        DB      01h
        DB      00h
        DB      01h
        DB      00h
        DB      01h
        DB      00h
        DB      00h
        DB      01h
        DB      00h
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
        ld      a,(0E1B1h)
        and     a
        jr      z,L8FE2
        xor     a
        ld      (0E1B0h),a
        ld      (0E1B1h),a
        ld      (0E1B2h),a
        ld      (0E1B8h),a
        call    LB02F
        call    L8206

        ; Referenced from 8FCD
L8FE2:  call    LB19A
        call    LB1A5
        ld      (ix+20h),0ECh
        ld      (ix+0Dh),00h
        call    LB000
        call    LB38A
        ld      a,(0E198h)
        ld      d,a
        ld      hl,0E980h       ; address or value?
        ld      bc,0500h        ; address or value?

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
L9023:  ld      hl,0E700h       ; address or value?
        ld      de,0EC00h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        call    L9257
        ld      hl,0E700h       ; address or value?
        ld      de,0E980h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        ld      hl,0EBE0h       ; address or value?
        ld      (0E191h),hl
        ld      b,14h
        xor     a
        ld      (0E010h),a

        ; Referenced from 904D, 9082
L9048:  ld      a,(0E010h)
        cp      04h
        jr      c,L9048
        xor     a
        ld      (0E010h),a
        push    bc
        ld      hl,(0E191h)
        ld      de,1840h        ; address or value?
        ld      bc,0280h        ; address or value?
        call    005Ch
        ld      hl,(0E191h)
        ld      de,0FFE0h       ; address or value?
        add     hl,de
        ld      (0E191h),hl
        ld      a,(ix+00h)
        add     a,08h
        cp      0A0h
        jr      c,L9075
        ld      a,0A0h

        ; Referenced from 9071
L9075:  ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        call    LB37F
        pop     bc
        djnz    L9048
        ld      hl,0E980h       ; address or value?
        ld      de,0E700h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        ret

        ; Referenced from 901B
L9090:  ld      hl,0E700h       ; address or value?
        ld      de,0E980h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        call    L9257
        ld      hl,0E700h       ; address or value?
        ld      de,0EC00h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        ld      hl,0E9A0h       ; address or value?
        ld      (0E191h),hl
        ld      b,14h
        xor     a
        ld      (0E010h),a

        ; Referenced from 90BA, 90EF
L90B5:  ld      a,(0E010h)
        cp      04h
        jr      c,L90B5
        xor     a
        ld      (0E010h),a
        push    bc
        ld      hl,(0E191h)
        ld      de,1840h        ; address or value?
        ld      bc,0280h        ; address or value?
        call    005Ch
        ld      hl,(0E191h)
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (0E191h),hl
        ld      a,(ix+00h)
        sub     08h
        cp      11h
        jr      nc,L90E2
        ld      a,11h

        ; Referenced from 90DE
L90E2:  ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        call    LB37F
        pop     bc
        djnz    L90B5
        ld      hl,0EC00h       ; address or value?
        ld      de,0E700h       ; address or value?
        ld      bc,0280h        ; address or value?
        ldir
        ret

        ; Referenced from 9016
L90FD:  ld      hl,0E700h       ; address or value?
        ld      de,0E980h       ; address or value?
        call    L9237
        call    L9257
        ld      hl,0E700h       ; address or value?
        ld      de,0E9A0h       ; address or value?
        call    L9237
        ld      hl,0E981h       ; address or value?
        ld      (0E195h),hl
        ld      hl,1840h        ; address or value?
        ld      (0E193h),hl
        xor     a
        ld      (0E010h),a
        ld      b,20h           ; ' '

        ; Referenced from 9129, 9182
L9124:  ld      a,(0E010h)
        cp      04h
        jr      c,L9124
        xor     a
        ld      (0E010h),a
        ld      hl,(0E195h)
        ld      (0E191h),hl
        ld      c,14h

        ; Referenced from 915B
L9137:  push    bc
        ld      hl,(0E191h)
        ld      de,(0E193h)
        ld      bc,0020h        ; address or value?
        call    005Ch
        ld      hl,(0E191h)
        ld      de,0040h        ; address or value?
        add     hl,de
        ld      (0E191h),hl
        ld      hl,(0E193h)
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (0E193h),hl
        pop     bc
        dec     c
        jr      nz,L9137
        push    bc
        ld      hl,(0E195h)
        inc     hl
        ld      (0E195h),hl
        ld      hl,1840h        ; address or value?
        ld      (0E193h),hl
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
        call    LB37F
        pop     bc
        djnz    L9124
        ld      hl,0E9A0h       ; address or value?
        ld      de,0E700h       ; address or value?
        ld      b,14h

        ; Referenced from 9199
L918C:  push    bc
        ld      bc,0020h        ; address or value?
        ldir
        pop     bc
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        djnz    L918C
        ret

        ; Referenced from 901F
L919C:  ld      hl,0E700h       ; address or value?
        ld      de,0E9A0h       ; address or value?
        call    L9237
        call    L9257
        ld      hl,0E700h       ; address or value?
        ld      de,0E980h       ; address or value?
        call    L9237
        ld      hl,0E99Fh       ; address or value?
        ld      (0E195h),hl
        ld      hl,1840h        ; address or value?
        ld      (0E193h),hl
        xor     a
        ld      (0E010h),a
        ld      b,20h           ; ' '

        ; Referenced from 91C8, 921D
L91C3:  ld      a,(0E010h)
        cp      04h
        jr      c,L91C3
        xor     a
        ld      (0E010h),a
        ld      hl,(0E195h)
        ld      (0E191h),hl
        ld      c,14h

        ; Referenced from 91FA
L91D6:  push    bc
        ld      hl,(0E191h)
        ld      de,(0E193h)
        ld      bc,0020h        ; address or value?
        call    005Ch
        ld      hl,(0E191h)
        ld      de,0040h        ; address or value?
        add     hl,de
        ld      (0E191h),hl
        ld      hl,(0E193h)
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (0E193h),hl
        pop     bc
        dec     c
        jr      nz,L91D6
        push    bc
        ld      hl,(0E195h)
        dec     hl
        ld      (0E195h),hl
        ld      hl,1840h        ; address or value?
        ld      (0E193h),hl
        ld      a,(ix+01h)
        cp      0E8h
        jr      nc,L921C
        add     a,08h
        ld      (ix+01h),a
        ld      (ix+11h),a
        call    LB37F

        ; Referenced from 920F
L921C:  pop     bc
        djnz    L91C3
        ld      hl,0E980h       ; address or value?
        ld      de,0E700h       ; address or value?
        ld      b,14h

        ; Referenced from 9234
L9227:  push    bc
        ld      bc,0020h        ; address or value?
        ldir
        pop     bc
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        djnz    L9227
        ret

        ; Referenced from 9103, 910F, 91A2, 91AE
        ; --- START PROC L9237 ---
L9237:  ld      (0E193h),de
        ld      b,14h

        ; Referenced from 9254
L923D:  push    bc
        ld      de,(0E193h)
        ld      bc,0020h        ; address or value?
        ldir
        push    hl
        ld      hl,(0E193h)
        ld      de,0040h        ; address or value?
        add     hl,de
        ld      (0E193h),hl
        pop     hl
        pop     bc
        djnz    L923D
        ret

        ; Referenced from 966C, 8047, 902E, 9106, 909B, 91A5
        ; --- START PROC L9257 ---
L9257:  ld      hl,0E700h       ; address or value?
        ld      bc,0280h        ; address or value?

        ; Referenced from 9263
L925D:  ld      (hl),80h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,L925D
        ld      a,(0E0A3h)
        ld      hl,41ACh        ; address or value?
        add     a,a
        add     a,l
        jr      nc,L9270
        inc     h

        ; Referenced from 926D
L9270:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)

        ; Referenced from 92A3
L9274:  ld      a,(de)
        cp      0FFh
        jp      z,L9330
        cp      0FEh
        jp      z,L92A5
        call    L938F
        ld      a,(de)
        ld      b,a
        inc     de
        ld      a,(de)
        inc     de
        ld      (0E1A1h),a
        add     a,a
        push    de
        ld      de,54C7h        ; address or value?
        add     a,e
        jr      nc,L9293
        inc     d

        ; Referenced from 9290
L9293:  ld      e,a
        push    hl
        ld      a,(de)
        ld      l,a
        inc     de
        ld      a,(de)
        ld      h,a
        ex      de,hl
        pop     hl

        ; Referenced from 92A0
L929C:  ld      a,(de)
        ld      (hl),a
        inc     hl
        inc     de
        djnz    L929C
        pop     de
        jr      L9274

        ; Referenced from 927C
L92A5:  inc     de

        ; Referenced from 9304
L92A6:  ld      a,(de)
        cp      0FFh
        jp      z,L9330
        call    L938F
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
        ld      a,(0E0A0h)
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
        ld      de,0020h        ; address or value?
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
L9330:  inc     de

        ; Referenced from 9355
L9331:  ld      a,(de)
        cp      0FFh
        jr      z,L9357
        call    L938F
        ld      a,(de)
        ld      b,a
        inc     de
        ld      a,(de)
        inc     de
        ld      (0E1A1h),a
        add     a,30h           ; '0'
        ld      (hl),a
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        dec     b
        dec     b
        add     a,08h

        ; Referenced from 934F
L934D:  ld      (hl),a
        add     hl,de
        djnz    L934D
        sub     04h
        ld      (hl),a
        pop     de
        jr      L9331

        ; Referenced from 9334
L9357:  inc     de

        ; Referenced from 936E
L9358:  ld      a,(de)
        cp      0FFh
        jp      z,L938E
        call    L938F
        ld      a,(de)
        ld      c,a
        inc     de
        ld      a,(de)
        ld      b,a
        inc     de
        push    de
        ld      e,c
        ld      d,b
        call    L9370
        pop     de
        jr      L9358

        ; Referenced from 936A
        ; --- START PROC L9370 ---
L9370:  ld      a,(de)
        ld      (0E1A0h),a
        inc     de
        ld      a,(de)
        ld      b,a
        inc     de

        ; Referenced from 938B
L9378:  ld      a,(0E1A0h)
        ld      c,a
        push    hl

        ; Referenced from 9382
L937D:  ld      a,(de)
        ld      (hl),a
        inc     de
        inc     hl
        dec     c
        jr      nz,L937D
        pop     hl
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        pop     de
        djnz    L9378
        ret

        ; Referenced from 935B
        ; --- START PROC L938E ---
L938E:  ret

        ; Referenced from 927F, 9336, 92AC, 935E
        ; --- START PROC L938F ---
L938F:  ld      hl,0E700h       ; address or value?
        and     a
        jr      z,L939E
        ld      b,a
        push    de
        ld      de,0020h        ; address or value?

        ; Referenced from 939B
L939A:  add     hl,de
        djnz    L939A
        pop     de

        ; Referenced from 9393
L939E:  inc     de
        ld      a,(de)
        add     a,l
        jr      nc,L93A4
        inc     h

        ; Referenced from 93A1
L93A4:  ld      l,a
        inc     de
        ret

        ; Referenced from 9669, 8044, 8833, 883D, 8889, 8893, 885B, 8865, 88C7, 88D1
        ; --- START PROC L93A7 ---
L93A7:  ld      a,(0E0A0h)
        add     a,a
        ld      hl,4038h        ; address or value?
        add     a,l
        jr      nc,L93B2
        inc     h

        ; Referenced from 93AF
L93B2:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        ld      a,(0E0A2h)
        and     a
        jr      z,L93C4
        ld      b,a
        ld      de,000Ah        ; address or value?

        ; Referenced from 93C2
L93C1:  add     hl,de
        djnz    L93C1

        ; Referenced from 93BB
L93C4:  ld      a,(0E0A1h)
        add     a,l
        jr      nc,L93CB
        inc     h

        ; Referenced from 93C8
L93CB:  ld      l,a
        ld      a,(hl)
        ld      (0E0A3h),a
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
        ld      a,(0E0A3h)
        ld      hl,4EBEh        ; address or value?
        add     a,a
        add     a,l
        jr      nc,L9414
        inc     h

        ; Referenced from 9411
L9414:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      hl,0E340h       ; address or value?

        ; Referenced from 9432
L941B:  ld      a,(de)
        cp      0FFh
        jr      z,L9434
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
        ld      de,000Ch        ; address or value?
        add     hl,de
        pop     de
        inc     de
        jr      L941B

        ; Referenced from 941E
L9434:  inc     de
        ld      hl,0E400h       ; address or value?

        ; Referenced from 9450
L9438:  ld      a,(de)
        cp      0FFh
        ret     z
        ld      (hl),a
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a
        inc     hl
        inc     de
        ld      a,(de)
        ld      (hl),a
        inc     de
        push    de
        ld      de,000Dh        ; address or value?
        add     hl,de
        pop     de
        jr      L9438

        ; Referenced from 810C
        ; --- START PROC L9452 ---
L9452:  ld      iy,0E400h       ; address or value?
        ld      b,0Ch

        ; Referenced from 9465
L9458:  push    bc
        ld      a,(iy+02h)
        and     a
        jr      nz,L9468

        ; Referenced from 946B
L945F:  ld      de,0010h        ; address or value?
        add     iy,de
        pop     bc
        djnz    L9458
        ret

        ; Referenced from 945D
L9468:  call    L946D
        jr      L945F

        ; Referenced from 9468
        ; --- START PROC L946D ---
L946D:  ld      hl,947Bh        ; address or value?
        add     a,a
        add     a,l
        jr      nc,L9475
        inc     h

        ; Referenced from 9472
L9475:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        jp      (hl)

L947B:  DB      0A3h
        DB      94h
        DB      0A3h
        DB      94h
        DB      07h
        DB      97h
        DB      0E3h
        DB      97h
        DB      92h
        DB      98h
        DB      92h
        DB      98h
        DB      92h
        DB      98h
        DB      92h
        DB      98h
        DB      99h
        DB      99h
        DB      99h
        DB      99h
        DB      99h
        DB      99h
        DB      99h
        DB      99h
        DB      89h
        DB      9Ah
        DB      89h
        DB      9Ah
        DB      89h
        DB      9Ah
        DB      89h
        DB      9Ah
        DB      22h             ; '"'
        DB      9Bh
        DB      0F8h
        DB      9Ch
        DB      2Ch             ; ','
        DB      9Eh
        DB      40h             ; '@'
        DB      9Fh

        ; Entry Point
        ; --- START PROC L94A3 ---
L94A3:  ld      a,(iy+05h)
        cp      02h
        jr      c,L94DF
        ld      bc,0AF6h        ; address or value?
        call    LAFE8
        jr      nc,L94DF
        ld      a,(iy+05h)
        cp      02h
        jr      z,L94C5
        cp      03h
        jr      z,L94CA
        cp      04h
        jr      z,L94CF
        cp      05h
        jr      z,L94CA

        ; Referenced from 94B7
L94C5:  ld      bc,04FFh        ; address or value?
        jr      L94D2

        ; Referenced from 94BB, 94C3
L94CA:  ld      bc,0AFFh        ; address or value?
        jr      L94D2

        ; Referenced from 94BF
L94CF:  ld      bc,12FFh        ; address or value?

        ; Referenced from 94C8, 94CD
L94D2:  call    LAFC5
        jr      nc,L94DF
        ld      a,07h
        call    LB758
        call    LB146

        ; Referenced from 94A8, 94B0, 94D5
L94DF:  ld      bc,01FFh        ; address or value?
        call    LAFC5
        jr      nc,L94FC
        ld      bc,04FCh        ; address or value?
        call    LAFE8
        jr      nc,L94FC
        ld      a,(ix+04h)
        and     a
        jr      z,L94FC
        ld      a,(iy+03h)
        and     a
        jp      nz,L959D

        ; Referenced from 94E5, 94ED, 94F3
L94FC:  ld      a,(0E1B8h)
        and     a
        ret     nz
        ld      a,(iy+05h)
        and     a
        jr      nz,L9524
        call    LA08B
        ld      de,0FFE0h       ; address or value?
        add     hl,de
        ld      (iy+07h),l
        ld      (iy+08h),h

        ; Referenced from 9599
L9514:  ld      a,r
        and     3Fh             ; '?'
        add     a,80h
        ld      (iy+06h),a
        ld      (iy+05h),01h
        jp      L959C

        ; Referenced from 9505
L9524:  cp      01h
        jr      nz,L9542

        ; Referenced from 9586
L9528:  dec     (iy+06h)
        jp      nz,L959C
        inc     (iy+05h)
        ld      (iy+06h),10h
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55FBh        ; address or value?
        call    LA0AD
        ret

        ; Referenced from 9526
L9542:  cp      02h
        jr      nz,L955F

        ; Referenced from 9580
L9546:  dec     (iy+06h)
        jr      nz,L959C
        ld      (iy+06h),10h
        inc     (iy+05h)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,5606h        ; address or value?
        call    LA0AD
        ret

        ; Referenced from 9544
L955F:  cp      03h
        jr      nz,L957C
        dec     (iy+06h)
        jr      nz,L959C
        ld      (iy+06h),20h    ; ' '
        inc     (iy+05h)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,5611h        ; address or value?
        call    LA0AD
        ret

        ; Referenced from 9561
L957C:  cp      04h
        jr      nz,L9582
        jr      L9546

        ; Referenced from 957E
L9582:  cp      05h
        jr      nz,L9588
        jr      L9528

        ; Referenced from 9584
L9588:  dec     (iy+06h)
        jr      nz,L959C
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55F0h        ; address or value?
        call    LA0AD
        jp      L9514

        ; Referenced from 9521, 952B, 9549, 9566, 958B
L959C:  ret

        ; Referenced from 94F9
L959D:  ld      (ix+04h),00h
        ld      hl,0A0D7h       ; address or value?
        add     a,a
        add     a,l
        jr      nc,L95A9
        inc     h

        ; Referenced from 95A6
L95A9:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      a,(de)
        ld      (0E0A0h),a
        inc     de
        ld      a,(de)
        ld      (0E0A1h),a
        inc     de
        ld      a,(de)
        ld      (0E0A2h),a
        inc     de
        push    de
        call    LB1A5
        call    LB19A
        ld      a,(ix+00h)
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        ld      a,(ix+01h)
        ld      (0E3E1h),a
        ld      (0E3F1h),a
        ld      a,24h           ; '$'
        ld      (0E3E2h),a
        ld      a,84h
        ld      (0E3F2h),a
        ld      a,0Dh
        ld      (0E3E3h),a
        ld      a,0Bh
        ld      (0E3F3h),a
        ld      a,(ix+00h)
        add     a,10h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+20h),a
        ld      (ix+30h),a
        ld      a,0E4h
        ld      (ix+02h),a
        ld      (ix+12h),a
        ld      (ix+22h),a
        ld      (ix+32h),a
        call    LB000
        call    LB38A
        xor     a
        ld      (0E010h),a
        ld      (ix+26h),a
        ld      a,01h
        call    LB764

        ; Referenced from 961F, 963D
L961A:  ld      a,(0E010h)
        cp      08h
        jr      c,L961A
        xor     a
        ld      (0E010h),a
        ld      a,(0E3E0h)
        inc     a
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        call    LB000
        call    LB38A
        inc     (ix+26h)
        ld      a,(ix+26h)
        cp      0Ah
        jr      c,L961A
        call    LB25D
        ld      a,(0E1B1h)
        and     a
        jr      z,L9658
        xor     a
        ld      (0E1B1h),a
        ld      (0E1B2h),a
        ld      (0E1B0h),a
        ld      (0E1B8h),a
        call    LB02F

        ; Referenced from 9646
L9658:  ld      a,(0E00Ah)
        push    af
        ld      a,(0E0A0h)
        ld      (0E00Ah),a
        call    L8206
        pop     af
        ld      (0E00Ah),a
        call    L93A7
        call    L9257
        call    LB1C3
        pop     de
        ld      a,(de)
        add     a,0Ah
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        add     a,06h
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+20h),a
        ld      (ix+30h),a
        inc     de
        ld      a,(de)
        ld      (0E3E1h),a
        ld      (0E3F1h),a
        ld      (ix+01h),a
        ld      (ix+11h),a
        ld      (ix+21h),a
        ld      (ix+31h),a
        ld      (ix+26h),00h
        ld      a,01h
        call    LB764

        ; Referenced from 96AC, 96CA
L96A7:  ld      a,(0E010h)
        cp      08h
        jr      c,L96A7
        xor     a
        ld      (0E010h),a
        ld      a,(0E3E0h)
        dec     a
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        call    LB000
        call    LB38A
        inc     (ix+26h)
        ld      a,(ix+26h)
        cp      0Ah
        jr      c,L96A7
        ld      a,(0E3E0h)
        ld      (ix+00h),a
        ld      (ix+10h),a
        ld      (ix+08h),a
        ld      a,(0E3E1h)
        ld      (ix+01h),a
        ld      (ix+11h),a
        ld      (ix+20h),0ECh
        ld      (ix+30h),0ECh
        ld      a,0ECh
        ld      (0E3E0h),a
        ld      (0E3F0h),a
        ld      a,(ix+07h)
        ld      (ix+02h),a
        add     a,60h           ; '`'
        ld      (ix+12h),a
        call    LB000
        call    LB38A
        xor     a
        ld      (0E19Bh),a
        ret

        ; Entry Point
        ; --- START PROC L9707 ---
L9707:  ld      a,(iy+04h)
        and     a
        jr      nz,L9741
        ld      a,(iy+03h)
        ld      hl,0E02Ch       ; address or value?
        add     a,l
        jr      nc,L9717
        inc     h

        ; Referenced from 9714
L9717:  ld      l,a
        ld      a,(hl)
        and     a
        jr      z,L9720
        call    LA080
        ret

        ; Referenced from 971A
L9720:  inc     (iy+04h)
        ld      (iy+05h),l
        ld      (iy+06h),h
        call    LA08B
        ld      (iy+07h),l
        ld      (iy+08h),h
        ld      de,55DCh        ; address or value?
        call    LA0AD
        ld      a,(0E1B9h)
        inc     a
        ld      (0E1B9h),a
        jr      L9741

        ; Referenced from 970B, 973F
L9741:  ld      bc,01FFh        ; address or value?
        call    LAFC5
        jr      nc,L977B
        ld      bc,04FCh        ; address or value?
        call    LAFE8
        jr      nc,L977B
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        inc     (hl)
        ld      l,(iy+07h)
        ld      h,(iy+08h)
        ld      de,55E2h        ; address or value?
        call    LA0AD
        call    L977C
        call    LA080
        ld      a,(0E1B9h)
        dec     a
        ld      (0E1B9h),a
        ld      a,20h           ; ' '
        call    LB3AF
        ld      a,01h
        call    LB758

        ; Referenced from 9747, 974F
        ; --- START PROC L977B ---
L977B:  ret

        ; Referenced from 9764
        ; --- START PROC L977C ---
L977C:  ld      a,(0E02Bh)
        inc     a
        ld      (0E02Bh),a
        cp      05h
        jr      c,L97C8
        xor     a
        ld      (0E02Bh),a
        ld      hl,1AC1h        ; address or value?
        ld      bc,0004h        ; address or value?
        ld      a,60h           ; '`'
        call    0056h
        ld      hl,1AE1h        ; address or value?
        ld      bc,0004h        ; address or value?
        ld      a,10h
        call    0056h
        ld      a,03h
        call    LB764
        ld      a,(0E046h)
        inc     a
        ld      (0E046h),a
        ld      a,(0E046h)
        ld      c,a
        ld      b,00h
        ld      hl,180Ah        ; address or value?
        ld      a,7Ah           ; 'z'
        call    0056h
        ld      hl,182Ah        ; address or value?
        ld      a,(0E046h)
        ld      c,a
        ld      a,7Eh           ; '~'
        call    0056h
        ret

        ; Referenced from 9785
L97C8:  ld      a,(0E02Bh)
        ld      hl,1AC1h        ; address or value?
        ld      c,a
        ld      b,00h
        ld      a,6Eh           ; 'n'
        call    0056h
        ld      hl,1AE1h        ; address or value?
        ld      a,(0E02Bh)
        ld      c,a
        ld      a,6Fh           ; 'o'
        call    0056h
        ret

        ; Entry Point
        ; --- START PROC L97E3 ---
L97E3:  ld      bc,08FFh        ; address or value?
        call    LAFE8
        jr      nc,L9851
        ld      bc,01FFh        ; address or value?
        call    LAFC5
        jr      nc,L9851
        ld      a,(0E0A8h)
        sla     a
        ld      b,a
        ld      a,(0E0A9h)
        cp      b
        jr      z,L9833
        ld      a,(0E04Bh)
        and     a
        jr      z,L9833
        dec     a
        ld      (0E04Bh),a
        ld      hl,0E0B0h       ; address or value?
        ld      c,00h

        ; Referenced from 9815
L980E:  ld      a,(hl)
        cp      07h
        jr      z,L9817
        inc     c
        inc     hl
        jr      L980E

        ; Referenced from 9811
L9817:  ld      (hl),00h
        ld      hl,1AC6h        ; address or value?
        ld      a,c
        add     a,l
        jr      nc,L9821
        inc     h

        ; Referenced from 981E
L9821:  ld      l,a
        ld      a,60h           ; '`'
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,10h
        call    004Dh
        call    LB0FE

        ; Referenced from 97FD, 9803
L9833:  ld      a,(ix+04h)
        and     a
        ret     z
        ld      a,(iy+03h)
        cp      01h
        jr      nz,L9852
        ld      a,80h
        ld      (0E965h),a
        ld      (0E966h),a
        ld      hl,1AA5h        ; address or value?
        call    004Dh
        inc     hl
        call    004Dh

        ; Referenced from 97E9, 97F1
L9851:  ret

        ; Referenced from 983D
L9852:  cp      04h
        jr      nz,L9880
        ld      hl,0E791h       ; address or value?
        call    L9863
        ld      hl,18D1h        ; address or value?
        call    L9871
        ret

        ; Referenced from 9859, 9887
        ; --- START PROC L9863 ---
L9863:  ld      b,04h
        ld      de,001Fh        ; address or value?

        ; Referenced from 986E
L9868:  ld      (hl),80h
        inc     hl
        ld      (hl),80h
        add     hl,de
        djnz    L9868
        ret

        ; Referenced from 985F, 988D
        ; --- START PROC L9871 ---
L9871:  ld      a,80h
        ld      b,04h

        ; Referenced from 987D
L9875:  call    004Dh
        inc     hl
        call    004Dh
        add     hl,de
        djnz    L9875
        ret

        ; Referenced from 9854
        ; --- START PROC L9880 ---
L9880:  cp      06h
        jr      nz,L9891
        ld      hl,0E91Bh       ; address or value?
        call    L9863
        ld      hl,1A5Bh        ; address or value?
        call    L9871
        ret

        ; Referenced from 9882
        ; --- START PROC L9891 ---
L9891:  ret

        ; Entry Point
        ; --- START PROC L9892 ---
L9892:  ld      a,(iy+04h)
        and     a
        jr      nz,L98C1
        ld      a,(iy+03h)
        ld      hl,0E0C5h       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080
        inc     (iy+04h)
        call    LA08B
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
        call    004Dh
        jr      L98F5

        ; Referenced from 98C7
L98E0:  ld      a,(iy+09h)
        and     a
        jr      z,L98F5
        ld      (iy+09h),00h
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    004Dh

        ; Referenced from 98CD, 98DE, 98E4
L98F5:  ld      bc,08FFh        ; address or value?
        call    LAFE8
        jp      nc,L9988
        ld      bc,09FFh        ; address or value?
        call    LAFC5
        jp      nc,L9988
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    004Dh
        ld      a,20h           ; ' '
        call    LB3AF
        ld      a,01h
        call    LB758
        ld      a,(iy+02h)
        cp      04h
        jr      nz,L9928
        ld      (0E048h),a
        jr      L994C

        ; Referenced from 9921
L9928:  cp      05h
        jr      nz,L9931
        ld      (0E049h),a
        jr      L994C

        ; Referenced from 992A
L9931:  cp      06h
        jr      nz,L993E
        ld      a,(0E04Ah)
        inc     a
        ld      (0E04Ah),a
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
L994C:  ld      de,9991h        ; address or value?
        ld      a,(iy+02h)
        sub     04h
        add     a,a
        add     a,e
        ld      e,a
        ld      hl,0E0B0h       ; address or value?
        ld      b,00h

        ; Referenced from 9962
L995C:  ld      a,(hl)
        and     a
        jr      z,L9964
        inc     hl
        inc     b
        jr      L995C

        ; Referenced from 995E
L9964:  ld      a,(iy+02h)
        ld      (hl),a
        ld      a,b
        ld      hl,1AC6h        ; address or value?
        add     a,l
        ld      l,a
        ld      a,(de)
        call    004Dh
        inc     de
        ld      a,(de)
        ld      de,0020h        ; address or value?
        add     hl,de
        call    004Dh
        ld      hl,0E0C5h       ; address or value?
        ld      a,(iy+03h)
        add     a,l
        ld      l,a
        ld      (hl),01h
        jp      LA080

        ; Referenced from 98FB, 9904
        ; --- START PROC L9988 ---
L9988:  ret

L9989:  DB      00h
        DB      00h
        DB      00h
        DB      00h
        DB      "pqrsux{"
        DB      7Fh
        DB      60h             ; '`'
        DB      72h             ; 'r'
        DB      60h             ; '`'
        DB      73h             ; 's'

        ; Entry Point
        ; --- START PROC L9999 ---
L9999:  ld      a,(iy+04h)
        and     a
        jr      nz,L99CF
        ld      a,(iy+03h)
        ld      hl,0E0DAh       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080
        inc     (iy+04h)
        call    LA08B
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
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,(iy+08h)
        call    004Dh
        jr      L9A16

        ; Referenced from 99D5
L99F8:  ld      a,(iy+09h)
        and     a
        jr      z,L9A16
        ld      (iy+09h),00h
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        call    004Dh
        jr      L9A16

        ; Referenced from 99DB, 99F6, 99FC, 9A14
L9A16:  ld      bc,08FFh        ; address or value?
        call    LAFE8
        jr      nc,L9A80
        ld      bc,01FFh        ; address or value?
        call    LAFC5
        jr      nc,L9A80
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        call    004Dh
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
        call    LB3AF
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
L9A7D:  jp      LA080

        ; Referenced from 9A1C, 9A24
        ; --- START PROC L9A80 ---
L9A80:  ret

L9A81:  DB      99h
        DB      9Dh
        DB      80h
        DB      74h             ; 't'
        DB      98h
        DB      9Ch
        DB      64h             ; 'd'
        DB      63h             ; 'c'

        ; Entry Point
        ; --- START PROC L9A89 ---
L9A89:  ld      a,(iy+04h)
        and     a
        jr      nz,L9AB7
        ld      a,(iy+03h)
        ld      hl,0E04Ch       ; address or value?
        add     a,l
        ld      l,a
        ld      a,(hl)
        and     a
        jp      nz,LA080
        inc     (iy+04h)
        call    LA08B
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,84h
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,88h
        call    004Dh
        ret

        ; Referenced from 9A8D
L9AB7:  ld      bc,08FFh        ; address or value?
        call    LAFF8
        jr      nc,L9B21
        ld      bc,08F8h        ; address or value?
        call    LAFF0
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
        ld      (iy+04h),00h
        ld      (iy+03h),00h
        xor     a
        ld      (0E0DAh),a
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      a,80h
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        call    004Dh
        ret

        ; Referenced from 9ABD, 9AC5, 9AD2
        ; --- START PROC L9B21 ---
L9B21:  ret

        ; Entry Point
        ; --- START PROC L9B22 ---
L9B22:  ld      a,(iy+04h)
        and     a
        jr      nz,L9B55
        ld      a,r
        and     7Fh             ; ''
        add     a,10h
        ld      (iy+09h),a
        inc     (iy+04h)
        call    LA08B
        ld      (iy+0Eh),l
        ld      (iy+0Fh),h
        inc     hl
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      l,(iy+0Eh)
        ld      h,(iy+0Fh)
        ld      de,9CBAh        ; address or value?
        call    LA0AD
        ret

        ; Referenced from 9B26
L9B55:  cp      01h
        jr      nz,L9B61
        dec     (iy+09h)
        ret     nz
        inc     (iy+04h)
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
        inc     (iy+04h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,9CEDh        ; address or value?
        call    LA0AD
        ret

        ; Referenced from 9B75, 9C4F, 9C58, 9C65
L9B87:  ld      hl,9CB4h        ; address or value?
        add     a,a
        add     a,l
        jr      nc,L9B8F
        inc     hl

        ; Referenced from 9B8C
L9B8F:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      l,(iy+0Eh)
        ld      h,(iy+0Fh)
        call    LA0AD
        ret

        ; Referenced from 9B63
L9B9D:  ld      a,(0E019h)
        and     07h
        cp      07h
        jp      nz,L9C68
        ld      a,(iy+04h)
        cp      03h
        jr      nz,L9BF0
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        ld      b,(iy+03h)
        cp      b
        jr      nz,L9BC9
        inc     (iy+04h)
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
        ld      a,0B4h
        call    004Dh
        ld      a,(iy+0Ah)
        cp      01h
        jp      z,L9C68
        ld      de,0FFE0h       ; address or value?
        add     hl,de
        ld      a,0B0h
        call    004Dh
        jr      L9C68

        ; Referenced from 9BAC
L9BF0:  cp      04h
        jr      nz,L9BFE
        dec     (iy+09h)
        jr      nz,L9C68
        inc     (iy+04h)
        jr      L9C68

        ; Referenced from 9BF2
L9BFE:  cp      05h
        jr      nz,L9C34
        dec     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      01h
        jr      nz,L9C15
        inc     (iy+04h)
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
        ld      a,80h
        call    004Dh
        ld      de,0FFE0h       ; address or value?
        add     hl,de
        ld      a,0B4h
        call    004Dh
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
        call    004Dh
        ld      a,02h
        jp      L9B87

        ; Referenced from 9C3B
L9C52:  cp      01h
        jr      nz,L9C5B
        ld      a,01h
        jp      L9B87

        ; Referenced from 9C54
L9C5B:  xor     a
        ld      (iy+04h),a
        ld      (iy+08h),a
        ld      (iy+0Ah),a
        jp      L9B87

        ; Referenced from 9BA4, 9BC6, 9BF7, 9BFC, 9BE2, 9BEE, 9C13, 9C32
L9C68:  ld      a,(iy+04h)
        cp      06h
        ret     z
        ld      bc,01E7h        ; address or value?
        call    LAFE8
        jr      nc,L9C82
        ld      bc,04ECh        ; address or value?
        call    LAFC5
        jr      nc,L9C82
        call    LB146
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
        call    LB146

        ; Referenced from 9C91, 9CAB, 9CAE
        ; --- START PROC L9CB3 ---
L9CB3:  ret

L9CB4:  DB      0BAh
        DB      9Ch
        DB      0CBh
        DB      9Ch
        DB      0DCh
        DB      9Ch
        DB      05h
        DB      03h
        DB      83h
        DB      81h
        DB      82h
        DB      81h
        DB      89h
        DB      83h
        DB      81h
        DB      86h
        DB      81h
        DB      89h
        DB      83h
        DB      81h
        DB      82h
        DB      81h
        DB      89h
        DB      05h
        DB      03h
        DB      83h
        DB      89h
        DB      8Bh
        DB      83h
        DB      89h
        DB      83h
        DB      87h
        DB      80h
        DB      8Ah
        DB      89h
        DB      83h
        DB      89h
        DB      85h
        DB      83h
        DB      89h
        DB      05h
        DB      03h
        DB      0B8h
        DB      8Bh
        DB      8Bh
        DB      8Bh
        DB      0B8h
        DB      0B5h
        DB      80h
        DB      80h
        DB      80h
        DB      0B1h
        DB      0B8h
        DB      85h
        DB      85h
        DB      85h
        DB      0B8h
        DB      03h
        DB      03h
        DB      0D0h
        DB      0D1h
        DB      0D2h
        DB      0D4h
        DB      0D5h
        DB      0D6h
        DB      80h
        DB      0B4h
        DB      80h

        ; Entry Point
        ; --- START PROC L9CF8 ---
L9CF8:  ld      a,(iy+04h)
        and     a
        jr      nz,L9D37
        call    LA08B
        ld      de,9E24h        ; address or value?
        call    LA0AD
        call    LA08B
        inc     hl
        ld      de,0FFE0h       ; address or value?
        add     hl,de
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      a,0B7h
        call    004Dh
        inc     (iy+04h)
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
        inc     (iy+04h)
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
        inc     (iy+04h)
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
        ld      a,0B7h
        call    004Dh
        ld      a,(iy+07h)
        ld      de,0020h        ; address or value?
        ld      b,a

        ; Referenced from 9D92
L9D83:  add     hl,de
        ld      a,0B2h
        call    004Dh
        dec     b
        jr      z,L9D94
        add     hl,de
        ld      a,0B6h
        call    004Dh
        djnz    L9D83

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
        ld      a,80h
        call    004Dh
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      a,0B7h
        call    004Dh
        ld      a,(iy+07h)
        ld      b,a
        and     a
        jr      nz,L9DD8
        ld      (iy+04h),01h
        ld      a,r
        and     3Fh             ; '?'
        add     a,40h           ; '@'
        ld      (iy+09h),a
        jr      L9DE9

        ; Referenced from 9DC7, 9DE7
L9DD8:  add     hl,de
        ld      a,0B2h
        call    004Dh
        dec     b
        jr      z,L9DE9
        add     hl,de
        ld      a,0B6h
        call    004Dh
        djnz    L9DD8

        ; Referenced from 9D3E, 9D44, 9D52, 9D67, 9D9E, 9DD6, 9D94, 9DDF
L9DE9:  ld      bc,12FAh        ; address or value?
        call    LAFE8
        jr      nc,L9DFC
        ld      bc,04ECh        ; address or value?
        call    LAFC5
        jr      nc,L9DFC
        jp      LB146

        ; Referenced from 9DEF, 9DF7
L9DFC:  ld      bc,0AFEh        ; address or value?
        call    LAFE8
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
        call    LB146

        ; Referenced from 9E02
        ; --- START PROC L9E23 ---
L9E23:  ret

L9E24:  DB      03h
        DB      02h
        DB      0B9h
        DB      0BAh
        DB      0BBh
        DB      0BDh
        DB      0BEh
        DB      0BFh

        ; Entry Point
        ; --- START PROC L9E2C ---
L9E2C:  ld      a,(iy+04h)
        and     a
        jr      nz,L9E4E
        inc     (iy+04h)
        call    LA08B
        ld      (iy+05h),l
        ld      (iy+06h),h
        ld      de,9F14h        ; address or value?
        call    LA0AD
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
        inc     (iy+04h)
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
        inc     (iy+04h)
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
L9E96:  ld      de,9F2Ah        ; address or value?
        call    LA0AD
        jr      L9EE5

        ; Referenced from 9E5C
L9E9E:  cp      03h
        jr      nz,L9EAC
        dec     (iy+09h)
        jr      nz,L9EE5
        inc     (iy+04h)
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
        ld      (iy+04h),01h
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

        ; Referenced from 9EDD
L9EDC:  add     hl,de
        djnz    L9EDC

        ; Referenced from 9ED7
L9EDF:  ld      de,9F14h        ; address or value?
        call    LA0AD

        ; Referenced from 9E65, 9E8C, 9EA5, 9EAA, 9E9C, 9EB3
L9EE5:  ld      bc,0AE6h        ; address or value?
        call    LAFE8
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
L9F09:  call    LB146
        ld      (ix+1Ah),00h
        call    LB146

        ; Referenced from 9EEB, 9F07
        ; --- START PROC L9F13 ---
L9F13:  ret

L9F14:  DB      04h
        DB      05h
        DB      80h
        DB      80h
        DB      0DAh
        DB      0DBh
        DB      80h
        DB      80h
        DB      0DEh
        DB      0DFh
        DB      80h
        DB      0E1h
        DB      0E2h
        DB      0E3h
        DB      0E4h
        DB      0E5h
        DB      0E6h
        DB      0E7h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      04h
        DB      05h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      80h
        DB      0DAh
        DB      0DBh
        DB      80h
        DB      80h
        DB      0DEh
        DB      0DFh
        DB      80h
        DB      0E1h
        DB      0E2h
        DB      0E3h
        DB      0E4h
        DB      0E5h
        DB      0E6h
        DB      0E7h

        ; Entry Point
        ; --- START PROC L9F40 ---
L9F40:  ld      a,(0E1B0h)
        and     a
        ret     z
        ld      a,(iy+04h)
        and     a
        jr      nz,L9F65
        inc     (iy+04h)
        xor     a
        ld      (iy+08h),a
        call    LA08B
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
        inc     (iy+04h)
        ld      (iy+07h),00h
        inc     (iy+08h)
        ld      l,(iy+05h)
        ld      h,(iy+06h)
        ld      de,0A078h       ; address or value?
        call    LA0AD
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
        ld      de,0A078h       ; address or value?
        call    LA0AD
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
        ld      (iy+04h),01h
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
LA010:  ld      de,0A07Ch       ; address or value?
        call    LA0AD

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
LA03D:  call    LB146

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

LA078:  DB      02h
        DB      01h
        DB      0B0h
        DB      0B1h
        DB      02h
        DB      01h
        DB      80h
        DB      80h


        ; Referenced from 971C, 98A2, 99A9, 9A99, 9767, 9A7D, 9985
        ; --- START PROC LA080 ---
LA080:  push    iy
        pop     hl
        ld      b,10h

        ; Referenced from A088
LA085:  ld      (hl),00h
        inc     hl
        djnz    LA085
        ret

        ; Referenced from 98A8, 99AF, 9A9F, 9B34, 9CFE, 9D07, 9E35, 9F52, 9507, 9729
        ; --- START PROC LA08B ---
LA08B:  ld      a,(iy+00h)
        srl     a
        srl     a
        srl     a
        ld      b,a
        ld      hl,1800h        ; address or value?
        ld      de,0020h        ; address or value?

        ; Referenced from A09C
LA09B:  add     hl,de
        djnz    LA09B
        ld      a,(iy+01h)
        srl     a
        srl     a
        srl     a
        add     a,l
        jr      nc,LA0AB
        inc     h

        ; Referenced from A0A8
LA0AB:  ld      l,a
        ret

        ; Referenced from 9B51, 9D04, 9E41, 9761, 9735, 9F80, 953E, 9B83, 9FAE, 955B, 9B99, 9E99, 9578, 9EE2, A013, 9596
        ; --- START PROC LA0AD ---
LA0AD:  ld      (0E1A0h),hl
        ld      a,(de)
        ld      (0E1A2h),a
        inc     de
        ld      a,(de)
        ld      b,a
        inc     de

        ; Referenced from A0D4
LA0B8:  ld      a,(0E1A2h)
        ld      c,a
        ld      hl,(0E1A0h)

        ; Referenced from A0C6
LA0BF:  ld      a,(de)
        call    004Dh
        inc     de
        inc     hl
        dec     c
        jr      nz,LA0BF
        ld      hl,(0E1A0h)
        push    de
        ld      de,0020h        ; address or value?
        add     hl,de
        ld      (0E1A0h),hl
        pop     de
        djnz    LA0B8
        ret

LA0D7:  DB      19h
        DB      0A1h
        DB      19h
        DB      0A1h
        DB      1Eh
        DB      0A1h
        DB      23h             ; '#'
        DB      0A1h
        DB      28h             ; '('
        DB      0A1h
        DB      2Dh             ; '-'
        DB      0A1h
        DB      32h             ; '2'
        DB      0A1h
        DB      37h             ; '7'
        DB      0A1h
        DB      3Ch             ; '<'
        DB      0A1h
        DB      41h             ; 'A'
        DB      0A1h
        DB      46h             ; 'F'
        DB      0A1h
        DB      4Bh             ; 'K'
        DB      0A1h
        DB      50h             ; 'P'
        DB      0A1h
        DB      55h             ; 'U'
        DB      0A1h
        DB      5Ah             ; 'Z'
        DB      0A1h
        DB      5Fh             ; '_'
        DB      0A1h
        DB      64h             ; 'd'
        DB      0A1h
        DB      69h             ; 'i'
        DB      0A1h
        DB      6Eh             ; 'n'
        DB      0A1h
        DB      73h             ; 's'
        DB      0A1h
        DB      78h             ; 'x'
        DB      0A1h
        DB      7Dh             ; '}'
        DB      0A1h
        DB      82h
        DB      0A1h
        DB      87h
        DB      0A1h
        DB      8Ch
        DB      0A1h
        DB      91h
        DB      0A1h
        DB      96h
        DB      0A1h
        DB      9Bh
        DB      0A1h
        DB      0A0h
        DB      0A1h
        DB      0A5h
        DB      0A1h
        DB      0AAh
        DB      0A1h
        DB      0AFh
        DB      0A1h
        DB      0B4h
        DB      0A1h
        DB      00h
        DB      04h
        DB      02h
        DB      88h
        DB      0ECh
        DB      00h
        DB      06h
        DB      01h
        DB      60h             ; '`'
        DB      0ECh
        DB      01h
        DB      01h
        DB      01h
        DB      20h             ; ' '
        DB      0C4h
        DB      01h
        DB      01h
        DB      06h
        DB      40h             ; '@'
        DB      0ECh
        DB      01h
        DB      01h
        DB      08h
        DB      88h
        DB      0CCh
        DB      01h
        DB      01h
        DB      09h
        DB      88h
        DB      0Ch
        DB      02h
        DB      03h
        DB      03h
        DB      88h
        DB      24h             ; '$'
        DB      02h
        DB      03h
        DB      03h
        DB      88h
        DB      0ACh
        DB      02h
        DB      03h
        DB      02h
        DB      58h             ; 'X'
        DB      94h
        DB      02h
        DB      03h
        DB      05h
        DB      58h             ; 'X'
        DB      34h             ; '4'
        DB      02h
        DB      04h
        DB      03h
        DB      88h
        DB      74h             ; 't'
        DB      02h
        DB      04h
        DB      03h
        DB      88h
        DB      0CCh
        DB      02h
        DB      01h
        DB      03h
        DB      88h
        DB      0Ch
        DB      03h
        DB      02h
        DB      01h
        DB      28h             ; '('
        DB      0E4h
        DB      03h
        DB      02h
        DB      04h
        DB      88h
        DB      1Ch
        DB      03h
        DB      03h
        DB      04h
        DB      68h             ; 'h'
        DB      7Ch             ; '|'
        DB      03h
        DB      05h
        DB      04h
        DB      60h             ; '`'
        DB      7Ch             ; '|'
        DB      03h
        DB      07h
        DB      04h
        DB      58h             ; 'X'
        DB      74h             ; 't'
        DB      03h
        DB      08h
        DB      04h
        DB      18h
        DB      54h             ; 'T'
        DB      03h
        DB      08h
        DB      02h
        DB      80h
        DB      64h             ; 'd'
        DB      04h
        DB      02h
        DB      02h
        DB      40h             ; '@'
        DB      0A4h
        DB      04h
        DB      03h
        DB      03h
        DB      68h             ; 'h'
        DB      94h
        DB      04h
        DB      08h
        DB      01h
        DB      60h             ; '`'
        DB      0D4h
        DB      04h
        DB      08h
        DB      03h
        DB      70h             ; 'p'
        DB      0CCh
        DB      04h
        DB      08h
        DB      06h
        DB      40h             ; '@'
        DB      94h
        DB      04h
        DB      04h
        DB      01h
        DB      60h             ; '`'
        DB      0B4h
        DB      04h
        DB      04h
        DB      03h
        DB      88h
        DB      24h             ; '$'
        DB      05h
        DB      01h
        DB      01h
        DB      88h
        DB      0Ch
        DB      05h
        DB      02h
        DB      01h
        DB      88h
        DB      0Ch
        DB      05h
        DB      03h
        DB      01h
        DB      88h
        DB      0Ch
        DB      05h
        DB      04h
        DB      01h
        DB      88h
        DB      0Ch
        DB      05h
        DB      05h
        DB      01h
        DB      88h
        DB      0Ch


        ; Referenced from AE3F, 8106
        ; --- START PROC LA1B9 ---
LA1B9:  ld      a,(0E1B1h)
        and     a
        jr      z,LA1BF

        ; Referenced from A1BD
LA1BF:  ld      iy,0E340h       ; address or value?
        ld      b,0Ch

        ; Referenced from A1D2
LA1C5:  push    bc
        ld      a,(iy+04h)
        and     a
        jr      nz,LA1D5

        ; Referenced from A1D8
LA1CC:  ld      de,0010h        ; address or value?
        add     iy,de
        pop     bc
        djnz    LA1C5
        ret

        ; Referenced from A1CA
LA1D5:  call    LA1DA
        jr      LA1CC

        ; Referenced from A1D5
        ; --- START PROC LA1DA ---
LA1DA:  ld      hl,0A1E8h       ; address or value?
        add     a,a
        add     a,l
        jr      nc,LA1E2
        inc     h

        ; Referenced from A1DF
LA1E2:  ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ex      de,hl
        jp      (hl)

LA1E8:  DB      78h             ; 'x'
        DB      0A2h
        DB      78h             ; 'x'
        DB      0A2h
        DB      78h             ; 'x'
        DB      0A2h
        DB      44h             ; 'D'
        DB      0A4h
        DB      44h             ; 'D'
        DB      0A4h
        DB      0C3h
        DB      0A4h
        DB      0EAh
        DB      0A5h
        DB      0EBh
        DB      0A5h
        DB      0EBh
        DB      0A5h
        DB      0B7h
        DB      0A6h
        DB      77h             ; 'w'
        DB      0A7h
        DB      78h             ; 'x'
        DB      0A7h
        DB      53h             ; 'S'
        DB      0A8h
        DB      49h             ; 'I'
        DB      0AAh
        DB      53h             ; 'S'
        DB      0A8h
        DB      53h             ; 'S'
        DB      0A8h
        DB      0B8h
        DB      0ABh
        DB      0C6h
        DB      0ACh
        DB      0B8h
        DB      0ABh
        DB      6Fh             ; 'o'
        DB      0ADh
        DB      53h             ; 'S'
        DB      0A8h
        DB      9Ah
        DB      0AAh
        DB      9Ah
        DB      0AAh


        ; Referenced from A282, A4C9, A5F1, A6BD
        ; --- START PROC LA216 ---
LA216:  ld      (iy+03h),0Fh
        ld      a,(0E012h)
        and     08h
        rrca
        add     a,38h           ; '8'
        ld      (iy+02h),a
        inc     (iy+06h)
        ld      a,(iy+06h)
        ret

        ; Referenced from A27D, A47E, A6D5, A65A, A986
        ; --- START PROC LA22C ---
LA22C:  ld      a,(0E012h)
        and     04h
        add     a,38h           ; '8'
        ld      (iy+02h),a
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
        cp      40h             ; '@'
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
        ld      (iy+02h),a
        ld      a,(iy+04h)
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
        call    LAFF0
        jp      nc,LA422
        ld      bc,08F8h        ; address or value?
        call    LAFF8
        jp      nc,LA422
        call    L8670
        ld      a,(iy+04h)
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
        call    LB3AF
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
        ld      (iy+04h),a
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
        call    LAFC5
        ret     nc
        ld      bc,09F7h        ; address or value?
        call    LAFE8
        ret     nc
        call    LB146
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
        ld      a,(iy+04h)
        cp      03h
        jr      nz,LA457
        ld      (iy+03h),05h
        jr      LA45B

        ; Referenced from A44F
LA457:  ld      (iy+03h),09h

        ; Referenced from A455
LA45B:  ld      (iy+02h),4Ch    ; 'L'
        ld      a,(iy+04h)
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
        ld      (iy+02h),a
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
        ld      (iy+02h),88h
        ld      (iy+12h),8Ch
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
        ld      (iy+02h),a
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
        ld      (iy+02h),88h
        ld      (iy+12h),8Ch
        jr      LA59B

        ; Referenced from A587
LA593:  ld      (iy+02h),9Ch
        ld      (iy+12h),0A0h

        ; Referenced from A591
LA59B:  ld      bc,04FCh        ; address or value?
        call    LAFE8
        jr      nc,LA5AE
        ld      bc,08E8h        ; address or value?
        call    LAFC5
        jr      nc,LA5AE
        call    LB146

        ; Referenced from A5A1, A5A9
LA5AE:  ld      bc,04FCh        ; address or value?
        call    LAFF8
        jr      nc,LA5E9
        ld      bc,08E8h        ; address or value?
        call    LAFF0
        jr      nc,LA5E9
        call    L8670
        inc     (iy+0Ah)
        ld      a,(iy+0Ah)
        cp      05h
        jr      c,LA5E9
        ld      a,50h           ; 'P'
        call    LB3AF
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
        ld      a,(iy+04h)
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
        ld      hl,8F91h        ; address or value?
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
        ld      hl,8F91h        ; address or value?
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
        ld      a,(iy+04h)
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
        ld      (iy+02h),a
        ld      (iy+03h),04h
        jp      LA340

        ; Entry Point
        ; --- START PROC LA777 ---
LA777:  ret

        ; Entry Point
        ; --- START PROC LA778 ---
LA778:  ld      a,(0E047h)
        and     a
        ret     z
        ld      a,(0E049h)
        and     a
        ret     z
        ld      a,(0E048h)
        and     a
        ret     z
        ld      a,(0E04Ah)
        cp      02h
        ret     nz
        ld      a,(iy+05h)
        and     a
        jr      nz,LA7BC
        ld      (iy+00h),80h
        ld      (iy+01h),10h
        ld      (iy+10h),80h
        ld      (iy+11h),10h
        ld      (iy+02h),0F8h
        ld      (iy+12h),0FCh
        ld      (iy+03h),09h
        ld      (iy+13h),0Bh
        inc     (iy+05h)
        ld      a,02h
        ld      (0E047h),a
        ret

        ; Referenced from A791
LA7BC:  ld      a,(iy+01h)
        cp      0B8h
        jr      nc,LA7C9
        inc     (iy+01h)
        inc     (iy+11h)

        ; Referenced from A7C1
LA7C9:  ld      a,(0E012h)
        and     08h
        add     a,0E8h
        ld      (iy+02h),a
        add     a,04h
        ld      (iy+12h),a
        ld      a,(ix+00h)
        cp      80h
        ret     nz
        ld      a,(ix+01h)
        ld      b,(iy+01h)
        sub     b
        cp      0Ch
        ret     nc
        inc     (iy+05h)
        ld      (iy+02h),0F8h
        ld      (iy+12h),0FCh
        ld      (ix+02h),14h
        ld      (ix+12h),74h    ; 't'
        ld      de,18C8h        ; address or value?
        ld      hl,0A839h       ; address or value?
        ld      bc,000Dh        ; address or value?
        call    005Ch
        ld      de,18E8h        ; address or value?
        ld      hl,0A846h       ; address or value?
        ld      bc,000Dh        ; address or value?
        call    005Ch
        ld      de,192Eh        ; address or value?
        ld      hl,0A839h       ; address or value?
        ld      bc,000Dh        ; address or value?
        call    005Ch
        ld      de,194Eh        ; address or value?
        ld      hl,0A846h       ; address or value?
        ld      bc,000Dh        ; address or value?
        call    005Ch
        ld      a,03h
        call    LB777
        call    LB43F
        ld      a,02h
        ld      (0E186h),a
        ret

LA839:  DB      "<=>vw"
        DB      90h
        DB      95h
        DB      0A0h
        DB      80h
        DB      0CBh
        DB      0D3h
        DB      80h
        DB      0D9h
        DB      3Fh             ; '?'
        DB      40h             ; '@'
        DB      47h             ; 'G'
        DB      91h
        DB      94h
        DB      80h
        DB      0B3h
        DB      0BCh
        DB      0C1h
        DB      0D7h
        DB      0D8h
        DB      80h
        DB      0DCh

        ; Entry Point
        ; --- START PROC LA853 ---
LA853:  ld      a,(iy+05h)
        and     a
        jp      nz,LA8E4
        ld      a,(iy+01h)
        and     a
        jr      nz,LA8A6
        inc     (iy+06h)
        ld      a,(iy+06h)
        cp      60h             ; '`'
        ret     c
        ld      (iy+06h),00h
        ld      a,(ix+01h)
        cp      80h
        jr      c,LA88D
        ld      (iy+01h),01h
        ld      (iy+07h),00h
        ld      (iy+08h),20h    ; ' '
        ld      (iy+09h),0D4h
        ld      (iy+03h),0Fh
        inc     (iy+05h)
        jr      LA8BE

        ; Referenced from A872
LA88D:  ld      (iy+01h),0FCh
        ld      (iy+07h),0FFh
        ld      (iy+08h),20h    ; ' '
        ld      (iy+09h),0DCh
        ld      (iy+03h),0Fh
        inc     (iy+05h)
        jr      LA8BE

        ; Referenced from A85E
LA8A6:  ld      (iy+03h),0Fh
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+08h),a
        ld      (iy+09h),0D4h
        inc     (iy+05h)
        ld      (iy+03h),0Fh

        ; Referenced from A88B, A8A4
LA8BE:  ld      a,(0E009h)
        and     a
        jr      z,LA8CE
        cp      01h
        jr      z,LA8D5
        ld      (iy+03h),09h
        jr      LA8DF

        ; Referenced from A8C2
LA8CE:  ld      a,(0E00Ah)
        cp      04h
        jr      nz,LA8E3

        ; Referenced from A8C6
LA8D5:  ld      a,r
        bit     2,a
        jr      nz,LA8E3
        ld      (iy+03h),05h

        ; Referenced from A8CC
LA8DF:  ld      (iy+0Ch),01h

        ; Referenced from A8D3, A8D9
LA8E3:  ret

        ; Referenced from A857
LA8E4:  cp      01h
        jp      nz,LA982

        ; Referenced from A9DF, A9EA, A999, A9D3, A9AF
        ; --- START PROC LA8E9 ---
LA8E9:  dec     (iy+08h)
        jr      nz,LA92B
        ld      a,r
        and     3Fh             ; '?'
        add     a,10h
        ld      (iy+08h),a
        ld      a,(iy+14h)
        and     a
        jr      nz,LA92B
        ld      a,r
        bit     2,a
        jr      nz,LA923
        ld      a,(iy+07h)
        ld      (iy+15h),a
        ld      a,(iy+00h)
        sub     08h
        ld      (iy+10h),a
        ld      a,(iy+01h)
        ld      (iy+11h),a
        ld      (iy+12h),0A4h
        ld      (iy+13h),09h
        ld      (iy+14h),0Dh

        ; Referenced from A901
LA923:  ld      a,r
        bit     3,a
        jr      nz,LA978
        jr      LA94F

        ; Referenced from A8EC, A8FB
LA92B:  ld      a,(iy+07h)
        and     a
        jr      nz,LA95A
        ld      a,(iy+01h)
        cp      0F0h
        jr      nc,LA943
        call    LA271
        jr      nc,LA943
        inc     (iy+01h)
        jp      LA9ED

        ; Referenced from A936, A93B
LA943:  ld      a,(iy+05h)
        cp      05h
        jp      z,LA9ED
        ld      (iy+08h),20h    ; ' '

        ; Referenced from A929
LA94F:  ld      (iy+07h),0FFh
        ld      (iy+09h),0DCh
        jp      LA9ED

        ; Referenced from A92F
LA95A:  ld      a,(iy+01h)
        cp      04h
        jr      c,LA96C
        call    LA23D
        jr      nc,LA96C
        dec     (iy+01h)
        jp      LA9ED

        ; Referenced from A95F, A964
LA96C:  ld      a,(iy+05h)
        cp      05h
        jp      z,LA9ED
        ld      (iy+08h),20h    ; ' '

        ; Referenced from A927
LA978:  ld      (iy+07h),00h
        ld      (iy+09h),0D4h
        jr      LA9ED

        ; Referenced from A8E6
LA982:  cp      02h
        jr      nz,LA989
        jp      LA22C

        ; Referenced from A984
LA989:  ld      a,(iy+0Dh)
        and     a
        jr      nz,LA9B2
        ld      a,(iy+0Eh)
        cp      10h
        jr      c,LA99C
        inc     (iy+0Dh)
        jp      LA8E9

        ; Referenced from A994
LA99C:  ld      hl,8F91h        ; address or value?
        add     a,l
        jr      nc,LA9A3
        inc     h

        ; Referenced from A9A0
LA9A3:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        sub     b
        ld      (iy+00h),a
        inc     (iy+0Eh)
        jp      LA8E9

        ; Referenced from A98D
LA9B2:  dec     (iy+0Eh)
        ld      a,(iy+0Eh)
        and     a
        jr      nz,LA9C3
        ld      (iy+05h),01h
        ld      (iy+0Dh),00h

        ; Referenced from A9B9
LA9C3:  ld      hl,8F91h        ; address or value?
        add     a,l
        jr      nc,LA9CA
        inc     h

        ; Referenced from A9C7
LA9CA:  ld      l,a
        ld      b,(hl)
        ld      a,(iy+00h)
        add     a,b
        ld      (iy+00h),a
        jp      LA8E9

        ; Entry Point
        ; --- START PROC LA9D6 ---
LA9D6:  inc     (iy+00h)
        inc     (iy+00h)
        dec     (iy+0Eh)
        jp      nz,LA8E9
        ld      (iy+05h),01h
        ld      (iy+0Dh),00h
        jp      LA8E9

        ; Referenced from A940, A980, A957, A969, A948, A971
        ; --- START PROC LA9ED ---
LA9ED:  ld      a,(0E012h)
        and     08h
        rrca
        ld      b,(iy+09h)
        add     a,b
        ld      (iy+02h),a
        ld      bc,08F8h        ; address or value?
        call    LAFE8
        jr      nc,LAA0D
        ld      bc,0CF4h        ; address or value?
        call    LAFC5
        jr      nc,LAA0D
        call    LB146

        ; Referenced from AA00, AA08
LAA0D:  ld      bc,0CF4h        ; address or value?
        call    LAFF0
        jr      nc,LAA48
        ld      a,(iy+0Ch)
        and     a
        jr      z,LAA2E
        ld      bc,34CCh        ; address or value?
        call    LAFF8
        jr      nc,LAA2E
        ld      a,(iy+05h)
        cp      01h
        jr      nz,LAA2E
        ld      (iy+05h),05h

        ; Referenced from AA19, AA21, AA28
LAA2E:  ld      bc,08F8h        ; address or value?
        call    LAFF8
        jr      nc,LAA48
        ld      (iy+05h),02h
        ld      a,30h           ; '0'
        call    LB3AF
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
        call    LAFE8
        jr      nc,LAA83
        ld      bc,06F6h        ; address or value?
        call    LAFC5
        jr      nc,LAA83
        call    LB146
        jp      LAFB6

        ; Referenced from AA73, AA7B
LAA83:  ld      bc,04FCh        ; address or value?
        call    LAFF8
        jr      nc,LAA99
        ld      bc,07F6h        ; address or value?
        call    LAFF0
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
LAADB:  ld      a,(iy+04h)
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
LAAF6:  ld      a,(iy+04h)
        cp      15h
        jr      nz,LAB03
        ld      (iy+03h),09h
        jr      LAB07

        ; Referenced from AAFB
LAB03:  ld      (iy+03h),05h

        ; Referenced from AAE6, AB01, AAEC
LAB07:  ld      a,(iy+04h)
        cp      15h
        jr      nz,LAB18
        ld      (iy+01h),0D8h
        ld      (iy+11h),0D8h
        jr      LAB20

        ; Referenced from AB0C
LAB18:  ld      (iy+01h),28h    ; '('
        ld      (iy+11h),28h    ; '('

        ; Referenced from AB16
LAB20:  ld      (iy+02h),0ACh
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
        call    LAFF8
        jr      nc,LABB7
        ld      bc,08E8h        ; address or value?
        call    LAFF0
        jr      nc,LABB7
        call    L8670
        ld      a,(0E1B2h)
        inc     a
        ld      (0E1B2h),a
        ld      a,20h           ; ' '
        call    LB3AF
        ld      a,02h
        call    LB758
        call    L853D
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
        ld      (iy+02h),a
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
LABDE:  ld      a,(iy+04h)
        cp      10h
        jr      nz,LABF5
        ld      (iy+00h),64h    ; 'd'
        ld      (iy+02h),0E4h
        ld      (iy+03h),0Bh
        inc     (iy+05h)
        ret

        ; Referenced from ABE3
LABF5:  ld      (iy+00h),64h    ; 'd'
        ld      (iy+02h),40h    ; '@'
        ld      (iy+03h),09h
        inc     (iy+05h)
        ret

        ; Referenced from ABBC
LAC05:  cp      01h
        jr      nz,LAC72
        ld      a,(ix+01h)
        cp      90h
        jp      nc,LAC89
        ld      a,(iy+04h)
        cp      10h
        jr      nz,LAC1C
        ld      (iy+02h),0B8h

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
LAC89:  ld      a,(iy+04h)
        cp      10h
        jr      nz,LAC94
        ld      (iy+02h),0A8h

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
        ld      (iy+02h),3Ch    ; '<'
        jr      LACF1

        ; Referenced from ACE5
LACED:  ld      (iy+02h),38h    ; '8'

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
        ld      (iy+02h),40h    ; '@'
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
        ld      a,(0E186h)
        cp      00h
        jr      z,LADF7
        ld      a,(0E00Ah)
        inc     a
        ld      (0E00Ah),a
        cp      05h
        jr      c,LADF7
        xor     a
        ld      (0E00Ah),a
        ld      a,(0E009h)
        inc     a
        ld      (0E009h),a

        ; Referenced from ADDF, ADEA
LADF7:  ld      a,(0E183h)
        cp      01h
        jr      nz,LAE20
        ld      a,(0E0A8h)
        dec     a
        ld      (0E0A8h),a
        ld      hl,1801h        ; address or value?
        ld      b,07h
        ld      a,80h

        ; Referenced from AE10
LAE0C:  call    004Dh
        inc     hl
        djnz    LAE0C
        ld      hl,1821h        ; address or value?
        ld      b,07h

        ; Referenced from AE1B
LAE17:  call    004Dh
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
        call    LB777
        xor     a
        ld      (0E012h),a

        ; Referenced from AE39, AE71
LAE34:  ld      a,(0E011h)
        cp      01h
        jr      c,LAE34
        xor     a
        ld      (0E011h),a
        call    LA1B9
        call    LB000
        call    LB38A
        ld      a,(0E013h)
        and     04h
        and     a
        jr      nz,LAE5A
        ld      (ix+02h),20h    ; ' '
        ld      (ix+12h),80h
        jr      LAE62

        ; Referenced from AE4E
LAE5A:  ld      (ix+02h),5Ch    ; '\'
        ld      (ix+12h),0BCh

        ; Referenced from AE58
LAE62:  ld      a,(0E014h)
        and     08h
        add     a,07h
        ld      (ix+03h),a
        ld      a,(0E012h)
        cp      40h             ; '@'
        jr      c,LAE34
        call    LB379

        ; Referenced from AE7B
LAE76:  ld      a,(0E012h)
        cp      43h             ; 'C'
        jr      c,LAE76
        ld      a,(0E183h)
        cp      01h
        jr      nz,LAE8E
        ld      a,(0E0A8h)
        and     a
        jp      z,LAF20
        jp      LAEE1

        ; Referenced from AE82
LAE8E:  call    LB186
        call    LB2B2
        ld      de,18C7h        ; address or value?
        ld      hl,0AF4Dh       ; address or value?
        ld      bc,0013h        ; address or value?
        call    005Ch
        ld      de,1907h        ; address or value?
        ld      hl,0AF60h       ; address or value?
        ld      bc,0013h        ; address or value?
        call    005Ch
        xor     a
        ld      (0E010h),a
        ld      (0E1A0h),a
        ld      (0E020h),a
        ld      (0E022h),a
        ld      a,06h
        call    LB777

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
LAECE:  ld      a,(0E0A8h)
        cp      01h
        jr      z,LAEE1
        dec     a
        ld      (0E0A8h),a
        ld      a,(0E0A8h)
        sla     a
        ld      (0E0A9h),a

        ; Referenced from AF92, AFA0, AE8B, AED3
        ; --- START PROC LAEE1 ---
LAEE1:  ld      a,(0E00Ah)
        cp      02h
        jr      nc,LAEF3
        ld      a,01h
        ld      (0E0A1h),a
        ld      (0E0A2h),a
        jp      L800D

        ; Referenced from AEE6
LAEF3:  cp      02h
        jr      nz,LAF04
        ld      a,01h
        ld      (0E0A1h),a
        ld      a,03h
        ld      (0E0A2h),a
        jp      L800D

        ; Referenced from AEF5
LAF04:  cp      03h
        jr      nz,LAF13
        xor     a
        ld      (0E0A1h),a
        inc     a
        ld      (0E0A2h),a
        jp      L800D

        ; Referenced from AF06
LAF13:  ld      a,02h
        ld      (0E0A2h),a
        ld      a,01h
        ld      (0E0A1h),a
        jp      L800D

        ; Referenced from AE88, AECC
LAF20:  call    LB40D
        call    LB397
        call    LB178
        ld      de,194Ch        ; address or value?
        ld      hl,5714h        ; address or value?
        ld      bc,0009h        ; address or value?
        call    005Ch
        ld      a,01h
        call    LB777
        call    LB43F
        xor     a
        ld      (0E028h),a
        ld      (0E000h),a
        ld      (0E026h),a
        ld      (0E0AAh),a
        jp      L7EE3

LAF4D:  DB      13h
        DB      1Fh
        DB      1Eh
        DB      24h             ; '$'
        DB      19h
        DB      1Eh
        DB      25h             ; '%'
        DB      15h
        DB      10h
        DB      20h             ; ' '
        DB      25h             ; '%'
        DB      23h             ; '#'
        DB      18h
        DB      10h
        DB      24h             ; '$'
        DB      22h             ; '"'
        DB      19h
        DB      17h
        DB      01h
        DB      15h
        DB      1Eh
        DB      14h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      20h             ; ' '
        DB      25h             ; '%'
        DB      23h             ; '#'
        DB      18h
        DB      10h
        DB      24h             ; '$'
        DB      22h             ; '"'
        DB      19h
        DB      17h
        DB      02h


        ; Referenced from 80BD
        ; --- START PROC LAF73 ---
LAF73:  call    LB186
        call    LB2B2
        xor     a
        ld      (0E011h),a
        ld      (0E0AAh),a
        ld      a,(0E0A8h)
        sla     a
        ld      (0E0A9h),a
        call    LB397
        ld      hl,0E00Ah       ; address or value?
        inc     (hl)
        ld      a,(hl)
        cp      05h
        jp      c,LAEE1
        xor     a
        ld      (0E00Ah),a
        ld      a,(0E009h)
        inc     a
        ld      (0E009h),a
        jp      LAEE1

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

        ; Referenced from 97EE, 94E2, 94D2, 9744, 9A21, 9901, 9DF4, AA78, A425, A5A6, AA05, 9C79
        ; --- START PROC LAFC5 ---
LAFC5:  ld      a,(ix+04h)
        and     a
        jr      nz,LAFDA
        ld      a,(iy+00h)
        sub     (ix+00h)

        ; Referenced from AFEE, AFFE, AFF6
        ; --- START PROC LAFD1 ---
LAFD1:  cp      b
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
LAFDA:  ld      a,(iy+00h)
        sub     (ix+00h)
        cp      b
        ret     c
        cp      0FCh
        jr      c,LAFD8
        scf
        ret

        ; Referenced from 94AD, 97E6, 94EA, 974C, 9A19, 98F8, 9DEC, AA70, 9DFF, 9EE8, A42C, A59E, A9FD, 9C71
        ; --- START PROC LAFE8 ---
LAFE8:  ld      a,(iy+01h)
        sub     (ix+01h)
        jr      LAFD1

        ; Referenced from 9AC2, A343, A5B9, AA10, AA8E, AB5B
        ; --- START PROC LAFF0 ---
LAFF0:  ld      a,(iy+00h)
        sub     (ix+20h)
        jr      LAFD1

        ; Referenced from 9ABA, A34C, A5B1, AA1E, AA31, AA86, AB53
        ; --- START PROC LAFF8 ---
LAFF8:  ld      a,(iy+01h)
        sub     (ix+21h)
        jr      LAFD1

        ; Referenced from 9608, 962F, 96BC, 96FC, B44A, B1BC, B193, AE42, 8112, 8FF0
        ; --- START PROC LB000 ---
LB000:  ld      hl,0E300h       ; address or value?
        ld      de,0E100h       ; address or value?
        ld      b,10h

        ; Referenced from B013, B387
        ; --- START PROC LB008 ---
LB008:  push    bc
        ld      bc,0004h        ; address or value?
        ldir
        ld      bc,000Ch        ; address or value?
        add     hl,bc
        pop     bc
        djnz    LB008
        ret

        ; Referenced from 7EE6, 802B
        ; --- START PROC LB016 ---
LB016:  call    0041h
        call    LB2E4

        ; Referenced from 8033
        ; --- START PROC LB01C ---
LB01C:  call    LB178
        xor     a
        ld      (0E026h),a
        ld      (0E020h),a
        ld      (0E022h),a
        ld      (0E024h),a
        ld      (0E180h),a

        ; Referenced from 9655, 8FDC
        ; --- START PROC LB02F ---
LB02F:  ld      de,0180h        ; address or value?
        call    LB301
        ld      de,0980h        ; address or value?
        call    LB301
        ld      de,1180h        ; address or value?
        call    LB301
        ld      de,2180h        ; address or value?
        call    LB30A
        ld      de,2980h        ; address or value?
        call    LB30A
        ld      de,3180h        ; address or value?
        call    LB30A
        jp      LB36D

        ; Referenced from 802E
        ; --- START PROC LB056 ---
LB056:  ld      de,1811h        ; address or value?
        ld      hl,5705h        ; address or value?
        ld      bc,000Fh        ; address or value?
        call    005Ch
        ld      de,1833h        ; address or value?
        ld      hl,5707h        ; address or value?
        ld      bc,000Dh        ; address or value?
        call    005Ch
        ld      hl,1AC0h        ; address or value?
        ld      bc,0020h        ; address or value?
        ld      a,60h           ; '`'
        call    0056h
        ret

        ; Referenced from B13D, 9A7A, 8056, AE1D
        ; --- START PROC LB07A ---
LB07A:  ld      hl,1801h        ; address or value?
        ld      bc,0007h        ; address or value?
        ld      a,10h
        call    0056h
        ld      hl,1821h        ; address or value?
        ld      bc,0007h        ; address or value?
        call    0056h
        ld      a,(0E0A8h)
        and     a
        ret     z
        ld      b,a
        ld      hl,1801h        ; address or value?
        ld      a,62h           ; 'b'

        ; Referenced from B09D
LB099:  call    004Dh
        inc     hl
        djnz    LB099
        ld      hl,1821h        ; address or value?
        ld      a,(0E0A8h)
        ld      b,a
        ld      a,61h           ; 'a'

        ; Referenced from B0AC
LB0A8:  call    004Dh
        inc     hl
        djnz    LB0A8

        ; Referenced from B10D, B12D
        ; --- START PROC LB0AE ---
LB0AE:  ld      a,(0E0A9h)
        and     a
        ret     z
        bit     0,a
        jr      nz,LB0D3
        srl     a
        ld      b,a
        push    bc
        ld      hl,1801h        ; address or value?
        ld      a,64h           ; 'd'

        ; Referenced from B0C4
LB0C0:  call    004Dh
        inc     hl
        djnz    LB0C0
        pop     bc
        ld      hl,1821h        ; address or value?
        ld      a,63h           ; 'c'

        ; Referenced from B0D0
LB0CC:  call    004Dh
        inc     hl
        djnz    LB0CC
        ret

        ; Referenced from B0B5
LB0D3:  srl     a
        and     a
        jr      nz,LB0E1
        ld      a,63h           ; 'c'
        ld      hl,1821h        ; address or value?
        call    004Dh
        ret

        ; Referenced from B0D6
LB0E1:  ld      b,a
        push    bc
        ld      hl,1801h        ; address or value?
        ld      a,64h           ; 'd'

        ; Referenced from B0EC
LB0E8:  call    004Dh
        inc     hl
        djnz    LB0E8
        pop     bc
        ld      hl,1821h        ; address or value?
        ld      a,63h           ; 'c'

        ; Referenced from B0F8
LB0F4:  call    004Dh
        inc     hl
        djnz    LB0F4
        call    004Dh
        ret

        ; Referenced from 9830, A367, 9A77, A3E7
        ; --- START PROC LB0FE ---
LB0FE:  ld      a,(0E0A8h)
        sla     a
        ld      b,a
        ld      a,(0E0A9h)
        cp      b
        ret     z
        ld      a,b
        ld      (0E0A9h),a
        call    LB0AE
        xor     a
        ld      (0E0AAh),a
        ld      a,03h
        call    LB764
        ret

        ; Referenced from 9A63, A385
        ; --- START PROC LB11A ---
LB11A:  ld      a,(0E0A9h)
        srl     a
        ld      b,a
        ld      a,(0E0A8h)
        cp      b
        ret     z
        ret     c
        ld      a,(0E0A9h)
        inc     a
        ld      (0E0A9h),a
        call    LB0AE
        ld      a,01h
        call    LB758
        ret

        ; Referenced from B15B
        ; --- START PROC LB136 ---
LB136:  ld      a,(0E0A9h)
        dec     a
        ld      (0E0A9h),a
        call    LB07A
        ld      a,07h
        call    LB758
        ret

        ; Referenced from 94DC, 9DF9, A03D, AA7D, 9E20, 9F09, 9F10, A430, A5AB, AA0A, 9C7E, 9CB0, 845C, 835A
        ; --- START PROC LB146 ---
LB146:  ld      a,(0E023h)
        and     a
        ret     nz
        ld      a,(ix+1Fh)
        and     a
        ret     nz
        ld      a,(ix+1Ah)
        and     a
        ret     nz
        ld      a,(0E0A9h)
        and     a
        jr      z,LB172
        call    LB136
        ld      (ix+1Ah),01h
        ld      a,05h
        call    LB758
        ld      a,(0E0A9h)
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
        ; --- START PROC LB178 ---
LB178:  ld      hl,0E100h       ; address or value?
        ld      bc,1000h        ; address or value?

        ; Referenced from B184
LB17E:  ld      (hl),00h
        inc     hl
        dec     bc
        ld      a,c
        or      b
        jr      nz,LB17E

        ; Referenced from AF73, AE8E
        ; --- START PROC LB186 ---
LB186:  ld      hl,0E300h       ; address or value?
        ld      de,0010h        ; address or value?
        ld      b,10h

        ; Referenced from B191
LB18E:  ld      (hl),0ECh
        add     hl,de
        djnz    LB18E
        call    LB000
        call    LB38A
        ret

        ; Referenced from 95C0, 8FE2
        ; --- START PROC LB19A ---
LB19A:  ld      hl,0E400h       ; address or value?
        ld      b,00h

        ; Referenced from B1A2
LB19F:  ld      (hl),00h
        inc     hl
        djnz    LB19F
        ret

        ; Referenced from 95BD, 8FE5, 843F, 84A7, 8398
        ; --- START PROC LB1A5 ---
LB1A5:  ld      hl,0E340h       ; address or value?
        ld      b,0C0h

        ; Referenced from B1AD
LB1AA:  ld      (hl),00h
        inc     hl
        djnz    LB1AA
        ld      hl,0E340h       ; address or value?
        ld      de,0010h        ; address or value?
        ld      b,0Ch

        ; Referenced from B1BA
LB1B7:  ld      (hl),0ECh
        add     hl,de
        djnz    LB1B7
        call    LB000
        call    LB38A
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
        ld      (0E010h),a

        ; Referenced from B200
LB1FB:  ld      a,(0E010h)
        cp      01h
        jr      c,LB1FB
        xor     a
        ld      (0E010h),a

        ; Referenced from B23C
LB206:  ld      hl,(0E1A4h)
        ld      de,(0E1A0h)
        ld      a,(de)
        call    004Dh
        ld      hl,(0E1A6h)
        ld      de,(0E1A2h)
        ld      a,(de)
        call    004Dh
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

        ; Referenced from 963F
        ; --- START PROC LB25D ---
LB25D:  ld      hl,1850h        ; address or value?
        ld      (0E1A0h),hl
        ld      b,10h
        ld      hl,184Fh        ; address or value?
        ld      (0E1A2h),hl
        ld      de,0020h        ; address or value?
        xor     a
        ld      (0E010h),a

        ; Referenced from B2AF
LB272:  ld      c,14h
        ld      hl,(0E1A0h)
        ld      de,(0E1A2h)

        ; Referenced from B280
LB27B:  ld      a,(0E010h)
        cp      01h
        jr      c,LB27B
        xor     a
        ld      (0E010h),a

        ; Referenced from B29D
LB286:  ld      a,80h
        call    004Dh
        ex      de,hl
        call    004Dh
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
        jr      nz,LB286
        ld      hl,(0E1A0h)
        inc     hl
        ld      (0E1A0h),hl
        ld      de,(0E1A2h)
        dec     de
        ld      (0E1A2h),de
        djnz    LB272
        ret

        ; Referenced from AF76, AE91
        ; --- START PROC LB2B2 ---
LB2B2:  ld      hl,1840h        ; address or value?
        ld      (0E1A0h),hl
        ld      b,20h           ; ' '
        xor     a
        ld      (0E010h),a
        ld      de,0020h        ; address or value?

        ; Referenced from B2E1
LB2C1:  ld      c,14h
        ld      hl,(0E1A0h)

        ; Referenced from B2CB
LB2C6:  ld      a,(0E010h)
        cp      02h
        jr      c,LB2C6
        xor     a
        ld      (0E010h),a

        ; Referenced from B2D8
LB2D1:  ld      a,80h
        call    004Dh
        add     hl,de
        dec     c
        jr      nz,LB2D1
        ld      hl,(0E1A0h)
        inc     hl
        ld      (0E1A0h),hl
        djnz    LB2C1
        ret

        ; Referenced from B019, B5FD
        ; --- START PROC LB2E4 ---
LB2E4:  ld      a,10h
        ld      hl,1800h        ; address or value?
        ld      bc,0300h        ; address or value?
        call    0056h
        ret

        ; Referenced from 7EB2
        ; --- START PROC LB2F0 ---
LB2F0:  push    bc
        ld      hl,1D3Fh        ; address or value?
        ld      bc,0180h        ; address or value?

        ; Referenced from B308, B311
        ; --- START PROC LB2F7 ---
LB2F7:  call    005Ch
        ld      bc,0800h        ; address or value?

        ; Referenced from B31D
        ; --- START PROC LB2FD ---
LB2FD:  add     hl,bc
        ex      de,hl
        pop     bc
        ret

        ; Referenced from B032, B038, B03E
        ; --- START PROC LB301 ---
LB301:  push    bc
        ld      hl,6000h        ; address or value?
        ld      bc,0680h        ; address or value?
        jr      LB2F7

        ; Referenced from B044, B04A, B050
        ; --- START PROC LB30A ---
LB30A:  push    bc
        ld      hl,7000h        ; address or value?
        ld      bc,0680h        ; address or value?
        jr      LB2F7

        ; Referenced from 7F1F
        ; --- START PROC LB313 ---
LB313:  push    bc
        ld      bc,0010h        ; address or value?
        call    005Ch
        ld      bc,0020h        ; address or value?
        jr      LB2FD

        ; Referenced from 7EBD
        ; --- START PROC LB31F ---
LB31F:  push    bc
        ld      bc,0008h        ; address or value?

        ; Referenced from B332
        ; --- START PROC LB323 ---
LB323:  call    0056h
        ld      de,0800h        ; address or value?
        add     hl,de
        pop     bc
        ret

        ; Referenced from 7EF6
        ; --- START PROC LB32C ---
LB32C:  push    bc
        ld      bc,0280h        ; address or value?
        ld      a,0F0h
        jr      LB323

        ; Referenced from 7EEE, B352
        ; --- START PROC LB334 ---
LB334:  push    bc
        ld      hl,6700h        ; address or value?
        ld      bc,0100h        ; address or value?
        call    005Ch
        ld      bc,0100h        ; address or value?
        add     hl,bc
        ex      de,hl
        ld      hl,6E80h        ; address or value?
        ld      bc,0180h        ; address or value?
        call    005Ch
        ld      bc,0700h        ; address or value?
        add     hl,bc
        ex      de,hl
        pop     bc
        djnz    LB334
        ld      de,1480h        ; address or value?
        ld      hl,6680h        ; address or value?
        ld      bc,0080h        ; address or value?
        call    005Ch
        ld      de,3480h        ; address or value?
        ld      hl,7680h        ; address or value?
        ld      bc,0080h        ; address or value?
        call    005Ch
        ret

        ; Referenced from 7ECD, B053
        ; --- START PROC LB36D ---
LB36D:  ld      de,3800h        ; address or value?
        ld      hl,5800h        ; address or value?
        ld      bc,0800h        ; address or value?
        jp      005Ch

        ; Referenced from 7EE3, B46A, B5FA, ADD7, AE73
        ; --- START PROC LB379 ---
LB379:  ld      a,0FFh
        ld      (0E097h),a
        ret

        ; Referenced from 907E, 917E, 90EB, 9219
        ; --- START PROC LB37F ---
LB37F:  ld      hl,0E300h       ; address or value?
        ld      de,0E100h       ; address or value?
        ld      b,04h
        call    LB008

        ; Referenced from 960B, 9632, 96BF, 96FF, B44D, B1BF, B196, 8084, AE45, 8115, 8FF3
        ; --- START PROC LB38A ---
LB38A:  ld      de,1B00h        ; address or value?
        ld      hl,0E100h       ; address or value?
        ld      bc,0040h        ; address or value?
        call    005Ch
        ret

        ; Referenced from 8087, AF88, 8103, AF23
        ; --- START PROC LB397 ---
LB397:  ld      hl,0E001h       ; address or value?
        ld      de,1839h        ; address or value?
        ld      bc,0006h        ; address or value?
        call    005Ch
        ld      hl,0E08Eh       ; address or value?
        ld      de,1819h        ; address or value?
        ld      bc,0006h        ; address or value?
        jp      005Ch

        ; Referenced from 9773, 9A50, 9914, A378, A5CD, AA3C, AB6C
        ; --- START PROC LB3AF ---
LB3AF:  ld      b,a
        ld      a,(0E000h)
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

        ; Referenced from B40A, B43D
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

        ; Referenced from B3EE, AF20
        ; --- START PROC LB40D ---
LB40D:  ld      de,0E094h       ; address or value?
        ld      hl,0E00Ch       ; address or value?
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
LB430:  ld      bc,0003h        ; address or value?
        lddr
        ld      hl,0E08Eh       ; address or value?
        ld      de,0E094h       ; address or value?
        ld      b,03h
        jr      LB3FA

        ; Referenced from A830, 8092, AF3A, 8313
        ; --- START PROC LB43F ---
LB43F:  xor     a
        ld      (0E011h),a

        ; Referenced from B448
LB443:  ld      a,(0E011h)
        cp      08h
        jr      c,LB443

        ; Referenced from B45F, B465
LB44A:  call    LB000
        call    LB38A
        ld      a,(0E000h)
        and     a
        jr      nz,LB45B
        ld      a,(0E026h)
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
        ; --- START PROC LB475 ---
LB475:  ld      a,(0E097h)
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
        call    0093h
        ld      e,00h
        ld      a,0Ah
        call    0093h

        ; Referenced from B48C
LB49C:  call    LB77C
        ld      hl,0E010h       ; address or value?
        ld      b,10h

        ; Referenced from B4A6
LB4A4:  inc     (hl)
        inc     hl
        djnz    LB4A4
        ld      a,(0E000h)
        and     a
        jr      z,LB51A
        ld      a,06h
        call    0141h
        bit     5,a
        jr      z,LB4BD
        xor     a
        ld      (0E1B4h),a
        jr      LB4CA

        ; Referenced from B4B5
LB4BD:  ld      a,(0E1B4h)
        and     a
        jr      nz,LB4CA
        inc     a
        ld      (0E1B3h),a
        ld      (0E1B4h),a

        ; Referenced from B4BB, B4C1
LB4CA:  ld      a,07h
        call    0141h
        bit     4,a
        jr      z,LB4D9
        xor     a
        ld      (0E1B6h),a
        jr      LB4E6

        ; Referenced from B4D1
LB4D9:  ld      a,(0E1B6h)
        and     a
        jr      nz,LB4E6
        inc     a
        ld      (0E1B5h),a
        ld      (0E1B6h),a

        ; Referenced from B4D7, B4DD
LB4E6:  ld      de,0E020h       ; address or value?
        ld      hl,0E021h       ; address or value?
        ld      a,03h
        call    LB575
        ld      de,0E022h       ; address or value?
        ld      hl,0E08Dh       ; address or value?
        ld      a,01h
        call    LB575
        ld      de,0E020h       ; address or value?
        ld      hl,0E08Bh       ; address or value?
        call    LB58F

        ; Referenced from B556
LB505:  xor     a
        call    00D5h
        ld      (0E181h),a
        ld      a,01h
        call    00D5h
        ld      c,a
        ld      a,(0E181h)
        or      c
        ld      (0E180h),a
        ret

        ; Referenced from B4AC
LB51A:  ld      a,(0E028h)
        and     a
        jr      z,LB553
        ld      a,(0E016h)
        cp      10h
        jr      c,LB558
        xor     a
        ld      (0E016h),a
        ld      a,(0E027h)
        and     a
        jr      z,LB558
        ld      hl,(0E029h)
        ld      a,(hl)
        inc     hl
        ld      (0E029h),hl
        ld      b,a
        and     0Fh
        ld      (0E180h),a
        ld      a,b
        and     0F0h
        and     a
        jr      z,LB558
        cp      01h
        jr      nz,LB54E
        ld      (0E020h),a
        jr      LB558

        ; Referenced from B547
LB54E:  ld      (0E022h),a
        jr      LB558

        ; Referenced from B51E
LB553:  call    LB558
        jr      LB505

        ; Referenced from B525, B52F, B543, B54C, B553, B551
        ; --- START PROC LB558 ---
LB558:  ld      de,0E026h       ; address or value?
        ld      hl,0E025h       ; address or value?
        call    LB585
        ld      a,(de)
        ld      (0E181h),a
        ld      hl,0E021h       ; address or value?
        ld      a,01h
        call    LB575
        ld      a,(de)
        ld      b,a
        ld      a,(0E181h)
        or      b
        ld      (de),a
        ret

        ; Referenced from B56A, B4EE, B4F9
        ; --- START PROC LB575 ---
LB575:  call    00D8h
        and     a

        ; Referenced from B597, B5A5
        ; --- START PROC LB579 ---
LB579:  jr      nz,LB57E

        ; Referenced from B58D
        ; --- START PROC LB57B ---
LB57B:  ld      (hl),00h
        ret

        ; Referenced from B58B, B579
        ; --- START PROC LB57E ---
LB57E:  ld      a,(hl)
        and     a
        ret     nz
        inc     a
        ld      (hl),a
        ld      (de),a
        ret

        ; Referenced from B55E
        ; --- START PROC LB585 ---
LB585:  ld      a,08h
        call    0141h
        rrca
        jr      nc,LB57E
        jr      LB57B

        ; Referenced from B502
        ; --- START PROC LB58F ---
LB58F:  ld      a,06h
        call    0141h
        cpl
        bit     2,a
        call    LB579
        inc     hl
        inc     de
        inc     de
        ld      a,08h
        call    0141h
        cpl
        bit     0,a
        jr      LB579

        ; Referenced from 7EFE
        ; --- START PROC LB5A7 ---
LB5A7:  ld      a,01h
        ld      (0E187h),a
        ld      hl,180Ch        ; address or value?
        ld      (0E189h),hl
        ld      hl,1AECh        ; address or value?
        ld      (0E18Bh),hl

        ; Referenced from B5BD, B5E8
LB5B8:  ld      a,(0E014h)
        cp      03h
        jr      c,LB5B8
        xor     a
        ld      (0E014h),a
        call    LB601
        call    LB65E
        ld      hl,0E187h       ; address or value?
        inc     (hl)
        ld      a,(hl)
        cp      15h
        jr      nc,LB5EA
        cp      09h
        jr      c,LB5E8
        ld      hl,(0E189h)
        ld      bc,0020h        ; address or value?
        add     hl,bc
        ld      (0E189h),hl
        ld      hl,(0E18Bh)
        sbc     hl,bc
        ld      (0E18Bh),hl

        ; Referenced from B5D4
LB5E8:  jr      LB5B8

        ; Referenced from B5D0
LB5EA:  ld      a,04h
        call    LB777

        ; Referenced from B5F4
LB5EF:  ld      a,(0E014h)
        cp      80h
        jr      c,LB5EF
        xor     a
        ld      (0E026h),a
        call    LB379
        call    LB2E4
        ret

        ; Referenced from B5C3
        ; --- START PROC LB601 ---
LB601:  ld      a,(0E187h)
        cp      09h
        ret     c
        ld      bc,0008h        ; address or value?
        ld      hl,0B6D1h       ; address or value?
        ld      de,(0E189h)
        call    005Ch
        ld      de,0020h        ; address or value?
        and     a
        sbc     hl,de
        ex      de,hl
        ld      hl,0B6C8h       ; address or value?
        ld      bc,0008h        ; address or value?
        call    005Ch
        ld      de,0020h        ; address or value?
        and     a
        sbc     hl,de
        ex      de,hl
        ld      hl,0B6DAh       ; address or value?
        ld      bc,0008h        ; address or value?
        call    005Ch
        ld      bc,0008h        ; address or value?
        ld      hl,0B6C8h       ; address or value?
        ld      de,(0E18Bh)
        call    005Ch
        ld      de,0020h        ; address or value?
        add     hl,de
        ex      de,hl
        ld      hl,0B6D1h       ; address or value?
        ld      bc,0008h        ; address or value?
        call    005Ch
        ld      de,0020h        ; address or value?
        add     hl,de
        ex      de,hl
        ld      hl,0B6DAh       ; address or value?
        ld      bc,0008h        ; address or value?
        call    005Ch
        ret

        ; Referenced from B5C6
        ; --- START PROC LB65E ---
LB65E:  ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,LB668
        ld      c,09h

        ; Referenced from B664
LB668:  ld      hl,1980h        ; address or value?
        ld      b,a
        ld      a,l
        sub     b
        ld      l,a
        ex      de,hl
        ld      hl,0B6C8h       ; address or value?
        ld      b,00h
        call    005Ch
        ld      de,0020h        ; address or value?
        add     hl,de
        ex      de,hl
        ld      hl,0B6D1h       ; address or value?
        ld      a,(0E187h)
        cp      09h
        jr      c,LB689
        ld      a,09h

        ; Referenced from B685
LB689:  ld      c,a
        call    005Ch
        ld      hl,1960h        ; address or value?
        ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,LB69E
        sub     09h
        add     a,l
        ld      l,a
        ld      c,09h

        ; Referenced from B696
LB69E:  ex      de,hl
        ld      hl,0B6D0h       ; address or value?
        ld      a,l
        sub     c
        jr      nc,LB6A7
        dec     h

        ; Referenced from B6A4
LB6A7:  ld      l,a
        call    005Ch
        ld      de,0020h        ; address or value?
        add     hl,de
        ex      de,hl
        ld      a,(0E187h)
        ld      c,a
        cp      09h
        jr      c,LB6BA
        ld      c,09h

        ; Referenced from B6B6
LB6BA:  ld      hl,0B6D9h       ; address or value?
        ld      a,l
        sub     c
        jr      nc,LB6C2
        dec     h

        ; Referenced from B6BF
LB6C2:  ld      l,a
        call    005Ch
        ret

LB6C7:  DB      10h
        DB      80h
        DB      82h
        DB      84h
        DB      86h
        DB      88h
        DB      8Ah
        DB      8Ch
        DB      8Eh
        DB      10h
        DB      81h
        DB      83h
        DB      85h
        DB      87h
        DB      89h
        DB      8Bh
        DB      8Dh
        DB      8Fh
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
        DB      10h
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
        DB      0ACh
        DB      0BBh
        DB      0ACh
        DB      0BBh
        DB      0ACh
        DB      0BBh
        DB      0B0h
        DB      0BBh
        DB      0C6h
        DB      0BBh
        DB      0DFh
        DB      0BBh
        DB      0F8h
        DB      0BBh
        DB      1Ch
        DB      0BCh
        DB      3Eh             ; '>'
        DB      0BCh
        DB      5Ah             ; 'Z'
        DB      0BCh
        DB      9Fh
        DB      0BCh
        DB      0BCh
        DB      0BCh
        DB      0D4h
        DB      0BCh
        DB      0D8h
        DB      0BCh
        DB      0DCh
        DB      0BCh
        DB      0E2h
        DB      0BCh
        DB      0E6h
        DB      0BCh
        DB      0EAh
        DB      0BCh
        DB      0F0h
        DB      0BCh
        DB      18h
        DB      0BDh
        DB      35h             ; '5'
        DB      0BDh
        DB      56h             ; 'V'
        DB      0BDh
        DB      53h             ; 'S'
        DB      0BDh
        DB      98h
        DB      0BDh
        DB      36h             ; '6'
        DB      0BBh
        DB      3Ah             ; ':'
        DB      0BBh
        DB      75h             ; 'u'
        DB      0BBh
        DB      40h             ; '@'
        DB      0BBh
        DB      56h             ; 'V'
        DB      0BBh
        DB      87h
        DB      0BBh
        DB      97h
        DB      0BBh
        DB      0A5h
        DB      0BBh
        DB      0ACh
        DB      0BBh
        DB      0ACh
        DB      0BBh
        DB      0E6h
        DB      0BDh
        DB      0F6h
        DB      0BDh
        DB      08h
        DB      0BEh
        DB      14h
        DB      0BEh
        DB      48h             ; 'H'
        DB      0BEh
        DB      5Bh             ; '['
        DB      0BEh
        DB      6Eh             ; 'n'
        DB      0BEh
        DB      0F4h
        DB      0BEh
        DB      18h
        DB      0BFh
        DB      0B3h
        DB      0BFh


        ; Referenced from 94D9, 9778, 9A3A, 9AD6, B164, 9919, A37D, B142, A5D2, AA41, AB71, B132, A3C0, 871E, 8D3B, 85EE
        ; --- START PROC LB758 ---
LB758:  ld      b,a
        ld      a,(0E000h)
        and     a
        ret     z
        ld      a,b
        ld      hl,0E2C0h       ; address or value?
        jr      LB76E

        ; Referenced from 9617, 96A4, 97A3, B116, 81C7, 82F4, 843C
        ; --- START PROC LB764 ---
LB764:  ld      b,a
        ld      a,(0E000h)
        and     a
        ret     z
        ld      a,b
        ld      hl,0E2C2h       ; address or value?

        ; Referenced from B762, B77A
        ; --- START PROC LB76E ---
LB76E:  ld      b,a
        ld      a,(hl)
        and     a
        jr      z,LB775
        cp      b
        ret     c

        ; Referenced from B771
LB775:  ld      (hl),b
        ret

        ; Referenced from A82D, B5EC, 808F, AE2D, AEBB, AF37, 84DB, 8395
        ; --- START PROC LB777 ---
LB777:  ld      hl,0E2BEh       ; address or value?
        jr      LB76E

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
        ld      (iy+04h),a
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
        ; --- START PROC LBA3D ---
LBA3D:  jp      0093h

        ; Referenced from BA28
        ; --- START PROC LBA40 ---
LBA40:  ld      e,a
        ld      a,b
        jr      LBA3D

        ; Referenced from BA23
        ; --- START PROC LBA44 ---
LBA44:  ld      e,a
        ld      a,b
        inc     a
        jr      LBA3D

        ; Referenced from BA87, BA74, BAB1, BAD3, B891
        ; --- START PROC LBA49 ---
LBA49:  ld      e,a
        ld      a,07h
        jr      LBA3D

        ; Referenced from B954, B9AB, B9CB
        ; --- START PROC LBA4E ---
LBA4E:  ld      e,a
        ld      a,06h
        jr      LBA3D

        ; Referenced from B785, B79E, BA7E
        ; --- START PROC LBA53 ---
LBA53:  ld      hl,0B700h       ; address or value?
        ld      a,(0E2BEh)
        ld      (0E2BDh),a
        ld      b,a
        add     a,b
        add     a,b
        add     a,b
        add     a,b
        add     a,b
        call    LBB28
        inc     hl
        call    LBB09
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
        ; --- START PROC LBA8F ---
LBA8F:  ld      (hl),00h
        inc     hl
        djnz    LBA8F
        ret

        ; Referenced from B78E, B7A6, BABE
        ; --- START PROC LBA95 ---
LBA95:  ld      hl,0B730h       ; address or value?
        ld      a,(0E2C0h)
        ld      (0E2BFh),a
        add     a,a
        call    LBB28
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
        call    LBA8F
        ld      a,(0E088h)
        or      09h

        ; Referenced from BB07
        ; --- START PROC LBAD0 ---
LBAD0:  ld      (0E088h),a
        jp      LBA49

        ; Referenced from B798, B7AE, BAF5
        ; --- START PROC LBAD6 ---
LBAD6:  ld      hl,0B740h       ; address or value?
        ld      a,(0E2C2h)
        ld      (0E2C1h),a
        add     a,a
        add     a,a
        add     a,l
        ld      l,a
        call    LBB09
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
        call    LBA8F
        ld      a,(0E088h)
        or      36h             ; '6'
        jr      LBAD0

        ; Referenced from BA66, BAE3
        ; --- START PROC LBB09 ---
LBB09:  ld      e,(hl)
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
        ; --- START PROC LBB28 ---
LBB28:  add     a,l
        ld      l,a
        ld      e,(hl)
        inc     hl
        ld      d,(hl)
        ld      (0E280h),de
        ld      (0E282h),de
        ret

LBB36:  DB      1Ch
        DB      00h
        DB      00h
        DB      0F7h
        DB      0A1h
        DB      00h
        DB      6Bh             ; 'k'
        DB      63h             ; 'c'
        DB      35h             ; '5'
        DB      0F7h
        DB      0D1h
        DB      00h
        DB      10h
        DB      0D1h
        DB      80h
        DB      0D1h
        DB      20h             ; ' '
        DB      0D1h
        DB      90h
        DB      0D1h
        DB      30h             ; '0'
        DB      0D1h
        DB      0A0h
        DB      0D1h
        DB      40h             ; '@'
        DB      0D1h
        DB      0B0h
        DB      0D1h
        DB      50h             ; 'P'
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
        DB      70h             ; 'p'
        DB      0D1h
        DB      02h
        DB      60h             ; '`'
        DB      0D1h
        DB      00h
        DB      60h             ; '`'
        DB      0D1h
        DB      02h
        DB      40h             ; '@'
        DB      0D1h
        DB      00h
        DB      40h             ; '@'
        DB      0D1h
        DB      02h
        DB      20h             ; ' '
        DB      0D1h
        DB      00h
        DB      20h             ; ' '
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
        DB      28h             ; '('
        DB      0D1h
        DB      2Ah             ; '*'
        DB      0D1h
        DB      2Ch             ; ','
        DB      0D1h
        DB      2Eh             ; '.'
        DB      0D1h
        DB      30h             ; '0'
        DB      0D1h
        DB      32h             ; '2'
        DB      0F7h
        DB      0F0h
        DB      02h
        DB      1Ch
        DB      08h
        DB      02h
        DB      5Ah             ; 'Z'
        DB      0F7h
        DB      1Ch
        DB      00h
        DB      00h
        DB      0FFh
        DB      63h             ; 'c'
        DB      08h
        DB      0EBh
        DB      63h             ; 'c'
        DB      07h
        DB      0F2h
        DB      62h             ; 'b'
        DB      07h
        DB      80h
        DB      81h
        DB      80h
        DB      81h
        DB      0F2h
        DB      63h             ; 'c'
        DB      80h
        DB      63h             ; 'c'
        DB      05h
        DB      0F4h
        DB      2Eh             ; '.'
        DB      03h
        DB      57h             ; 'W'
        DB      0FFh
        DB      63h             ; 'c'
        DB      01h
        DB      0ACh
        DB      63h             ; 'c'
        DB      01h
        DB      7Dh             ; '}'
        DB      62h             ; 'b'
        DB      02h
        DB      0CFh
        DB      81h
        DB      0CFh
        DB      81h
        DB      7Dh             ; '}'
        DB      63h             ; 'c'
        DB      0CFh
        DB      63h             ; 'c'
        DB      01h
        DB      40h             ; '@'
        DB      2Eh             ; '.'
        DB      01h
        DB      1Dh
        DB      2Eh             ; '.'
        DB      01h
        DB      1Dh
        DB      0FFh
        DB      63h             ; 'c'
        DB      01h
        DB      68h             ; 'h'
        DB      63h             ; 'c'
        DB      01h
        DB      40h             ; '@'
        DB      62h             ; 'b'
        DB      01h
        DB      1Dh
        DB      81h
        DB      1Dh
        DB      81h
        DB      40h             ; '@'
        DB      63h             ; 'c'
        DB      1Dh
        DB      63h             ; 'c'
        DB      00h
        DB      0E2h
        DB      2Eh             ; '.'
        DB      00h
        DB      0D6h
        DB      2Eh             ; '.'
        DB      00h
        DB      0D6h
        DB      0FEh
        DB      66h             ; 'f'
        DB      00h
        DB      0D6h
        DB      84h
        DB      00h
        DB      0E2h
        DB      66h             ; 'f'
        DB      0D6h
        DB      83h
        DB      0B4h
        DB      3Eh             ; '>'
        DB      00h
        DB      8Fh
        DB      66h             ; 'f'
        DB      97h
        DB      83h
        DB      0BEh
        DB      66h             ; 'f'
        DB      8Fh
        DB      83h
        DB      0BEh
        DB      66h             ; 'f'
        DB      0A0h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0B4h
        DB      83h
        DB      0BEh
        DB      3Eh             ; '>'
        DB      87h
        DB      64h             ; 'd'
        DB      8Fh
        DB      0FFh
        DB      0FDh
        DB      06h
        DB      82h
        DB      03h
        DB      57h             ; 'W'
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
        DB      75h             ; 'u'
        DB      0FCh
        DB      3Eh             ; '>'
        DB      04h
        DB      35h             ; '5'
        DB      64h             ; 'd'
        DB      04h
        DB      75h             ; 'u'
        DB      64h             ; 'd'
        DB      04h
        DB      75h             ; 'u'
        DB      0FFh
        DB      53h             ; 'S'
        DB      02h
        DB      3Bh             ; ';'
        DB      53h             ; 'S'
        DB      02h
        DB      81h
        DB      37h             ; '7'
        DB      02h
        DB      0CFh
        DB      53h             ; 'S'
        DB      02h
        DB      0FAh
        DB      53h             ; 'S'
        DB      3Bh             ; ';'
        DB      53h             ; 'S'
        DB      81h
        DB      53h             ; 'S'
        DB      0CFh
        DB      0FDh
        DB      06h
        DB      81h
        DB      02h
        DB      0CFh
        DB      0FCh
        DB      53h             ; 'S'
        DB      02h
        DB      3Bh             ; ';'
        DB      0FEh
        DB      0FDh
        DB      02h
        DB      66h             ; 'f'
        DB      06h
        DB      0AEh
        DB      66h             ; 'f'
        DB      03h
        DB      57h             ; 'W'
        DB      81h
        DB      06h
        DB      0AEh
        DB      81h
        DB      0AEh
        DB      66h             ; 'f'
        DB      03h
        DB      57h             ; 'W'
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h             ; 'f'
        DB      07h
        DB      14h
        DB      66h             ; 'f'
        DB      03h
        DB      8Ah
        DB      81h
        DB      07h
        DB      14h
        DB      81h
        DB      14h
        DB      66h             ; 'f'
        DB      03h
        DB      8Ah
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h             ; 'f'
        DB      07h
        DB      0F2h
        DB      66h             ; 'f'
        DB      03h
        DB      0F9h
        DB      81h
        DB      07h
        DB      0F2h
        DB      81h
        DB      0F2h
        DB      66h             ; 'f'
        DB      03h
        DB      0F9h
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      66h             ; 'f'
        DB      03h
        DB      0EBh
        DB      66h             ; 'f'
        DB      04h
        DB      75h             ; 'u'
        DB      81h
        DB      08h
        DB      0EBh
        DB      81h
        DB      0EBh
        DB      66h             ; 'f'
        DB      04h
        DB      75h             ; 'u'
        DB      0FCh
        DB      0FFh
        DB      10h
        DB      01h
        DB      0ACh
        DB      66h             ; 'f'
        DB      01h
        DB      0ACh
        DB      66h             ; 'f'
        DB      01h
        DB      53h             ; 'S'
        DB      10h
        DB      01h
        DB      1Dh
        DB      66h             ; 'f'
        DB      01h
        DB      1Dh
        DB      66h             ; 'f'
        DB      01h
        DB      1Dh
        DB      10h
        DB      00h
        DB      0D6h
        DB      66h             ; 'f'
        DB      0D6h
        DB      66h             ; 'f'
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
        DB      7Dh             ; '}'
        DB      82h
        DB      01h
        DB      53h             ; 'S'
        DB      62h             ; 'b'
        DB      01h
        DB      1Dh
        DB      82h
        DB      01h
        DB      7Dh             ; '}'
        DB      66h             ; 'f'
        DB      01h
        DB      0ACh
        DB      82h
        DB      01h
        DB      53h             ; 'S'
        DB      0FEh
        DB      26h             ; '&'
        DB      00h
        DB      50h             ; 'P'
        DB      0FFh
        DB      26h             ; '&'
        DB      00h
        DB      40h             ; '@'
        DB      0FFh
        DB      81h
        DB      00h
        DB      00h
        DB      26h             ; '&'
        DB      20h             ; ' '
        DB      0FFh
        DB      3Ch             ; '<'
        DB      01h
        DB      0ACh
        DB      0FFh
        DB      3Ch             ; '<'
        DB      01h
        DB      1Dh
        DB      0FFh
        DB      0A2h
        DB      00h
        DB      0D6h
        DB      0A2h
        DB      0AAh
        DB      0FEh
        DB      64h             ; 'd'
        DB      01h
        DB      0FCh
        DB      64h             ; 'd'
        DB      0C5h
        DB      64h             ; 'd'
        DB      0ACh
        DB      64h             ; 'd'
        DB      02h
        DB      3Bh             ; ';'
        DB      64h             ; 'd'
        DB      01h
        DB      40h             ; '@'
        DB      83h
        DB      53h             ; 'S'
        DB      84h
        DB      7Dh             ; '}'
        DB      64h             ; 'd'
        DB      53h             ; 'S'
        DB      64h             ; 'd'
        DB      0ACh
        DB      53h             ; 'S'
        DB      00h
        DB      0FEh
        DB      82h
        DB      0FEh
        DB      38h             ; '8'
        DB      01h
        DB      1Dh
        DB      72h             ; 'r'
        DB      01h
        DB      1Dh
        DB      72h             ; 'r'
        DB      1Dh
        DB      72h             ; 'r'
        DB      1Dh
        DB      2Eh             ; '.'
        DB      00h
        DB      0D6h
        DB      0FFh
        DB      48h             ; 'H'
        DB      02h
        DB      81h
        DB      48h             ; 'H'
        DB      0A7h
        DB      48h             ; 'H'
        DB      0FAh
        DB      48h             ; 'H'
        DB      03h
        DB      57h             ; 'W'
        DB      53h             ; 'S'
        DB      02h
        DB      81h
        DB      82h
        DB      81h
        DB      38h             ; '8'
        DB      02h
        DB      0A7h
        DB      72h             ; 'r'
        DB      02h
        DB      0FAh
        DB      72h             ; 'r'
        DB      0FAh
        DB      72h             ; 'r'
        DB      0FAh
        DB      2Eh             ; '.'
        DB      03h
        DB      57h             ; 'W'
        DB      0FFh
        DB      48h             ; 'H'
        DB      01h
        DB      0ACh
        DB      48h             ; 'H'
        DB      02h
        DB      3Bh             ; ';'
        DB      48h             ; 'H'
        DB      02h
        DB      81h
        DB      48h             ; 'H'
        DB      02h
        DB      0A7h
        DB      53h             ; 'S'
        DB      01h
        DB      0ACh
        DB      82h
        DB      0ACh
        DB      38h             ; '8'
        DB      0ACh
        DB      72h             ; 'r'
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
        DB      53h             ; 'S'
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
        DB      40h             ; '@'
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
        DB      66h             ; 'f'
        DB      00h
        DB      0D6h
        DB      66h             ; 'f'
        DB      0E2h
        DB      66h             ; 'f'
        DB      0D6h
        DB      66h             ; 'f'
        DB      0BEh
        DB      2Ch             ; ','
        DB      0D6h
        DB      0FFh
        DB      2Eh             ; '.'
        DB      03h
        DB      0F9h
        DB      66h             ; 'f'
        DB      0F9h
        DB      66h             ; 'f'
        DB      8Ah
        DB      66h             ; 'f'
        DB      8Ah
        DB      66h             ; 'f'
        DB      02h
        DB      0A7h
        DB      2Eh             ; '.'
        DB      03h
        DB      8Ah
        DB      66h             ; 'f'
        DB      8Ah
        DB      66h             ; 'f'
        DB      57h             ; 'W'
        DB      66h             ; 'f'
        DB      02h
        DB      0FAh
        DB      66h             ; 'f'
        DB      0A7h
        DB      2Eh             ; '.'
        DB      03h
        DB      57h             ; 'W'
        DB      66h             ; 'f'
        DB      57h             ; 'W'
        DB      66h             ; 'f'
        DB      02h
        DB      0FAh
        DB      66h             ; 'f'
        DB      0A7h
        DB      66h             ; 'f'
        DB      81h
        DB      66h             ; 'f'
        DB      02h
        DB      0FAh
        DB      66h             ; 'f'
        DB      81h
        DB      66h             ; 'f'
        DB      02h
        DB      0FAh
        DB      66h             ; 'f'
        DB      03h
        DB      8Ah
        DB      82h
        DB      03h
        DB      57h             ; 'W'
        DB      82h
        DB      8Ah
        DB      82h
        DB      02h
        DB      0FAh
        DB      82h
        DB      03h
        DB      57h             ; 'W'
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
        DB      57h             ; 'W'
        DB      0Eh
        DB      03h
        DB      57h             ; 'W'
        DB      1Eh
        DB      57h             ; 'W'
        DB      1Eh
        DB      57h             ; 'W'
        DB      0FEh
        DB      0A1h
        DB      00h
        DB      10h
        DB      0A1h
        DB      20h             ; ' '
        DB      0A1h
        DB      30h             ; '0'
        DB      0A1h
        DB      40h             ; '@'
        DB      0A1h
        DB      50h             ; 'P'
        DB      0A1h
        DB      60h             ; '`'
        DB      0A1h
        DB      70h             ; 'p'
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
        DB      66h             ; 'f'
        DB      0BEh
        DB      66h             ; 'f'
        DB      00h
        DB      0CAh
        DB      0Eh
        DB      01h
        DB      1Dh
        DB      0FEh
        DB      0FDh
        DB      04h
        DB      63h             ; 'c'
        DB      04h
        DB      75h             ; 'u'
        DB      63h             ; 'c'
        DB      02h
        DB      3Bh             ; ';'
        DB      81h
        DB      04h
        DB      75h             ; 'u'
        DB      81h
        DB      75h             ; 'u'
        DB      63h             ; 'c'
        DB      02h
        DB      3Bh             ; ';'
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      63h             ; 'c'
        DB      05h
        DB      9Eh
        DB      63h             ; 'c'
        DB      02h
        DB      0CFh
        DB      81h
        DB      05h
        DB      9Eh
        DB      81h
        DB      9Eh
        DB      63h             ; 'c'
        DB      02h
        DB      0CFh
        DB      0FCh
        DB      0FDh
        DB      02h
        DB      63h             ; 'c'
        DB      06h
        DB      4Eh             ; 'N'
        DB      63h             ; 'c'
        DB      03h
        DB      27h             ; '''
        DB      81h
        DB      06h
        DB      4Eh             ; 'N'
        DB      81h
        DB      4Eh             ; 'N'
        DB      63h             ; 'c'
        DB      03h
        DB      27h             ; '''
        DB      0FCh
        DB      0FFh
        DB      83h
        DB      01h
        DB      0ACh
        DB      83h
        DB      7Dh             ; '}'
        DB      83h
        DB      53h             ; 'S'
        DB      83h
        DB      40h             ; '@'
        DB      83h
        DB      1Dh
        DB      83h
        DB      00h
        DB      0FEh
        DB      83h
        DB      0E2h
        DB      2Eh             ; '.'
        DB      0D6h
        DB      0FFh
        DB      83h
        DB      01h
        DB      53h             ; 'S'
        DB      83h
        DB      40h             ; '@'
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
        DB      2Eh             ; '.'
        DB      0AAh
        DB      0FFh
        DB      82h
        DB      00h
        DB      0FEh
        DB      82h
        DB      0E2h
        DB      66h             ; 'f'
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      82h
        DB      0D6h
        DB      82h
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      2Ch             ; ','
        DB      7Fh
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h             ; 'f'
        DB      6Bh             ; 'k'
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h             ; 'f'
        DB      6Bh             ; 'k'
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h             ; 'f'
        DB      6Bh             ; 'k'
        DB      82h
        DB      8Fh
        DB      82h
        DB      7Fh
        DB      66h             ; 'f'
        DB      6Bh             ; 'k'
        DB      1Ch
        DB      55h             ; 'U'
        DB      82h
        DB      55h             ; 'U'
        DB      82h
        DB      5Fh             ; '_'
        DB      82h
        DB      6Bh             ; 'k'
        DB      82h
        DB      7Fh
        DB      82h
        DB      5Fh             ; '_'
        DB      82h
        DB      6Bh             ; 'k'
        DB      82h
        DB      7Fh
        DB      82h
        DB      8Fh
        DB      64h             ; 'd'
        DB      6Bh             ; 'k'
        DB      82h
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      64h             ; 'd'
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      82h
        DB      0AAh
        DB      64h             ; 'd'
        DB      8Fh
        DB      82h
        DB      0D6h
        DB      82h
        DB      0BEh
        DB      64h             ; 'd'
        DB      0AAh
        DB      82h
        DB      0BEh
        DB      82h
        DB      0AAh
        DB      64h             ; 'd'
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
        DB      71h             ; 'q'
        DB      83h
        DB      6Bh             ; 'k'
        DB      64h             ; 'd'
        DB      5Fh             ; '_'
        DB      84h
        DB      71h             ; 'q'
        DB      84h
        DB      7Fh
        DB      66h             ; 'f'
        DB      5Fh             ; '_'
        DB      84h
        DB      6Bh             ; 'k'
        DB      84h
        DB      71h             ; 'q'
        DB      81h
        DB      55h             ; 'U'
        DB      81h
        DB      5Fh             ; '_'
        DB      81h
        DB      50h             ; 'P'
        DB      81h
        DB      55h             ; 'U'
        DB      81h
        DB      47h             ; 'G'
        DB      81h
        DB      "PL@,9,5"
        DB      0Ch
        DB      40h             ; '@'
        DB      0FFh
        DB      0FBh
        DB      02h
        DB      81h
        DB      05h
        DB      01h
        DB      81h
        DB      05h
        DB      01h
        DB      66h             ; 'f'
        DB      02h
        DB      81h
        DB      0FAh
        DB      0FBh
        DB      02h
        DB      81h
        DB      04h
        DB      75h             ; 'u'
        DB      82h
        DB      75h             ; 'u'
        DB      66h             ; 'f'
        DB      02h
        DB      3Bh             ; ';'
        DB      0FAh
        DB      0FBh
        DB      04h
        DB      81h
        DB      03h
        DB      0F9h
        DB      82h
        DB      03h
        DB      0F9h
        DB      63h             ; 'c'
        DB      01h
        DB      0FCh
        DB      0FAh
        DB      0FEh
        DB      63h             ; 'c'
        DB      01h
        DB      7Dh             ; '}'
        DB      63h             ; 'c'
        DB      01h
        DB      0ACh
        DB      63h             ; 'c'
        DB      01h
        DB      7Dh             ; '}'
        DB      63h             ; 'c'
        DB      00h
        DB      0FEh
        DB      2Ch             ; ','
        DB      01h
        DB      40h             ; '@'
        DB      82h
        DB      00h
        DB      0FEh
        DB      82h
        DB      01h
        DB      40h             ; '@'
        DB      63h             ; 'c'
        DB      01h
        DB      1Dh
        DB      63h             ; 'c'
        DB      00h
        DB      0D6h
        DB      63h             ; 'c'
        DB      00h
        DB      0FEh
        DB      63h             ; 'c'
        DB      01h
        DB      40h             ; '@'
        DB      63h             ; 'c'
        DB      01h
        DB      1Dh
        DB      63h             ; 'c'
        DB      00h
        DB      0D6h
        DB      63h             ; 'c'
        DB      00h
        DB      0FEh
        DB      62h             ; 'b'
        DB      01h
        DB      40h             ; '@'
        DB      64h             ; 'd'
        DB      01h
        DB      40h             ; '@'
        DB      64h             ; 'd'
        DB      01h
        DB      1Dh
        DB      64h             ; 'd'
        DB      01h
        DB      40h             ; '@'
        DB      64h             ; 'd'
        DB      01h
        DB      53h             ; 'S'
        DB      3Ch             ; '<'
        DB      01h
        DB      7Dh             ; '}'
        DB      84h
        DB      02h
        DB      81h
        DB      84h
        DB      02h
        DB      3Bh             ; ';'
        DB      3Ch             ; '<'
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
