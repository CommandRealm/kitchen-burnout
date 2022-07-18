# Checking for a correct recipe
execute unless entity @s[tag=tutorial] unless score $mode settings matches 2 run function game:serve/check/not_shuffle
execute unless entity @s[tag=tutorial] if score $mode settings matches 2 run function game:serve/check/shuffle
execute if entity @s[tag=tutorial] if entity @s[tag=hamburger_bun,tag=hamburger,tag=lettuce_leaf,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_head,tag=!tomato_slice,tag=!tomato,tag=!cheese] run function game:serve/check/success

# Failed Recipe
execute unless entity @s[tag=add_new_recipe] run function game:serve/check/fail
tag @s remove check_to_serve
tag @s remove add_new_recipe