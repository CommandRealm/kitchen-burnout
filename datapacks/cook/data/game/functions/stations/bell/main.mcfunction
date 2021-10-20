# Match model to button power state
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=true] run function game:stations/bell/pressed
execute positioned ~-0.3125 ~1.6 ~-0.375 if block ~ ~ ~ spruce_button[powered=false] run function game:stations/bell/unpressed
execute if entity @e[type=armor_stand,tag=prep_slot,distance=..10] unless entity @e[type=armor_stand,tag=prep_slot,tag=final_position,distance=..10] as @e[type=marker,tag=prep_display,tag=check_to_serve,distance=..10,sort=nearest,limit=1,scores={prep_display=0}] at @s run function game:serve/check/main