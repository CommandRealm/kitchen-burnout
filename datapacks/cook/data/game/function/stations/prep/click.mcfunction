# Called by a prep station that has been right clicked on by a player to place an ingredient
# Can be called in two ways:
# 1. The player right clicks on the prep_station interaction when there is no other ingredient
# 2. The player right clicks on another ingredient which then transfers its interaction to the prep_station (which will then call this function)

# Check if the player is currently holding an ingredient
execute on target unless score @s held_item matches 1.. run return 1

# Get the held ingredient from the ingredient cache
execute on target run function tools:storage/get_for_player {path:"game:inventory/ingredient",result_key:"place_ingredient"}
data modify storage game:stations/place id set from storage game:inventory/ingredient place_ingredient
data remove storage game:inventory/ingredient place_ingredient

# Create a prep station ingredient with the held item above the ingredient with the highest positioning ID
scoreboard players set $max prep_position -2147483648
execute align xyz positioned ~ -64 ~ as @e[tag=prep,dx=0,dy=384,dz=0] run \
    scoreboard players operation $max prep_position > @s prep_position
execute align xyz positioned ~ -64 ~ as @e[tag=prep,dx=0,dy=384,dz=0] \
    if score @s prep_position = $max prep_position run tag @s add top_ingredient
execute align xyz positioned ~ -64 ~ at @n[tag=prep,dx=0,dy=384,dz=0,tag=top_ingredient] \
    positioned ~ ~0.025 ~ run \
        function game:stations/prep/ingredient/create with storage game:stations/place
execute align xyz positioned ~ -64 ~ run tag @n[tag=prep,dx=0,dy=384,dz=0,tag=top_ingredient] \
    remove top_ingredient

# Clear the ingredient from the player's inventory unless the player is getting an ingredient in return
execute on target run function game:inventory/clear_ingredient {slot:"weapon.offhand"}

# Start a new epoch to assign new positioning ids to all of the ingredients
function game:stations/prep/ingredient/positioning/new_epoch

function game:stations/prep/start_expanding

execute on target run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25