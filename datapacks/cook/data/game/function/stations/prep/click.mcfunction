# Called by a prep station that has been right clicked on by a player to place an ingredient
# Can be called in two ways:
# 1. The player right clicks on the prep_base interaction when there is no other ingredient
# 2. The player right clicks on another ingredient which then transfers its interaction to the prep_base (which will then call this function)

# Check if the player is currently holding an ingredient
execute on target unless score @s held_item matches 1.. run return 1

# Get the held ingredient from the ingredient cache
execute on target run function tools:storage/get_for_player {path:"game:ingredient",result_key:"place_ingredient"}
data modify storage game:stations/place id set from storage game:ingredient place_ingredient
data remove storage game:ingredient place_ingredient

# Create a prep station ingredient with the held item
function game:stations/prep/ingredient/create with storage game:stations/place

# Clear the ingredient from the player's inventory unless the player is getting an ingredient in return
execute on target run function game:inventory/clear_ingredient {slot:"weapon.mainhand"}

scoreboard players set @s prep_display 0

execute on target run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25