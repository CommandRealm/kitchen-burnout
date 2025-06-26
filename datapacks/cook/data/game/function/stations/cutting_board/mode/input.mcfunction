# Called by a player in cutting mode that has pressed a WASD key to progress through the input sequence
#> input: The input that was pressed, e.g. "↑", "←", "↓", "→"
#> direction: The direction of the input, e.g. "forward", "left", "backward", "right"

scoreboard players operation $match cutting_id = @s cutting_id
# Check for a good input
$execute as @e[type=interaction,tag=cutting_board,tag=cutting] at @s if score @s cutting_id = $match cutting_id \
    if data entity @s data{current_input:"$(input)"} run function game:stations/cutting_board/cutting/good_cut

# Check for a bad input
$execute as @e[type=interaction,tag=cutting_board,tag=cutting] at @s if score @s cutting_id = $match cutting_id \
    unless data entity @s data{current_input:"$(input)"} run function game:stations/cutting_board/cutting/bad_cut

# Give a tag so that holding the input key down doesn't cause multiple inputs
$tag @s add cut_$(direction)