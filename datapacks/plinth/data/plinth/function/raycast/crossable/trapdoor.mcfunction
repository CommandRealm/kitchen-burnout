# Y only
execute store result score @s position run data get entity @s Pos[1] 16
scoreboard players operation @s position %= $16 math
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] if score @s position matches ..13 run tag @s add continue

# X and Z
execute store result score @s position run data get entity @s Pos[0] 16
execute store result score @s position2 run data get entity @s Pos[2] 16
scoreboard players operation @s position %= $16 math
scoreboard players operation @s position2 %= $16 math
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=east] if score @s position matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=west] if score @s position matches ..13 run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=south] if score @s position2 matches 4.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:trapdoors[open=true,facing=north] if score @s position2 matches ..13 run tag @s add continue
