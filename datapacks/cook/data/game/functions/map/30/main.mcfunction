scoreboard players operation $snowfall game_ticks = $timer game_ticks
scoreboard players operation $snowfall game_ticks %= $353 number
execute if score $snowfall game_ticks matches 0 run function game:map/30/snow

execute if blocks ~ ~2 ~ ~ 100 ~ ~ 319 ~ masked
execute as @e[type=snowball,tag=snowfall] at @s run particle snowflake ~ ~ ~ .25 .1 .25 0.001 1 force