# Take an item from the prep display
scoreboard players set $calculate calculate 0

# Match ingredient
tag @e[type=armor_stand,sort=nearest,limit=1,distance=..500,tag=prep_slot] add selected_prep_slot
scoreboard players operation @s ingredient = @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] ingredient
execute as @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] at @s if entity @s[tag=!hamburger_bun] run kill @s
execute as @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] at @s if entity @s[tag=hamburger_bun] run kill @e[type=armor_stand,tag=prep_slot,tag=hamburger_bun,sort=nearest,distance=..15]

# Remove ingredient from array
execute if score @s ingredient matches 1 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove hamburger_bun
execute if score @s ingredient matches 2 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cheese
execute if score @s ingredient matches 3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove lettuce_head
execute if score @s ingredient matches 4 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove lettuce_leaf
execute if score @s ingredient matches 5 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove tomato
execute if score @s ingredient matches 6 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove tomato_slice
execute if score @s ingredient matches 7 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove raw_hamburger
execute if score @s ingredient matches 8 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove half_cooked_hamburger
execute if score @s ingredient matches 9 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove hamburger
execute if score @s ingredient matches 10 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove burnt_hamburger
execute if score @s ingredient matches 11 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove scorched_food

execute if score @s ingredient matches 12 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove rice
execute if score @s ingredient matches 13 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove salmon
execute if score @s ingredient matches 14 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove pufferfish
execute if score @s ingredient matches 15 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cut_salmon
execute if score @s ingredient matches 16 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cut_pufferfish
execute if score @s ingredient matches 17 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove poison_pufferfish
execute if score @s ingredient matches 18 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove avocado
execute if score @s ingredient matches 19 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove avocado_slice
execute if score @s ingredient matches 20 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove wasabi

execute if score @s ingredient matches 21 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove dough
execute if score @s ingredient matches 22 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove sauce
execute if score @s ingredient matches 23 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove pizza_cheese
execute if score @s ingredient matches 24 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove pepperoni
execute if score @s ingredient matches 25 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove mushroom
execute if score @s ingredient matches 26 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove pineapple
execute if score @s ingredient matches 27 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove thick_crust
execute if score @s ingredient matches 28 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove thin_crust
execute if score @s ingredient matches 29 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cut_mushroom
execute if score @s ingredient matches 30 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cut_pineapple

execute if score @s ingredient matches 31 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove tortilla
execute if score @s ingredient matches 32 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove raw_beef
execute if score @s ingredient matches 33 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove taco_cheese
execute if score @s ingredient matches 34 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove guac
execute if score @s ingredient matches 35 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove salsa
execute if score @s ingredient matches 36 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove sour_cream
execute if score @s ingredient matches 37 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove beef
execute if score @s ingredient matches 38 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove lettuce_shreds
execute if score @s ingredient matches -3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove lettuce_head_2

execute if score @s ingredient matches 39 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cone
execute if score @s ingredient matches 40 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove bowl
execute if score @s ingredient matches 41 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove vanilla
execute if score @s ingredient matches 42 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove chocolate
execute if score @s ingredient matches 43 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove strawberry
execute if score @s ingredient matches 44 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cookies
execute if score @s ingredient matches 45 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove mint
execute if score @s ingredient matches 46 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove mango
execute if score @s ingredient matches 47 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove sprinkles
execute if score @s ingredient matches 48 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove chips
execute if score @s ingredient matches 49 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cherry
execute if score @s ingredient matches 50 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove cookie_dough
execute if score @s ingredient matches 51 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] run tag @s remove frozen_food

# Mark ingredient as not being there
execute if score @s[team=!2] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=hamburger_bun] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cheese] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_head] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_leaf] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tomato] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tomato_slice] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=raw_hamburger] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=half_cooked_hamburger] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=hamburger] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=burnt_hamburger] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=scorched_food] run team join recipe_missing @s

