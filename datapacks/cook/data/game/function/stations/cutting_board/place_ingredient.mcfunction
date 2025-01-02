# Called when a player places an ingredient on the cutting board

# If the player doesn't have an item, return
execute on target unless score @s held_item matches 1.. run return 1

# Check if the station has an ingredient that it will be giving to the player in return
scoreboard players set $placed_ingredient station 0
execute as @n[type=item_display,tag=cutting_board,distance=..0.5] if data entity @s item run scoreboard players set $placed_ingredient station 1

# Get the held ingredient from the ingredient cache
data remove storage game:cutting_board/place {}
data modify storage game:cutting_board/place slot set value "container.0"
execute on target run function tools:storage/get_for_player {path:"game:ingredient",result_key:"cutting_board"}
data modify storage game:cutting_board/place id set from storage game:ingredient cutting_board
data remove storage game:ingredient cutting_board

# Place the ingredient on the cutting board
execute as @n[type=item_display,tag=cutting_board,distance=..2] at @s run function game:inventory/get_ingredient with storage game:cutting_board/place

# TODO: Check if this placed ingredient is a cuttable one, if so give ourselves the cuttable tag and set the cutting properties

# Clear the ingredient from the player's inventory unless the player is getting an ingredient in return
execute on target unless score $placed_ingredient station matches 1 run function game:inventory/clear_ingredient {slot:"weapon.mainhand"}

execute on target run playsound minecraft:entity.egg.throw master @s ~ ~ ~ 1 0.69

return 1