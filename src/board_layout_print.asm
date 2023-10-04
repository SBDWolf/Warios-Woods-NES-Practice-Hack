@include
    print_board_layout_index:
        ldx !ppu_buffer_cursor
        lda #$20
        sta !ppu_buffer_area, x
        inx 
        lda #$cb
        sta !ppu_buffer_area, x
        inx 
        ; size
        lda #$01
        sta !ppu_buffer_area, x
        inx 
        lda !board_layout_index
        ora #$40
        sta !ppu_buffer_area, x
        inx 
        lda #$00
        sta !ppu_buffer_area, x
        stx !ppu_buffer_cursor
        rts 
