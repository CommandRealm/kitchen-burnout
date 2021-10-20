# Clearing previous stations
kill @e[tag=die_between_games,tag=!station_placer]

scoreboard players set $max station_placer_x 60
scoreboard players set $max station_placer_y 90
scoreboard players set $max station_placer_z 60

# Start the station placer
execute as @e[type=area_effect_cloud,tag=station_placer] at @s run tp @s ~-30 50 ~-30
execute as @e[type=area_effect_cloud,tag=station_placer] at @s run function game:map/station_placer

# Old System
#execute if entity @a[tag=playing,scores={map=1}] run function game:map/1/stations