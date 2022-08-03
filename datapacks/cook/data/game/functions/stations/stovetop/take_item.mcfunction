# Called to take the item off of the stove.

execute at @e[type=marker,tag=stovetop,sort=nearest,limit=1] if score @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient matches 11 run scoreboard players add @s ingredients_burnt 1
execute at @e[type=marker,tag=stovetop,sort=nearest,limit=1] if score @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient matches 11 run advancement grant @s[scores={ingredients_burnt=20..}] only advancements:milestone_20
function game:stations/take_item

scoreboard players set @e[type=marker,tag=stovetop,sort=nearest,limit=1] station 0
scoreboard players set @e[type=marker,tag=stovetop,sort=nearest,limit=1] station_timer 0
execute at @e[type=marker,tag=stovetop,sort=nearest,limit=1] run kill @e[type=area_effect_cloud,tag=stovetop_indicator,distance=..0.1,sort=nearest,limit=1]