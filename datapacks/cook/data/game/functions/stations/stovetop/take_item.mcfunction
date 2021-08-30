##Called to take the item off of the stove.

function game:stations/take_item

scoreboard players set @e[type=area_effect_cloud,tag=stovetop,sort=nearest,limit=1] station 0
scoreboard players set @e[type=area_effect_cloud,tag=stovetop,sort=nearest,limit=1] station_timer 0
execute at @e[type=area_effect_cloud,tag=stovetop,sort=nearest,limit=1] run kill @e[type=area_effect_cloud,tag=stovetop_indicator,sort=nearest,limit=1]