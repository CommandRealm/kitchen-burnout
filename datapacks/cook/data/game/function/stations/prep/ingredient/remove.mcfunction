# Called by a prep station ingredient that should be removed from the station.
#> Takes in the index of the ingredient to remove.

# Decrement the index of the prep station
execute align xyz positioned ~ -64 ~ run \
    scoreboard players remove @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] prep_index 1

# Decrement the index of all ingredients that were ahead of this one
$scoreboard players set $check prep_index $(index)
execute align xyz positioned ~ -64 ~ \
    as @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0] \
    if score @s prep_index > $check prep_index run \
    scoreboard players remove @s prep_index 1

kill @n[type=item_display,tag=prep_ingredient,distance=..0.25]
kill @s

# Remove the ingredient from the prep station's list
$execute align xyz positioned ~ -64 ~ run \
    data remove entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] \
    data.ingredients[$(index)]
$execute align xyz positioned ~ -64 ~ run \
    data remove entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] \
    data.formatted_ingredients[$(index)]


# Refresh the ingredient positioning
execute align xyz positioned ~ -64 ~ as @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] run \
    function game:stations/prep/ingredient/positioning/refresh