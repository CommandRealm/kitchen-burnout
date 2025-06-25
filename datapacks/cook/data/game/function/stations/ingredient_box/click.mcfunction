# Called by an ingredient box that has been clicked on by a player
data modify storage game:ingredient_box id set from entity @s data.ingredient
data modify storage game:ingredient_box slot set value "weapon.mainhand"
execute on target at @s run function game:inventory/set_player_ingredient with storage game:ingredient_box