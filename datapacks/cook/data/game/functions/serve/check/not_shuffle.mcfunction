# Check for a successful recipe depending on recipe table
execute if score $food_type game matches 1 run function game:serve/check/burgers
#execute if score $food_type game matches 2 run function game:serve/check/soups
execute if score $food_type game matches 3 run function game:serve/check/sushi
#execute if score $food_type game matches 4 run function game:serve/check/pizza
execute if score $food_type game matches 5 run function game:serve/check/tacos
execute if score $food_type game matches 6 run function game:serve/check/ice_cream