# X Position
execute store result score @s position run data get entity @s Pos[0] 16

scoreboard players operation @s position %= $16 math
execute if block ~ ~ ~ #minecraft:doors[open=false,facing=east] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=south,hinge=right] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=north,hinge=left] if score @s position matches 4.. run tag @s add continue

execute if block ~ ~ ~ #minecraft:doors[open=false,facing=west] if score @s position matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=south,hinge=left] if score @s position matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=north,hinge=right] if score @s position matches ..13 run tag @s add continue

execute store result score @s position run data get entity @s Pos[2] 16
scoreboard players operation @s position %= $16 math
execute if block ~ ~ ~ #minecraft:doors[open=false,facing=south] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=east,hinge=left] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=west,hinge=right] if score @s position matches 4.. run tag @s add continue

execute if block ~ ~ ~ #minecraft:doors[open=false,facing=north] if score @s position matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=east,hinge=right] if score @s position matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:doors[open=true,facing=west,hinge=left] if score @s position matches ..13 run tag @s add continue
