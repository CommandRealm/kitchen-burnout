##Starting the ender chest PB screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 5

# TPing to close chest
tp @s ~ ~9 ~
tag @s add tp_back
effect give @s resistance 1 255 true
schedule function lobby:chest_menu/tp_back 2t append

# Show PBs (if there is one)
tellraw @s ["",{"text":"\n- ","color":"white"},{"translate":"COMPETITIVE PERSONAL BESTS","color":"gold","bold":true},{"text":" -","color":"white"},{"text":"\n------------------------------------","color":"gray"}]
execute if score @s comp_1 matches 2147483647 if score @s comp_2 matches 2147483647 if score @s comp_3 matches 2147483647 if score @s comp_4 matches 2147483647 if score @s comp_5 matches 2147483647 if score @s comp_6 matches 2147483647 if score @s comp_7 matches 2147483647 if score @s comp_8 matches 2147483647 if score @s comp_9 matches 2147483647 if score @s comp_10 matches 2147483647 if score @s comp_11 matches 2147483647 if score @s comp_12 matches 2147483647 if score @s comp_13 matches 2147483647 if score @s comp_14 matches 2147483647 if score @s comp_15 matches 2147483647 if score @s comp_16 matches 2147483647 if score @s comp_17 matches 2147483647 if score @s comp_18 matches 2147483647 if score @s comp_19 matches 2147483647 if score @s comp_20 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"dark_gray"},{"translate":"No scores to display!","color":"gray"}]

scoreboard players operation $calculate game_ticks = @s comp_1
function lobby:chest_menu/convert_pb
execute unless score @s comp_1 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Default Kitchen","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_2
function lobby:chest_menu/convert_pb
execute unless score @s comp_2 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Archery Range","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_3
function lobby:chest_menu/convert_pb
execute unless score @s comp_3 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Simple Parkour","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_4
function lobby:chest_menu/convert_pb
execute unless score @s comp_4 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"TNT Launchpads","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_5
function lobby:chest_menu/convert_pb
execute unless score @s comp_5 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Falling Ingredients","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_6
function lobby:chest_menu/convert_pb
execute unless score @s comp_6 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Simply Sushi","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_7
function lobby:chest_menu/convert_pb
execute unless score @s comp_7 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Riptide Sewers","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_8
function lobby:chest_menu/convert_pb
execute unless score @s comp_8 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Elytra Tunnels","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_9
function lobby:chest_menu/convert_pb
execute unless score @s comp_9 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Slime Jumps","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_10
function lobby:chest_menu/convert_pb
execute unless score @s comp_10 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Trident Fishing","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_11
function lobby:chest_menu/convert_pb
execute unless score @s comp_11 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Laser Laboratory","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_12
function lobby:chest_menu/convert_pb
execute unless score @s comp_12 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Sliding Platforms","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_13
function lobby:chest_menu/convert_pb
execute unless score @s comp_13 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Projectile Panic","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_14
function lobby:chest_menu/convert_pb
execute unless score @s comp_14 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Spinning Supports","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_15
function lobby:chest_menu/convert_pb
execute unless score @s comp_15 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Meteor Shower","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_16
function lobby:chest_menu/convert_pb
execute unless score @s comp_16 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Blizzard Blast","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_17
function lobby:chest_menu/convert_pb
execute unless score @s comp_17 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Frozen Paths","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_18
function lobby:chest_menu/convert_pb
execute unless score @s comp_18 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Thin Ice","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_19
function lobby:chest_menu/convert_pb
execute unless score @s comp_19 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Ice Bridges","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
scoreboard players operation $calculate game_ticks = @s comp_20
function lobby:chest_menu/convert_pb
execute unless score @s comp_20 matches 2147483647 run tellraw @s ["",{"text":"\n- ","color":"gray"},{"translate":"Trial by (Camp)fire","color":"blue","underlined":true},{"text":" — ","color":"gray"},{"nbt":"time","storage":"convert_pb","interpret":true}]
tellraw @s ["",{"text":"\n------------------------------------ ","color":"gray"}]