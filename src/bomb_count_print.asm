@include
    print_bomb_count:
        ; oh god hex to dec

        ; we use a lookup table to speed up the multiplication by 16
        lda !bomb_counter
        lsr 
        lsr 
        lsr 
        lsr 
        ; multiply by 2
        asl 
        tax 
        lda times_16_table,x
        sta !bomb_counter_visual_digit_hundreds
        lda times_16_table+1,x
        lsr 
        lsr 
        lsr 
        lsr 
        sta !bomb_counter_visual_digit_tens
        lda times_16_table+1,x
        and #$0f
        sta !bomb_counter_visual_digit_units


        lda !bomb_counter
        and #$0f
        clc 
        adc !bomb_counter_visual_digit_units
        cmp #$0a
        bcc +
        inc !bomb_counter_visual_digit_tens
        sec 
        sbc #$0a
        sta !bomb_counter_visual_digit_units
        ; the units could still be above 0x0a, so we need to check again
        lda !bomb_counter_visual_digit_units
        cmp #$0a
        bcc ++
        inc !bomb_counter_visual_digit_tens
        sec 
        sbc #$0a
+       sta !bomb_counter_visual_digit_units

++      lda !bomb_counter_visual_digit_tens
        cmp #$0a
        bcc +
        inc !bomb_counter_visual_digit_hundreds
        sec 
        sbc #$0a
        sta !bomb_counter_visual_digit_tens

        ; print on screen
+       ldx !ppu_buffer_cursor
        lda #$20
        sta !ppu_buffer_area, x
        inx 
        lda #$ce
        sta !ppu_buffer_area, x
        inx 
        ; size
        lda #$03
        sta !ppu_buffer_area, x
        inx 
        lda !bomb_counter_visual_digit_hundreds
        ora #$40
        sta !ppu_buffer_area, x
        inx 
        lda !bomb_counter_visual_digit_tens
        ora #$40
        sta !ppu_buffer_area, x
        inx 
        lda !bomb_counter_visual_digit_units
        ora #$40
        sta !ppu_buffer_area, x
        inx 
        lda #$00
        sta !ppu_buffer_area, x
        stx !ppu_buffer_cursor


        rts 


        times_16_table:
            db $00,$00
            db $00,$16
            db $00,$32
            db $00,$48
            db $00,$64
            db $00,$80
            db $00,$96
            db $01,$12
            db $01,$28
            db $01,$44
            db $01,$60
            db $01,$76
            db $01,$92
            db $02,$08
            db $02,$24
            db $02,$40