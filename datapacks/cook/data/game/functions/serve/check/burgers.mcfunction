# Check for a successful burger recipe
execute if entity @s[tag=!2] store result score $recipe_id game run data get storage orders_1 Recipe[0].id
execute if entity @s[tag=2] store result score $recipe_id game run data get storage orders_2 Recipe[0].id
execute if score $recipe_id game matches 0 if entity @s[tag=bun,tag=hamburger,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_leaf,tag=!lettuce_head,tag=!tomato_slice,tag=!tomato,tag=!cheese] run function game:serve/check/success
execute if score $recipe_id game matches 1 if entity @s[tag=bun,tag=hamburger,tag=lettuce_leaf,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_head,tag=!tomato_slice,tag=!tomato,tag=!cheese] run function game:serve/check/success
execute if score $recipe_id game matches 2 if entity @s[tag=bun,tag=hamburger,tag=tomato_slice,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_leaf,tag=!lettuce_head,tag=!tomato,tag=!cheese] run function game:serve/check/success
execute if score $recipe_id game matches 3 if entity @s[tag=bun,tag=hamburger,tag=lettuce_leaf,tag=tomato_slice,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_head,tag=!tomato,tag=!cheese] run function game:serve/check/success
execute if score $recipe_id game matches 4 if entity @s[tag=bun,tag=hamburger,tag=cheese,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_leaf,tag=!lettuce_head,tag=!tomato_slice,tag=!tomato] run function game:serve/check/success
execute if score $recipe_id game matches 5 if entity @s[tag=bun,tag=hamburger,tag=cheese,tag=lettuce_leaf,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_head,tag=!tomato_slice,tag=!tomato] run function game:serve/check/success
execute if score $recipe_id game matches 6 if entity @s[tag=bun,tag=hamburger,tag=cheese,tag=tomato_slice,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_leaf,tag=!lettuce_head,tag=!tomato] run function game:serve/check/success
execute if score $recipe_id game matches 7 if entity @s[tag=bun,tag=hamburger,tag=cheese,tag=lettuce_leaf,tag=tomato_slice,tag=!half_cooked_hamburger,tag=!raw_hamburger,tag=!burnt_hamburger,tag=!scorched_food,tag=!lettuce_head,tag=!tomato] run function game:serve/check/success

execute if entity @s[tag=add_new_recipe] run tag @a[gamemode=adventure,tag=playing,distance=..500] add order_burger
execute if entity @s[tag=add_new_recipe] run advancement grant @a[gamemode=adventure,tag=playing,distance=..500] only advancements:order_burger