execute if score @s[team=!2] ingredient matches 12 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=rice] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 13 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=salmon] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 14 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pufferfish] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 15 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_salmon] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 16 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_pufferfish] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 17 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=poison_pufferfish] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 18 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=avocado] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 19 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=avocado_slice] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 20 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=wasabi] run team join recipe_missing @s

execute if score @s[team=!2] ingredient matches 21 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=dough] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 22 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sauce] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 23 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pizza_cheese] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 24 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pepperoni] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 25 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mushroom] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 26 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pineapple] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 27 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=thick_crust] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 28 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=thin_crust] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 29 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_mushroom] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 30 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_pineapple] run team join recipe_missing @s

execute if score @s[team=!2] ingredient matches 31 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tortilla] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 32 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=raw_beef] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 33 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=taco_cheese] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 34 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=guac] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 35 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=salsa] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 36 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sour_cream] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 37 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=beef] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 38 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_shreds] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches -3 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_head_2] run team join recipe_missing @s

execute if score @s[team=!2] ingredient matches 39 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cone] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 40 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=bowl] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 41 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=vanilla] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 42 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=chocolate] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 43 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=strawberry] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 44 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cookies] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 45 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mint] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 46 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mango] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 47 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sprinkles] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 48 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=chips] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 49 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cherry] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 50 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cookie_dough] run team join recipe_missing @s
execute if score @s[team=!2] ingredient matches 51 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=frozen_food] run team join recipe_missing @s

# Kill ingredient marker for display if necessary
execute if score @s[team=!2] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=hamburger_bun] unless data storage current_order_1 Recipe{Ingredients:["Hamburger Bun"]} run kill @s
execute if score @s[team=!2] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cheese] unless data storage current_order_1 Recipe{Ingredients:["Cheese"]} run kill @s
execute if score @s[team=!2] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_head] unless data storage current_order_1 Recipe{Ingredients:["Lettuce Head"]} run kill @s
execute if score @s[team=!2] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_leaf] unless data storage current_order_1 Recipe{Ingredients:["Lettuce Leaf"]} run kill @s
execute if score @s[team=!2] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tomato] unless data storage current_order_1 Recipe{Ingredients:["Tomato"]} run kill @s
execute if score @s[team=!2] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tomato_slice] unless data storage current_order_1 Recipe{Ingredients:["Tomato Slice"]} run kill @s
execute if score @s[team=!2] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=raw_hamburger] unless data storage current_order_1 Recipe{Ingredients:["Raw Hamburger"]} run kill @s
execute if score @s[team=!2] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=half_cooked_hamburger] unless data storage current_order_1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run kill @s
execute if score @s[team=!2] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=hamburger] unless data storage current_order_1 Recipe{Ingredients:["Hamburger"]} run kill @s
execute if score @s[team=!2] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=burnt_hamburger] unless data storage current_order_1 Recipe{Ingredients:["Burnt Hamburger"]} run kill @s
execute if score @s[team=!2] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=scorched_food] unless data storage current_order_1 Recipe{Ingredients:["Scorched Food"]} run kill @s

execute if score @s[team=!2] ingredient matches 12 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=rice] unless data storage current_order_1 Recipe{Ingredients:["Sushi Rice"]} run kill @s
execute if score @s[team=!2] ingredient matches 13 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=salmon] unless data storage current_order_1 Recipe{Ingredients:["Fresh Salmon"]} run kill @s
execute if score @s[team=!2] ingredient matches 14 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pufferfish] unless data storage current_order_1 Recipe{Ingredients:["Fresh Pufferfish"]} run kill @s
execute if score @s[team=!2] ingredient matches 15 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_salmon] unless data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} run kill @s
execute if score @s[team=!2] ingredient matches 16 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_pufferfish] unless data storage current_order_1 Recipe{Ingredients:["Cut Pufferfish"]} run kill @s
execute if score @s[team=!2] ingredient matches 17 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=poison_pufferfish] unless data storage current_order_1 Recipe{Ingredients:["Poisonous Pufferfish"]} run kill @s
execute if score @s[team=!2] ingredient matches 18 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=avocado] unless data storage current_order_1 Recipe{Ingredients:["Avocado"]} run kill @s
execute if score @s[team=!2] ingredient matches 19 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=avocado_slice] unless data storage current_order_1 Recipe{Ingredients:["Avocado Slice"]} run kill @s
execute if score @s[team=!2] ingredient matches 20 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=wasabi] unless data storage current_order_1 Recipe{Ingredients:["Wasabi"]} run kill @s

