# Main stovetop function
# Sounds
scoreboard players operation $cooking_effects station_timer = @s station_timer
scoreboard players operation $cooking_effects station_timer %= $7 number
execute if score $cooking_effects station_timer matches 0 run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.04 0.8

# Particles
execute if score $cooking_effects station_timer matches 0 run particle smoke ~ ~ ~ 0.05 0.1 0.05 0.025 1


# Checking if we reached the transform point.
scoreboard players add @s station_timer 1
execute if score @s station_timer >= @s station run function game:stations/stovetop/cook/transform

# Displaying the timer
scoreboard players operation $cooking_effects station_timer = @s station_timer
scoreboard players operation $cooking_effects station_timer %= $20 number
execute if score $cooking_effects station_timer matches 0 run function game:stations/stovetop/cook/update_indicator
