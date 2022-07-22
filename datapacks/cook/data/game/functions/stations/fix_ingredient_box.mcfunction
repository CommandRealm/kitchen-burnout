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
function game:stations/recipe_ingredient
#team join recipe_missing @e[type=#game:ingredient_box_outline,tag=recipe_ingredient,tag=!tutorial,distance=..500]
team join recipe_missing @e[type=#game:recipe_ingredient,tag=recipe_ingredient,tag=!tutorial,distance=..500]

# Reset score so scoreboard isn't cluttered
scoreboard players reset $temp_food_type ingredient