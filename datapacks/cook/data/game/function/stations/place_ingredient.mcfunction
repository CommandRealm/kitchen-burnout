# Called by a station's interaction entity when a player tries to place an ingredient on it

# If the player doesn't have an item, return
execute on target unless score @s held_item matches 1.. run return 1

# Check if the station has an ingredient that it will be giving to the player in return
scoreboard players set $placed_ingredient station 0
execute as @n[type=item_display,tag=station,distance=..0.5] if data entity @s item run scoreboard players set $placed_ingredient station 1

# Get the held ingredient from the ingredient cache
data modify storage game:stations/place slot set value "container.0"
execute on target run function tools:storage/get_for_player {path:"game:ingredient",result_key:"place_ingredient"}
data modify storage game:stations/place id set from storage game:ingredient place_ingredient
data remove storage game:ingredient place_ingredient

# Place the ingredient on the station
execute as @n[type=item_display,tag=station,distance=..0.5] at @s run function game:inventory/get_ingredient with storage game:stations/place

# Clear the ingredient from the player's inventory unless the player is getting an ingredient in return
execute on target unless score $placed_ingredient station matches 1 run function game:inventory/clear_ingredient {slot:"weapon.mainhand"}

execute on target run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25

return 1