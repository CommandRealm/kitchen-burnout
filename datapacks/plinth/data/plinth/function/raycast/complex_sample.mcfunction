# Teleports the entity to the new position.
tag @s[tag=continue] remove continue
tp @s ~ ~ ~

# Display
scoreboard players add @s ray_display 1
execute if score @s ray_display matches 16 run scoreboard players remove @s ray_distance 1
execute if score @s ray_display matches 16 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @s[scores={ray_display=16..}] ray_display 0

# Hit Detection
# [Put code for detecting a hit on a entity on this line]

# Gives the marker the "continue" tag if the raycast should continue
execute unless score @s ray_distance matches ..0 if block ~ ~ ~ air run tag @s add continue
execute unless score @s ray_distance matches ..0 if block ~ ~ ~ #plinth:crossable positioned ~ ~ ~ run function plinth:raycast/check
execute if entity @s[tag=continue] positioned ^ ^ ^.0625 run function plinth:raycast/complex_sample