scoreboard players operation @s iterations = @s ray_velocity
scoreboard players operation @s iterations *= $4 math
scoreboard players operation @s iterations /= $5 math
scoreboard players operation @s decimal_iterations = @s iterations

# Finds the number of times per tick the recursive function must play.
scoreboard players operation @s iterations /= $100 math

# Finds the decimal remainder of "iterations per tick" in a multiple of 100.
scoreboard players operation @s decimal_iterations %= $100 math

scoreboard players set @s extra_iteration 0
tag @s add velocity_math_done