execute if score @s ingredient matches 1..50 run advancement grant @s only game:inventory_changed
execute if score @s ingredient matches 1..50 run scoreboard players set @s ingredient 51
advancement grant @s only advancements:general_hazard

title @s times 0 95 15
title @s subtitle ["",{"translate":"Go to the edge of the snowglobe!","color":"red"}]
title @s title ""
title @s times 0 25 5