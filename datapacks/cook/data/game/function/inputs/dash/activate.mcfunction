scoreboard players set $strength player_motion.api.launch 3000
execute rotated ~ 30 run function player_motion:api/launch_looking

tag @s add dashed
#playsound minecraft:entity.breeze.jump master @s ~ ~ ~ 0.5 1.2

return 1