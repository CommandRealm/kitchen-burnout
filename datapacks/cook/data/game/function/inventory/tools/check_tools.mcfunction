# Called by players on each tick to check if they are holding a tool or should be


# TODO: Check for a spatula when near a cooking burger 

# Check for a knife near a cutting board with something cuttable on it
execute as @s[tag=!holding_knife,predicate=game:looking_at/cutting_board] run return run function game:inventory/tools/knife/start_holding
execute as @s[tag=holding_knife,predicate=!game:looking_at/cutting_board,tag=!cutting_mode] run return run function game:inventory/tools/knife/stop_holding

# Check for a spatula near a cutting board with something flippable on it
execute as @s[tag=!holding_spatula,predicate=game:looking_at/stovetop] run return run function game:inventory/tools/spatula/start_holding
execute as @s[tag=holding_spatula,predicate=!game:looking_at/stovetop] run return run function game:inventory/tools/spatula/stop_holding

# Check for fishing nets near a fish

# TODO: If they are looking at a prep ingredient/station it should show instructions (and maybe the name of the ingredient they're looking at?)

# Otherwise the player should just be holding nothing in their main hand