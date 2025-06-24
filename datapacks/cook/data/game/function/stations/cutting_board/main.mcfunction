# Main cutting board function

# If we're cutting, give our input display the inputs
execute store result storage game:stations/cut inputs.completed int 1 run scoreboard players get @s cutting_inputs 
execute store result storage game:stations/cut inputs.length int 1 run scoreboard players get @s cutting_inputs_length
execute as @s[tag=cutting] run function game:stations/cutting_board/show_inputs with storage game:stations/cut inputs

# Cutting cooldown
execute if score @s click_cooldown matches 1.. run scoreboard players remove @s click_cooldown 1
