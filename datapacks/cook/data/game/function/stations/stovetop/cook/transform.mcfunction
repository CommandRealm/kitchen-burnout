# Called by a stovetop that is onverting an item to another
data remove storage game:stations/cook input
data modify storage game:stations/cook entity set value "@n[type=item_display,tag=stovetop,distance=..0.5]"
data modify storage game:stations/cook slot set value "container.0"
data modify storage game:stations/cook input set from entity @s data.ingredient

# Default burnt item
data merge storage game:stations/cook {id:"scorched_food",start:2,transform_point:1}

# COOKING RESULTS
execute if data storage game:stations/cook {input:"raw_hamburger"} run data merge storage game:stations/cook {id:"half_cooked_hamburger",start:150,transform_point:300}
execute if data storage game:stations/cook {input:"half_cooked_hamburger"} run data merge storage game:stations/cook {id:"hamburger",start:300,transform_point:500}
execute if data storage game:stations/cook {input:"hamburger"} run data merge storage game:stations/cook {id:"burnt_hamburger",start:500,transform_point:800}

execute if data storage game:stations/cook {input:"raw_beef"} run data merge storage game:stations/cook {id:"beef_taco",start:200,transform_point:400}

# Already burnt food
execute if data storage game:stations/cook {input:"scorched_food"} run function game:stations/stovetop/cook/scorched

# Get the ingredient
function game:inventory/get_ingredient with storage game:stations/cook

# Store cooking times
execute store result score @s station_timer run data get storage game:stations/cook start
execute store result score @s station run data get storage game:stations/cook transform_point