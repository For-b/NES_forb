
.inesprg 1 ;
.ineschr 1 ;
.inesmap 0 ;
.inesmir 1 ;

.bank 0 ;
.org $8000 ;

; Code here.

.bank 1 ;1
.org $FFFA ;

.dw 0        ; location of NMI Interrupt
.dw Start    ; code to run at reset, we give address of Start label that
; we will eventually put in bank 0
.dw 0        ; location of VBlank Interrupt I think. either way, we don't need
; it right now.

.bank 2 ; change to bank 2
.org $0000 ; start at $0000

.incbin "art.chr"  ;
; data.
.incbin "player.chr"  ;