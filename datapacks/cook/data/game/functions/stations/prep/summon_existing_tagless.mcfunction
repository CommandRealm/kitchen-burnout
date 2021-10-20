# Create item armor stands for compact display when looking away from prep station
execute if entity @s[tag=hamburger_bun] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","base_ingredient","primary_ingredient","hamburger_bun"]}
# Top bun
execute if entity @s[tag=hamburger_bun] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","hamburger_bun"]}
execute if entity @s[tag=burnt_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","burnt_hamburger"]}
execute if entity @s[tag=cheese] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","cheese"]}
execute if entity @s[tag=half_cooked_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","half_cooked_hamburger"]}
execute if entity @s[tag=hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","hamburger"]}
execute if entity @s[tag=lettuce_head] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","lettuce_head"]}
execute if entity @s[tag=lettuce_leaf] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","lettuce_leaf"]}
execute if entity @s[tag=raw_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","raw_hamburger"]}
execute if entity @s[tag=scorched_food] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","scorched_food"]}
execute if entity @s[tag=tomato_slice] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","tomato_slice"]}
execute if entity @s[tag=tomato] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["die_between_games","compact_display","primary_ingredient","tomato"]}

execute as @e[type=armor_stand,tag=hamburger_bun] at @s run function game:inventory/get_bread
execute as @e[type=armor_stand,tag=cheese] at @s run function game:inventory/get_cheese
execute as @e[type=armor_stand,tag=lettuce_head] at @s run function game:inventory/get_lettuce_head
execute as @e[type=armor_stand,tag=lettuce_leaf] at @s run function game:inventory/get_lettuce_leaf
execute as @e[type=armor_stand,tag=tomato] at @s run function game:inventory/get_tomato
execute as @e[type=armor_stand,tag=tomato_slice] at @s run function game:inventory/get_tomato_slice
execute as @e[type=armor_stand,tag=raw_hamburger] at @s run function game:inventory/get_raw_hamburger
execute as @e[type=armor_stand,tag=half_cooked_hamburger] at @s run function game:inventory/get_half_cooked_hamburger
execute as @e[type=armor_stand,tag=hamburger] at @s run function game:inventory/get_hamburger
execute as @e[type=armor_stand,tag=burnt_hamburger] at @s run function game:inventory/get_burnt_hamburger
execute as @e[type=armor_stand,tag=scorched_food] at @s run function game:inventory/get_scorched_food