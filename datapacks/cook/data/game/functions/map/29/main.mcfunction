# Check for standing on ice
execute as @a[gamemode=adventure,tag=playing,scores={map=29}] at @s align xyz positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:ice run function game:map/29/check
execute as @a[gamemode=adventure,tag=playing,scores={map=29}] at @s align xyz positioned ~ ~-2 ~ if block ~ ~ ~ #minecraft:ice run function game:map/29/check

execute as @a[gamemode=adventure,tag=playing,scores={map=29}] at @s if block ~ ~-.1 ~ water unless score @s ingredient matches 0 run function game:map/29/freeze

# Falling ice
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute as @e[type=armor_stand,tag=thin_ice] at @s if block ~ ~ ~ water run tp @s ~ ~-.1 ~
execute as @e[type=armor_stand,tag=thin_ice] at @s unless block ~ ~ ~ water run kill @e[tag=thin_ice,type=falling_block,distance=..1.5]
execute as @e[type=armor_stand,tag=thin_ice] at @s unless block ~ ~ ~ water run kill @s