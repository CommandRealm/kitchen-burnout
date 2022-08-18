# Called to place an item on the cutting board.

function game:stations/place_item

# Tutorial
tag @s[tag=tutorial] add tut_cut

# If we placed a cutting board item
execute as @e[type=marker,sort=nearest,limit=1,tag=cutting_board] at @s if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] HandItems[0].tag{cutting_board:1b} store result score @s station run data get entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] HandItems[0].tag.set_cutting_value
execute as @e[type=marker,sort=nearest,limit=1,tag=cutting_board] at @s if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] HandItems[0].tag{cutting_board:1b} run tag @s add cut_in_progress