# Called by a prep station that is going to collapse its ingredients
scoreboard players set @s prep_display -1
execute store result storage game:prep base_position int 1 run scoreboard players get @s prep_position 
execute as @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1] at @s run function game:stations/prep/ingredient/positioning/collapse with storage game:prep

# Should kill all created interactions for the ingredients
kill @e[type=interaction,tag=prep_ingredient,dx=0,dy=255,dz=0]