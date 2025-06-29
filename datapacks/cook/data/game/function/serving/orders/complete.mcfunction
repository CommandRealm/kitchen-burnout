# Called by a prep station that has just completed an order.
playsound entity.player.levelup master @a ~ ~ ~ 1 1.1
particle totem_of_undying ~ ~ ~ .1 .1 .1 1 20 force

# Remove ingredients
execute align xyz positioned ~ -64 ~ run kill @e[tag=prep_ingredient,dx=0,dy=384,dz=0]
data remove entity @s data.ingredients
data remove entity @s data.formatted_ingredients
scoreboard players set @s prep_index -1

# TODO: Get new recipe depending on the food category (not just burgers, tutorial or otherwise)
function game:serving/recipes/category/tutorial_burgers
data modify entity @s data.current_recipe set from storage game:serving/recipe ingredients