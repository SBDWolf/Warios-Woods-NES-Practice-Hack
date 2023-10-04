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
