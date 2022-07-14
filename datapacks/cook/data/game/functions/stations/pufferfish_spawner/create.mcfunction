# Called to create the pufferfish spawner
summon marker ~ ~ ~ {Tags:["pufferfish_spawner","die_between_games","fish_spawner","reset_boxes"]}
scoreboard players set @e[type=marker,tag=fish_spawner] station 1
setblock ~ ~ ~ water
#summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Size:2,Tags:["die_between_games","fish_spawner_pusher"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}