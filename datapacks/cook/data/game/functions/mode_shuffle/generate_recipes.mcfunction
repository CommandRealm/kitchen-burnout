# Called to generate the recipes for the shuffle mode.

# Clear list
data remove storage orders_1 {}
data merge storage orders_1 {Recipe:[]}

# Updating the bank
function game:recipes/burgers
scoreboard players operation $calculate calculate = $recipes settings
function game:mode_shuffle/add_recipe

#function game:recipes/soup

function game:recipes/sushi
scoreboard players operation $calculate calculate = $recipes settings
function game:mode_shuffle/add_recipe

#function game:recipes/pizza

function game:recipes/tacos
scoreboard players operation $calculate calculate = $recipes settings
function game:mode_shuffle/add_recipe

function game:recipes/ice_cream
scoreboard players operation $calculate calculate = $recipes settings
function game:mode_shuffle/add_recipe

data remove storage orders_2 {}
data modify storage orders_2 Recipe set from storage orders_1 Recipe