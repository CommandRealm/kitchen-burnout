# Called every tick by players in cutting mode
title @s subtitle [{keybind:"key.forward","color":"gold"}," ",{"text": "↑","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.left","color":"gold"}," ",{"text": "←","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.back","color":"gold"}," ",{"text": "↓","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.right","color":"gold"}," ",{"text": "→","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.sneak","color":"red"},{"text":"/","color":"red"}, \
    {keybind:"key.jump","color":"red"}," ",{"translate": "station.cutting_board.exit","color":"red"}]

title @s title ""

# Sneak/Jump to exit cutting mode
execute as @s[predicate=game:inputs/sneak] run return run function game:stations/cutting_board/mode/exit
execute as @s[predicate=game:inputs/jump] run return run function game:stations/cutting_board/mode/exit

# Make sure that only newly pressed inputs are processed
execute as @s[tag=cut_forward,predicate=!game:inputs/forward] run tag @s remove cut_forward
execute as @s[tag=cut_left,predicate=!game:inputs/left] run tag @s remove cut_left
execute as @s[tag=cut_backward,predicate=!game:inputs/backward] run tag @s remove cut_backward
execute as @s[tag=cut_right,predicate=!game:inputs/right] run tag @s remove cut_right

# WASD controls to progress though the input sequence
execute as @s[predicate=game:inputs/forward,tag=!cut_forward] run \
    return run function game:stations/cutting_board/mode/input {input:"↑", direction:"forward"}
execute as @s[predicate=game:inputs/left,tag=!cut_left] run \
    return run function game:stations/cutting_board/mode/input {input:"←", direction:"left"}
execute as @s[predicate=game:inputs/backward,tag=!cut_backward] run \
    return run function game:stations/cutting_board/mode/input {input:"↓", direction:"backward"}
execute as @s[predicate=game:inputs/right,tag=!cut_right] run \
    return run function game:stations/cutting_board/mode/input {input:"→", direction:"right"}
