# Clearing previous stations
kill @e[tag=die_between_games,tag=!station_placer]

#scoreboard players set $max station_placer_x 60
#scoreboard players set $max station_placer_y 90
#scoreboard players set $max station_placer_z 60

# Set limits
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_20] max_placer_x 20
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_30] max_placer_x 30
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_40] max_placer_x 40
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_50] max_placer_x 50
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_60] max_placer_x 60
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_70] max_placer_x 70
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_80] max_placer_x 80

scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_10] max_placer_y 10
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_20] max_placer_y 20
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_30] max_placer_y 30
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_40] max_placer_y 40
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_50] max_placer_y 50
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_60] max_placer_y 60
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_70] max_placer_y 70
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=y_80] max_placer_y 80

scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_20] max_placer_z 20
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_30] max_placer_z 30
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_40] max_placer_z 40
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_50] max_placer_z 50
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_60] max_placer_z 60
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_70] max_placer_z 70
scoreboard players set @e[type=area_effect_cloud,tag=station_placer,tag=x_80] max_placer_z 80

# Start the station placer
#execute as @e[type=area_effect_cloud,tag=station_placer] at @s run tp @s ~-30 50 ~-30

execute as @e[type=area_effect_cloud,tag=station_placer] at @s run function game:map/station_placer

# Old System
#execute if entity @a[tag=playing,scores={map=1}] run function game:map/1/stations