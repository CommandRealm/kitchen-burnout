scoreboard players set $check_click click 0
execute on target run scoreboard players set $check_click click 1
execute if score $check_click click matches 1 run function game:click/ingredient_box