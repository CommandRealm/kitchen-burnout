# Called when our raycast hits something, checking for a half-block's distance
# execute if entity @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board]

execute at @e[type=marker,distance=..0.5,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board] run function game:stations/cutting_board/hit

execute at @e[type=marker,distance=..0.5,tag=raycast_target,limit=1,sort=nearest,tag=stovetop] run function game:stations/stovetop/hit

#execute at @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=order_window] run function game:stations/order_window/hit