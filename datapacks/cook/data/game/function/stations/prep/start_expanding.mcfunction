# Called by a prep station that is going to enter its expanded view
scoreboard players set @s prep_display 1
execute store result storage game:prep base_position int 1 run scoreboard players get @s prep_position 
execute as @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1] at @s run function game:stations/prep/ingredient/positioning/expand with storage game:prep