#> game:stations/fix_ingredient_box For fixing ingredient boxes that aren't assigned an ingredient due to lag
# Give ingredient proper ID based on tag
execute if entity @s[tag=1] run scoreboard players set @s ingredient 1
execute if entity @s[tag=2] run scoreboard players set @s ingredient 2
execute if entity @s[tag=3] run scoreboard players set @s ingredient 3
execute if entity @s[tag=4] run scoreboard players set @s ingredient 4
execute if entity @s[tag=5] run scoreboard players set @s ingredient 5
execute if entity @s[tag=6] run scoreboard players set @s ingredient 6
execute if entity @s[tag=7] run scoreboard players set @s ingredient 7
execute if entity @s[tag=8] run scoreboard players set @s ingredient 8
execute if entity @s[tag=9] run scoreboard players set @s ingredient 9
execute if entity @s[tag=10] run scoreboard players set @s ingredient 10
execute if entity @s[tag=11] run scoreboard players set @s ingredient 11
execute if entity @s[tag=12] run scoreboard players set @s ingredient 12
execute if entity @s[tag=13] run scoreboard players set @s ingredient 13
execute if entity @s[tag=14] run scoreboard players set @s ingredient 14
execute if entity @s[tag=15] run scoreboard players set @s ingredient 15
execute if entity @s[tag=16] run scoreboard players set @s ingredient 16
execute if entity @s[tag=17] run scoreboard players set @s ingredient 17
execute if entity @s[tag=18] run scoreboard players set @s ingredient 18
execute if entity @s[tag=19] run scoreboard players set @s ingredient 19
execute if entity @s[tag=20] run scoreboard players set @s ingredient 20
execute if entity @s[tag=21] run scoreboard players set @s ingredient 21
execute if entity @s[tag=22] run scoreboard players set @s ingredient 22
execute if entity @s[tag=23] run scoreboard players set @s ingredient 23
execute if entity @s[tag=24] run scoreboard players set @s ingredient 24
execute if entity @s[tag=25] run scoreboard players set @s ingredient 25
execute if entity @s[tag=26] run scoreboard players set @s ingredient 26
execute if entity @s[tag=27] run scoreboard players set @s ingredient 27
execute if entity @s[tag=28] run scoreboard players set @s ingredient 28
execute if entity @s[tag=29] run scoreboard players set @s ingredient 29
execute if entity @s[tag=30] run scoreboard players set @s ingredient 30
execute if entity @s[tag=31] run scoreboard players set @s ingredient 31
execute if entity @s[tag=32] run scoreboard players set @s ingredient 32
execute if entity @s[tag=33] run scoreboard players set @s ingredient 33
execute if entity @s[tag=34] run scoreboard players set @s ingredient 34
execute if entity @s[tag=35] run scoreboard players set @s ingredient 35
execute if entity @s[tag=36] run scoreboard players set @s ingredient 36
execute if entity @s[tag=37] run scoreboard players set @s ingredient 37
execute if entity @s[tag=38] run scoreboard players set @s ingredient 38
execute if entity @s[tag=39] run scoreboard players set @s ingredient 39
execute if entity @s[tag=40] run scoreboard players set @s ingredient 40
execute if entity @s[tag=41] run scoreboard players set @s ingredient 41
execute if entity @s[tag=42] run scoreboard players set @s ingredient 42
execute if entity @s[tag=43] run scoreboard players set @s ingredient 43
execute if entity @s[tag=44] run scoreboard players set @s ingredient 44
execute if entity @s[tag=45] run scoreboard players set @s ingredient 45
execute if entity @s[tag=46] run scoreboard players set @s ingredient 46
execute if entity @s[tag=47] run scoreboard players set @s ingredient 47
execute if entity @s[tag=48] run scoreboard players set @s ingredient 48
execute if entity @s[tag=49] run scoreboard players set @s ingredient 49
execute if entity @s[tag=50] run scoreboard players set @s ingredient 50
execute if entity @s[tag=51] run scoreboard players set @s ingredient 51
# Reset box using this ID
function game:map/reset_boxes
# Store food category for use in a bit
execute if score @s ingredient matches 1..10 run scoreboard players set $temp_food_type ingredient 1
execute if score @s ingredient matches 12..20 run scoreboard players set $temp_food_type ingredient 2
execute if score @s ingredient matches 21..30 run scoreboard players set $temp_food_type ingredient 3
execute if score @s ingredient matches 31..38 run scoreboard players set $temp_food_type ingredient 4
execute if score @s ingredient matches -3 run scoreboard players set $temp_food_type ingredient 4
execute if score @s ingredient matches 39..50 run scoreboard players set $temp_food_type ingredient 5
# Kill unnecessary entities
tp @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1] ~ ~-10000 ~
kill @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1]
kill @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1]
kill @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1]
kill @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3]
kill @s
# Place the new box using the food category we set earlier
execute if score $temp_food_type ingredient matches 1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","burger_set"]}
execute if score $temp_food_type ingredient matches 2 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","sushi_set"]}
execute if score $temp_food_type ingredient matches 3 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","pizza_set"]}
execute if score $temp_food_type ingredient matches 4 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","tacos_set"]}
execute if score $temp_food_type ingredient matches 5 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}

