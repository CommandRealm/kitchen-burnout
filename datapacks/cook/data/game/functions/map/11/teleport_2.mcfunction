# Default sushi map
tag @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=11}] add m_11
tp @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=11}] 12023.0 64.0 -3.0 90 5
spawnpoint @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=11}] 12023 64 -3 90
#execute at @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=11}] run forceload add ~50 ~50 ~-50 ~-50

# Station placer
#summon minecraft:area_effect_cloud 1975 57 -21 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_50","y_20"]}


# Recipe set
scoreboard players set $food_type game 3