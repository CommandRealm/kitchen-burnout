##Called to generate the recipes for the default mode.


##Updating the bank
execute if score $recipe game matches 1 run function game:recipes/burgers


##Setting calculate
scoreboard players set $calculate calculate 75

data remove storage orders1 {}
data merge storage orders1 {Recipe:[]}
function game:default/add_recipe