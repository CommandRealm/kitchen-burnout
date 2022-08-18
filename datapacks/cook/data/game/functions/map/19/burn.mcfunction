effect give @s blindness 2 1 true
effect give @s slowness 2 3 true
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ .5 0
title @s times 0 25 5
#title @s title ["",{"text":"⚡","color":"#f00000","bold":true},{"translate":"ZAP","color":"#f00000","bold":true},{"text":"⚡","color":"#f00000","bold":true}]
execute unless score @s ingredient matches 0 run scoreboard players set @s ingredient 11
advancement grant @s only game:inventory_changed
advancement grant @s only advancements:general_hazard