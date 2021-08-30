##Called to create the bread ingredient box.
summon area_effect_cloud ~ ~ ~ {Age:-2147483648,Duration:-1,WaitTime:-2147483648,Tags:["ingredient_box","die_between_games","raycast_target"]}
setblock ~ ~ ~ glass
scoreboard players set @e[type=area_effect_cloud,sort=nearest,limit=1,tag=ingredient_box] ingredient 7