# Called to create the salmon spawner
summon marker ~ ~ ~ {Tags:["salmon_spawner","die_between_games","fish_spawner","reset_boxes"]}
scoreboard players set @e[type=marker,tag=fish_spawner] station 1
setblock ~ ~ ~ water
#summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Size:2,Tags:["die_between_games","fish_spawner_pusher"],active_effects:[{id:"minecraft:invisibility",amplifier:1b,duration:1000000,show_particles:0b}]}