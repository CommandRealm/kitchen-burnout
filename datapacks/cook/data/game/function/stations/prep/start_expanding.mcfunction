# Called by a prep station that is going to enter its expanded view
scoreboard players set @s prep_display 1
execute store result storage game:stations/prep base_position int 1 run scoreboard players get @s prep_position 
execute align xyz positioned ~ -64 ~ as @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0] at @s run function game:stations/prep/ingredient/positioning/expand with storage game:stations/prep