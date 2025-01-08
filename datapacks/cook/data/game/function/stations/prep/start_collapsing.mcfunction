# Called by a prep station that is going to collapse its ingredients
scoreboard players set @s prep_display -1
execute as @e[type=item_display,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/collapse

kill @e[type=interaction,tag=prep_ingredient,distance=..10]