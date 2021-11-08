scoreboard players set $calculate calculate 0

# If ingredient is already there, stop them from putting it there
execute if score @s ingredient matches 1 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=hamburger_bun] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 2 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cheese] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 3 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_head] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 4 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_leaf] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 5 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=tomato] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 6 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=tomato_slice] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 7 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=raw_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 8 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=half_cooked_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 9 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 10 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=burnt_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 11 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=scorched_food] run function game:stations/prep/cannot_place

# If ingredient is not there, add ingredient
execute if score @s[tag=!temporary_place_tag] ingredient matches 1 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!hamburger_bun] run tag @s add hamburger_bun
execute if score @s[tag=!temporary_place_tag] ingredient matches 2 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cheese] run tag @s add cheese
execute if score @s[tag=!temporary_place_tag] ingredient matches 3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_head] run tag @s add lettuce_head
execute if score @s[tag=!temporary_place_tag] ingredient matches 4 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_leaf] run tag @s add lettuce_leaf
execute if score @s[tag=!temporary_place_tag] ingredient matches 5 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!tomato] run tag @s add tomato
execute if score @s[tag=!temporary_place_tag] ingredient matches 6 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!tomato_slice] run tag @s add tomato_slice
execute if score @s[tag=!temporary_place_tag] ingredient matches 7 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!raw_hamburger] run tag @s add raw_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 8 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!half_cooked_hamburger] run tag @s add half_cooked_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 9 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!hamburger] run tag @s add hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 10 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!burnt_hamburger] run tag @s add burnt_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 11 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!scorched_food] run tag @s add scorched_food

# Summon ingredient marker for display if necessary
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 1 unless entity @e[type=marker,tag=recipe_ingredient,tag=hamburger_bun] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger_bun"],CustomName:'["",{"translate":"Hamburger Bun"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 2 unless entity @e[type=marker,tag=recipe_ingredient,tag=cheese] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cheese"],CustomName:'["",{"translate":"Cheese"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 3 unless entity @e[type=marker,tag=recipe_ingredient,tag=lettuce_head] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_head"],CustomName:'["",{"translate":"Lettuce Head"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 4 unless entity @e[type=marker,tag=recipe_ingredient,tag=lettuce_leaf] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_leaf"],CustomName:'["",{"translate":"Lettuce Leaf"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 5 unless entity @e[type=marker,tag=recipe_ingredient,tag=tomato] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","tomato"],CustomName:'["",{"translate":"Tomato"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 6 unless entity @e[type=marker,tag=recipe_ingredient,tag=tomato_slice] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","tomato_slice"],CustomName:'["",{"translate":"Tomato Slice"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 7 unless entity @e[type=marker,tag=recipe_ingredient,tag=raw_hamburger] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","raw_hamburger"],CustomName:'["",{"translate":"Raw Hamburger"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 8 unless entity @e[type=marker,tag=recipe_ingredient,tag=half_cooked_hamburger] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","half_cooked_hamburger"],CustomName:'["",{"translate":"Half-Cooked Hamburger"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 9 unless entity @e[type=marker,tag=recipe_ingredient,tag=hamburger] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","hamburger"],CustomName:'["",{"translate":"Hamburger"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 10 unless entity @e[type=marker,tag=recipe_ingredient,tag=burnt_hamburger] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","burnt_hamburger"],CustomName:'["",{"translate":"Burnt Hamburger"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 11 unless entity @e[type=marker,tag=recipe_ingredient,tag=scorched_food] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","scorched_food"],CustomName:'["",{"translate":"Scorched Food"}]'}

# Mark ingredient as being there
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=hamburger_bun] if data storage current_order1 Recipe{Ingredients:["Hamburger Bun"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=cheese] if data storage current_order1 Recipe{Ingredients:["Cheese"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=lettuce_head] if data storage current_order1 Recipe{Ingredients:["Lettuce Head"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=lettuce_leaf] if data storage current_order1 Recipe{Ingredients:["Lettuce Leaf"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=tomato] if data storage current_order1 Recipe{Ingredients:["Tomato"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=tomato_slice] if data storage current_order1 Recipe{Ingredients:["Tomato Slice"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=raw_hamburger] if data storage current_order1 Recipe{Ingredients:["Raw Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=half_cooked_hamburger] if data storage current_order1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=hamburger] if data storage current_order1 Recipe{Ingredients:["Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=burnt_hamburger] if data storage current_order1 Recipe{Ingredients:["Burnt Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,limit=1,sort=nearest,tag=scorched_food] if data storage current_order1 Recipe{Ingredients:["Scorched Food"]} run team join recipe_filled @s

# If ingredient was added, play sounds and get rid of armor stands
scoreboard players set @s[tag=!temporary_place_tag] ingredient 0
playsound entity.item.pickup master @s[tag=!temporary_place_tag] ~ ~ ~ 1 1.1
item replace entity @s[tag=!temporary_place_tag] hotbar.4 with air
execute if entity @s[tag=!temporary_place_tag] as @e[type=marker,tag=prep_display,limit=1,sort=nearest] at @s run tag @s add reset_prep_ingredients
#execute if entity @s[tag=!temporary_place_tag] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display -1

# Remove tags
tag @s remove temporary_place_tag