# Called by a cutting board item display that needs to convert a cuttable ingredient into a cut ingredient

# Stop the cutting process
function game:stations/cutting_board/cutting/stop
tag @s remove cuttable

# Store the ingredient that was cut
data remove storage game:stations/cut/finish input
data modify storage game:stations/cut/finish entity set value "@n[type=item_display,tag=station,distance=..0.5]"
data modify storage game:stations/cut/finish slot set value "container.0"
data modify storage game:stations/cut/finish input set from entity @s data.ingredient

# CUTTING RESULTS
execute if data storage game:stations/cut/finish {input:"tomato"} run data modify storage game:stations/cut/finish id set value "tomato_slice"
execute if data storage game:stations/cut/finish {input:"lettuce_head"} run data modify storage game:stations/cut/finish id set value "lettuce_leaf"

execute if data storage game:stations/cut/finish {input:"avocado"} run data modify storage game:stations/cut/finish id set value "avocado_slice"
execute if data storage game:stations/cut/finish {input:"pufferfish"} run data modify storage game:stations/cut/finish id set value "cut_pufferfish"
execute if data storage game:stations/cut/finish {input:"salmon"} run data modify storage game:stations/cut/finish id set value "cut_salmon"

execute if data storage game:stations/cut/finish {input:"lettuce_head_2"} run data modify storage game:stations/cut/finish id set value "lettuce_shreds"

# Get the final ingredient
function game:inventory/get_ingredient with storage game:stations/cut/finish

# Effects
particle end_rod ~ ~ ~ 0.2 0.05 0.2 0.1 25 force
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 2
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.594604
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.749154
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 0.890899
playsound minecraft:block.note_block.chime master @a ~ ~ ~ 0.5 1.189207