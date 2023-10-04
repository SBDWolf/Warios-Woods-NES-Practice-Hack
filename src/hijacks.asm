; this is located in the stage select menu routine to handle left/right INPUT_select
%org($01, $9d07)
        jsr expand_stage_select
        nop 

; this is located in the stage loading routine for the stage select menu
%org($01, $9d4a)
        jsr expand_stage_load

; this is located in the printing routine for the stage number in the stage select menu
%org($01, $9e9b)
        jsr expand_stage_print
        nop 

; this location prevents opening the menu if the set of stages hasn't been beaten yet. we'll remove that check so that it can be opened on any stage.
%org($01, $9c0d)
        nop 
        nop 
        nop 
        nop 
        nop 

; this location prevents selecting stages that haven't been beaten yet. we'll change check so that every (valid) stage can be selected at any time.
%org($01, $9d23)
        cpy #$15
        nop 

; this adjustments fixes the printing of the next selectable stage on the right, after making the modification above
%org($01, $9df4)
        cmp #$15
        nop 

; this adjustments allows selecting stage 00
%org($01, $9d15)
        cpy #$ff
        nop 

; this adjustments allows the printed number to be updated every frame
%org($01, $9e4e)
        lda #$01 
        sta $5e 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 
        nop 

; this adjustments removes the stage number's blinking (freeing up asset space for print stage 00)
%org($01, $9e5e)
        nop 
        nop 
        
; this adjustments changes the default stage selected from the "stage 00" option from stage 1 to stage 256 >:)
%org($01, $9f11)
        db $ff

; print additional information in the stage select menu. this location originally reset the timer for the stage number's blinking animation
%org($01, $9ea7)
        jsr print_board_layout_index
        jsr print_bomb_count
        nop 
        nop 
        nop 