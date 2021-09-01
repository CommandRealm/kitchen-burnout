# Called when we click on the cutting board without it being in the cutting state. It could be us placing an item down or picking an item up; or an invalid click.

# Removing an item on the board and having no item
execute if data entity @e[type=armor_stand,sort=nearest,limit=1,tag=cutting_board_item] HandItems[0].id if score @s ingredient matches ..0 run function game:stations/take_item
# Removing an item on the board and having an item
execute if data entity @e[type=armor_stand,sort=nearest,limit=1,tag=cutting_board_item] HandItems[0].id if score @s ingredient matches 1.. run function game:stations/cutting_board/invalid_action

# Placing an item on the board
execute if entity @s[tag=!temporary_tag] unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=cutting_board_item] HandItems[0].id if score @s ingredient matches 1.. run function game:stations/cutting_board/place_item

# If we have no item and the board is empty
execute unless data entity @e[type=armor_stand,sort=nearest,limit=1,tag=cutting_board_item] HandItems[0].id if score @s ingredient matches ..0 run function game:stations/cutting_board/invalid_action

tag @s add temporary_tag