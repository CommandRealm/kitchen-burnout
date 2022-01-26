# Effects
particle dust 1 .1 .1 0.7 ~ ~ ~ 1.1 0 0 0 20 force
# Hitting player
execute as @a[tag=playing,gamemode=adventure,distance=..5] store result score @s laser_z run data get entity @s Pos[2] 100
execute as @a[tag=playing,gamemode=adventure,distance=..5] at @s[y=65.00,dy=0.41,x=3001.00,dx=4] if score @s laser_z matches 200810..200890 run function game:map/25/burn 