scoreboard players set $mod random 5
function random:random

execute if score $output random matches 0 run summon item 2483.1 82 524 {Item:{id:"minecraft:bread",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:-32768,Motion:[-1.0d,0.0d,0.0d],Tags:["die_between_games","honey_wall_pickup","hamburger_bun","needs_shift"]}
execute if score $output random matches 1 run summon item 2483.1 82 524 {Item:{id:"minecraft:yellow_dye",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:-32768,Motion:[-1.0d,0.0d,0.0d],Tags:["die_between_games","honey_wall_pickup","cheese","needs_shift"]}
execute if score $output random matches 2 run summon item 2483.1 82 524 {Item:{id:"minecraft:cactus",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:-32768,Motion:[-1.0d,0.0d,0.0d],Tags:["die_between_games","honey_wall_pickup","lettuce_head","needs_shift"]}
execute if score $output random matches 3 run summon item 2483.1 82 524 {Item:{id:"minecraft:apple",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:-32768,Motion:[-1.0d,0.0d,0.0d],Tags:["die_between_games","honey_wall_pickup","tomato","needs_shift"]}
execute if score $output random matches 4 run summon item 2483.1 82 524 {Item:{id:"minecraft:beef",Count:1b,tag:{CustomModelData:1}},PickupDelay:32767,Age:-32768,Motion:[-1.0d,0.0d,0.0d],Tags:["die_between_games","honey_wall_pickup","raw_hamburger","needs_shift"]}

# Slide over ingredients
scoreboard players set $mod random 10
function random:random
execute if score $output random matches 1.. as @e[type=item,tag=honey_wall_pickup,tag=needs_shift,limit=1] at @s run function game:map/17/shift
tag @e[type=item,tag=honey_wall_pickup,tag=needs_shift] remove needs_shift