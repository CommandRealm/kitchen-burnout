# Called to clear the past order in the tutorial
# Glowing stuff
kill @e[type=marker,tag=recipe_ingredient,tag=tutorial]
tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tutorial] remove recipe_ingredient
team join no_collision @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tutorial]
kill @e[type=marker,tag=recipe_name,tag=tutorial]
function lobby:tutorial/ingredient_summon
# Add ingredient markers to missing team
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,tag=tutorial]