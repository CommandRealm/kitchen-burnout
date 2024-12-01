# Fences can only be in a plus shape, so we check to see if the raycast is in the corners of the block.
execute store result score @s position run data get entity @s Pos[0] 16
scoreboard players operation @s position %= $16 math
execute store result score @s position2 run data get entity @s Pos[2] 16
scoreboard players operation @s position2 %= $16 math

execute if score @s position matches ..6 if score @s position2 matches ..6 run tag @s add continue
execute if score @s position matches ..6 if score @s position2 matches 11.. run tag @s add continue
execute if score @s position matches 11.. if score @s position2 matches ..6 run tag @s add continue
execute if score @s position matches 11.. if score @s position2 matches 11.. run tag @s add continue

execute unless entity @s[tag=continue] run function plinth:raycast/crossable/fence_plus
