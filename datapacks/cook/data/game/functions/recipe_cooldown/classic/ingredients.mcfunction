# called when the recipe cooldown is over.

# Resetting nearby players' timer.
scoreboard players reset @a[distance=..500,tag=playing,tag=!tutorial] recipe_cooldown

# Giving us the new recipe.
function game:recipe_cooldown/classic/ingredients_1

# Sound
execute as @a[distance=..500] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.707107
execute as @a[distance=..500] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 0.890899
execute as @a[distance=..500] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.5 1.059463