execute if score @s[team=!2] ingredient matches 21 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=dough] unless data storage current_order_1 Recipe{Ingredients:["Pizza Dough"]} run kill @s
execute if score @s[team=!2] ingredient matches 22 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sauce] unless data storage current_order_1 Recipe{Ingredients:["Tomato Sauce"]} run kill @s
execute if score @s[team=!2] ingredient matches 23 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pizza_cheese] unless data storage current_order_1 Recipe{Ingredients:["Pizza Cheese"]} run kill @s
execute if score @s[team=!2] ingredient matches 24 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pepperoni] unless data storage current_order_1 Recipe{Ingredients:["Pepperoni"]} run kill @s
execute if score @s[team=!2] ingredient matches 25 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mushroom] unless data storage current_order_1 Recipe{Ingredients:["Mushroom"]} run kill @s
execute if score @s[team=!2] ingredient matches 26 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=pineapple] unless data storage current_order_1 Recipe{Ingredients:["Pineapple"]} run kill @s
execute if score @s[team=!2] ingredient matches 27 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=thick_crust] unless data storage current_order_1 Recipe{Ingredients:["Deep-Dish Crust"]} run kill @s
execute if score @s[team=!2] ingredient matches 28 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=thin_crust] unless data storage current_order_1 Recipe{Ingredients:["Thin Crust"]} run kill @s
execute if score @s[team=!2] ingredient matches 29 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_mushroom] unless data storage current_order_1 Recipe{Ingredients:["Mushroom Slices"]} run kill @s
execute if score @s[team=!2] ingredient matches 30 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cut_pineapple] unless data storage current_order_1 Recipe{Ingredients:["Pineapple Chunks"]} run kill @s

execute if score @s[team=!2] ingredient matches 31 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=tortilla] unless data storage current_order_1 Recipe{Ingredients:["Tortilla"]} run kill @s
execute if score @s[team=!2] ingredient matches 32 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=raw_beef] unless data storage current_order_1 Recipe{Ingredients:["Raw Ground Beef"]} run kill @s
execute if score @s[team=!2] ingredient matches 33 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=taco_cheese] unless data storage current_order_1 Recipe{Ingredients:["Taco Cheese"]} run kill @s
execute if score @s[team=!2] ingredient matches 34 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=guac] unless data storage current_order_1 Recipe{Ingredients:["Guacamole"]} run kill @s
execute if score @s[team=!2] ingredient matches 35 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=salsa] unless data storage current_order_1 Recipe{Ingredients:["Salsa"]} run kill @s
execute if score @s[team=!2] ingredient matches 36 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sour_cream] unless data storage current_order_1 Recipe{Ingredients:["Sour Cream"]} run kill @s
execute if score @s[team=!2] ingredient matches 37 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=beef] unless data storage current_order_1 Recipe{Ingredients:["Ground Beef"]} run kill @s
execute if score @s[team=!2] ingredient matches 38 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_shreds] unless data storage current_order_1 Recipe{Ingredients:["Shredded Lettuce"]} run kill @s
execute if score @s[team=!2] ingredient matches -3 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=lettuce_head_2] unless data storage current_order_1 Recipe{Ingredients:["Lettuce Head"]} run kill @s

