# Function that starts the countdown

# Prepares scores for the countdown.
scoreboard players set $countdown pregame 100
scoreboard players set $second pregame 20
# Other
title @a times 0 25 5

title @a[gamemode=adventure] title [{"text":"5","bold":true,"color":"gray"},{"translate":" seconds . . .","color":"white","bold":false}]

execute as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.5
execute as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 0.5
execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.2




# Sidebar obj
scoreboard objectives remove readied_players
scoreboard objectives add readied_players dummy [{"text":"-=-","color":"gray","bold":false},{"translate":" Playing ","color":"white","bold":true},{"text":"-=-","color":"gray","bold":false}]
scoreboard objectives setdisplay sidebar readied_players


execute as @e[type=armor_stand,tag=lobby_text_marker,limit=1,sort=nearest,x=4,y=92,z=31] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["C","a","n","c","e","l"],current_colored:[]}}]}