# Called by a player that should enter cutting mode (e.g. left clicked a cutting board with a cuttable ingredient on it)
tag @s add cutting_mode
scoreboard players operation @s cutting_id = $transfer cutting_id

# Stop the player from moving
attribute @s movement_speed modifier add game:cutting_mode -1.0 add_multiplied_total