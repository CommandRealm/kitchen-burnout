# called when the recipe cooldown is over.

# Resetting nearby players' timer.
scoreboard players reset @a[distance=..500] recipe_cooldown

# Giving us the new recipe.
function lobby:tutorial/ingredients_1

# Sound
execute as @a[distance=..500,tag=tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.707107
execute as @a[distance=..500,tag=tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.890899
execute as @a[distance=..500,tag=tutorial] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1.059463
