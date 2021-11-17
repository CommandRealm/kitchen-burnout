# Called when the cutting is finished

# Resetting scores
scoreboard players reset @s station
scoreboard players reset @s station_timer
scoreboard players reset @s station_state

# Tag
tag @s remove cut_in_progress

# Clearing titles
title @a[tag=playing,distance=..3] title [{"text":""}]
title @a[tag=playing,distance=..3] subtitle [{"text":""}]

# Particles
particle end_rod ~ ~ ~ 0.2 0.05 0.2 0.1 25

# Sound
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 2

# Changing the item
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 3 run loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/burgers/wide_lettuce_leaf
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 3 run scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 4
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 5 run loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/burgers/tomato_slice
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 5 run scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 6

execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 13 run loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/sushi/cut_salmon
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 13 run scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 15
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 14 run loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/sushi/cut_pufferfish
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 14 run scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 16
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 18 run loot replace entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] weapon.mainhand loot game:food/sushi/avocado_slice
execute if score @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient matches 18 run scoreboard players set @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1] ingredient 19