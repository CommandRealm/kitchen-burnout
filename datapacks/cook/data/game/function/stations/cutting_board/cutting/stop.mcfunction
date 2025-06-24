# Called by a cutting board with no remaining players cutting on it
tag @s remove cutting
execute align xyz run kill @n[type=text_display,tag=cutting_board_inputs,dx=0,dy=1,dz=0]