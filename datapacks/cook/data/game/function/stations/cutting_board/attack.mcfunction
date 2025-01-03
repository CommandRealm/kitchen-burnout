# Called when a player left clicks a cutting board, if there is a cuttable ingredient on the cutting board, it will be cut
execute as @s[tag=cuttable] unless score @s click_cooldown matches 1.. run function game:stations/cutting_board/cut/cut

# Finished cutting an ingredient
execute as @s[tag=cuttable] if score @s station matches ..0 as @n[type=item_display,tag=cutting_board,distance=..0.5] at @s run function game:stations/cutting_board/cut/finish
execute as @s[tag=cuttable] if score @s station matches ..0 run tag @s remove cuttable

data remove entity @s attack