item replace entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] weapon.mainhand with stone
data modify entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] HandItems[0].id set from entity @s Inventory[{Slot:4b}].id
data modify entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] HandItems[0].Count set from entity @s Inventory[{Slot:4b}].Count
data modify entity @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] HandItems[0].tag set from entity @s Inventory[{Slot:4b}].tag
scoreboard players operation @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient = @s ingredient
scoreboard players set @s ingredient 0
item replace entity @s hotbar.4 with air

execute as @e[type=armor_stand,sort=nearest,limit=1,tag=display_item,scores={ingredient=4}] at @s run loot replace entity @s weapon.mainhand loot game:food/burgers/wide_lettuce_leaf

execute at @s run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25