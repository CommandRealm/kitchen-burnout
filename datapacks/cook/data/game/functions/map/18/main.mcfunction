# Rotating platforms
execute as @e[type=marker,tag=platform_rotator] at @s run tp @s ~ ~ ~ ~.7 ~
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_n] ^ ^ ^-24
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_e] ^24 ^ ^
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_s] ^ ^ ^24
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_w] ^-24 ^ ^
execute as @e[type=marker,tag=rotating_platform] at @s run function game:map/18/move_platforms

# Falling
execute as @a[gamemode=adventure,tag=playing,scores={map=18}] at @s if entity @s[y=52,dy=7] run function game:map/18/falling