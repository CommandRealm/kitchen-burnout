# Summon the recipe_ingredient markers for displaying the ingredients
execute if data storage current_order1 Recipe{Ingredients:["Hamburger Bun"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger_bun"],CustomName:'["",{"translate":"Hamburger Bun"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Burnt Hamburger"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","burnt_hamburger"],CustomName:'["",{"translate":"Burnt Hamburger"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Cheese"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cheese"],CustomName:'["",{"translate":"Cheese"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","half_cooked_hamburger"],CustomName:'["",{"translate":"Half-Cooked Hamburger"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Hamburger"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger"],CustomName:'["",{"translate":"Hamburger"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Lettuce Head"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_head"],CustomName:'["",{"translate":"Lettuce Head"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Lettuce Leaf"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_leaf"],CustomName:'["",{"translate":"Lettuce Leaf"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Raw Hamburger"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","raw_hamburger"],CustomName:'["",{"translate":"Raw Hamburger"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Scorched Food"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","scorched_food"],CustomName:'["",{"translate":"Scorched Food"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Tomato Slice"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","tomato_slice"],CustomName:'["",{"translate":"Tomato Slice"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Tomato"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","tomato"],CustomName:'["",{"translate":"Tomato"}]'}

execute if data storage current_order1 Recipe{Ingredients:["Sushi Rice"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger_bun"],CustomName:'["",{"translate":"Sushi Rice"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Fresh Salmon"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","burnt_hamburger"],CustomName:'["",{"translate":"Fresh Salmon"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Fresh Pufferfish"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cheese"],CustomName:'["",{"translate":"Fresh Pufferfish"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Cut Salmon"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","half_cooked_hamburger"],CustomName:'["",{"translate":"Cut Salmon"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Cut Pufferfish"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger"],CustomName:'["",{"translate":"Cut Pufferfish"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Poisonous Pufferfish"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_head"],CustomName:'["",{"translate":"Poisonous Pufferfish"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Avocado"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_leaf"],CustomName:'["",{"translate":"Avocado"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Avocado Slice"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","raw_hamburger"],CustomName:'["",{"translate":"Avocado Slice"}]'}
execute if data storage current_order1 Recipe{Ingredients:["Wasabi"]} run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","scorched_food"],CustomName:'["",{"translate":"Wasabi"}]'}

# Summon the recipe_name markers for displaying the recipes
execute if data storage minecraft:current_order1 Recipe{Name:"plain hamburger"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Plain Hamburger"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"hamburger with lettuce"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Hamburger with Lettuce"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"hamburger with tomato"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Hamburger with Tomato"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"hamburger with lettuce and tomato"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Hamburger with Lettuce and Tomato"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"plain cheeseburger"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Plain Cheeseburger"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"cheeseburger with lettuce"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Cheeseburger with Lettuce"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"cheeseburger with tomato"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Cheeseburger with Tomato"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"cheeseburger with lettuce and tomato"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Cheeseburger with Lettuce and Tomato"}]'}

execute if data storage minecraft:current_order1 Recipe{Name:"salmon sashimi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Salmon Sashimi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"salmon sashimi with wasabi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Salmon Sashimi with Wasabi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"salmon nigiri"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Salmon Nigiri"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"salmon nigiri with wasabi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Salmon Nigiri with Wasabi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"pufferfish sashimi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Pufferfish Sashimi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"pufferfish sashimi with wasabi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Pufferfish Sashimi with Wasabi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"pufferfish nigiri"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Pufferfish Nigiri"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"pufferfish nigiri with wasabi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Pufferfish Nigiri with Wasabi"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"avocado nigiri"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Avocado Nigiri"}]'}
execute if data storage minecraft:current_order1 Recipe{Name:"avocado nigiri with wasabi"} run summon marker 0 0 0 {Tags:["recipe_name","die_between_games"],CustomName:'["",{"translate":"Avocado Nigiri with Wasabi"}]'}

