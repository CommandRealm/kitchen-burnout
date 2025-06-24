# Called every tick by players in cutting mode
title @s subtitle [{keybind:"key.forward","color":"gold"}," ",{"text": "↑","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.left","color":"gold"}," ",{"text": "←","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.back","color":"gold"}," ",{"text": "↓","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.right","color":"gold"}," ",{"text": "→","color":"blue"}, \
    {"text":" | ","color":"gray"},{keybind:"key.sneak","color":"red"}," ",{"translate": "station.cutting_board.exit","color":"red"}]

title @s title ""

execute as @s[predicate=game:crouch] run function game:stations/cutting_board/mode/exit