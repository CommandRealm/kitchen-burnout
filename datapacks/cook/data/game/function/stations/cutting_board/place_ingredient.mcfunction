# Called when a player places an ingredient on the cutting board

# Call the common place_ingredient function
function game:stations/place_ingredient

# Check if this placed ingredient is a cuttable one, if so start the cutting process
data remove storage game:stations/cut input
data modify storage game:stations/cut input set from \
    entity @n[type=item_display,tag=cutting_board,distance=..0.5] item.components."minecraft:custom_data".ingredient

# CUTTING INPUT PATTERNS
execute if data storage game:stations/cut {input:"tomato"} run function game:stations/cutting_board/cutting/enable {inputs:"↓→↓→↓→", length:6}
execute if data storage game:stations/cut {input:"lettuce_head"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓→↓↓", length:6}

execute if data storage game:stations/cut {input:"avocado"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓→→↑↑", length:6}
execute if data storage game:stations/cut {input:"pufferfish"} run function game:stations/cutting_board/cutting/enable {inputs:"↓→→→→↑", length:6}
execute if data storage game:stations/cut {input:"salmon"} run function game:stations/cutting_board/cutting/enable {inputs:"↓←←←←←", length:6}

execute if data storage game:stations/cut {input:"lettuce_head_2"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓↓↓↓↓", length:6}

return 1