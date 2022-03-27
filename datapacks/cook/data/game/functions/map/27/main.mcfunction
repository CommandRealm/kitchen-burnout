# Lose heat
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s unless entity @e[type=marker,tag=campfire,distance=..4] run scoreboard players remove @s campfire_heat 1
# Warm up
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s if entity @e[type=marker,tag=campfire,distance=..4] run function game:map/27/warm_up

# Showing temperature
execute as @a[gamemode=adventure,tag=playing,scores={map=27}] at @s unless entity @e[type=marker,tag=campfire,distance=..4] run function game:map/27/temperature