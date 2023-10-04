@include
    expand_stage_select:
        lda !current_input_pressed
        ; check for B
        and #$40
        beq +
        ; flip bit for board selection
        lda !board_layout_index
        eor #$01
        sta !board_layout_index
        ; checking for up and down

+       lda !current_input_periodical
        and #$0c
        beq .exit
        and #$08
        beq .handle_down
        ; up
        inc !selected_stage_offset

        lda !selected_stage_offset
        cmp #$05
        bcc +

        lda #$00
        sta !selected_stage_offset

+       bvc .exit

        .handle_down:
            ; down
            dec !selected_stage_offset

            lda !selected_stage_offset
            cmp #$7f
            bcc .exit

            lda #$04
            sta !selected_stage_offset

        .exit:
            ; restore hijacked instructions
            lda !current_input_periodical
            and #$03
            rts 