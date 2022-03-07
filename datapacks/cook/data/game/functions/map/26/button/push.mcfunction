clone ~ -63 ~ ~ -63 ~ ~ ~ ~ replace force
# Tag for selection
tag @e[type=armor_stand,distance=..5,tag=ice_bridge] add temporary_tag
# X Motion
execute store result score @s ice_bridge run data get entity @s Pos[0]
execute as @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] store result score @s ice_bridge run data get entity @s Pos[0]
execute store result entity @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] Motion[0] double 2 run scoreboard players operation @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] ice_bridge -= @s ice_bridge
# Z Motion
execute store result score @s ice_bridge run data get entity @s Pos[2]
execute as @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] store result score @s ice_bridge run data get entity @s Pos[2]
execute store result entity @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] Motion[2] double 2 run scoreboard players operation @e[type=armor_stand,tag=ice_bridge,tag=temporary_tag,distance=..5,limit=1,sort=nearest] ice_bridge -= @s ice_bridge
# Remove tag
tag @e[type=armor_stand,tag=ice_bridge] remove temporary_tag