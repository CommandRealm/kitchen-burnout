##Called to start our intro

##Titles
title @s times 40 20 0
#title @s subtitle [{"text":""}]
#title @s title [{"text":"Celestial ","color":"white","bold":false}]

##Intro score
scoreboard players set @s intro 0

##sound
playsound minecraft:entity.firework_rocket.launch master @s ~ ~ ~ 1 0
playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
playsound minecraft:block.beacon.deactivate master @s ~ ~ ~ 1 2
