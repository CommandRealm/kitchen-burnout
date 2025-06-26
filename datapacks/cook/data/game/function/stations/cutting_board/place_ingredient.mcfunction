# Called when a player places an ingredient on the cutting board

# Call the common place_ingredient function
function game:stations/place_ingredient

# Check if this placed ingredient is a cuttable one, if so start the cutting process
data modify storage game:stations/cut/place input set from entity @s data.ingredient

# CUTTING INPUT PATTERNS
execute if data storage game:stations/cut/place {input:"tomato"} run function game:stations/cutting_board/cutting/enable {inputs:"↓→↓→↓→", length:6}
execute if data storage game:stations/cut/place {input:"lettuce_head"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓→→↓↓", length:6}

execute if data storage game:stations/cut/place {input:"avocado"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓→→↑↑", length:6}
execute if data storage game:stations/cut/place {input:"pufferfish"} run function game:stations/cutting_board/cutting/enable {inputs:"↓→→→→↑", length:6}
execute if data storage game:stations/cut/place {input:"salmon"} run function game:stations/cutting_board/cutting/enable {inputs:"↓←←←←←", length:6}

execute if data storage game:stations/cut/place {input:"lettuce_head_2"} run function game:stations/cutting_board/cutting/enable {inputs:"↓↓↓↓↓↓", length:6}

return 1