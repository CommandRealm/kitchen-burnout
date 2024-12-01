execute store result score @s position run data get entity @s Pos[1] 16
scoreboard players operation @s position %= $16 math
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] if score @s position matches 8.. run function plinth:raycast/crossable/stair_xz
execute if block ~ ~ ~ #minecraft:stairs[half=top] if score @s position matches ..7 run function plinth:raycast/crossable/stair_xz