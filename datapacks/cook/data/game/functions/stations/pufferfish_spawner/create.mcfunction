# Called to create the pufferfish spawner
summon marker ~ ~ ~ {Tags:["pufferfish_spawner","die_between_games","fish_spawner"]}
scoreboard players set @e[type=marker,tag=fish_spawner] station 1
setblock ~ ~ ~ water