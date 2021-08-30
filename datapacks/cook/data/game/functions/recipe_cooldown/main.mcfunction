##Main recipe cooldown function
scoreboard players remove @a[scores={recipe_cooldown=1..}] recipe_cooldown 1
execute as @a[scores={recipe_cooldown=24}] at @s run function game:recipe_cooldown/order
execute as @a[scores={recipe_cooldown=0}] at @s run function game:recipe_cooldown/ingredients