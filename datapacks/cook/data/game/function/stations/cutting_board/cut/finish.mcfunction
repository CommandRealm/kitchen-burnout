# Called by a cutting board that needs to convert a cuttable ingredient into a cut ingredient
data remove storage game:stations/cut input
data modify storage game:stations/cut slot set value "container.0"
data modify storage game:stations/cut input set from entity @s item.components."minecraft:custom_data".ingredient

# FIXME: CUTTING RESULTS
execute if data storage game:stations/cut {input:"tomato"} run data modify storage game:stations/cut id set value "tomato_slice"
execute if data storage game:stations/cut {input:"lettuce_head"} run data modify storage game:stations/cut id set value "lettuce_leaf"

execute if data storage game:stations/cut {input:"avocado"} run data modify storage game:stations/cut id set value "avocado_slice"
execute if data storage game:stations/cut {input:"pufferfish"} run data modify storage game:stations/cut id set value "cut_pufferfish"
execute if data storage game:stations/cut {input:"salmon"} run data modify storage game:stations/cut id set value "cut_salmon"

execute if data storage game:stations/cut {input:"lettuce_head_2"} run data modify storage game:stations/cut id set value "lettuce_shreds"

function game:inventory/get_ingredient with storage game:stations/cut

title @a[tag=cutting,distance=..4] subtitle ""
title @a[tag=cutting,distance=..4] title ""

# Effects
particle end_rod ~ ~ ~ 0.2 0.05 0.2 0.1 25
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 2
