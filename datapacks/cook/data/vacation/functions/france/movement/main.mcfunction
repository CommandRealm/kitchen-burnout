# Effects
effect give @a[tag=france] resistance 1 255 true
effect give @a[tag=france] saturation 1 255 true
#effect give @a[tag=france] jump_boost 1 0 true

# Wall Climb and Run
scoreboard players add @e[tag=move_climbing] move_age 1
execute as @a[tag=france] at @s run function vacation:france/movement/wall

# HUD
execute as @a[tag=france] if score @s move_stamina matches 1..40 run function vacation:france/movement/hud

# Springboard
execute as @a[tag=france] at @s if block ~ ~-1 ~ minecraft:piston_head run summon minecraft:creeper ~ ~1.1 ~ {Fuse:0,ExplosionRadius:1b,Silent:1b}
execute as @a[tag=france] at @s if block ~ ~-2 ~ minecraft:piston run particle minecraft:poof ~ ~-1 ~ 0.5 0.5 0.5 0.2 30 normal
execute as @a[tag=france] at @s align y if block ~ ~-1 ~ minecraft:piston[facing=up] positioned ~ ~-2 ~ unless entity @e[tag=move_springboard,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["move_springboard"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players add @e[tag=move_springboard] move_springboard 1
execute as @e[tag=move_springboard,scores={move_springboard=1}] at @s run setblock ~ ~ ~ minecraft:redstone_block
execute as @e[tag=move_springboard,scores={move_springboard=8..}] at @s run setblock ~ ~ ~ air
execute as @e[tag=move_springboard,scores={move_springboard=8..}] at @s run kill @s

# Reset Scores
scoreboard players set @a[tag=france] move_sneaking 0
scoreboard players set @a[tag=france] move_wall_jump 0