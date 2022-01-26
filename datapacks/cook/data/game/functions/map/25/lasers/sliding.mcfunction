# Effects
execute as @s[tag=sliding_laser_primary] run particle dust 1 .1 .1 0.3 ~1.8 ~1.4 ~ 1.1 0 0 1 80 force


# Y pos and movement
execute store result score @s laser_pos run data get entity @s Pos[1] 1000
execute unless score @s laser_slide_dir matches -1 run tp @s ~ ~.04 ~
execute if score @s laser_slide_dir matches -1 run tp @s ~ ~-.04 ~
execute if score @s laser_pos matches ..64900 run playsound block.beacon.ambient master @a ~ ~ ~ .7 0
execute if score @s laser_pos matches 67100.. run playsound block.beacon.ambient master @a ~ ~ ~ .7 0
execute if score @s laser_pos matches ..64900 run scoreboard players set @s laser_slide_dir 1
execute if score @s laser_pos matches 67100.. run scoreboard players set @s laser_slide_dir -1

# Hitting player
execute as @a[tag=playing,gamemode=adventure,distance=..5] store result score @s laser_pos run data get entity @s Pos[1] 1000
execute as @a[tag=playing,gamemode=adventure,distance=..5] store result score @s laser_z run data get entity @s Pos[2] 100
#execute as @a[tag=playing,gamemode=adventure,distance=..5] run scoreboard players remove @s laser_pos 65
execute as @a[tag=playing,gamemode=adventure,distance=..5] at @s run scoreboard players operation @s laser_pos -= @e[type=armor_stand,tag=sliding_laser_primary,distance=..5,limit=1] laser_pos
execute as @a[tag=playing,gamemode=adventure,distance=..5] at @s if score @s laser_z matches 200020..200080 if score @s[x=3001.00,dx=4] laser_pos matches -800..1100 run function game:map/25/burn 