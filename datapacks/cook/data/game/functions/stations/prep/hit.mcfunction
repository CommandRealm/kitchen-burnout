## UNUSED
# called when our raycast hits the prep table.

# Placing an item on the board
execute unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_item] HandItems[0].id if data entity @s Inventory[{Slot:4b}].tag{ingredient:1b} run function game:stations/order_window/place_item

# If we have no acceptable item
execute unless entity @s[tag=temporary_tag] unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_item] HandItems[0].id unless data entity @s Inventory[{Slot:4b}].tag{ingredient:1b} run function game:stations/order_window/invalid_action

tag @s remove temporary_tag