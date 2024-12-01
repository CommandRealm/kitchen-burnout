# Saves the players coordinates in 1/16th of a block.
execute store result score @s x run data get entity @s Pos[0] 16
execute store result score @s y run data get entity @s Pos[1] 16
execute store result score @s z run data get entity @s Pos[2] 16
execute store result score @s x_block run data get entity @s Pos[0] 1
execute store result score @s y_block run data get entity @s Pos[1] 1
execute store result score @s z_block run data get entity @s Pos[2] 1
