setblock 4 66 41 air
playsound minecraft:ui.button.click master @s
scoreboard players add $display_mode settings 1
execute if score $display_mode settings matches 4.. run scoreboard players set $display_mode settings 0
execute if score $display_mode settings matches ..-1 run scoreboard players set $display_mode settings 3

execute if score $display_mode settings matches 0 run setblock 4 66 41 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Classic","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 1 run setblock 4 66 41 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Competitive","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 2 run setblock 4 66 41 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Versus","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}
execute if score $display_mode settings matches 3 run setblock 4 66 41 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"blue","bold":true,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Mode:","color":"gray","bold":false}',Text3:'{"text":"Shuffle","color":"gold"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:mode/click_mode"}}'}


particle minecraft:cloud 4 67.825 42 0 0 0 0.05 10

kill @e[tag=display_mode,type=armor_stand]
execute if score $display_mode settings matches 0 run summon armor_stand 4 65.825 42 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_terracotta",Count:1b}]}
execute if score $display_mode settings matches 1 run summon armor_stand 4 65.825 42 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_terracotta",Count:1b}]}
execute if score $display_mode settings matches 2 run summon armor_stand 4 65.825 42 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_terracotta",Count:1b}]}
execute if score $display_mode settings matches 3 run summon armor_stand 4 65.825 42 {DisabledSlots:2039583,Tags:["display_mode","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_terracotta",Count:1b}]}


# specific mode settings


# turning time on/off
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -3 66 42 minecraft:quartz_bricks
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -3 67 42 minecraft:white_stained_glass
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run setblock -3 68 42 minecraft:white_carpet

execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run scoreboard players remove $time settings 1200
execute unless score $display_mode settings matches 1 unless score $display_mode settings matches 3 run function options:time/add_time

execute unless score $display_mode settings matches 2 unless score $display_mode settings matches 0 run fill -3 66 41 -3 68 42 air destroy
execute unless score $display_mode settings matches 2 unless score $display_mode settings matches 0 run kill @e[type=armor_stand,tag=display_time]

# turning time bonus on/off (should be off for comp and shuffle because it's always on)
execute unless score $display_mode settings matches 0 unless score $display_mode settings matches 2 unless block -5 66 40 air run fill -5 66 40 -5 67 41 air destroy
execute unless score $display_mode settings matches 0 unless score $display_mode settings matches 2 run kill @e[type=armor_stand,tag=display_bonus]

execute if score $display_mode settings matches 0 if block -5 66 41 air run setblock -5 67 41 white_stained_glass
execute if score $display_mode settings matches 0 if block -5 66 41 air run setblock -5 68 41 white_carpet
execute if score $display_mode settings matches 0 if block -5 66 41 air run setblock -5 66 41 quartz_bricks

execute if score $display_mode settings matches 0 run scoreboard players remove $bonus settings 1
execute if score $display_mode settings matches 0 run function options:bonus/add_bonus

execute if score $display_mode settings matches 2 if block -5 66 41 air run setblock -5 67 41 white_stained_glass
execute if score $display_mode settings matches 2 if block -5 66 41 air run setblock -5 68 41 white_carpet
execute if score $display_mode settings matches 2 if block -5 66 41 air run setblock -5 66 41 quartz_bricks

execute if score $display_mode settings matches 2 run scoreboard players remove $bonus settings 1
execute if score $display_mode settings matches 2 run function options:bonus/add_bonus
# setting mode
execute if score $display_mode settings matches 0 run scoreboard players set $mode settings 0
execute if score $display_mode settings matches 1 run scoreboard players set $mode settings 3
execute if score $display_mode settings matches 2 run scoreboard players set $mode settings 1
execute if score $display_mode settings matches 3 run scoreboard players set $mode settings 2