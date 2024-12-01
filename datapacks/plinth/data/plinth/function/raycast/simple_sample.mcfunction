# Visual Display
scoreboard players add @s ray_display 1
execute if score @s ray_display matches 16 run scoreboard players remove @s ray_distance 1
execute if score @s ray_display matches 16 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @s[scores={ray_display=16..}] ray_display 0

# Hit Detection
# [Put code for detecting a hit on a entity on this line]

# Plays the function again 0.0625 blocks forwards.
execute unless entity @s[scores={ray_distance=..0}] positioned ^ ^ ^.0625 run function plinth:raycast/simple_sample