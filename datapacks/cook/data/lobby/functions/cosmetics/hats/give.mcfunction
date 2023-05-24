scoreboard players set $mod random 7
function random:random
execute if score $output random matches 0 store success score $success random run tag @s add hat_4
execute if score $output random matches 1 store success score $success random run tag @s add hat_5
execute if score $output random matches 2 store success score $success random run tag @s add hat_6
execute if score $output random matches 3 store success score $success random run tag @s add hat_7
execute if score $output random matches 4 store success score $success random run tag @s add hat_8
execute if score $output random matches 5 store success score $success random run tag @s add hat_9
execute if score $output random matches 6 store success score $success random run tag @s add hat_10
execute if score $success random matches 1.. if score $output random matches 0..3 run tellraw @s ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"You unlocked a new ","color":"green"},{"translate":"Epic Hat","color":"dark_purple"},{"text":"!\n","color":"green"},{"translate":"- Check it out in the Cosmetics tab in your Ender Chest.","color":"gray"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $success random matches 1.. if score $output random matches 4..6 run tellraw @s ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"You unlocked a new ","color":"green"},{"translate":"LEGENDARY Hat","color":"gold","bold":true},{"text":"!\n","color":"green"},{"translate":"- Check it out in the Cosmetics tab in your Ender Chest.","color":"gray"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $success random matches 1.. run playsound entity.player.levelup master @s ~ ~ ~ 100 0