# Main cutting board function
scoreboard players operation @s station_timer += @s station_state

scoreboard players set @e[type=marker,tag=cutting_board,scores={station_timer=..-10}] station_state 2
scoreboard players set @e[type=marker,tag=cutting_board,scores={station_timer=10..}] station_state -2
