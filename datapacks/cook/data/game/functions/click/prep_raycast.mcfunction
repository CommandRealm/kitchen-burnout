# Raycast
execute as @e[type=marker,distance=..1,limit=1,sort=nearest,tag=prep_display] run scoreboard players set @s prep_display 1
execute as @e[type=marker,distance=2..,tag=prep_display,scores={prep_display=1..}] run scoreboard players set @s prep_display -1
execute unless entity @e[type=marker,distance=..1,tag=prep_display] if entity @e[type=marker,distance=..5,tag=prep_display] positioned ^ ^ ^0.1 run function game:click/raycast