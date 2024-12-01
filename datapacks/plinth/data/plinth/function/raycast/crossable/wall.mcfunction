# Walls can only be in a plus shape, so we check to see if the raycast is in the corners of the block.
execute store result score @s position run data get entity @s Pos[0] 16
scoreboard players operation @s position %= $16 math
execute store result score @s position2 run data get entity @s Pos[2] 16
scoreboard players operation @s position2 %= $16 math

execute if score @s position matches ..4 if score @s position2 matches ..4 run tag @s add continue
execute if score @s position matches ..4 if score @s position2 matches 13.. run tag @s add continue
execute if score @s position matches 13.. if score @s position2 matches ..4 run tag @s add continue
execute if score @s position matches 13.. if score @s position2 matches 13.. run tag @s add continue

execute unless entity @s[tag=continue] run function plinth:raycast/crossable/wall_plus