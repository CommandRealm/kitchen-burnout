# Called to take the item from the cutting board.
scoreboard players operation @s ingredient = @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient
item replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] weapon.mainhand with air
scoreboard players set @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient 0
tag @s add temporary_tag
advancement grant @s only game:inventory_changed
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1