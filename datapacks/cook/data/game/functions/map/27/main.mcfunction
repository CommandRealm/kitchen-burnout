# Lose heat
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s unless entity @e[type=marker,tag=campfire,distance=..4] run scoreboard players remove @s campfire_heat 1
# Warm up
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s if entity @e[type=marker,tag=campfire,distance=..4] run function game:map/27/warm_up

# Ambient Particles
execute if entity @a[gamemode=adventure,tag=playing,scores={map=27},tag=!team_2] run particle minecraft:snowflake 3493 76 499 20 10 20 .25 15 force
execute if entity @a[gamemode=adventure,tag=playing,scores={map=27},tag=team_2] run particle minecraft:snowflake 13493 76 499 20 10 20 .25 15 force


# Showing temperature
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s unless entity @e[type=marker,tag=campfire,distance=..4] run function game:map/27/temperature