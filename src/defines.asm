@include

macro org(bank, offset)
    org $10+((<offset>-$8000)%$4000)+($4000*<bank>)
    base <offset>
endmacro

; new ram
!selected_stage_offset              = $7d00
!bomb_counter_visual_digit_hundreds = $7d01
!bomb_counter_visual_digit_tens     = $7d02
!bomb_counter_visual_digit_units    = $7d03


; existing ram
!current_input_held                 = $4b
!current_input_periodical           = $4d       ; seems like this one periodically updates for one frame when input is held
!current_input_pressed              = $4f
!ppu_buffer_cursor                  = $6000
!ppu_buffer_area                    = $6001
!board_layout_index                 = $6daa
!stage_to_load                      = $6291     ; used by the game to determine which stage to load in the stage loading process
!bomb_counter                       = $7b74     ; the game uses this to determine the color of the next bomb

; rom
bank1_free_space                    = $ba40     ; very unsure this is actually free space... could cause issues


; constants
!INPUT_right                        = $01
!INPUT_left                         = $02
!INPUT_down                         = $04
!INPUT_up                           = $08
!INPUT_start                        = $10
!INPUT_select                       = $20
!INPUT_B                            = $40
!INPUT_A                            = $80