;@ Symbols for the Zedboard
;@ as configured for ENSC 254/351 at Simon Fraser University (SFU)
;@ Copyright (C) 2019 School of Engineering Science, SFU

;@ OLED definitions
.set OLED_COLS, 16		;@ number of column on the display
.set OLED_FONT_OFFSET, 0x000	;@ offset from OLED controller base address to font table buffer
.set OLED_CHAR_OFFSET, 0x400	;@ offset from OLED controller base address to character display buffer

;@Define button masks
.set SwsE, 0x01 ;@ Easy Mode
.set SwsM, 0x02 ;@ Medium Mode
.set SwsH, 0x04 ;@ Hard Mode
.set SwsM, 0x07 ;@ Hard Mode
.set SwsP1, 0x80 ;@ Player1
.set SwsP2, 0x20 ;@ Player2
.set SwsPBoth, 0xA0 ;@ Both Players