# Give proper colors
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Hamburger Bun"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=hamburger_bun,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Lettuce Leaf"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=lettuce_leaf,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Hamburger"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=hamburger,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Tomato Slice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tomato_slice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Sushi Rice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=rice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} run tag @e[type=salmon,tag=can_catch,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cut Pufferfish"]} run tag @e[type=pufferfish,tag=can_catch,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Avocado Slice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=avocado_slice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Wasabi"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=wasabi,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Tomato Sauce"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sauce,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Pizza Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pizza_cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Pepperoni"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pepperoni,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Deep-Dish Crust"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=dough,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Thin Crust"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=dough,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Mushroom Slices"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mushroom,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Pineapple Chunks"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pineapple,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Tortilla"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tortilla,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Ground Beef"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=beef,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Taco Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=taco_cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Guacamole"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=guac,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Salsa"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=salsa,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Sour Cream"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sour_cream,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Shredded Lettuce"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=lettuce_shreds,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["cone"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cone,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["bowl"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=bowl,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["vanilla"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=vanilla,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["chocolate"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=chocolate,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["strawberry"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=strawberry,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["cookies"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cookies,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["mint"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mint,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["mango"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mango,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["sprinkles"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sprinkles,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["chips"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=chips,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["cherry"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cherry,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=!team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["cookie_dough"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cookie_dough,distance=..500] add recipe_ingredient

execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Hamburger Bun"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=hamburger_bun,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Lettuce Leaf"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=lettuce_leaf,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Hamburger"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=hamburger,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Tomato Slice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tomato_slice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Sushi Rice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=rice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} run tag @e[type=salmon,tag=can_catch,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cut Pufferfish"]} run tag @e[type=pufferfish,tag=can_catch,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Avocado Slice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=avocado_slice,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Wasabi"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=wasabi,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Tomato Sauce"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sauce,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Pizza Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pizza_cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Pepperoni"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pepperoni,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Deep-Dish Crust"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=dough,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Thin Crust"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=dough,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Mushroom Slices"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mushroom,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Pineapple Chunks"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=pineapple,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Tortilla"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tortilla,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Ground Beef"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=beef,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Taco Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=taco_cheese,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Guacamole"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=guac,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Salsa"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=salsa,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Sour Cream"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sour_cream,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Shredded Lettuce"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=lettuce_shreds,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["cone"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cone,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["bowl"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=bowl,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["vanilla"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=vanilla,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["chocolate"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=chocolate,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["strawberry"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=strawberry,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["cookies"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cookies,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["mint"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mint,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["mango"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=mango,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["sprinkles"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=sprinkles,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["chips"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=chips,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["cherry"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cherry,distance=..500] add recipe_ingredient
execute if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["cookie_dough"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cookie_dough,distance=..500] add recipe_ingredient

team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,tag=!tutorial,distance=..500]

# Reset score so scoreboard isn't cluttered
scoreboard players reset $temp_food_type ingredient