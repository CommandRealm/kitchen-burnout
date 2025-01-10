# Called on right-click release, throwing the currently held ingredient in the direction the player is looking
# Get the held ingredient from the ingredient cache
data modify storage game:throwing slot set value "container.0"
function tools:storage/get_for_player {path:"game:ingredient",result_key:"throw_ingredient"}
data modify storage game:throwing id set from storage game:ingredient throw_ingredient
data remove storage game:ingredient throw_ingredient

execute store result storage game:throwing power float 0.05 run scoreboard players get @s click_length


function game:stations/thrown_ingredient/create with storage game:throwing

function game:inventory/clear_ingredient {slot:"weapon.mainhand"}
