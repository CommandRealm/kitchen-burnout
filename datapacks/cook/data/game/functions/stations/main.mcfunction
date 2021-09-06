# Called when a station has something going on.
execute if entity @e[type=marker,tag=cutting_board,scores={station=1..}] run function game:stations/cutting_board/main

execute if entity @e[type=marker,tag=stovetop,scores={station=1..}] run function game:stations/stovetop/main

execute as @e[type=marker,tag=prep_display] at @s run function game:stations/prep/main

# Additional timer if one is required.
scoreboard players add @e[type=marker,scores={station=1..}] station_timer 1