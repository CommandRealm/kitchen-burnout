# called to update the aec name
execute if data entity @e[type=armor_stand,tag=display_item,sort=nearest,limit=1] HandItems[0].tag{timer_type:"burger"} as @e[type=area_effect_cloud,tag=stovetop_indicator,sort=nearest,limit=1] at @s run function game:stations/stovetop/update_burger_name
execute if data entity @e[type=armor_stand,tag=display_item,sort=nearest,limit=1] HandItems[0].tag{timer_type:"charcoal"} as @e[type=area_effect_cloud,tag=stovetop_indicator,sort=nearest,limit=1] at @s run function game:stations/stovetop/update_charcoal_name