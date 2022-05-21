setblock -5 66 40 air
playsound minecraft:ui.button.click master @s
scoreboard players add $bonus settings 1
execute if score $bonus settings matches 2.. run scoreboard players set $bonus settings 0
execute if score $bonus settings matches ..-1 run scoreboard players set $bonus settings 1

execute if score $bonus settings matches 0 run setblock -5 66 40 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time Bonus:","color":"gray","bold":false}',Text3:'{"text":"Off","color":"red"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:bonus/click_bonus"}}'}
execute if score $bonus settings matches 1 run setblock -5 66 40 oak_wall_sign[facing=north]{Text1:'{"text":"","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}',Text2:'{"text":"Time Bonus:","color":"gray","bold":false}',Text3:'{"text":"On","color":"green"}',Text4:'{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:bonus/click_bonus"}}'}


particle minecraft:cloud -5 65.825 41 0 0 0 0.05 10

kill @e[tag=display_bonus,type=armor_stand]
execute if score $bonus settings matches 0 run summon armor_stand -5 65.825 41 {DisabledSlots:2039583,Tags:["display_bonus","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_concrete",Count:1b}]}
execute if score $bonus settings matches 1 run summon armor_stand -5 65.825 41 {DisabledSlots:2039583,Tags:["display_bonus","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_concrete",Count:1b}]}

