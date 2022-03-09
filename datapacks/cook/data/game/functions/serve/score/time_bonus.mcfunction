## UNUSED


# Calculate estimated time needed to complete recipe based on ingredients in seconds (as outlined in spreadsheet)
scoreboard players reset $time_bonus game
execute if data storage current_order_1 Recipe{Ingredients:["Hamburger Bun"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Cheese"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Lettuce Head"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Lettuce Leaf"]} run scoreboard players add $time_bonus game 6
execute if data storage current_order_1 Recipe{Ingredients:["Tomato"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Tomato Slice"]} run scoreboard players add $time_bonus game 7
execute if data storage current_order_1 Recipe{Ingredients:["Raw Hamburger"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run scoreboard players add $time_bonus game 10
execute if data storage current_order_1 Recipe{Ingredients:["Hamburger"]} run scoreboard players add $time_bonus game 18
execute if data storage current_order_1 Recipe{Ingredients:["Burnt Hamburger"]} run scoreboard players add $time_bonus game 24
execute if data storage current_order_1 Recipe{Ingredients:["Scorched Food"]} run scoreboard players add $time_bonus game 8

execute if data storage current_order_1 Recipe{Ingredients:["Sushi Rice"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Fresh Salmon"]} run scoreboard players add $time_bonus game 5
execute if data storage current_order_1 Recipe{Ingredients:["Fresh Pufferfish"]} run scoreboard players add $time_bonus game 5
execute if data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} run scoreboard players add $time_bonus game 9
execute if data storage current_order_1 Recipe{Ingredients:["Cut Pufferfish"]} run scoreboard players add $time_bonus game 9
execute if data storage current_order_1 Recipe{Ingredients:["Poisonous Pufferfish"]} run scoreboard players add $time_bonus game 7
execute if data storage current_order_1 Recipe{Ingredients:["Avocado"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Avocado Slice"]} run scoreboard players add $time_bonus game 6
execute if data storage current_order_1 Recipe{Ingredients:["Wasabi"]} run scoreboard players add $time_bonus game 3

execute if data storage current_order_1 Recipe{Ingredients:["Pizza Dough"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Tomato Sauce"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Pizza Cheese"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Pepperoni"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Mushroom"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Pineapple"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Deep-Dish Crust"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Thin Crust"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Mushroom Slices"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Pineapple Chunks"]} run scoreboard players add $time_bonus game 3

execute if data storage current_order_1 Recipe{Ingredients:["Tortilla"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Raw Ground Beef"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Taco Cheese"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Guacamole"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Salsa"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Sour Cream"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order_1 Recipe{Ingredients:["Ground Beef"]} run scoreboard players add $time_bonus game 15
execute if data storage current_order_1 Recipe{Ingredients:["Shredded Lettuce"]} run scoreboard players add $time_bonus game 7

# Taco Lab
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Tortilla"]} run scoreboard players add $time_bonus game 7
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Taco Cheese"]} run scoreboard players add $time_bonus game 7
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Ground Beef"]} run scoreboard players add $time_bonus game 7
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Shredded Lettuce"]} run scoreboard players add $time_bonus game 7

execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Guacamole"]} run scoreboard players add $time_bonus game 25
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Salsa"]} run scoreboard players add $time_bonus game 25
execute if score $map settings matches 25 if data storage current_order_1 Recipe{Ingredients:["Sour Cream"]} run scoreboard players add $time_bonus game 25