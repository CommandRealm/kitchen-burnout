##called to transform the item.

execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 1 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 2 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 3 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 4 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 5 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 6 run scoreboard players set @s ingredient 11


execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 10 run scoreboard players set @s ingredient 11
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 9 run scoreboard players set @s ingredient 10
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 8 run scoreboard players set @s ingredient 9
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 7 run scoreboard players set @s ingredient 8

execute if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{timer_type:"charcoal"} run scoreboard players set @s ingredient 11

execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 8 run loot replace entity @s weapon.mainhand loot game:food/half_cooked_hamburger
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 9 run loot replace entity @s weapon.mainhand loot game:food/hamburger
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 10 run loot replace entity @s weapon.mainhand loot game:food/burnt_hamburger
execute as @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] at @s if score @s ingredient matches 11 run loot replace entity @s weapon.mainhand loot game:food/scorched_food

execute if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b} store result score @s station_timer run data get entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag.cooking_time
execute if data entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag{stovetop:1b} store result score @s station run data get entity @e[type=armor_stand,tag=stovetop_item,sort=nearest,limit=1] HandItems[0].tag.transform_point
