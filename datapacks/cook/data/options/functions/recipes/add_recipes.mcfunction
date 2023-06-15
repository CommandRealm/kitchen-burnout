setblock -4 66 44 air
playsound minecraft:ui.button.click master @s
scoreboard players add $recipes settings 1
execute if score $recipes settings matches 6.. run scoreboard players set $recipes settings 1
execute if score $recipes settings matches ..0 run scoreboard players set $recipes settings 5

setblock -4 66 44 oak_wall_sign[facing=north]{front_text:{messages:['{"translate":"Recipes","color":"gray","bold":false,"clickEvent":{"action":"run_command","value":"/execute if score $game state matches 1.. run function options:error"}}', '[{"translate":"Per Kitchen","color":"gray","bold":false},{"text":":","color":"gray"}]', '[{"score":{"objective":"settings","name":"$recipes"},"color":"white"}]', '{"text":"<<<         >>>","color":"#d4d4d4","bold":true,"clickEvent":{"action":"run_command","value":"/execute as @s at @s anchored eyes if score $game state matches 0 run function options:recipes/click_recipes"}}'], has_glowing_text: false, color: "black"}}

particle minecraft:cloud -4 67.825 45 0 0 0 0.05 10

kill @e[tag=display_recipes,type=armor_stand]

execute if score $recipes settings matches 1 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_recipes","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:red_wool",Count:1b}]}
execute if score $recipes settings matches 2 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_recipes","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:orange_wool",Count:1b}]}
execute if score $recipes settings matches 3 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_recipes","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:yellow_wool",Count:1b}]}
execute if score $recipes settings matches 4 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_recipes","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:lime_wool",Count:1b}]}
execute if score $recipes settings matches 5 run summon armor_stand -4 65.825 45 {DisabledSlots:2039583,Tags:["display_recipes","model"],Small:0b,Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:green_wool",Count:1b}]}

