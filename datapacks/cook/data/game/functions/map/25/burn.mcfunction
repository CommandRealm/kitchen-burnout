effect give @s blindness 2 1 true
effect give @s slowness 2 7 true
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ .2 0
title @s times 0 25 5
title @s title ["",{"translate":"ZAP!","color":"red","bold":true}]
execute unless score @s ingredient matches 0 run scoreboard players set @s ingredient 11
advancement grant @s only game:inventory_changed