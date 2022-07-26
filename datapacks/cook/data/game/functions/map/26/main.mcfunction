# Pushing the armor stands
execute as @e[type=marker,tag=ice_bridge_button] at @s unless blocks ~ ~ ~ ~ ~ ~ ~ -63 ~ all run function game:map/26/button/push
# If the player falls in water
execute as @a[gamemode=adventure,tag=playing,scores={map=26,ingredient=1..50}] at @s if block ~ ~ ~ water run function game:map/26/in_water

# Get the armor stands out of the water if they fall in
execute as @e[type=armor_stand,tag=ice_bridge] at @s if block ~ ~ ~ water run tp @s @e[type=marker,tag=save_armor_stand,sort=nearest,limit=1,distance=..500]