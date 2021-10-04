# Raycast
scoreboard players remove $calculate calculate 1
execute if entity @e[tag=raycast_target,limit=1,distance=..1] run function game:click/hit
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[tag=prep_slot,limit=1,distance=..0.5] positioned ~0.3125 ~-0.77 ~0.375 run function game:click/prep_slot_hit
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.1 run function game:click/raycast