# Display things
execute as @e[type=armor_stand,tag=prep_slot,tag=!final_position,distance=..100] at @s run function game:stations/prep/tp/main
# Hide display if not being looked at
execute if score @s prep_display matches 1 run scoreboard players set @s prep_display -1
execute if score @s prep_display matches 2.. run scoreboard players remove @s prep_display 1