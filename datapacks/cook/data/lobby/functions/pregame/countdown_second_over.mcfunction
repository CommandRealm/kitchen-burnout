# Does math to display the seconds and then updates the title (also plays sound.)

# 
scoreboard players operation $display pregame = $countdown pregame
scoreboard players operation $display pregame /= $20 number


# Titles. It's two commands to avoid "1 seconds"
execute unless score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"gray","bold":true},{"text":" seconds . . .","color":"white","bold":false}]
execute if score $display pregame matches 1 run title @a[gamemode=adventure] title [{"score":{"objective":"pregame","name":"$display"},"color":"gray","bold":true},{"text":" second . . .","color":"white","bold":false}]


# Sounds

execute if score $display pregame matches 6.. as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.5
execute if score $display pregame matches 5 as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.6
execute if score $display pregame matches 4 as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.7
execute if score $display pregame matches 3 as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.8
execute if score $display pregame matches 2 as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 0.9
execute if score $display pregame matches 1 as @a at @s run playsound minecraft:block.metal.place master @s ~ ~ ~ 1.0


execute if score $display pregame matches 6.. as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.5
execute if score $display pregame matches 5 as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.6
execute if score $display pregame matches 4 as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.7
execute if score $display pregame matches 3 as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.8
execute if score $display pregame matches 2 as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 0.9
execute if score $display pregame matches 1 as @a at @s run playsound minecraft:block.wood.break master @s ~ ~ ~ 1 1.0


execute if score $display pregame matches 6 as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.9
execute if score $display pregame matches 5 as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 1.0
execute if score $display pregame matches 4 as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.8
execute if score $display pregame matches 3 as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 0.8
execute if score $display pregame matches 2 as @a at @s run playsound minecraft:block.anvil.land master @s ~ ~ ~ 1 0.7
execute if score $display pregame matches 1 as @a at @s run playsound minecraft:block.fire.extinguish master @s ~ ~ ~ 1 0.6

# Reset score
scoreboard players set $second pregame 20