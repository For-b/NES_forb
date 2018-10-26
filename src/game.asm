; iNES Header
; The 16 byte iNES header gives the emulator all the information about the game including mapper, graphics mirroring, and PRG/CHR sizes. You can include all this inside your asm file at the very beginning.
  .inesprg 1   ; 1x 16KB PRG code
  .ineschr 1   ; 1x  8KB CHR data
  .inesmap 0   ; mapper 0 = NROM, no bank swapping
  .inesmir 1   ; background mirroring
  


;; DECLARE SOME VARIABLES HERE
  .rsset $0000  ;;start variables at ram location 0 in zero page memory

loopCount     .rs 1 ; count the loop
playerx       .rs 1 ; players x pos
playervx      .rs 1 ; players x vel
playery       .rs 1 ; players y pos
playervy      .rs 1 ; player  y vel (negative is up)
controller1   .rs 1 ; controller 1 button vector

gravity       .rs 1 ; gravity


ground        .rs 1 ; y value of the ground
inAir         .rs 1 

enemyx        .rs 1
enemyy        .rs 1

backgroundLo  .rs 1
backgroundHi  .rs 1
counterLo     .rs 1
counterHi     .rs 1


scroll     .rs 1  ; horizontal scroll count
nametable  .rs 1  ; which nametable to use, 0 or 1
columnLow  .rs 1  ; low byte of new column address
columnHigh .rs 1  ; high byte of new column address
sourceLow  .rs 1  ; source for column data
sourceHigh .rs 1
columnNumber .rs 1  ; which column of level data to draw
