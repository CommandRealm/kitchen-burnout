# Rotating platforms
execute as @e[type=marker,tag=platform_rotator] at @s run tp @s ~ ~ ~ ~0.7 ~
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_n,limit=1,sort=nearest,distance=..500] ^ ^ ^-24
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_e,limit=1,sort=nearest,distance=..500] ^24 ^ ^
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_s,limit=1,sort=nearest,distance=..500] ^ ^ ^24
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_w,limit=1,sort=nearest,distance=..500] ^-24 ^ ^
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_ne,limit=1,sort=nearest,distance=..500] ^17 ^ ^-17
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_nw,limit=1,sort=nearest,distance=..500] ^-17 ^ ^-17
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_se,limit=1,sort=nearest,distance=..500] ^17 ^ ^17
execute as @e[type=marker,tag=platform_rotator] at @s run tp @e[type=marker,tag=rotating_platform,tag=platform_sw,limit=1,sort=nearest,distance=..500] ^-17 ^ ^17
execute as @e[type=marker,tag=rotating_platform] at @s run function game:map/18/move_platforms

# Falling
execute as @a[gamemode=adventure,tag=playing,scores={map=18}] at @s if entity @s[y=52,dy=7] run function game:map/18/falling