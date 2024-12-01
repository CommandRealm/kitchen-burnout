# Fence gates can only be placed in a plus formation. If the fence gate is open, it treats it like air. 
execute store result score @s position run data get entity @s Pos[0] 16
scoreboard players operation @s position %= $16 math
execute store result score @s position2 run data get entity @s Pos[2] 16
scoreboard players operation @s position2 %= $16 math

tag @s add continue

execute if block ~ ~ ~ #minecraft:fence_gates[facing=south,open=false] if score @s position2 matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fence_gates[facing=east,open=false] if score @s position matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fence_gates[facing=north,open=false] if score @s position2 matches 8..9 run tag @s remove continue
execute if block ~ ~ ~ #minecraft:fence_gates[facing=west,open=false] if score @s position matches 8..9 run tag @s remove continue

