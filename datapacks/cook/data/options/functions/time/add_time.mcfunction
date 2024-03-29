setblock -4 66 44 air
playsound minecraft:ui.button.click master @s
scoreboard players add $time settings 1200
execute if score $time settings matches 12001.. run scoreboard players set $time settings 1200
execute if score $time settings matches ..0 run scoreboard players set $time settings 12000

scoreboard players operation $calculate calculate = $time settings
scoreboard players operation $calculate calculate /= $1200 number

execute if score $time settings matches 1200 run setblock -4 66 44 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time:","color":"gray","bold":false}', '[{"text":"1","color":"white"},{"translate":" minute","color":"blue"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time/click_time"}}'], has_glowing_text: false, color: "black"}}
execute if score $time settings matches 1200.. run setblock -4 66 44 oak_wall_sign[facing=north]{front_text:{messages:['{"text":"","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '{"translate":"Time:","color":"gray","bold":false}', '[{"score":{"objective":"calculate","name":"$calculate"},"color":"white"},{"translate":" minutes","color":"blue"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:time/click_time"}}'], has_glowing_text: false, color: "black"}}


particle minecraft:cloud -4 67.825 45 0 0 0 0.05 10

kill @e[tag=display_time,type=armor_stand]
execute if score $calculate calculate matches 1 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:black_wool",Count:1b}]}
execute if score $calculate calculate matches 2 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:gray_wool",Count:1b}]}
execute if score $calculate calculate matches 3 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:purple_wool",Count:1b}]}
execute if score $calculate calculate matches 4 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:blue_wool",Count:1b}]}
execute if score $calculate calculate matches 5 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:brown_wool",Count:1b}]}

execute if score $calculate calculate matches 6 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_wool",Count:1b}]}
execute if score $calculate calculate matches 7 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_wool",Count:1b}]}
execute if score $calculate calculate matches 8 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1b}]}
execute if score $calculate calculate matches 9 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_wool",Count:1b}]}
execute if score $calculate calculate matches 10 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_time","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:green_wool",Count:1b}]}

