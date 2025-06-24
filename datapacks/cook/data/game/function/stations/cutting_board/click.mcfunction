# Called by a cutting board that has been right clicked on by a player to take, place, or swap an ingredient

# Check if the player is currently holding an ingredient
scoreboard players set $holding_ingredient station 0
execute on target if score @s held_item matches 1.. run scoreboard players set $holding_ingredient station 1

# If we don't have an ingredient but the player does, take it from them and return
execute unless data entity @n[type=item_display,tag=cutting_board,distance=..0.5] item run return run function game:stations/cutting_board/place_ingredient

## BELOW HERE MEANS THAT WE HAD AN INGREDIENT TO BEGIN WITH
# Cache our ingredient
data modify storage game:stations/take id set from entity @n[type=item_display,tag=cutting_board,distance=..0.5] item.components."minecraft:custom_data".ingredient

# Remove our input display if we had one unless the player is giving us an ingredient
execute if score $holding_ingredient station matches 0 as @s[tag=cutting] align xyz run kill @n[type=text_display,tag=cutting_board_inputs,dx=0,dy=1,dz=0]
tag @s remove cutting

# Free players who are currently cutting on this cutting board
scoreboard players operation $match cutting_id = @s cutting_id
execute as @a[tag=cutting_mode] if score @s cutting_id = $match cutting_id run function game:stations/cutting_board/mode/exit

# If we have an ingredient and the player does too, take their ingredient and then give them ours
tag @s remove cuttable
execute if score $holding_ingredient station matches 1 run function game:stations/cutting_board/place_ingredient

# Give the player our ingredient
execute on target run function game:inventory/set_player_ingredient with storage game:stations/take

# Clear the ingredient from the cutting board if the player didn't give us one
execute if score $holding_ingredient station matches 0 as @n[type=item_display,distance=..2] run function game:inventory/clear_ingredient {slot:"container.0"}
