# called to asign our inventory slot to be bread
scoreboard players operation @s ingredient = @e[type=marker,distance=..1,tag=raycast_target,limit=1,sort=nearest,tag=ingredient_box] ingredient
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.67
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.75
execute at @s run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.89

# Updating our inventory
advancement grant @s only game:inventory_changed