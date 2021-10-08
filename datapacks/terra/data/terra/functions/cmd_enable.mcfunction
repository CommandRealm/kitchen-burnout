tag @s add crmTterraform
scoreboard players set @s crmTshape 0
scoreboard players set @s crmTraycasthit 0
scoreboard players set $size crmTfill 200
scoreboard players set $random_texture_mod crmTrandom 2
tellraw @p {"text":"You have entered terraforming mode!","color":"aqua"}
tellraw @p ["",{"text":">> ","bold":true,"color":"dark_green"},{"text":"Usage List:","underlined":true,"color":"dark_blue"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Indication Particles]:","bold":true,"color":"blue"},{"text":" (Passive) ","color":"gold"},{"text":"You have yellow and light blue particles around you that indicate you are in terraforming mode.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Sphere Tool]:","bold":true,"color":"blue"},{"text":" (Snowball) ","color":"gold"},{"text":"Throwing a Snowball creates a large yellow sphere that replaces air.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [3 By 3 By 3 Tool]:","bold":true,"color":"blue"},{"text":" (Bat Spawn Egg) ","color":"gold"},{"text":"Creates a large 3 by 3 by 3 yellow cube.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Up Column Tool]:","bold":true,"color":"blue"},{"text":" (Bee Spawn Egg) ","color":"gold"},{"text":"Creates a yellow column that travels up 6 blocks.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Down Column Tool]:","bold":true,"color":"blue"},{"text":" (Blaze Spawn Egg) ","color":"gold"},{"text":"Creates a yellow column that travels down 6 blocks.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Shape Tool]:","bold":true,"color":"blue"},{"text":" (Cat Spawn Egg) ","color":"gold"},{"text":"Drop to create a shape at the block you are looking at.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Texture Tool]:","bold":true,"color":"blue"},{"text":" (Cave Spider Spawn Egg) ","color":"gold"},{"text":"Drop to set the block you are looking at to have a variated texture.","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Fill Tool]:","bold":true,"color":"blue"},{"text":" (Chicken Spawn Egg) ","color":"gold"},{"text":"Right click to fill in a 2D area. (Sneak while placing to fill in 3D.)","color":"yellow"}]
tellraw @p ["",{"text":">","bold":true,"color":"green"},{"text":" [Line Tool]:","bold":true,"color":"blue"},{"text":" (Shulker Spawn Egg) ","color":"gold"},{"text":"Spawn 2 shulkers then press the button in chat to make a line between the two nearest shulkers.","color":"yellow"}]