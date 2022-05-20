# Sliding platforms
execute as @e[type=marker,tag=sliding_platform] at @s run function game:map/22/slide
# Falling
execute as @a[gamemode=adventure,tag=playing,scores={map=22}] at @s if entity @s[y=62,dy=17] run function game:map/22/falling