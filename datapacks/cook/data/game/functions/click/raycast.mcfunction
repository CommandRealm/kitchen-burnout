# Raycast
scoreboard players remove $calculate calculate 1

execute if entity @e[tag=raycast_target,limit=1,distance=..0.5] run function game:click/hit_half
execute if entity @e[tag=raycast_target,limit=1,distance=..1] run function game:click/hit_full

execute if entity @e[type=marker,tag=prep_display,limit=1,distance=..0.35] unless entity @e[type=armor_stand,tag=prep_slot,distance=..10] run function game:click/prep_slot_hit

execute if score @s[nbt={SelectedItemSlot:1}] map matches 11..15 if entity @e[tag=can_catch,limit=1,distance=..0.75] run function game:click/specific/catch_fish

execute positioned ~0.3125 ~-0.77 ~0.375 if entity @e[type=armor_stand,tag=prep_slot,distance=..0.35,tag=final_position] run function game:click/prep_slot_hit
execute if score $calculate calculate matches 1.. positioned ^ ^ ^0.1 run function game:click/raycast