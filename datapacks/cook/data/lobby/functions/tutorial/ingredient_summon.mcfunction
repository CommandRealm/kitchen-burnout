# Summon the recipe_ingredient markers for displaying the ingredients
execute if data storage tutorial Recipe{Ingredients:["Hamburger Bun"]} run summon marker ~ 0 ~ {Tags:["recipe_ingredient","bun","tutorial"],CustomName:'["",{"translate":"Hamburger Bun"}]'}
execute if data storage tutorial Recipe{Ingredients:["Hamburger"]} run summon marker ~ 0 ~ {Tags:["recipe_ingredient","hamburger","tutorial"],CustomName:'["",{"translate":"Hamburger"}]'}
execute if data storage tutorial Recipe{Ingredients:["Lettuce Leaf"]} run summon marker ~ 0 ~ {Tags:["recipe_ingredient","lettuce_leaf","tutorial"],CustomName:'["",{"translate":"Lettuce Leaf"}]'}

# Summon the recipe_name markers for displaying the recipes
execute if data storage tutorial Recipe{Name:"hamburger with lettuce"} run summon marker ~ 0 ~ {Tags:["recipe_name","tutorial"],CustomName:'["",{"translate":"Hamburger with Lettuce"}]'}

# Give tags to proper ingredient boxes
execute if data storage tutorial Recipe{Ingredients:["Hamburger Bun"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=bun,tag=tutorial] add recipe_ingredient
execute if data storage tutorial Recipe{Ingredients:["Cheese"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=cheese,tag=tutorial] add recipe_ingredient
execute if data storage tutorial Recipe{Ingredients:["Lettuce Leaf"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=lettuce_leaf,tag=tutorial] add recipe_ingredient
execute if data storage tutorial Recipe{Ingredients:["Hamburger"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=hamburger,tag=tutorial] add recipe_ingredient
execute if data storage tutorial Recipe{Ingredients:["Tomato Slice"]} run tag @e[type=#game:ingredient_box_outline,tag=ingredient_box_outline,tag=tomato_slice,tag=tutorial] add recipe_ingredient