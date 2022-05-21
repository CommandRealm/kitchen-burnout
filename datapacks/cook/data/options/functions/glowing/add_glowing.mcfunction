setblock 6 66 40 air
playsound minecraft:ui.button.click master @s
scoreboard players add $glowing settings 1
execute if score $glowing settings matches 2.. run scoreboard players set $glowing settings 0
execute if score $glowing settings matches ..-1 run scoreboard players set $glowing settings 1

execute if score $glowing settings matches 0 run setblock 6 66 40 oak_wall_sign[facing=north]{Text1:'{"text":"Glowing","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Item Boxes:","color":"gray","bold":false}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:glowing/click_glowing"}}'}
execute if score $glowing settings matches 1 run setblock 6 66 40 oak_wall_sign[facing=north]{Text1:'{"text":"Glowing","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Item Boxes:","color":"gray","bold":false}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:glowing/click_glowing"}}'}


particle minecraft:cloud 6 65.825 41 0 0 0 0.05 10

kill @e[tag=display_glowing,type=armor_stand]
execute if score $glowing settings matches 0 run summon armor_stand 6 65.825 41 {DisabledSlots:2039583,Tags:["display_glowing","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $glowing settings matches 1 run summon armor_stand 6 65.825 41 {DisabledSlots:2039583,Tags:["display_glowing","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}

