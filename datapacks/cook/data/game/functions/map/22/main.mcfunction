# Sliding platforms
execute as @e[type=marker,tag=sliding_platform] at @s run function game:map/22/slide
# Fix platforms not being able to move at the start
scoreboard players set @e[type=marker,tag=sliding_platform,tag=!short_platform,scores={sliding_dir=0}] sliding_platform 40
scoreboard players set @e[type=marker,tag=sliding_platform,tag=!short_platform,scores={sliding_dir=0}] sliding_dir -1
scoreboard players set @e[type=marker,tag=sliding_platform,tag=short_platform,scores={sliding_dir=0}] sliding_platform -40
scoreboard players set @e[type=marker,tag=sliding_platform,tag=short_platform,scores={sliding_dir=0}] sliding_dir 1
# Falling
execute as @a[gamemode=adventure,tag=playing,scores={map=22}] at @s if entity @s[y=62,dy=17] run function game:map/22/falling