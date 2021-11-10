# Replace item
loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/sushi/poison_pufferfish
scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 17

# Effects
playsound entity.squid.death master @a ~ ~ ~ 1 1.7
particle dust 0 0.753 0.188 1 ~ ~.5 ~ .2 .2 .2 1 20

# Resetting scores
scoreboard players reset @s station
scoreboard players reset @s station_timer
scoreboard players reset @s station_state

# Tag
tag @s remove cut_in_progress

# Clearing titles
title @a[tag=playing,distance=..3] title [{"text":""}]
title @a[tag=playing,distance=..3] subtitle [{"text":""}]