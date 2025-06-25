# Called by a cutting board that is done cutting (or has no players left in cutting mode)
tag @s remove cutting
execute align xyz run kill @n[type=text_display,tag=cutting_board_inputs,dx=0,dy=1,dz=0]

# Just in case, remove players in cutting mode that may have been left behind
scoreboard players operation $match cutting_id = @s cutting_id
execute as @a[tag=cutting_mode] if score @s cutting_id = $match cutting_id run function game:stations/cutting_board/mode/exit