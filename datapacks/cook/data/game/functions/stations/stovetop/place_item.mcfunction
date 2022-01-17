# Called to place an item on the cutting board.

execute at @e[type=marker,sort=nearest,limit=1,tag=stovetop] run function game:stations/place_item


# If we placed a cutting board item
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b} store result score @s station_timer run data get entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag.cooking_time
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b} store result score @s station run data get entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag.transform_point
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b,timer_type:"burger"} run summon area_effect_cloud ~ ~0 ~ {Duration:800,Tags:["die_between_games","stovetop_indicator"],CustomNameVisible:1b,CustomName:'[{"text":""}]'}
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b,timer_type:"beef"} run summon area_effect_cloud ~ ~0 ~ {Duration:350,Tags:["die_between_games","stovetop_indicator"],CustomNameVisible:1b,CustomName:'[{"text":""}]'}
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b,timer_type:"charcoal"} run summon area_effect_cloud ~ ~0 ~ {Duration:200,Tags:["die_between_games","stovetop_indicator"],CustomNameVisible:1b,CustomName:'[{"text":""}]'}
execute as @e[type=marker,sort=nearest,limit=1,tag=stovetop] at @s as @e[type=area_effect_cloud,tag=stovetop_indicator,sort=nearest,limit=1] at @s run function game:stations/stovetop/update_aec_name