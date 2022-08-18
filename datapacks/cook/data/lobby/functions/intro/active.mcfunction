# active intro text function

# adding to the intro timer
scoreboard players add @a[scores={intro=0..},tag=intro_text_call] intro 1

execute as @a[scores={intro=20..29},tag=intro_text_call] at @s run title @s times 0 25 5
# Cut 1 - Ki
execute as @a[scores={intro=20..29},tag=intro_text_call] at @s run title @s title ["",{"text":"Ki","color":"gray","bold":true}]
# Cut 2 - Kitch (perfect sound)
execute as @a[scores={intro=30..39},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitch","color":"gray","bold":true}]
# Cut 3 - Kitchen (finish cutting sound)
execute as @a[scores={intro=40..49},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen","color":"gray","bold":true}]
# Ticking sound of turning on a stove to make fire appear - Kitchen 🔥🔥🔥🔥🔥🔥🔥
execute as @a[scores={intro=50..59},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true}]
execute as @a[scores={intro=60},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥","color":"red"}]
execute as @a[scores={intro=61},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥","color":"red"}]
execute as @a[scores={intro=62},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=63},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=64},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=65},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=66},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"🔥🔥🔥🔥🔥🔥🔥","color":"red"}]
# Blaze.shoot as each letter of BURNOUT appears from the fire
execute as @a[scores={intro=70},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"B","color":"red","bold":true},{"text":"🔥🔥🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=73},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BU","color":"red","bold":true},{"text":"🔥🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=76},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BUR","color":"red","bold":true},{"text":"🔥🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=79},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURN","color":"red","bold":true},{"text":"🔥🔥🔥","color":"red"}]
execute as @a[scores={intro=82},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNO","color":"red","bold":true},{"text":"🔥🔥","color":"red"}]
execute as @a[scores={intro=85},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNOU","color":"red","bold":true},{"text":"🔥","color":"red"}]
execute as @a[scores={intro=88},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNOUT","color":"red","bold":true}]
# Ka-
execute as @a[scores={intro=93},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURN","color":"gold","bold":true},{"text":"OUT","color":"red","bold":true}]
# -BOOM
execute as @a[scores={intro=98},tag=intro_text_call] at @s run title @s title ["",{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNOUT","color":"gold","bold":true}]
# 2 flames appear again on the sides (Fwoom)
execute as @a[scores={intro=104},tag=intro_text_call] at @s run title @s title ["",{"text":"🔥 ","color":"red"},{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNOUT","color":"gold","bold":true},{"text":"🔥 ","color":"red"}]

# Mabye remove letters from both sides one by one as the end of the animation

execute as @a[scores={intro=101},tag=intro_text_call] at @s run title @s subtitle [{"text":"By"}]
execute as @a[scores={intro=102},tag=intro_text_call] at @s run title @s subtitle [{"text":"By th"}]
execute as @a[scores={intro=103},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"C","color":"aqua","bold":true}]
execute as @a[scores={intro=104},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Com","color":"aqua","bold":true}]
execute as @a[scores={intro=105},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Comma","color":"aqua","bold":true}]
execute as @a[scores={intro=106},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true}]
execute as @a[scores={intro=107},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true},{"text":" Re","color":"dark_aqua","bold":true}]
execute as @a[scores={intro=108},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true},{"text":" Real","color":"dark_aqua","bold":true}]
execute as @a[scores={intro=109},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true},{"text":" Realm ","color":"dark_aqua","bold":true},{"text":"T","color":"white","bold":false}]
execute as @a[scores={intro=110},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true},{"text":" Realm ","color":"dark_aqua","bold":true},{"text":"Tea","color":"white","bold":false}]
execute as @a[scores={intro=111},tag=intro_text_call] at @s run title @s subtitle [{"text":"By the "},{"text":"Command","color":"aqua","bold":true},{"text":" Realm ","color":"dark_aqua","bold":true},{"text":"Team","color":"white","bold":false}]
execute as @a[scores={intro=104..},tag=intro_text_call] at @s run title @s title ["",{"text":"🔥 ","color":"red"},{"text":"Kitchen ","color":"gray","bold":true},{"text":"BURNOUT","color":"gold","bold":true},{"text":" 🔥","color":"red"}]

##sounds
#execute as @a[tag=intro_text_call] at @s run playsound minecraft:block.note_block.hat master @a[scores={intro=40..48}] ~ ~ ~ 0.75 1.75
execute as @a[tag=intro_text_call,scores={intro=20}] at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1.25
execute as @a[tag=intro_text_call,scores={intro=30}] at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1.25
execute as @a[tag=intro_text_call,scores={intro=40}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.594604
execute as @a[tag=intro_text_call,scores={intro=40}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.749154
execute as @a[tag=intro_text_call,scores={intro=40}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 0.890899
#execute as @a[tag=intro_text_call,scores={intro=30}] at @s run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 1 1.189207
execute as @a[tag=intro_text_call,scores={intro=40}] at @s run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ 1 1.25
execute as @a[tag=intro_text_call,scores={intro=40}] at @s run playsound minecraft:entity.player.attack.crit master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=44}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=46}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=48}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=50}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=52}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=54}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=56}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=58}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=60}] at @s run playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 2
execute as @a[tag=intro_text_call,scores={intro=60}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0

execute as @a[tag=intro_text_call,scores={intro=70}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=73}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=76}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=79}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=82}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=85}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1
execute as @a[tag=intro_text_call,scores={intro=88}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 1

execute as @a[tag=intro_text_call,scores={intro=93}] at @s run playsound minecraft:entity.firework_rocket.blast master @s ~ ~ ~ 1 1.5

execute as @a[tag=intro_text_call,scores={intro=98}] at @s run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0

execute as @a[tag=intro_text_call,scores={intro=104}] at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0

#execute as @a[tag=intro_text_call] at @s run playsound minecraft:entity.firework_rocket.blast master @a[scores={intro=58}] ~ ~ ~ 0.5 1.5

#execute as @a[tag=intro_text_call] at @s run playsound minecraft:block.note_block.hat master @a[scores={intro=78..86}] ~ ~ ~ 0.75 1.25

#execute as @a[tag=intro_text_call] at @s run playsound minecraft:entity.firework_rocket.blast master @a[scores={intro=101..111}] ~ ~ ~ 0.25 1.0


##Ending function
execute as @a[scores={intro=111..},tag=intro_text_call] at @s run function lobby:intro/over