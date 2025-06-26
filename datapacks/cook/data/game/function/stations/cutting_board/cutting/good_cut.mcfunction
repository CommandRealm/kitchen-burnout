# Called by a cutting board that just had a good cut

# Juice
playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~ 1 1.25

scoreboard players add @s cutting_inputs_completed 1

# Check if the cutting inputs are completed
execute if score @s cutting_inputs_completed >= @s cutting_inputs_length run \
    function game:stations/cutting_board/result/finish