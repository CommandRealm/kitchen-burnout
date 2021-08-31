# Effects
effect give @a[tag=france] resistance 1 255 true
effect give @a[tag=france] saturation 1 255 true
#effect give @a[tag=france] jump_boost 1 0 true

# Wall Climb and Run
scoreboard players add @e[tag=paris_climbing] paris_age 1
execute as @a[tag=france] at @s run function vacation:france/movement/wall

# HUD
execute as @a[tag=france] if score @s paris_stamina matches 1..40 run function vacation:france/movement/hud

# Spring
execute as @a[tag=france] at @s if block ~ ~-1 ~ minecraft:piston_head run summon minecraft:creeper ~ ~1.1 ~ {Fuse:0,ExplosionRadius:1b,Silent:1b}
execute as @a[tag=france] at @s if block ~ ~-2 ~ minecraft:piston run particle minecraft:poof ~ ~-1 ~ 0.5 0.5 0.5 0.2 30 normal
execute as @a[tag=france] at @s align y if block ~ ~-1 ~ minecraft:piston[facing=up] positioned ~ ~-2 ~ unless entity @e[tag=paris_spring,distance=..1] run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["paris_spring"],Age:-2147483648,Duration:-1,WaitTime:-2147483648}
scoreboard players add @e[tag=paris_spring] paris_spring 1
execute as @e[tag=paris_spring,scores={paris_spring=1}] at @s run setblock ~ ~ ~ minecraft:redstone_block
execute as @e[tag=paris_spring,scores={paris_spring=8..}] at @s run setblock ~ ~ ~ air
execute as @e[tag=paris_spring,scores={paris_spring=8..}] at @s run kill @s

# Reset Scores
scoreboard players set @a[tag=france] paris_sneaking 0
scoreboard players set @a[tag=france] paris_wall_jump 0