# Raycast
scoreboard players remove $calculate calculate 1

execute if entity @e[tag=raycast_target,limit=1,distance=..0.85] run function game:click/hit

execute if entity @e[type=marker,tag=prep_slot,limit=1,distance=..0.15] unless entity @e[type=armor_stand,tag=compact_display,distance=..10] run function game:click/prep_slot_hit

execute positioned ~0.3125 ~-0.77 ~0.375 if entity @e[type=armor_stand,tag=prep_slot,distance=..0.35] unless entity @e[type=armor_stand,tag=compact_display,distance=..10] run function game:click/prep_slot_hit
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.1 run function game:click/raycast