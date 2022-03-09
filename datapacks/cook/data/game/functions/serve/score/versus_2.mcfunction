# Scoring for Classic Mode
scoreboard players add $finished_recipes_2 game 1
## Add base points
#scoreboard players add $score game 3
scoreboard players reset $recipe_score game
execute if data storage current_order_2 Recipe{Ingredients:["Hamburger Bun"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Cheese"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Lettuce Head"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Lettuce Leaf"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Tomato"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Tomato Slice"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Raw Hamburger"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Half-Cooked Hamburger"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Hamburger"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Burnt Hamburger"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Scorched Food"]} run function game:serve/score/1_point_t_2

execute if data storage current_order_2 Recipe{Ingredients:["Sushi Rice"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Fresh Salmon"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Fresh Pufferfish"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Cut Pufferfish"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Poisonous Pufferfish"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Avocado"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Avocado Slice"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Wasabi"]} run function game:serve/score/1_point_t_2

execute if data storage current_order_2 Recipe{Ingredients:["Pizza Dough"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Tomato Sauce"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Pizza Cheese"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Pepperoni"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Mushroom"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Pineapple"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Deep-Dish Crust"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Thin Crust"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Mushroom Slices"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Pineapple Chunks"]} run function game:serve/score/1_point_t_2

execute if data storage current_order_2 Recipe{Ingredients:["Tortilla"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Raw Ground Beef"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Taco Cheese"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Guacamole"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Salsa"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Sour Cream"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Ground Beef"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["Shredded Lettuce"]} run function game:serve/score/1_point_t_2

execute if data storage current_order_2 Recipe{Ingredients:["cone"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["bowl"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["vanilla"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["chocolate"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["strawberry"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["cookies"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["mint"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["mango"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["sprinkles"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["chips"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["cherry"]} run function game:serve/score/1_point_t_2
execute if data storage current_order_2 Recipe{Ingredients:["cookie_dough"]} run function game:serve/score/1_point_t_2

tellraw @a[tag=playing,gamemode=adventure,team=2] ["",{"text":"+","color":"green"},{"color":"green","score":{"objective":"game","name":"$recipe_score"}},{"text":" Points!","color":"gold"}]
#function game:serve/score/floating_3
## Add bonus points for completing recipe in time
scoreboard players operation @s recipe_timer /= $20 number
#function game:serve/score/time_bonus
#scoreboard players operation $recipe_timer game = @s recipe_timer
#execute if score @s recipe_timer <= $time_bonus game run scoreboard players add $score game 1
#execute if score @s recipe_timer <= $time_bonus game run function game:serve/score/floating_bonus