execute as @e[type=armor_stand,tag=prep_slot,sort=furthest,distance=..5] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.01] positioned ~0.3125 ~-0.77 ~0.375 run tp @s ~ ~-0.07 ~
execute positioned ~0.3125 ~-0.77 ~0.375 if entity @e[type=armor_stand,tag=prep_slot,distance=..0.1] run particle poof ~-0.3125 ~0.85 ~-0.375 0.1 0 0.1 0 1 force
execute positioned ~0.3125 ~-0.77 ~0.375 run kill @e[type=armor_stand,tag=prep_slot,distance=..0.1]

execute unless entity @e[type=armor_stand,tag=prep_slot,distance=..5] run scoreboard players set @s prep_display 0