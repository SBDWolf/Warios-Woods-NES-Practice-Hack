norom

incsrc "defines.asm"
incsrc "hijacks.asm"
incsrc "assets.asm"

%org($01, bank1_free_space)
incsrc "stage_select_menu.asm"
incsrc "stage_load.asm"
incsrc "stage_print.asm"
incsrc "board_layout_print.asm"
incsrc "bomb_count_print.asm"
warnpc $bffa