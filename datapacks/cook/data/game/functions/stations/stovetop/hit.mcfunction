# called when our raycast hits the stovetop.
scoreboard players set $calculate calculate 0

# Removing an item on the stovetop and having no item
execute if data entity @e[type=armor_stand,sort=nearest,limit=1,tag=stovetop_item] HandItems[0].id if score @s ingredient matches 0 run function game:stations/stovetop/take_item

# Swapping an item on the stovetop
execute if data entity @e[type=armor_stand,sort=nearest,limit=1,tag=stovetop_item] HandItems[0].id unless score @s ingredient matches 0 unless score @s ingredient matches 11 run function game:stations/stovetop/swap_item

# Placing an item on the board
execute unless score @s ingredient matches 11 unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=stovetop_item] HandItems[0].id if data entity @s Inventory[{Slot:4b}].tag{stovetop:1b} run function game:stations/stovetop/place_item

# If we have no acceptable item and the board is empty
execute if entity @s[tag=!temporary_tag] unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=stovetop_item] HandItems[0].id unless data entity @s Inventory[{Slot:4b}].tag{stovetop:1b} run function game:stations/stovetop/invalid_action
execute if entity @s[tag=!temporary_tag] if score @s ingredient matches 11 run function game:stations/stovetop/invalid_action

tag @s remove temporary_tag