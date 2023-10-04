@include

    expand_stage_print:
        lda $6005, x
        clc 
        adc !selected_stage_offset
        sta $6005, x
        clc 
        adc #$10
        sta $600a, x

        ; execute hijacked instructions
        txa 
        clc 
        adc #$0a
        rts 