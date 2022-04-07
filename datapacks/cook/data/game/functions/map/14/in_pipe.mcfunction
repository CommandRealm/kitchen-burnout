# Timer
scoreboard players add @s in_pipe_time 1
# Lock
execute if score @s in_pipe_time matches ..43 run tp @s 1962 -58 1507
effect give @s blindness 2 255 true
effect give @s invisibility 1 255 true
# Bonk
execute if score @s in_pipe_time matches 5 run playsound minecraft:block.iron_door.close master @s ~ ~ ~ 10 0.1 1
execute if score @s in_pipe_time matches 5 run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 10 .5 1
execute if score @s in_pipe_time matches 15 run playsound minecraft:item.trident.hit_ground master @s ~ ~ ~ 10 .5 1
execute if score @s in_pipe_time matches 15 run playsound minecraft:item.trident.return master @s ~ ~ ~ 10 2 1
execute if score @s in_pipe_time matches 15 run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 10 .3 1
execute if score @s in_pipe_time matches 20 run playsound minecraft:entity.iron_golem.death master @s ~ ~ ~ 10 .4 1
execute if score @s in_pipe_time matches 24 run playsound minecraft:block.anvil.destroy master @s ~ ~ ~ 10 .8 1
execute if score @s in_pipe_time matches 29 run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 10 1.4 1
execute if score @s in_pipe_time matches 35 run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 10 1.2 1
execute if score @s in_pipe_time matches 39 run playsound minecraft:entity.ender_dragon.hurt master @s ~ ~ ~ 10 1.8 1
title @s subtitle ["",{"translate":"*Metallic clangs and bonks*","color":"light_gray"}]
title @s title ""
# Leave Pipe
execute if score @s in_pipe_time matches 44 run tp @s 1972.71 61 1494.0
execute if score @s in_pipe_time matches 45.. run function game:map/14/leave_pipe