execute as @s[tag=!2] run scoreboard players set $1 prep_position 0
execute as @s[tag=2] run scoreboard players set $2 prep_position 0

execute as @e[type=item_display,tag=prep_slot,distance=..500,tag=base_ingredient] at @s run function game:stations/prep/move/set_translate
execute as @e[type=item_display,tag=prep_slot,distance=..500,tag=!base_ingredient,tag=primary_ingredient] at @s run function game:stations/prep/move/set_translate
execute as @e[type=item_display,tag=prep_slot,distance=..500,tag=!base_ingredient,tag=!primary_ingredient] at @s run function game:stations/prep/move/set_translate

