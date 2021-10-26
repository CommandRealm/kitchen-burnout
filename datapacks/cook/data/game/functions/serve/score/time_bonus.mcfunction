# Calculate estimated time needed to complete recipe based on ingredients in seconds (as outlined in spreadsheet)
scoreboard players reset $time_bonus game
execute if data storage current_order1 Recipe{Ingredients:["Hamburger Bun"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order1 Recipe{Ingredients:["Cheese"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order1 Recipe{Ingredients:["Lettuce Head"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order1 Recipe{Ingredients:["Lettuce Leaf"]} run scoreboard players add $time_bonus game 6
execute if data storage current_order1 Recipe{Ingredients:["Tomato"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order1 Recipe{Ingredients:["Tomato Slice"]} run scoreboard players add $time_bonus game 7
execute if data storage current_order1 Recipe{Ingredients:["Raw Hamburger"]} run scoreboard players add $time_bonus game 3
execute if data storage current_order1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run scoreboard players add $time_bonus game 10
execute if data storage current_order1 Recipe{Ingredients:["Hamburger"]} run scoreboard players add $time_bonus game 18
execute if data storage current_order1 Recipe{Ingredients:["Burnt Hamburger"]} run scoreboard players add $time_bonus game 24
execute if data storage current_order1 Recipe{Ingredients:["Scorched Food"]} run scoreboard players add $time_bonus game 8