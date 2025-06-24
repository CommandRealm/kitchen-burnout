# Called by a cutting board that should start the cutting process (a player has left clicked on it for the first time)
tag @s add cutting

# Create the input display (if there isn't one already)
execute align xyz unless entity @n[type=text_display,tag=cutting_board_inputs,dx=0,dy=1,dz=0] run summon text_display ~0.5 ~0.25 ~0.5 {Tags:["die_between_games","cutting_board","cutting_board_inputs"],text:"",alignment:"center","billboard":"center",background:0,transformation:{scale:[1.25f,1.25f,1.25f],left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],translation:[0.0f,0.0f,0.0f]}}