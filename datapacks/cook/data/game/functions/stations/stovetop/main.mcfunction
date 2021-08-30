##Main stovetop function
##scoreboard players add @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] station 1


##Sound
execute as @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] at @s run scoreboard players operation @s calculate = @s station_timer
scoreboard players operation @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] calculate %= $7 number
execute at @e[type=area_effect_cloud,tag=stovetop,scores={station=1..,calculate=0}] run playsound minecraft:entity.generic.extinguish_fire master @a ~ ~ ~ 0.04 0.8

##Particles
execute at @e[type=area_effect_cloud,tag=stovetop,scores={station=1..,calculate=0}] run particle smoke ~ ~ ~ 0.05 0.1 0.05 0.025 1


##Checking if we reached the transform point.
execute as @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] at @s if score @s station = @s station_timer run function game:stations/stovetop/transform_item

##Displaying the timer
execute as @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] at @s run scoreboard players operation @s calculate = @s station_timer
scoreboard players operation @e[type=area_effect_cloud,tag=stovetop,scores={station=1..}] calculate %= $20 number
execute as @e[type=area_effect_cloud,tag=stovetop,scores={station=1..,calculate=0}] at @s run function game:stations/stovetop/update_aec_name
