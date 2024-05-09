-w
-stack 400h
-heap 100
-e start
-l rts.lib

MEMORY
{
  PAGE 0:
        VECT   :  o = 0000h , l = 0040h
        EX_ROM :  o = 1000h , l = 1000h
  PAGE 1:
        B2     :  o = 0060h , l = 0020h  
        B1     :  o = 0300h , l = 0100h 
}
SECTIONS
{
        .text    : {}> EX_ROM PAGE 0
        .data    : {}> EX_ROM PAGE 0
        .bss     : {}> B2     PAGE 1
}