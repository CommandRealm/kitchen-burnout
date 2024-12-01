execute store result score @s position run data get entity @s Pos[1] 16
scoreboard players operation @s position %= $16 math
execute store result score @s position2 run data get entity @s Pos[0] 16
scoreboard players operation @s position2 %= $16 math
execute unless block ~ ~ ~ #plinth:slab_like[type=top] if score @s position matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:slabs[type=top] if score @s position matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:slabs[type=double] run tag @s remove continue