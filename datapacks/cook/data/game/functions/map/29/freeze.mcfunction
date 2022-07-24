playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 100 0 1
execute if score @s ingredient matches 1..50 run effect give @s blindness 2 128 true

execute if score @s ingredient matches 1..50 run advancement grant @s only game:inventory_changed
execute if score @s ingredient matches 1..50 run scoreboard players set @s ingredient 51

title @s times 0 95 15
title @s subtitle ["",{"translate":"Go to the edge of the snowglobe!","color":"red"}]
title @s title ""
title @s times 0 25 5