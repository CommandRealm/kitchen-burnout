scoreboard players set $mod random 5
function random:random
execute if score $output random matches 0 store success score $success random run tag @s add knife_15
execute if score $output random matches 1 store success score $success random run tag @s add knife_16
execute if score $output random matches 2 store success score $success random run tag @s add knife_17
execute if score $output random matches 3 store success score $success random run tag @s add knife_18
execute if score $output random matches 4 store success score $success random run tag @s add knife_19
execute if score $success random matches 1.. run tellraw @s ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"You unlocked a new ","color":"green"},{"translate":"LEGENDARY Knife","color":"gold","bold":true},{"text":"!\n","color":"green"},{"translate":"- Check it out in the Cosmetics tab in your Ender Chest.","color":"gray"},{"text":"\n------------------------------------","color":"gray"}]
execute if score $success random matches 1.. run playsound entity.player.levelup master @s ~ ~ ~ 100 0