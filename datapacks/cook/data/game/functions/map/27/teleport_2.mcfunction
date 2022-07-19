# Campfire warmth kitchen
tp @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=27}] 13501 68 499 0 -5
spawnpoint @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=27}] 13501 68 499 0
execute at @a[tag=playing,tag=!tutorial,tag=team_2,scores={map=27}] run forceload add ~75 ~75 ~-50 ~-50

scoreboard players set @a[tag=playing,tag=team_2,scores={map=27}] campfire_heat 500

# Recipe set
scoreboard players set $food_type game 6