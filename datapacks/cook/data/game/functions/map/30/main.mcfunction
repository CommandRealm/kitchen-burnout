# Drop snow based on time left
scoreboard players operation $snowfall game_ticks = $const game_ticks
scoreboard players operation $snowfall game_ticks %= $200 number
execute if score $snowfall game_ticks matches 40 if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=!team_2] run function game:map/30/snow
execute if score $snowfall game_ticks matches 40 if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=team_2] run function game:map/30/snow_2

# Snow alert
execute if score $snowfall game_ticks matches 180 run playsound item.elytra.flying master @a[gamemode=adventure,tag=playing,scores={map=30}] ~ ~ ~ 20 1 .5
execute as @e[type=snowball,tag=snowfall] at @s unless block ~ ~-1 ~ air run playsound block.snow.step master @a ~ ~ ~ 1 0 
execute if score $snowfall game_ticks matches ..80 if score $flashing game_ticks matches 4..8 as @a[tag=playing,gamemode=adventure,scores={map=30}] at @s run function game:map/30/alert_low
execute if score $snowfall game_ticks matches ..80 if score $flashing game_ticks matches ..3 as @a[tag=playing,gamemode=adventure,scores={map=30}] at @s run function game:map/30/alert_high

# Player hit by snow
execute as @a[tag=playing,gamemode=adventure,scores={map=30}] at @s unless score @s freeze_time matches 1.. if blocks ~ ~2 ~ ~ 100 ~ ~ 319 ~ masked if entity @e[type=snowball,distance=..4] run function game:map/30/freeze
execute as @a[tag=playing,gamemode=adventure,scores={map=30,freeze_time=1..}] at @s run function game:map/30/frozen

# Particles
execute if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=!team_2] run particle snowflake 3473 110 1993 25 15 25 .5 4 force
execute if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=team_2] run particle snowflake 13473 110 1993 25 15 25 .5 4 force
execute if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=!team_2] if score $snowfall game_ticks matches ..120 run particle snowflake 3473 70 1993 15 5 15 .5 15
execute if entity @a[tag=playing,gamemode=adventure,scores={map=30},tag=team_2] if score $snowfall game_ticks matches ..120 run particle snowflake 13473 70 1993 15 5 15 .5 15
execute as @e[type=snowball,tag=snowfall] at @s if entity @a[tag=playing,gamemode=adventure,scores={map=30},distance=..100] run particle snowflake ~ ~ ~ 1 .1 1 0.001 0 force
execute as @e[type=snowball,tag=snowfall] at @s if entity @a[tag=playing,gamemode=adventure,scores={map=30},distance=..10] run particle snowflake ~ ~ ~ 1 .1 1 1 1
