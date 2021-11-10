# Called to create the sushi rice ingredient box.
summon marker ~ ~ ~ {Tags:["ingredient_box","die_between_games","raycast_target"]}
setblock ~ ~ ~ glass
scoreboard players set @e[type=marker,sort=nearest,limit=1,tag=ingredient_box] ingredient 12