# Check for a successful recipe depending on recipe table
execute if score $recipe game matches 1 run function game:serve/check/burgers
execute if score $recipe game matches 2 run function game:serve/check/soups
execute if score $recipe game matches 3 run function game:serve/check/sushi

# Failed Recipe
execute unless entity @s[tag=add_new_recipe] run function game:serve/check/fail
tag @s remove check_to_serve
tag @s remove add_new_recipe