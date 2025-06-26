# Called by a stovetop that is onverting an item to another
data remove storage game:stations/stove input
data modify storage game:stations/stove entity set value "@n[type=item_display,tag=stovetop,distance=..0.5]"
data modify storage game:stations/stove slot set value "container.0"
data modify storage game:stations/stove input set from entity @s data.ingredient

# Default burnt item
data merge storage game:stations/stove {id:"scorched_food",start:2,transform_point:1}

# COOKING RESULTS
execute if data storage game:stations/stove {input:"raw_hamburger"} run data merge storage game:stations/stove {id:"half_cooked_hamburger",start:150,transform_point:300}
execute if data storage game:stations/stove {input:"half_cooked_hamburger"} run data merge storage game:stations/stove {id:"hamburger",start:300,transform_point:500}
execute if data storage game:stations/stove {input:"hamburger"} run data merge storage game:stations/stove {id:"burnt_hamburger",start:500,transform_point:800}

execute if data storage game:stations/stove {input:"raw_beef"} run data merge storage game:stations/stove {id:"beef_taco",start:200,transform_point:400}

# Already burnt food
execute if data storage game:stations/stove {input:"scorched_food"} run function game:stations/stovetop/cook/scorched

# Get the ingredient
function game:inventory/get_ingredient with storage game:stations/stove

# Store cooking times
execute store result score @s station_timer run data get storage game:stations/stove start
execute store result score @s station run data get storage game:stations/stove transform_point