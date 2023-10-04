@include

macro org(bank, offset)
    org $10+((<offset>-$8000)%$4000)+($4000*<bank>)
    base <offset>
endmacro

; new ram
!selected_stage_offset      = $7d00
!selected_board_layout      = $7d01


; existing ram
!current_input_held         = $4b
!current_input_periodical   = $4d       ; seems like this one periodically updates for one frame when input is held
!current_input_pressed      = $4f
!stage_to_load              = $6291     ; used by the game to determine which stage to load in the stage loading process

; rom
bank1_free_space           = $bfa0     ; very unsure this is actually free space... could cause issues


; constants
!INPUT_right                = $01
!INPUT_left                 = $02
!INPUT_down                 = $04
!INPUT_up                   = $08
!INPUT_start                = $10
!INPUT_select               = $20
!INPUT_B                    = $40
!INPUT_A                    = $80