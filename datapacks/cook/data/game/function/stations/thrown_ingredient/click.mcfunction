# Called by a thrown ingredient that has been right clicked on by a player to take the ingredient

# Cache our ingredient
data modify storage game:stations/take id set from entity @n[type=item_display,tag=thrown_ingredient,distance=..1] item.components."minecraft:custom_data".ingredient

# Have the player throw their ingredient if they have one
execute on target if score @s held_item matches 1.. run scoreboard players set @s click_length 30
execute on target if score @s held_item matches 1.. anchored eyes run function game:inventory/throwing/throw

# Give the player our ingredient
execute on target run function game:inventory/set_player_ingredient with storage game:stations/take

kill @n[type=item_display,tag=thrown_ingredient,distance=..1]
kill @s