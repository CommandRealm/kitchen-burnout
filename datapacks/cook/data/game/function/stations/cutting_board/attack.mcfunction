# Called when a player left clicks a cutting board, if there is a cuttable ingredient on the cutting board, start the cutting process
# If the player is already cutting, do nothing
execute on attacker as @s[tag=cutting_mode] run return fail

# Prepare the cutting board for the cutting process
execute as @s[tag=cuttable,tag=!cutting] run function game:stations/cutting_board/cutting/start

# Have the player that left clicked the cutting board enter cutting mode
scoreboard players operation $transfer cutting_id = @s cutting_id
execute on attacker as @s[tag=!cutting_mode] run function game:stations/cutting_board/mode/enter

data remove entity @s attack