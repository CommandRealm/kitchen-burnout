scoreboard players set $mod random 6
function random:random
execute if score $output random matches 0 store success score $success random run tag @s add bell_10
execute if score $output random matches 1 store success score $success random run tag @s add bell_11
execute if score $output random matches 2 store success score $success random run tag @s add bell_12
execute if score $output random matches 3 store success score $success random run tag @s add bell_13
execute if score $output random matches 4 store success score $success random run tag @s add bell_14
execute if score $output random matches 5 store success score $success random run tag @s add bell_15
execute if score $success random matches 1.. run tellraw @s ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"You unlocked a new ","color":"green"},{"translate":"Epic","color":"dark_purple"}," ",{"translate":"Bell Sound","color":"green","bold":true},{"text":"!\n","color":"green"},{"translate":"- Check it out in the Cosmetics tab in your Ender Chest.","color":"gray"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $success random matches 1.. run playsound entity.player.levelup master @s ~ ~ ~ 100 0