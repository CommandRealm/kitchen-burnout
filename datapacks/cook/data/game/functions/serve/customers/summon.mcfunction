# "Portal"
execute if entity @s[tag=customer_line_north] run particle minecraft:totem_of_undying ^ ^1 ^-3 .5 .85 0 .2 200 force
execute if entity @s[tag=customer_line_east] run particle minecraft:totem_of_undying ^ ^1 ^-3 0 .85 .5 .2 200 force
execute if entity @s[tag=customer_line_south] run particle minecraft:totem_of_undying ^ ^1 ^-3 .5 .85 0 .2 200 force
execute if entity @s[tag=customer_line_west] run particle minecraft:totem_of_undying ^ ^1 ^-3 0 .85 .5 .2 200 force
# Create villagers
execute if entity @s[tag=customer_line_north] run summon villager ^ ^ ^-3 {Tags:["die_between_games","customer","update_line_pos"],HandItems:[{id:"minecraft:oak_pressure_plate",tag:{CustomModelData:1},Count:1b}],NoAI:1b,NoGravity:1b,Invulnerable:1b,Rotation:[180f]}
execute if entity @s[tag=customer_line_east] run summon villager ^ ^ ^-3 {Tags:["die_between_games","customer","update_line_pos"],HandItems:[{id:"minecraft:oak_pressure_plate",tag:{CustomModelData:1},Count:1b}],NoAI:1b,NoGravity:1b,Invulnerable:1b,Rotation:[-90f]}
execute if entity @s[tag=customer_line_south] run summon villager ^ ^ ^-3 {Tags:["die_between_games","customer","update_line_pos"],HandItems:[{id:"minecraft:oak_pressure_plate",tag:{CustomModelData:1},Count:1b}],NoAI:1b,NoGravity:1b,Invulnerable:1b,Rotation:[0f]}
execute if entity @s[tag=customer_line_west] run summon villager ^ ^ ^-3 {Tags:["die_between_games","customer","update_line_pos"],HandItems:[{id:"minecraft:oak_pressure_plate",tag:{CustomModelData:1},Count:1b}],NoAI:1b,NoGravity:1b,Invulnerable:1b,Rotation:[90f]}