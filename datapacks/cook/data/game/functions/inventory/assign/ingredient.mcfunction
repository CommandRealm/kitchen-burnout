# called to asign our inventory slot to match the ingredient box
scoreboard players operation @s ingredient = $assign ingredient
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.67
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.75
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.89

# Advancement
scoreboard players add @s ingredients_taken 1
advancement grant @s[scores={ingredients_taken=300..}] only advancements:milestone_boxes

# Tutorial messages
tag @s[tag=tutorial,tag=!tut_ingredient] add tut_ingredient
playsound block.note_block.pling master @s[tag=tutorial,tag=!tut_place] ~ ~ ~ 1 2
playsound block.note_block.pling master @s[tag=tutorial,tag=!tut_cut,scores={ingredient=3}] ~ ~ ~ 1 2
playsound block.note_block.pling master @s[tag=tutorial,tag=!tut_cook,scores={ingredient=7}] ~ ~ ~ 1 2
tellraw @s[tag=tutorial,tag=!tut_place] ["",{"text":"\n------------------------------------\n- ","color":"gray"},{"translate":"Assembling Orders:","color":"gold"},{"text":"\n- ","color":"gray"},{"translate":"Right click","color":"green"},{"translate":" on the "},{"translate":"Prep Station (Oak Pressure Plate)","color":"green"},{"translate":" to add an ingredient to the order."},{"text":"\n------------------------------------\n","color":"gray"}]
tellraw @s[tag=tutorial,tag=!tut_cut,scores={ingredient=3}] ["",{"text":"\n------------------------------------\n- ","color":"gray"},{"translate":"Cutting Ingredients:","color":"gold"},{"text":"\n- ","color":"gray"},{"translate":"Tomatoes, lettuce, avocados, and fish","color":"green"},{"translate":" must be "},{"translate":"cut","color":"green"},{"translate":" before being put in the order."},{"text":"\n- ","color":"gray"},{"translate":"Right click","color":"green"},{"translate":" on a "},{"translate":"Cutting Board (Spruce Pressure Plate)","color":"green"},{"translate":" to start cutting."},{"text":"\n------------------------------------\n","color":"gray"}]
tellraw @s[tag=tutorial,tag=!tut_cook,scores={ingredient=7}] ["",{"text":"\n------------------------------------\n- ","color":"gray"},{"translate":"Cooking Ingredients:","color":"gold"},{"text":"\n- ","color":"gray"},{"translate":"Raw hamburgers and ground beef","color":"green"},{"translate":" must be "},{"translate":"cooked","color":"green"},{"translate":" before being put in the order."},{"text":"\n- ","color":"gray"},{"translate":"Right click","color":"green"},{"translate":" on a "},{"translate":"Stovetop (Iron Pressure Plate)","color":"green"},{"translate":" to start cooking."},{"text":"\n- ","color":"gray"},{"translate":"Take it off","color":"green"},{"translate":" while the indicator is "},{"translate":"green","color":"green"},{"translate":" to make sure that it's properly cooked."},{"text":"\n------------------------------------\n","color":"gray"}]

# Updating our inventory
advancement grant @s only game:inventory_changed