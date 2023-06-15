# Function that starts the countdown

# Prepares scores for the countdown.
scoreboard players set $countdown pregame 100
scoreboard players set $second pregame 20
# Other
title @a times 0 25 5

title @a[gamemode=adventure] title [{"text":"5","bold":true,"color":"gray"},{"translate":" seconds . . .","color":"white","bold":false}]
execute if score $display_mode settings matches 0 run tellraw @a ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Co-op","color":"gold","underlined":true},{"text":" (","color":"gray"},{"translate":"Classic","color":"gray"},{"text":")","color":"gray"},{"text":"\n- ","color":"gray"},{"translate":"All players must work together to complete as many recipes as possible before time runs out.","color":"green"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $display_mode settings matches 1 run tellraw @a ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Competitive (Speedrun)","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"One player must complete a set of three fixed recipes as fast as possible.","color":"green"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $display_mode settings matches 2 run tellraw @a ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Versus","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"Two teams compete to finish more recipes than the other before time runs out.","color":"green"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $display_mode settings matches 3 run tellraw @a ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Shuffle","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"Two teams race their way through each food type by completing one recipe in each of four kitchens as fast as possible.","color":"green"},{"text":"\n------------------------------------","color":"gray"}]

execute as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.5
execute as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 0.5
execute as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.2




# Sidebar obj
scoreboard objectives remove readied_players
scoreboard objectives add readied_players dummy [{"text":"-=-","color":"gray","bold":false},{"translate":" Playing ","color":"white","bold":true},{"text":"-=-","color":"gray","bold":false}]
scoreboard objectives setdisplay sidebar readied_players


execute as @e[type=armor_stand,tag=lobby_text_marker,limit=1,sort=nearest,x=4,y=92,z=31] at @s run data merge entity @s {ArmorItems:[{},{},{},{id:"stone",Count:1b,tag:{current:["C","a","n","c","e","l"],current_colored:[]}}]}