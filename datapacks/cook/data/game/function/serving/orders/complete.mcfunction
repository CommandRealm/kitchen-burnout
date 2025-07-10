# Called by a prep station that has just completed an order.
playsound entity.player.levelup master @a ~ ~ ~ 1 1.1
particle totem_of_undying ~ ~ ~ .1 .1 .1 1 20 force

# Remove ingredients
execute align xyz positioned ~ -64 ~ run kill @e[tag=prep_ingredient,dx=0,dy=384,dz=0]
data remove entity @s data.ingredients
data remove entity @s data.formatted_ingredients
scoreboard players set @s prep_index -1

# Get new recipe
function game:serving/get_new_random

# Announce the new recipe
execute store result storage game:serving/orders request int 1 run random value 1..10
function game:serving/orders/announce with storage game:serving/orders