execute if score @s[team=!2] ingredient matches 39 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cone] unless data storage current_order_1 Recipe{Ingredients:["cone"]} run kill @s
execute if score @s[team=!2] ingredient matches 40 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=bowl] unless data storage current_order_1 Recipe{Ingredients:["bowl"]} run kill @s
execute if score @s[team=!2] ingredient matches 41 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=vanilla] unless data storage current_order_1 Recipe{Ingredients:["vanilla"]} run kill @s
execute if score @s[team=!2] ingredient matches 42 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=chocolate] unless data storage current_order_1 Recipe{Ingredients:["chocolate"]} run kill @s
execute if score @s[team=!2] ingredient matches 43 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=strawberry] unless data storage current_order_1 Recipe{Ingredients:["strawberry"]} run kill @s
execute if score @s[team=!2] ingredient matches 44 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cookies] unless data storage current_order_1 Recipe{Ingredients:["cookies"]} run kill @s
execute if score @s[team=!2] ingredient matches 45 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mint] unless data storage current_order_1 Recipe{Ingredients:["mint"]} run kill @s
execute if score @s[team=!2] ingredient matches 46 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=mango] unless data storage current_order_1 Recipe{Ingredients:["mango"]} run kill @s
execute if score @s[team=!2] ingredient matches 47 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=sprinkles] unless data storage current_order_1 Recipe{Ingredients:["sprinkles"]} run kill @s
execute if score @s[team=!2] ingredient matches 48 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=chips] unless data storage current_order_1 Recipe{Ingredients:["chips"]} run kill @s
execute if score @s[team=!2] ingredient matches 49 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cherry] unless data storage current_order_1 Recipe{Ingredients:["cherry"]} run kill @s
execute if score @s[team=!2] ingredient matches 50 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=cookie_dough] unless data storage current_order_1 Recipe{Ingredients:["cookie_dough"]} run kill @s
execute if score @s[team=!2] ingredient matches 51 as @e[type=marker,tag=recipe_ingredient,tag=!2,tag=frozen_food] unless data storage current_order_1 Recipe{Ingredients:["frozen_food"]} run kill @s

# Mark ingredient as not being there
execute if score @s[team=2] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=hamburger_bun] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cheese] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_head] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_leaf] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tomato] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tomato_slice] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=raw_hamburger] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=half_cooked_hamburger] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=hamburger] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=burnt_hamburger] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=scorched_food] run team join recipe_missing @s

execute if score @s[team=2] ingredient matches 12 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=rice] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 13 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=salmon] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 14 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pufferfish] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 15 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_salmon] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 16 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_pufferfish] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 17 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=poison_pufferfish] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 18 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=avocado] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 19 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=avocado_slice] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 20 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=wasabi] run team join recipe_missing @s

execute if score @s[team=2] ingredient matches 21 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=dough] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 22 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sauce] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 23 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pizza_cheese] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 24 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pepperoni] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 25 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mushroom] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 26 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pineapple] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 27 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=thick_crust] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 28 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=thin_crust] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 29 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_mushroom] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 30 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_pineapple] run team join recipe_missing @s

execute if score @s[team=2] ingredient matches 31 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tortilla] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 32 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=raw_beef] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 33 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=taco_cheese] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 34 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=guac] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 35 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=salsa] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 36 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sour_cream] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 37 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=beef] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 38 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_shreds] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches -3 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_head_2] run team join recipe_missing @s

execute if score @s[team=2] ingredient matches 39 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cone] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 40 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=bowl] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 41 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=vanilla] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 42 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=chocolate] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 43 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=strawberry] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 44 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cookies] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 45 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mint] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 46 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mango] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 47 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sprinkles] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 48 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=chips] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 49 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cherry] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 50 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cookie_dough] run team join recipe_missing @s
execute if score @s[team=2] ingredient matches 51 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=frozen_food] run team join recipe_missing @s

