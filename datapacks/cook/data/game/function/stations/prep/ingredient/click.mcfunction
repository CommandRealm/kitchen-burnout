# Called when a prep station ingredient is clicked on
# If the player is not holding an item, we simulate an attack as they probably want to remove this ingredient
scoreboard players set $holding_ingredient prep_display 0
execute on target if score @s held_item matches 1 run scoreboard players set $holding_ingredient prep_display 1

execute if score $holding_ingredient prep_display matches 0 run data modify entity @s attack set from entity @s interaction

# If the player is holding an item, we should forward the interaction to the prep_station so it can handle the placement
execute if score $holding_ingredient prep_display matches 1 align xyz positioned ~ -64 ~ run \
    data modify entity @n[type=interaction,tag=prep_station,dx=0,dy=384,dz=0] interaction set from entity @s interaction

data remove entity @s interaction