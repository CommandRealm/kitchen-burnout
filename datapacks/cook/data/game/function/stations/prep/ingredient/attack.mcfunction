# Called by a prep ingredient that has been attacked to remove it from the prep station.

# Check if the player has an ingredient already that will have to be placed
scoreboard players set $holding_ingredient prep_display 0
execute on attacker if score @s held_item matches 1 run scoreboard players set $holding_ingredient prep_display 1

# If they do, first check if it's a valid ingredient for the current recipe
execute if score $holding_ingredient prep_display matches 1 run data modify storage game:stations/prep/check recipe set from entity @s data.current_recipe
execute if score $holding_ingredient prep_display matches 1 on attacker run function tools:storage/get_for_player {path:"game:inventory/ingredient",result_key:"place_ingredient"}
execute if score $holding_ingredient prep_display matches 1 run data modify storage game:stations/prep/check id set from storage game:inventory/ingredient place_ingredient
execute if score $holding_ingredient prep_display matches 1 run data remove storage game:inventory/ingredient place_ingredient
execute if score $holding_ingredient prep_display matches 1 store result score $valid_placement prep_display align xyz positioned ~ -64 ~ \
    as @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] run \
    function game:stations/prep/ingredient/check_if_valid with storage game:stations/prep/check

# If the held ingredient is not valid, let the player know and return
execute if score $holding_ingredient prep_display matches 1 if score $valid_placement prep_display matches 0 on attacker run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.25
execute if score $holding_ingredient prep_display matches 1 if score $valid_placement prep_display matches 0 on attacker run title @s actionbar \
    {"translate":"error.station.prep.cannot_remove","color":"red","bold":false}
execute if score $holding_ingredient prep_display matches 1 if score $valid_placement prep_display matches 0 run return 1

# If they do, simulate the player right clicking the prep station to place it
execute if score $holding_ingredient prep_display matches 1 align xyz positioned ~ -64 ~ run function game:stations/prep/ingredient/simulate_click

# Get our ingredient and give it to the player
data modify storage game:stations/take id set from entity @s data.ingredient
execute on attacker run function game:inventory/set_player_ingredient with storage game:stations/take
execute on attacker run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25

# Remove the ingredient from the prep station
function game:stations/prep/ingredient/remove with entity @s data

return 1