# Match model to button power state
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=true] run function game:stations/bell/pressed
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=false] run function game:stations/bell/unpressed
execute if entity @e[type=armor_stand,tag=prep_slot,distance=..100] unless entity @e[type=armor_stand,tag=prep_slot,tag=final_position,distance=..100] as @e[type=marker,tag=prep_display,tag=check_to_serve,distance=..100,sort=nearest,limit=1,scores={prep_display=0}] at @s run function game:serve/check/main
execute as @e[type=armor_stand,tag=floating_score] at @s run tp @s ^ ^.015 ^.03 ~20 0
#execute as @e[type=armor_stand,tag=floating_score] store result entity @s Rotation[0] float 2 run scoreboard players get @s floating_text
execute as @e[type=armor_stand,tag=floating_score] run scoreboard players add @s floating_text 1
kill @e[type=armor_stand,tag=floating_score,scores={floating_text=30..}]