# Kill ingredient marker or display if necessary
execute if score @s[team=2] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=hamburger_bun] unless data storage current_order_2 Recipe{Ingredients:["Hamburger Bun"]} run kill @s
execute if score @s[team=2] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cheese] unless data storage current_order_2 Recipe{Ingredients:["Cheese"]} run kill @s
execute if score @s[team=2] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_head] unless data storage current_order_2 Recipe{Ingredients:["Lettuce Head"]} run kill @s
execute if score @s[team=2] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_leaf] unless data storage current_order_2 Recipe{Ingredients:["Lettuce Leaf"]} run kill @s
execute if score @s[team=2] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tomato] unless data storage current_order_2 Recipe{Ingredients:["Tomato"]} run kill @s
execute if score @s[team=2] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tomato_slice] unless data storage current_order_2 Recipe{Ingredients:["Tomato Slice"]} run kill @s
execute if score @s[team=2] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=raw_hamburger] unless data storage current_order_2 Recipe{Ingredients:["Raw Hamburger"]} run kill @s
execute if score @s[team=2] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=half_cooked_hamburger] unless data storage current_order_2 Recipe{Ingredients:["Half-Cooked Hamburger"]} run kill @s
execute if score @s[team=2] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=hamburger] unless data storage current_order_2 Recipe{Ingredients:["Hamburger"]} run kill @s
execute if score @s[team=2] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=burnt_hamburger] unless data storage current_order_2 Recipe{Ingredients:["Burnt Hamburger"]} run kill @s
execute if score @s[team=2] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=scorched_food] unless data storage current_order_2 Recipe{Ingredients:["Scorched Food"]} run kill @s

execute if score @s[team=2] ingredient matches 12 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=rice] unless data storage current_order_2 Recipe{Ingredients:["Sushi Rice"]} run kill @s
execute if score @s[team=2] ingredient matches 13 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=salmon] unless data storage current_order_2 Recipe{Ingredients:["Fresh Salmon"]} run kill @s
execute if score @s[team=2] ingredient matches 14 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pufferfish] unless data storage current_order_2 Recipe{Ingredients:["Fresh Pufferfish"]} run kill @s
execute if score @s[team=2] ingredient matches 15 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_salmon] unless data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} run kill @s
execute if score @s[team=2] ingredient matches 16 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_pufferfish] unless data storage current_order_2 Recipe{Ingredients:["Cut Pufferfish"]} run kill @s
execute if score @s[team=2] ingredient matches 17 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=poison_pufferfish] unless data storage current_order_2 Recipe{Ingredients:["Poisonous Pufferfish"]} run kill @s
execute if score @s[team=2] ingredient matches 18 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=avocado] unless data storage current_order_2 Recipe{Ingredients:["Avocado"]} run kill @s
execute if score @s[team=2] ingredient matches 19 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=avocado_slice] unless data storage current_order_2 Recipe{Ingredients:["Avocado Slice"]} run kill @s
execute if score @s[team=2] ingredient matches 20 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=wasabi] unless data storage current_order_2 Recipe{Ingredients:["Wasabi"]} run kill @s

execute if score @s[team=2] ingredient matches 21 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=dough] unless data storage current_order_2 Recipe{Ingredients:["Pizza Dough"]} run kill @s
execute if score @s[team=2] ingredient matches 22 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sauce] unless data storage current_order_2 Recipe{Ingredients:["Tomato Sauce"]} run kill @s
execute if score @s[team=2] ingredient matches 23 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pizza_cheese] unless data storage current_order_2 Recipe{Ingredients:["Pizza Cheese"]} run kill @s
execute if score @s[team=2] ingredient matches 24 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pepperoni] unless data storage current_order_2 Recipe{Ingredients:["Pepperoni"]} run kill @s
execute if score @s[team=2] ingredient matches 25 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mushroom] unless data storage current_order_2 Recipe{Ingredients:["Mushroom"]} run kill @s
execute if score @s[team=2] ingredient matches 26 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=pineapple] unless data storage current_order_2 Recipe{Ingredients:["Pineapple"]} run kill @s
execute if score @s[team=2] ingredient matches 27 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=thick_crust] unless data storage current_order_2 Recipe{Ingredients:["Deep-Dish Crust"]} run kill @s
execute if score @s[team=2] ingredient matches 28 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=thin_crust] unless data storage current_order_2 Recipe{Ingredients:["Thin Crust"]} run kill @s
execute if score @s[team=2] ingredient matches 29 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_mushroom] unless data storage current_order_2 Recipe{Ingredients:["Mushroom Slices"]} run kill @s
execute if score @s[team=2] ingredient matches 30 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cut_pineapple] unless data storage current_order_2 Recipe{Ingredients:["Pineapple Chunks"]} run kill @s

