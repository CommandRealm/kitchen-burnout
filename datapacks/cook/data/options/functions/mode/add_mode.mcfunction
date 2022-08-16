setblock 5 66 44 air
playsound minecraft:ui.button.click master @s
scoreboard players add $display_mode settings 1
execute if score $display_mode settings matches 4.. run scoreboard players set $display_mode settings 0
execute if score $display_mode settings matches ..-1 run scoreboard players set $display_mode settings 3

execute if score $display_mode settings matches 0 run setblock 5 66 44 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Classic","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 1 run setblock 5 66 44 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Competitive","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 2 run setblock 5 66 44 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Versus","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 3 run setblock 5 66 44 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Shuffle","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}


particle minecraft:cloud 5 67.825 45 0 0 0 0.05 10

kill @e[tag=display_mode,type=armor_stand]
execute if score $display_mode settings matches 0 run summon armor_stand 5 65.825 45 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_terracotta",Count:1b}]}
execute if score $display_mode settings matches 1 run summon armor_stand 5 65.825 45 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_terracotta",Count:1b}]}
execute if score $display_mode settings matches 2 run summon armor_stand 5 65.825 45 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}
execute if score $display_mode settings matches 3 run summon armor_stand 5 65.825 45 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_terracotta",Count:1b}]}
# Mode Descriptions
execute if score $display_mode settings matches 0 positioned 5 66 44 run tellraw @a[distance=..6] ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Classic","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"All players must work together to complete as many recipes as possible before time runs out.","color":"green"}]
execute if score $display_mode settings matches 1 positioned 5 66 44 run tellraw @a[distance=..6] ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Competitive","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"One player must complete a set of three fixed recipes as fast as possible.","color":"green"}]
execute if score $display_mode settings matches 2 positioned 5 66 44 run tellraw @a[distance=..6] ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Versus","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"Two teams compete to finish more recipes than the other team before time runs out.","color":"green"}]
execute if score $display_mode settings matches 3 positioned 5 66 44 run tellraw @a[distance=..6] ["",{"text":"------------------------------------\n- ","color":"gray"},{"translate":"Mode: ","color":"white","bold":true},{"translate":"Shuffle","color":"gold","underlined":true},{"text":"\n- ","color":"gray"},{"translate":"Two teams race their way through each food type by completing one recipe in each of four kitchens as fast as possible.","color":"green"}]

# specific mode settings


# turning time on/off
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -4 66 45 minecraft:quartz_bricks
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -4 67 45 minecraft:white_stained_glass
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -4 68 45 minecraft:white_carpet
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run clone 5 66 46 5 66 46 -4 66 46
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -3 67 46 jungle_button[face=floor] replace

execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run scoreboard players remove $time settings 1200
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run function options:time/add_time

execute unless score $display_mode settings matches 2 unless score $display_mode settings matches 0 run fill -4 66 45 -4 68 45 air destroy
execute unless score $display_mode settings matches 2 unless score $display_mode settings matches 0 run kill @e[type=armor_stand,tag=display_time]

# turning time bonus on/off (should be off for comp and shuffle because it's always on)
execute unless score $display_mode settings matches 0 unless score $display_mode settings matches 2 unless block -6 66 44 air run fill -6 66 44 -6 68 44 air destroy
execute unless score $display_mode settings matches 0 unless score $display_mode settings matches 2 run kill @e[type=armor_stand,tag=display_bonus]

execute if score $display_mode settings matches 0 if block -6 66 44 air run setblock -6 67 44 white_stained_glass
execute if score $display_mode settings matches 0 if block -6 66 44 air run setblock -6 68 44 white_carpet
execute if score $display_mode settings matches 0 if block -6 66 44 air run setblock -6 66 44 quartz_bricks

execute if score $display_mode settings matches 0 run scoreboard players remove $bonus settings 1
execute if score $display_mode settings matches 0 run function options:bonus/add_bonus

execute if score $display_mode settings matches 2 if block -6 66 44 air run setblock -6 67 44 white_stained_glass
execute if score $display_mode settings matches 2 if block -6 66 44 air run setblock -6 68 44 white_carpet
execute if score $display_mode settings matches 2 if block -6 66 44 air run setblock -6 66 44 quartz_bricks

execute if score $display_mode settings matches 2 run scoreboard players remove $bonus settings 1
execute if score $display_mode settings matches 2 run function options:bonus/add_bonus
# setting mode
execute if score $display_mode settings matches 0 run scoreboard players set $mode settings 0
execute if score $display_mode settings matches 1 run scoreboard players set $mode settings 3
execute if score $display_mode settings matches 2 run scoreboard players set $mode settings 1
execute if score $display_mode settings matches 3 run scoreboard players set $mode settings 2

# Team platforms
execute if score $display_mode settings matches 2..3 unless block 6 66 38 blue_stained_glass unless entity @e[type=falling_block,tag=team_platform] run fill 6 65 38 7 65 37 minecraft:black_concrete
execute if score $display_mode settings matches 2..3 unless block 6 66 38 blue_stained_glass unless entity @e[type=falling_block,tag=team_platform] run fill 9 65 38 10 65 37 minecraft:black_concrete
execute if score $display_mode settings matches 2..3 unless block 6 66 38 blue_stained_glass unless entity @e[type=falling_block,tag=team_platform] run setblock 8 65 36 minecraft:black_concrete
execute if score $display_mode settings matches 2..3 unless block 6 66 38 blue_stained_glass unless entity @e[type=falling_block,tag=team_platform] run playsound block.stone.break master @a 9 65 38 3 0
execute if score $display_mode settings matches 2..3 unless block 6 66 38 blue_stained_glass unless entity @e[type=falling_block,tag=team_platform] run schedule function options:teams/launch_blocks 5t replace
execute unless score $display_mode settings matches 2..3 run function options:teams/remove_platforms