execute store result score @s position run data get entity @s Pos[0] 16
execute store result score @s position2 run data get entity @s Pos[2] 16
scoreboard players operation @s position2 %= $16 math
scoreboard players operation @s position %= $16 math

# Normal Stairs
execute if block ~ ~ ~ #minecraft:stairs[facing=south] if score @s position2 matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=east] if score @s position matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=west] if score @s position matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[facing=north] if score @s position2 matches 8.. run tag @s add continue

# Outside Corners
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=west] if score @s position2 matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=east] if score @s position2 matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=north] if score @s position matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=south] if score @s position matches ..7 run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=west] if score @s position2 matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=east] if score @s position2 matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left,facing=north] if score @s position matches 8.. run tag @s add continue
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right,facing=south] if score @s position matches 8.. run tag @s add continue

# Inside Corners
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=west] unless score @s position2 matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=east] unless score @s position2 matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=north] unless score @s position matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=south] unless score @s position matches ..7 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=west] unless score @s position2 matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=east] unless score @s position2 matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left,facing=north] unless score @s position matches 8.. run tag @s remove continue
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right,facing=south] unless score @s position matches 8.. run tag @s remove continue
