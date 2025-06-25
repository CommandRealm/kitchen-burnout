# Main cutting board function

# If we're not cutting, return
execute as @s[tag=!cutting] run return 1

# If we're cutting, give our input display the inputs
execute store result storage game:stations/cut inputs.completed int 1 run scoreboard players get @s cutting_inputs_completed
scoreboard players operation +1 cutting_inputs_completed = @s cutting_inputs_completed
scoreboard players add +1 cutting_inputs_completed 1
execute store result storage game:stations/cut inputs.completed_plus_1 int 1 run scoreboard players get +1 cutting_inputs_completed
execute store result storage game:stations/cut inputs.length int 1 run scoreboard players get @s cutting_inputs_length
function game:stations/cutting_board/show_inputs with storage game:stations/cut inputs