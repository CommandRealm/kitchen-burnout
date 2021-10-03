# Create ingredients and move them to proper positions
execute unless entity @e[type=armor_stand,tag=prep_slot] run function game:stations/prep/summon_existing
execute as @e[type=armor_stand,tag=prep_slot,tag=!final_position] at @s run function game:stations/prep/tp/main
# Hide display if not being looked at
execute if score @s prep_display matches 1 run scoreboard players set @s prep_display -1
execute if score @s prep_display matches 2.. run scoreboard players remove @s prep_display 1