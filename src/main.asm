                DEVICE  ZXSPECTRUM48

                org     $8000

Entry:
                ld      a, 2
                call    5633
                ld      de, data
                ld      bc, len
                call    8252
                ret

data            defb    "Hello, World"
len             equ      $ - data

                ; Deployment
LENGTH          equ     $-Entry


                ; option 2: snapshot
                SAVESNA "bin/game.sna", Entry

                ; option 1: tape
                include         include/taplib.asm
                MakeTape        ZXSPECTRUM48, "bin/game.tap", "game", Entry, LENGTH, Entry

