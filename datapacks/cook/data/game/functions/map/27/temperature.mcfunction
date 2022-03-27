execute if score @s campfire_heat matches 350 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 2 1
execute if score @s campfire_heat matches 300 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 1.7 1
execute if score @s campfire_heat matches 250 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 1.4 1
execute if score @s campfire_heat matches 200 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 1.1 1
execute if score @s campfire_heat matches 150 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0.8 1
execute if score @s campfire_heat matches 100 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0.5 1
execute if score @s campfire_heat matches 50 run playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0.2 1

execute if score @s campfire_heat matches 300..349 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 1 force @s
execute if score @s campfire_heat matches 250..299 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 2 force @s
execute if score @s campfire_heat matches 200..249 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 3 force @s
execute if score @s campfire_heat matches 150..199 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 4 force @s
execute if score @s campfire_heat matches 100..149 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 5 force @s
execute if score @s campfire_heat matches 1..99 positioned ~ ~1.75 ~ run particle minecraft:snowflake ^ ^ ^.4 .4 .25 .4 0 6 force @s

execute if score @s campfire_heat matches 1..149 run title @s subtitle ["",{"translate":"Get to the ","color":"aqua","bold":true},{"translate":"Campfire!","color":"dark_aqua","bold":true,"underlined":true}]
execute if score @s campfire_heat matches 1..149 run title @s title ["",{"text":"❄ ","color":"aqua"},{"translate":"Too Cold!","color":"white"},{"text":" ❄","color":"aqua"}]

execute if score @s campfire_heat matches ..0 run function game:map/27/freeze