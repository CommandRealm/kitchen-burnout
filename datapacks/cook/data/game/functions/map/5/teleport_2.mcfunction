# TNT launchpads burger kitchen
tag @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=5}] add m_5
tp @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=5}] 11100 72 1990 -15 5
spawnpoint @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=5}] 11100 72 1990 -15
#execute at @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=5}] run forceload add ~100 ~100 ~-100 ~-50

scoreboard players set @a[tag=playing,tag=team_2,scores={map=5}] tnt_launchpad 0

# Station placer
#summon minecraft:area_effect_cloud 987 60 494 {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["station_placer","die_between_games","x_30","y_10"]}


# Recipe set
scoreboard players set $food_type game 1