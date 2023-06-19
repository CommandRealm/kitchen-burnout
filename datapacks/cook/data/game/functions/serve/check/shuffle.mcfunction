# Check for a successful recipe depending on recipe table for the shuffle mode
execute if score $food_type_1 shuffle matches 1 run function game:serve/check/burgers
execute if score $food_type_1 shuffle matches 2 run function game:serve/check/sushi
execute if score $food_type_1 shuffle matches 3 run function game:serve/check/tacos
execute if score $food_type_1 shuffle matches 4 run function game:serve/check/ice_cream
execute if score $food_type_2 shuffle matches 1 run function game:serve/check/burgers
execute if score $food_type_2 shuffle matches 2 run function game:serve/check/sushi
execute if score $food_type_2 shuffle matches 3 run function game:serve/check/tacos
execute if score $food_type_2 shuffle matches 4 run function game:serve/check/ice_cream
execute if entity @s[tag=add_new_recipe,tag=!2] run scoreboard players add $recipes_1 shuffle 1
execute if entity @s[tag=add_new_recipe,tag=2] run scoreboard players add $recipes_2 shuffle 1
execute if entity @s[tag=add_new_recipe,tag=!2] if score $recipes_1 shuffle >= $recipes settings run function game:mode_shuffle/next_kitchen_1
execute if entity @s[tag=add_new_recipe,tag=2] if score $recipes_2 shuffle >= $recipes settings run function game:mode_shuffle/next_kitchen_2
#execute if entity @s[tag=add_new_recipe,tag=!2] run function game:mode_shuffle/next_kitchen_1
#execute if entity @s[tag=add_new_recipe,tag=2] run function game:mode_shuffle/next_kitchen_2