execute if score @s[team=2] ingredient matches 31 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=tortilla] unless data storage current_order_2 Recipe{Ingredients:["Tortilla"]} run kill @s
execute if score @s[team=2] ingredient matches 32 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=raw_beef] unless data storage current_order_2 Recipe{Ingredients:["Raw Ground Beef"]} run kill @s
execute if score @s[team=2] ingredient matches 33 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=taco_cheese] unless data storage current_order_2 Recipe{Ingredients:["Taco Cheese"]} run kill @s
execute if score @s[team=2] ingredient matches 34 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=guac] unless data storage current_order_2 Recipe{Ingredients:["Guacamole"]} run kill @s
execute if score @s[team=2] ingredient matches 35 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=salsa] unless data storage current_order_2 Recipe{Ingredients:["Salsa"]} run kill @s
execute if score @s[team=2] ingredient matches 36 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sour_cream] unless data storage current_order_2 Recipe{Ingredients:["Sour Cream"]} run kill @s
execute if score @s[team=2] ingredient matches 37 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=beef] unless data storage current_order_2 Recipe{Ingredients:["Ground Beef"]} run kill @s
execute if score @s[team=2] ingredient matches 38 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_shreds] unless data storage current_order_2 Recipe{Ingredients:["Shredded Lettuce"]} run kill @s
execute if score @s[team=2] ingredient matches -3 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=lettuce_head_2] unless data storage current_order_2 Recipe{Ingredients:["Lettuce Head"]} run kill @s

execute if score @s[team=2] ingredient matches 39 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cone] unless data storage current_order_2 Recipe{Ingredients:["cone"]} run kill @s
execute if score @s[team=2] ingredient matches 40 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=bowl] unless data storage current_order_2 Recipe{Ingredients:["bowl"]} run kill @s
execute if score @s[team=2] ingredient matches 41 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=vanilla] unless data storage current_order_2 Recipe{Ingredients:["vanilla"]} run kill @s
execute if score @s[team=2] ingredient matches 42 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=chocolate] unless data storage current_order_2 Recipe{Ingredients:["chocolate"]} run kill @s
execute if score @s[team=2] ingredient matches 43 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=strawberry] unless data storage current_order_2 Recipe{Ingredients:["strawberry"]} run kill @s
execute if score @s[team=2] ingredient matches 44 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cookies] unless data storage current_order_2 Recipe{Ingredients:["cookies"]} run kill @s
execute if score @s[team=2] ingredient matches 45 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mint] unless data storage current_order_2 Recipe{Ingredients:["mint"]} run kill @s
execute if score @s[team=2] ingredient matches 46 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=mango] unless data storage current_order_2 Recipe{Ingredients:["mango"]} run kill @s
execute if score @s[team=2] ingredient matches 47 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=sprinkles] unless data storage current_order_2 Recipe{Ingredients:["sprinkles"]} run kill @s
execute if score @s[team=2] ingredient matches 48 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=chips] unless data storage current_order_2 Recipe{Ingredients:["chips"]} run kill @s
execute if score @s[team=2] ingredient matches 49 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cherry] unless data storage current_order_2 Recipe{Ingredients:["cherry"]} run kill @s
execute if score @s[team=2] ingredient matches 50 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=cookie_dough] unless data storage current_order_2 Recipe{Ingredients:["cookie_dough"]} run kill @s
execute if score @s[team=2] ingredient matches 51 as @e[type=marker,tag=recipe_ingredient,tag=2,tag=frozen_food] unless data storage current_order_2 Recipe{Ingredients:["frozen_food"]} run kill @s

#execute positioned ~ ~-2 ~ as @e[type=armor_stand,tag=prep_slot,distance=..12,sort=nearest] at @s run function game:stations/prep/tp/slide_down
#tag @e[type=armor_stand,tag=prep_slot,distance=..15] add compact_display
#tag @e[type=armor_stand,tag=prep_slot,distance=..15] remove prep_slot
tag @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] add start_closing
#execute as @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500] at @s if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot,distance=..15] run scoreboard players set @s prep_display 0

tag @s add took_item_tag
advancement grant @s only game:inventory_changed
execute at @s if entity @e[type=armor_stand,tag=prep_slot,distance=..15] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1