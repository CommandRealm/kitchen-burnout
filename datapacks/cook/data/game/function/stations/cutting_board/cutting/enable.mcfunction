# Called by a cutting board that has just had a cuttable ingredient placed on it, takes in the required inputs and inputs length
tag @s add cuttable
$data modify entity @s data.cutting_board.inputs set value "$(inputs)"
scoreboard players set @s cutting_inputs_completed 0
$scoreboard players set @s cutting_inputs_length $(length)

data modify entity @s data.cutting_board.current_input set string entity @s data.cutting_board.inputs 0 1