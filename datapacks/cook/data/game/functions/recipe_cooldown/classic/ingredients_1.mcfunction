# Displaying the ingredients.
scoreboard players reset @a[distance=..500] recipe_cooldown

team leave @e[type=marker,tag=recipe_ingredient,tag=!tutorial]

tellraw @a[distance=..500] [{"text":"-","color":"white"},{"text":"=","color":"gray"},{"text":"-","color":"white"},{"text":" ✯","color":"gold"},{"translate":" INGREDIENTS ","color":"green"},{"text":"✯ ","color":"gold"},{"text":"-","color":"white"},{"text":"=","color":"gray"},{"text":"-","color":"white"},{"text":"\n"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=!tutorial]","color":"yellow"}]

# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,tag=!tutorial]