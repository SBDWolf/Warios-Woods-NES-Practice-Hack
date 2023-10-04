norom

incsrc "defines.asm"
incsrc "hijacks.asm"

%org($01, bank1_free_space)
incsrc "stage_select_menu.asm"
incsrc "stage_load.asm"
incsrc "stage_print.asm"
warnpc $bffa