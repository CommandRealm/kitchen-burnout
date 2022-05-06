# Checking for a correct recipe
execute unless score $mode settings matches 2 run function game:serve/check/not_shuffle
execute if score $mode settings matches 2 run function game:serve/check/shuffle

# Failed Recipe
execute unless entity @s[tag=add_new_recipe] run function game:serve/check/fail
tag @s remove check_to_serve
tag @s remove add_new_recipe