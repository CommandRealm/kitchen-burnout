# Called when our raycast hits a prep slot item
scoreboard players set $calculate calculate 0

execute as @e[tag=prep_slot,type=armor_stand,limit=1,sort=nearest] at @s run say @s
# Taking an item from the prep display
execute if score @s ingredient matches ..0 run function game:stations/prep/take_item
# Checking if an item can be added to the display
execute if score @s[tag=!took_item_tag] ingredient matches 1.. run function game:stations/prep/try_to_add_item

tag @s remove took_item_tag