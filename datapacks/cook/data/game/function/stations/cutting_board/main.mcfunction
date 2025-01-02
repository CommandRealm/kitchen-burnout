# Main cutting board function
scoreboard players operation @s[tag=cuttable] station_timer += @s station_state

scoreboard players set @s[type=interaction,scores={station_timer=..-10}] station_state 2
scoreboard players set @s[type=interaction,scores={station_timer=10..}] station_state -2
