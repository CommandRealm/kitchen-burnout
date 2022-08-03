# Meteor shower taco map
tag @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=19}] add m_19
tp @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=19}] 2525 103 1506 180 -5
spawnpoint @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=19}] 2525 103 1506 180
#execute at @a[tag=playing,tag=!tutorial,tag=!team_2,scores={map=18}] run forceload add ~180 ~180 ~-180 ~-180

# Station placer
#summon minecraft:area_effect_cloud 2958 64 1984 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_80","y_20"]}

# Recipe set
scoreboard players set $food_type game 5