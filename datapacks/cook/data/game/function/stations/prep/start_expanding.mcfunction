# Called by a prep station that is going to enter its expanded view
scoreboard players set @s prep_display 1
execute as @e[type=interaction,tag=prep_ingredient,distance=..10] at @s run function game:stations/prep/ingredient/expand