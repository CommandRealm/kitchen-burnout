# Only works at coordinates of -10 to 10 million because of scoreboard overload.
execute store result score @s calculate run data get entity @s Pos[0] 100
execute store result score @s x_velocity run scoreboard players operation @s calculate -= @s x_old

execute store result score @s calculate run data get entity @s Pos[1] 100
execute store result score @s y_velocity run scoreboard players operation @s calculate -= @s y_old

execute store result score @s calculate run data get entity @s Pos[2] 100
execute store result score @s z_velocity run scoreboard players operation @s calculate -= @s z_old

execute store result score @s x_old run data get entity @s Pos[0] 100
execute store result score @s y_old run data get entity @s Pos[1] 100
execute store result score @s z_old run data get entity @s Pos[2] 100
scoreboard players set @s calculate 0
