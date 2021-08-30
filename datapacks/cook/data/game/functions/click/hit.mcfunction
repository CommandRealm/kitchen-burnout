##Called when our raycast hits something.
##execute if entity @e[type=area_effect_cloud,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board]

scoreboard players set $calculate calculate 0


execute if entity @e[type=area_effect_cloud,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] unless score @s ingredient = @e[type=area_effect_cloud,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] ingredient run function game:inventory/assign/ingredient


execute if entity @e[type=area_effect_cloud,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=cutting_board] run function game:stations/cutting_board/hit

execute at @e[type=area_effect_cloud,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=stovetop] run function game:stations/stovetop/hit


