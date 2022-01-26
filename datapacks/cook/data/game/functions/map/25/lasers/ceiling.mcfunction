# Alternating
scoreboard players add @s laser_pos 1
execute if score @s[tag=ceiling_laser_outer] laser_pos matches ..39 run tag @s add active_laser
execute if score @s[tag=ceiling_laser_inner] laser_pos matches ..39 run tag @s remove active_laser
execute if score @s[tag=ceiling_laser_outer] laser_pos matches 40.. run tag @s remove active_laser
execute if score @s[tag=ceiling_laser_inner] laser_pos matches 40.. run tag @s add active_laser
execute if score @s laser_pos matches 79.. run scoreboard players reset @s laser_pos

# Effects
execute if entity @s[tag=active_laser] run particle dust 1 .1 .1 0.7 ~ 68.00 ~ 0.02 2 0.02 0 40 force
execute if entity @s[tag=active_laser] run particle dust_color_transition 1 .1 .1 .7 1 0.9 0.08 ~ 66.00 ~ .05 .05 .05 0 30 force
execute if entity @s[tag=active_laser] if score @s laser_pos matches 1 run playsound block.beacon.deactivate master @a ~ 66.10 ~ 0.4 0
execute if entity @s[tag=active_laser] if score @s laser_pos matches 40 run playsound block.beacon.deactivate master @a ~ 66.10 ~ 0.4 0

# Hitting player
execute as @a[tag=playing,gamemode=adventure,distance=..5] store result score @s laser_z run data get entity @s Pos[2] 100
execute if entity @s[tag=active_laser] positioned ~ 66.25 ~ as @a[distance=..0.75] at @s if score @s laser_z matches 200410..200490 run function game:map/25/burn