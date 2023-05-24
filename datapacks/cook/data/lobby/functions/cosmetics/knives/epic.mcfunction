scoreboard players set $mod random 9
function random:random
execute if score $output random matches 0 store success score $success random run tag @s add knife_6
execute if score $output random matches 1 store success score $success random run tag @s add knife_7
execute if score $output random matches 2 store success score $success random run tag @s add knife_8
execute if score $output random matches 3 store success score $success random run tag @s add knife_9
execute if score $output random matches 4 store success score $success random run tag @s add knife_10
execute if score $output random matches 5 store success score $success random run tag @s add knife_11
execute if score $output random matches 6 store success score $success random run tag @s add knife_12
execute if score $output random matches 7 store success score $success random run tag @s add knife_13
execute if score $output random matches 8 store success score $success random run tag @s add knife_14
execute if score $success random matches 1.. run tellraw @s ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"You unlocked a new ","color":"green"},{"translate":"Epic Knife","color":"dark_purple"},{"text":"!\n","color":"green"},{"translate":"- Check it out in the Cosmetics tab in your Ender Chest.","color":"gray"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $success random matches 1.. run playsound entity.player.levelup master @s ~ ~ ~ 100 0