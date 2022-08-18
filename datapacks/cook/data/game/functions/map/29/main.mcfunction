# Check for standing on ice
execute as @a[gamemode=adventure,tag=playing,scores={map=29}] at @s align xyz positioned ~ ~-1 ~ if block ~ ~ ~ #minecraft:ice run function game:map/29/check
execute as @a[gamemode=adventure,tag=playing,scores={map=29}] at @s align xyz positioned ~ ~-2 ~ if block ~ ~ ~ #minecraft:ice run function game:map/29/check

execute as @a[gamemode=adventure,tag=playing,scores={map=29},tag=!in_water,nbt={OnGround:0b}] at @s if block ~ ~-.1 ~ water run effect give @s blindness 2 128 true
execute as @a[gamemode=adventure,tag=playing,scores={map=29},tag=!in_water,nbt={OnGround:0b}] at @s if block ~ ~-.1 ~ water run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0 1
execute as @a[gamemode=adventure,tag=playing,scores={map=29},nbt={OnGround:0b}] at @s if block ~ ~-.1 ~ water run tag @s add in_water
execute as @a[gamemode=adventure,tag=playing,scores={map=29},tag=in_water] at @s run function game:map/29/freeze
execute as @a[gamemode=adventure,tag=playing,scores={map=29},tag=in_water,nbt={OnGround:1b}] at @s if block ~ ~ ~ air run tag @s remove in_water


# Falling ice
execute as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute as @e[type=marker,tag=danger_zone] at @s run fill ~-2 ~ ~-2 ~2 ~ ~2 air replace fire
fill 2538 104 1521 2510 124 1478 white_stained_glass replace minecraft:structure_void
fill 12538 104 1521 12510 124 1478 white_stained_glass replace minecraft:structure_void
execute as @e[type=armor_stand,tag=thin_ice] at @s if block ~ ~ ~ water run tp @s ~ ~-.07 ~
execute as @e[type=armor_stand,tag=thin_ice] at @s unless block ~ ~ ~ water run kill @e[tag=thin_ice,type=falling_block,distance=..1.5]
execute as @e[type=armor_stand,tag=thin_ice] at @s unless block ~ ~ ~ water run kill @s