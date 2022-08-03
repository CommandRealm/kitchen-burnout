scoreboard players set $calculate calculate 0

# called to asign our inventory slot to be bread
scoreboard players operation @s ingredient = @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] ingredient
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.67
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.75
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.89

# Advancement
scoreboard players add @s ingredients_taken 1
advancement grant @s[scores={ingredients_taken=300..}] only advancements:milestone_boxes

# Updating our inventory
advancement grant @s only game:inventory_changed