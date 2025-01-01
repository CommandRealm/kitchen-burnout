# Called by an ingredient box that has been clicked on by a player
data modify storage game:ingredient_box id set from entity @n[type=item_display,distance=..2] item.components."minecraft:custom_data".ingredient
data modify storage game:ingredient_box slot set value "weapon.mainhand"
# TODO: See if we need as @s[gamemode=adventure,tag=playing]
execute on target at @s run function game:inventory/set_player_ingredient with storage game:ingredient_box
data remove entity @s interaction