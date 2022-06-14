# Called to generate the recipes for the shuffle mode.

# Clear list
data remove storage orders_1 {}
data merge storage orders_1 {Recipe:[]}

# Updating the bank
function game:recipes/burgers
#scoreboard players set $calculate calculate 2
function game:mode_shuffle/add_recipe

#function game:recipes/soup

function game:recipes/sushi
function game:mode_shuffle/add_recipe

#function game:recipes/pizza

function game:recipes/tacos
function game:mode_shuffle/add_recipe

function game:recipes/ice_cream
function game:mode_shuffle/add_recipe

data remove storage orders_2 {}
data modify storage orders_2 Recipe set from storage orders_1 Recipe