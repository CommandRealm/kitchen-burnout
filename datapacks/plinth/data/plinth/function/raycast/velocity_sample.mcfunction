tag @s[tag=continue] remove continue
scoreboard players remove @s tick_iterations 1
tp @s ~ ~ ~

# Display
scoreboard players add @s[scores={tick_iterations=0..}] ray_display 1
execute if score @s ray_display matches 16 run scoreboard players remove @s ray_distance 1
execute if score @s ray_display matches 16 run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force @a
scoreboard players set @s[scores={ray_display=16..}] ray_display 0

# Hit Detection
execute positioned ~-0.1 ~-0.1 ~-0.1 as @e[type=villager,dx=0] positioned ~-0.8 ~-0.8 ~-0.8 if entity @s[dx=0] run say hit

# Gives the marker the "continue" tag if the raycast should continue
execute unless score @s ray_distance matches ..0 if block ~ ~ ~ air run tag @s add continue
execute unless score @s ray_distance matches ..0 if block ~ ~ ~ #plinth:crossable positioned ~ ~ ~ run function plinth:raycast/check
execute if score @s tick_iterations matches 0.. if entity @s[tag=continue] positioned ^ ^ ^.0625 run function plinth:raycast/velocity_sample
kill @s[tag=!continue]