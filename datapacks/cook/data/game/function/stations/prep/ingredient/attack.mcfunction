# Called by a prep ingredient that has been attacked to remove it from the prep station.

# Check if the player has an ingredient already that will have to be placed
scoreboard players set $holding_ingredient prep_display 0
execute on attacker if score @s held_item matches 1 run scoreboard players set $holding_ingredient prep_display 1

# If they do, simulate the player right clicking the prep station to place it
execute if score $holding_ingredient prep_display matches 1 align xyz positioned ~ -64 ~ run function game:stations/prep/ingredient/simulate_click

# Get our ingredient and give it to the player
data modify storage game:stations/take id set from entity @s data.ingredient
execute on attacker run function game:inventory/set_player_ingredient with storage game:stations/take
execute on attacker run playsound minecraft:block.dispenser.dispense master @s ~ ~ ~ 1 1.25

# Remove the ingredient from the prep station
function game:stations/prep/ingredient/remove with entity @s data

return 1