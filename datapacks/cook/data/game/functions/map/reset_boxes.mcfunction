# Bread
execute if score @s ingredient matches 1 run setblock ~ ~ ~ brown_glazed_terracotta
# Cheese
execute if score @s ingredient matches 2 run setblock ~ ~ ~ orange_glazed_terracotta
# Raw Hamburger
execute if score @s ingredient matches 7 run setblock ~ ~ ~ pink_glazed_terracotta
# Tomato
execute if score @s ingredient matches 5 run setblock ~ ~ ~ red_glazed_terracotta
# Lettuce Head
execute if score @s ingredient matches 3 run setblock ~ ~ ~ lime_glazed_terracotta
execute if score @s ingredient matches -3 run setblock ~ ~ ~ lime_glazed_terracotta

# Sushi Rice
execute if score @s ingredient matches 12 run setblock ~ ~ ~ white_glazed_terracotta
# Avocado
execute if score @s ingredient matches 18 run setblock ~ ~ ~ green_glazed_terracotta
# Wasabi
execute if score @s ingredient matches 20 run setblock ~ ~ ~ lime_glazed_terracotta

# Pizza Dough
execute if score @s ingredient matches 21 run setblock ~ ~ ~ white_glazed_terracotta
# Tomato Sauce
execute if score @s ingredient matches 22 run setblock ~ ~ ~ red_glazed_terracotta
# Pizza Cheese
execute if score @s ingredient matches 23 run setblock ~ ~ ~ yellow_glazed_terracotta
# Pepperoni
execute if score @s ingredient matches 24 run setblock ~ ~ ~ pink_glazed_terracotta
# Mushroom
execute if score @s ingredient matches 25 run setblock ~ ~ ~ brown_glazed_terracotta
# Pineapple
execute if score @s ingredient matches 26 run setblock ~ ~ ~ lime_glazed_terracotta

# Tortilla
execute if score @s ingredient matches 31 run setblock ~ ~ ~ white_glazed_terracotta
# Raw Ground Beef
execute if score @s ingredient matches 32 run setblock ~ ~ ~ pink_glazed_terracotta
# Taco Cheese
execute if score @s ingredient matches 33 run setblock ~ ~ ~ yellow_glazed_terracotta
# Guacamole
execute if score @s ingredient matches 34 run setblock ~ ~ ~ green_glazed_terracotta
# Salsa
execute if score @s ingredient matches 35 run setblock ~ ~ ~ red_glazed_terracotta
# Sour Cream
execute if score @s ingredient matches 36 run setblock ~ ~ ~ light_gray_glazed_terracotta

# Waffle Cone
execute if score @s ingredient matches 39 run setblock ~ ~ ~ yellow_glazed_terracotta
# Bowl
execute if score @s ingredient matches 40 run setblock ~ ~ ~ cyan_glazed_terracotta
# Vanilla
execute if score @s ingredient matches 41 run setblock ~ ~ ~ white_glazed_terracotta
# Chocolate
execute if score @s ingredient matches 42 run setblock ~ ~ ~ brown_glazed_terracotta
# Strawberry
execute if score @s ingredient matches 43 run setblock ~ ~ ~ pink_glazed_terracotta
# Cookies
execute if score @s ingredient matches 44 run setblock ~ ~ ~ light_gray_glazed_terracotta
# Mint
execute if score @s ingredient matches 45 run setblock ~ ~ ~ lime_glazed_terracotta
# Mango
execute if score @s ingredient matches 46 run setblock ~ ~ ~ orange_glazed_terracotta
# Sprinkles
execute if score @s ingredient matches 47 run setblock ~ ~ ~ magenta_glazed_terracotta
# Chocolate Chips
execute if score @s ingredient matches 48 run setblock ~ ~ ~ black_glazed_terracotta
# Cherry
execute if score @s ingredient matches 49 run setblock ~ ~ ~ red_glazed_terracotta
# Cookie Dough
execute if score @s ingredient matches 50 run setblock ~ ~ ~ gray_glazed_terracotta

# Salmon Spawner
execute if entity @s[tag=salmon_spawner] run setblock ~ ~ ~ orange_glazed_terracotta
# Pufferfish Spawner
execute if entity @s[tag=pufferfish_spawner] run setblock ~ ~ ~ yellow_glazed_terracotta

# Customer lines
execute if entity @s[tag=customer_line_north] run setblock ~ ~ ~ purpur_stairs[facing=south]
execute if entity @s[tag=customer_line_east] run setblock ~ ~ ~ purpur_stairs[facing=west]
execute if entity @s[tag=customer_line_south] run setblock ~ ~ ~ purpur_stairs[facing=north]
execute if entity @s[tag=customer_line_west] run setblock ~ ~ ~ purpur_stairs[facing=east]

execute if entity @s[type=marker,tag=prep_display,tag=!2] at @s run setblock ~ ~ ~ oak_pressure_plate[powered=true]
execute if entity @s[type=marker,tag=prep_display,tag=2] at @s run setblock ~ ~ ~ jungle_pressure_plate[powered=true]