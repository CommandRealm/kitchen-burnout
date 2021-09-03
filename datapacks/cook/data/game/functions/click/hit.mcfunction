# Called when our raycast hits something.
# execute if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board]

scoreboard players set $calculate calculate 0


execute if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] unless score @s ingredient = @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] ingredient run function game:inventory/assign/ingredient


execute if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board] run function game:stations/cutting_board/hit

execute at @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=stovetop] run function game:stations/stovetop/hit

execute at @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=order_window] run function game:stations/order_window/hit