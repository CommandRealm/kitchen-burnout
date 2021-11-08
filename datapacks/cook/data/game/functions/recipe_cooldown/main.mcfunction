# Giving players a new recipe
scoreboard players remove @a[scores={recipe_cooldown=1..}] recipe_cooldown 1
execute as @a[scores={recipe_cooldown=0}] at @s if score $mode settings matches 0 run function game:recipe_cooldown/classic/order
execute as @a[scores={recipe_cooldown=0}] at @s if score $mode settings matches 0 run function game:recipe_cooldown/classic/ingredients