# Main cutting board function

# Bouncing bar animation
scoreboard players operation @s[tag=cuttable] station_timer += @s station_state
execute unless score @s[tag=cuttable] station_state matches -2147483648..2147483647 run scoreboard players set @s station_state 1
scoreboard players set @s[tag=cuttable,scores={station_timer=..-10}] station_state 1
scoreboard players set @s[tag=cuttable,scores={station_timer=10..}] station_state -1

# Cutting cooldown
execute if score @s click_cooldown matches 1.. run scoreboard players remove @s click_cooldown 1
