# Check for a successful sushi recipe
execute if entity @s[tag=!2] store result score $recipe_id game run data get storage orders_1 Recipe[0].Id
execute if entity @s[tag=2] store result score $recipe_id game run data get storage orders_2 Recipe[0].Id
execute if score $recipe_id game matches 0 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=!salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 1 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=!salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 2 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=!salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 3 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=!salsa,tag=!sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 4 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=!salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 5 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=!salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 6 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=!salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 7 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=!salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 8 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=!salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 9 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=!salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 10 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=!salsa,tag=!sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 11 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=!salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 12 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=!salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 13 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=!salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 14 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 15 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 16 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 17 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=salsa,tag=!sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 18 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 19 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=!guac,tag=salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 20 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=!taco_cheese,tag=guac,tag=salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 21 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 22 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=salsa,tag=!sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 23 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 24 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=salsa,tag=!sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 25 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=salsa,tag=sour_cream,tag=!lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 26 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=!guac,tag=salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success
execute if score $recipe_id game matches 27 if entity @s[tag=tortilla,tag=beef,tag=!raw_beef,tag=!lettuce_head_2,tag=taco_cheese,tag=guac,tag=salsa,tag=sour_cream,tag=lettuce_shreds] run function game:serve/check/success

execute if entity @s[tag=add_new_recipe] run tag @a[gamemode=adventure,tag=playing,distance=..500] add order_taco
execute if entity @s[tag=add_new_recipe] run advancement grant @a[gamemode=adventure,tag=playing,distance=..500] only advancements:order_taco