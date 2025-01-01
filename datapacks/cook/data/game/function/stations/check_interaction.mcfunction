# Check for an interaction, return if there is none
scoreboard players set $check_interaction click 0
execute on target run scoreboard players set $check_interaction click 1
execute if score $check_interaction click matches 0 run return 1

# This has been right clicked on
execute as @s[tag=ingredient_box] run function game:stations/ingredient_box/click
