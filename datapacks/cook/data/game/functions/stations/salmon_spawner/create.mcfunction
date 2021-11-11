# Called to create the salmon spawner
summon marker ~ ~ ~ {Tags:["salmon_spawner","die_between_games","fish_spawner"]}
scoreboard players set @e[type=marker,tag=fish_spawner] station 1
setblock ~ ~ ~ water