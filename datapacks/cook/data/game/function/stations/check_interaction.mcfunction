# Check for a left click
scoreboard players set $check_interaction click 0
execute on attacker run scoreboard players set $check_interaction click 1
execute if score $check_interaction click matches 1 as @s[tag=cutting_board] run function game:stations/cutting_board/attack
execute if score $check_interaction click matches 1 as @s[tag=stovetop] run function game:stations/stovetop/attack

# Check for a right click, return if there is none
scoreboard players set $check_interaction click 0
execute on target run scoreboard players set $check_interaction click 1
execute if score $check_interaction click matches 0 run return 1

# This has been right clicked on
execute as @s[tag=ingredient_box] run function game:stations/ingredient_box/click
execute as @s[tag=cutting_board] run function game:stations/cutting_board/click
execute as @s[tag=stovetop] run function game:stations/stovetop/click
execute as @s[tag=thrown_ingredient] run function game:stations/thrown_ingredient/click

data remove entity @s interaction