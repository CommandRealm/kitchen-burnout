#tag @s remove using_fishing_net
#execute positioned ^ ^ ^3 if entity @e[type=#game:fish,tag=can_catch,distance=..2.5] run tag @s add using_fishing_net
 
# TODO: Check for a spatula when near a cooking burger 

# Check for a knife near a cutting board with something cuttable on it
execute as @s[tag=!holding_knife,predicate=game:looking_at/cutting_board] run return run function game:inventory/tools/start_holding_knife
execute as @s[tag=holding_knife,predicate=!game:looking_at/cutting_board] run return run function game:inventory/tools/stop_holding_knife

# Check for fishing nets near a fish
#execute as @s[tag=using_fishing_net] if score @s held_item matches 0 run return run function game:inventory/tools/start_holding_fishing_net

# Otherwise the player should just be holding an ingredient or nothing