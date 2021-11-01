# Called when our raycast hits something, checking for a full block's distance
# execute if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board]

execute if block ~ ~ ~ glass if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] unless score @s ingredient = @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] ingredient run function game:inventory/assign/ingredient