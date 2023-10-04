@include
    expand_stage_load:
        clc 
        adc !selected_stage_offset
        sta !stage_to_load
        ; clear !selected_stage_offset
        lda #$00
        sta !selected_stage_offset
        rts 