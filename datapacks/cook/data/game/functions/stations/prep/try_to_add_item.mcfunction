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

execute if score @s ingredient matches 12 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=rice] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 13 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=salmon] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 14 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=pufferfish] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 15 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cut_salmon] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 16 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cut_pufferfish] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 17 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=poison_pufferfish] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 18 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=avocado] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 19 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=avocado_slice] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 20 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=wasabi] run function game:stations/prep/cannot_place

execute if score @s ingredient matches 21 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=dough] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 22 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=sauce] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 23 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=pizza_cheese] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 24 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=pepperoni] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 25 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=mushroom] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 26 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=pineapple] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 27 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=thick_crust] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 28 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=thin_crust] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 29 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cut_mushroom] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 30 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cut_pineapple] run function game:stations/prep/cannot_place

execute if score @s ingredient matches 31 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=tortilla] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 32 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=raw_beef] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 33 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=taco_cheese] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 34 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=guac] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 35 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=salsa] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 36 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=sour_cream] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 37 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=beef] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 38 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_shreds] run function game:stations/prep/cannot_place
execute if score @s ingredient matches -3 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_head_2] run function game:stations/prep/cannot_place

execute if score @s ingredient matches 39 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cone] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 40 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=bowl] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 41 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=vanilla] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 42 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=chocolate] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 43 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=strawberry] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 44 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cookies] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 45 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=mint] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 46 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=mango] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 47 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=sprinkles] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 48 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=chips] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 49 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cherry] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 50 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cookie_dough] run function game:stations/prep/cannot_place

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

execute if score @s[tag=!temporary_place_tag] ingredient matches 12 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!rice] run tag @s add rice
execute if score @s[tag=!temporary_place_tag] ingredient matches 13 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!salmon] run tag @s add salmon
execute if score @s[tag=!temporary_place_tag] ingredient matches 14 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!pufferfish] run tag @s add pufferfish
execute if score @s[tag=!temporary_place_tag] ingredient matches 15 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cut_salmon] run tag @s add cut_salmon
execute if score @s[tag=!temporary_place_tag] ingredient matches 16 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cut_pufferfish] run tag @s add cut_pufferfish
execute if score @s[tag=!temporary_place_tag] ingredient matches 17 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!poison_pufferfish] run tag @s add poison_pufferfish
execute if score @s[tag=!temporary_place_tag] ingredient matches 18 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!avocado] run tag @s add avocado
execute if score @s[tag=!temporary_place_tag] ingredient matches 19 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!avocado_slice] run tag @s add avocado_slice
execute if score @s[tag=!temporary_place_tag] ingredient matches 20 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!wasabi] run tag @s add wasabi

execute if score @s[tag=!temporary_place_tag] ingredient matches 21 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!dough] run tag @s add dough
execute if score @s[tag=!temporary_place_tag] ingredient matches 22 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!sauce] run tag @s add sauce
execute if score @s[tag=!temporary_place_tag] ingredient matches 23 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!pizza_cheese] run tag @s add pizza_cheese
execute if score @s[tag=!temporary_place_tag] ingredient matches 24 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!pepperoni] run tag @s add pepperoni
execute if score @s[tag=!temporary_place_tag] ingredient matches 25 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!mushroom] run tag @s add mushroom
execute if score @s[tag=!temporary_place_tag] ingredient matches 26 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!pineapple] run tag @s add pineapple
execute if score @s[tag=!temporary_place_tag] ingredient matches 27 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!thick_crust] run tag @s add thick_crust
execute if score @s[tag=!temporary_place_tag] ingredient matches 28 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!thin_crust] run tag @s add thin_crust
execute if score @s[tag=!temporary_place_tag] ingredient matches 29 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cut_mushroom] run tag @s add cut_mushroom
execute if score @s[tag=!temporary_place_tag] ingredient matches 30 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cut_pineapple] run tag @s add cut_pineapple
execute if score @s[tag=!temporary_place_tag] ingredient matches 31 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!tortilla] run tag @s add tortilla
execute if score @s[tag=!temporary_place_tag] ingredient matches 32 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!raw_beef] run tag @s add raw_beef
execute if score @s[tag=!temporary_place_tag] ingredient matches 33 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!taco_cheese] run tag @s add taco_cheese
execute if score @s[tag=!temporary_place_tag] ingredient matches 34 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!guac] run tag @s add guac
execute if score @s[tag=!temporary_place_tag] ingredient matches 35 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!salsa] run tag @s add salsa
execute if score @s[tag=!temporary_place_tag] ingredient matches 36 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!sour_cream] run tag @s add sour_cream
execute if score @s[tag=!temporary_place_tag] ingredient matches 37 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!beef] run tag @s add beef
execute if score @s[tag=!temporary_place_tag] ingredient matches 38 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_shreds] run tag @s add lettuce_shreds
execute if score @s[tag=!temporary_place_tag] ingredient matches -3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_head_2] run tag @s add lettuce_head_2

execute if score @s[tag=!temporary_place_tag] ingredient matches 39 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cone] run tag @s add cone
execute if score @s[tag=!temporary_place_tag] ingredient matches 40 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!bowl] run tag @s add bowl
execute if score @s[tag=!temporary_place_tag] ingredient matches 41 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!vanilla] run tag @s add vanilla
execute if score @s[tag=!temporary_place_tag] ingredient matches 42 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!chocolate] run tag @s add chocolate
execute if score @s[tag=!temporary_place_tag] ingredient matches 43 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!strawberry] run tag @s add strawberry
execute if score @s[tag=!temporary_place_tag] ingredient matches 44 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cookies] run tag @s add cookies
execute if score @s[tag=!temporary_place_tag] ingredient matches 45 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!mint] run tag @s add mint
execute if score @s[tag=!temporary_place_tag] ingredient matches 46 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!mango] run tag @s add mango
execute if score @s[tag=!temporary_place_tag] ingredient matches 47 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!sprinkles] run tag @s add sprinkles
execute if score @s[tag=!temporary_place_tag] ingredient matches 48 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!chips] run tag @s add chips
execute if score @s[tag=!temporary_place_tag] ingredient matches 49 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cherry] run tag @s add cherry
execute if score @s[tag=!temporary_place_tag] ingredient matches 50 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cookie_dough] run tag @s add cookie_dough

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

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 12 unless entity @e[type=marker,tag=recipe_ingredient,tag=rice] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","rice"],CustomName:'["",{"translate":"Sushi Rice"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 13 unless entity @e[type=marker,tag=recipe_ingredient,tag=salmon] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","salmon"],CustomName:'["",{"translate":"Fresh Salmon"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 14 unless entity @e[type=marker,tag=recipe_ingredient,tag=pufferfish] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","pufferfish"],CustomName:'["",{"translate":"Fresh Pufferfish"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 15 unless entity @e[type=marker,tag=recipe_ingredient,tag=cut_salmon] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cut_salmon"],CustomName:'["",{"translate":"Cut Salmon"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 16 unless entity @e[type=marker,tag=recipe_ingredient,tag=cut_pufferfish] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cut_pufferfish"],CustomName:'["",{"translate":"Cut Pufferfish"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 17 unless entity @e[type=marker,tag=recipe_ingredient,tag=poison_pufferfish] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","poison_pufferfish"],CustomName:'["",{"translate":"Poisonous Pufferfish"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 18 unless entity @e[type=marker,tag=recipe_ingredient,tag=avocado] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","avocado"],CustomName:'["",{"translate":"Avocado"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 19 unless entity @e[type=marker,tag=recipe_ingredient,tag=avocado_slice] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","avocado_slice"],CustomName:'["",{"translate":"Avocado Slice"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 20 unless entity @e[type=marker,tag=recipe_ingredient,tag=wasabi] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","wasabi"],CustomName:'["",{"translate":"Wasabi"}]'}

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 21 unless entity @e[type=marker,tag=recipe_ingredient,tag=dough] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","dough"],CustomName:'["",{"translate":"Pizza Dough"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 22 unless entity @e[type=marker,tag=recipe_ingredient,tag=sauce] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","sauce"],CustomName:'["",{"translate":"Tomato Sauce"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 23 unless entity @e[type=marker,tag=recipe_ingredient,tag=pizza_cheese] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","pizza_cheese"],CustomName:'["",{"translate":"Pizza Cheese"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 24 unless entity @e[type=marker,tag=recipe_ingredient,tag=pepperoni] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","pepperoni"],CustomName:'["",{"translate":"Pepperoni"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 25 unless entity @e[type=marker,tag=recipe_ingredient,tag=mushroom] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","mushroom"],CustomName:'["",{"translate":"Mushroom"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 26 unless entity @e[type=marker,tag=recipe_ingredient,tag=pineapple] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","pineapple"],CustomName:'["",{"translate":"Pineapple"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 27 unless entity @e[type=marker,tag=recipe_ingredient,tag=thick_crust] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","thick_crust"],CustomName:'["",{"translate":"Deep-Dish Crust"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 28 unless entity @e[type=marker,tag=recipe_ingredient,tag=thin_crust] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","thin_crust"],CustomName:'["",{"translate":"Thin Crust"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 29 unless entity @e[type=marker,tag=recipe_ingredient,tag=cut_mushroom] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cut_mushroom"],CustomName:'["",{"translate":"Mushroom Slices"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 30 unless entity @e[type=marker,tag=recipe_ingredient,tag=cut_pineapple] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cut_pineapple"],CustomName:'["",{"translate":"Pineapple Chunks"}]'}

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 31 unless entity @e[type=marker,tag=recipe_ingredient,tag=tortilla] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","tortilla"],CustomName:'["",{"translate":"Tortilla"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 32 unless entity @e[type=marker,tag=recipe_ingredient,tag=raw_beef] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","raw_beef"],CustomName:'["",{"translate":"Raw Ground Beef"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 33 unless entity @e[type=marker,tag=recipe_ingredient,tag=taco_cheese] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","taco_cheese"],CustomName:'["",{"translate":"Taco Cheese"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 34 unless entity @e[type=marker,tag=recipe_ingredient,tag=guac] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","guac"],CustomName:'["",{"translate":"Guacamole"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 35 unless entity @e[type=marker,tag=recipe_ingredient,tag=salsa] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","salsa"],CustomName:'["",{"translate":"Salsa"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 36 unless entity @e[type=marker,tag=recipe_ingredient,tag=sour_cream] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","sour_cream"],CustomName:'["",{"translate":"Sour Cream"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 37 unless entity @e[type=marker,tag=recipe_ingredient,tag=beef] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","beef"],CustomName:'["",{"translate":"Ground Beef"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 38 unless entity @e[type=marker,tag=recipe_ingredient,tag=lettuce_shreds] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_shreds"],CustomName:'["",{"translate":"Shredded Lettuce"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches -3 unless entity @e[type=marker,tag=recipe_ingredient,tag=lettuce_head_2] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","lettuce_head_2"],CustomName:'["",{"translate":"Lettuce Head"}]'}

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 39 unless entity @e[type=marker,tag=recipe_ingredient,tag=cone] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cone"],CustomName:'["",{"translate":"cone"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 40 unless entity @e[type=marker,tag=recipe_ingredient,tag=bowl] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","bowl"],CustomName:'["",{"translate":"bowl"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 41 unless entity @e[type=marker,tag=recipe_ingredient,tag=vanilla] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","vanilla"],CustomName:'["",{"translate":"vanilla"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 42 unless entity @e[type=marker,tag=recipe_ingredient,tag=chocolate] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","chocolate"],CustomName:'["",{"translate":"chocolate"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 43 unless entity @e[type=marker,tag=recipe_ingredient,tag=strawberry] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","strawberry"],CustomName:'["",{"translate":"strawberry"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 44 unless entity @e[type=marker,tag=recipe_ingredient,tag=cookies] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cookies"],CustomName:'["",{"translate":"cookies"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 45 unless entity @e[type=marker,tag=recipe_ingredient,tag=mint] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","mint"],CustomName:'["",{"translate":"mint"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 46 unless entity @e[type=marker,tag=recipe_ingredient,tag=mango] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","mango"],CustomName:'["",{"translate":"mango"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 47 unless entity @e[type=marker,tag=recipe_ingredient,tag=sprinkles] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","sprinkles"],CustomName:'["",{"translate":"sprinkles"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 48 unless entity @e[type=marker,tag=recipe_ingredient,tag=chips] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","chips"],CustomName:'["",{"translate":"chips"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 49 unless entity @e[type=marker,tag=recipe_ingredient,tag=cherry] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cherry"],CustomName:'["",{"translate":"cherry"}]'}
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 50 unless entity @e[type=marker,tag=recipe_ingredient,tag=cookie_dough] run summon marker 0 0 0 {Tags:["recipe_ingredient","die_between_games","cookie_dough"],CustomName:'["",{"translate":"cookie_dough"}]'}

# Mark ingredient as being there
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 1 as @e[type=marker,tag=recipe_ingredient,tag=hamburger_bun] if data storage current_order1 Recipe{Ingredients:["Hamburger Bun"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 2 as @e[type=marker,tag=recipe_ingredient,tag=cheese] if data storage current_order1 Recipe{Ingredients:["Cheese"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 3 as @e[type=marker,tag=recipe_ingredient,tag=lettuce_head] if data storage current_order1 Recipe{Ingredients:["Lettuce Head"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 4 as @e[type=marker,tag=recipe_ingredient,tag=lettuce_leaf] if data storage current_order1 Recipe{Ingredients:["Lettuce Leaf"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 5 as @e[type=marker,tag=recipe_ingredient,tag=tomato] if data storage current_order1 Recipe{Ingredients:["Tomato"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 6 as @e[type=marker,tag=recipe_ingredient,tag=tomato_slice] if data storage current_order1 Recipe{Ingredients:["Tomato Slice"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 7 as @e[type=marker,tag=recipe_ingredient,tag=raw_hamburger] if data storage current_order1 Recipe{Ingredients:["Raw Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 8 as @e[type=marker,tag=recipe_ingredient,tag=half_cooked_hamburger] if data storage current_order1 Recipe{Ingredients:["Half-Cooked Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 9 as @e[type=marker,tag=recipe_ingredient,tag=hamburger] if data storage current_order1 Recipe{Ingredients:["Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 10 as @e[type=marker,tag=recipe_ingredient,tag=burnt_hamburger] if data storage current_order1 Recipe{Ingredients:["Burnt Hamburger"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 11 as @e[type=marker,tag=recipe_ingredient,tag=scorched_food] if data storage current_order1 Recipe{Ingredients:["Scorched Food"]} run team join recipe_filled @s

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 12 as @e[type=marker,tag=recipe_ingredient,tag=rice] if data storage current_order1 Recipe{Ingredients:["Sushi Rice"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 13 as @e[type=marker,tag=recipe_ingredient,tag=salmon] if data storage current_order1 Recipe{Ingredients:["Fresh Salmon"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 14 as @e[type=marker,tag=recipe_ingredient,tag=pufferfish] if data storage current_order1 Recipe{Ingredients:["Fresh Pufferfish"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 15 as @e[type=marker,tag=recipe_ingredient,tag=cut_salmon] if data storage current_order1 Recipe{Ingredients:["Cut Salmon"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 16 as @e[type=marker,tag=recipe_ingredient,tag=cut_pufferfish] if data storage current_order1 Recipe{Ingredients:["Cut Pufferfish"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 17 as @e[type=marker,tag=recipe_ingredient,tag=poison_pufferfish] if data storage current_order1 Recipe{Ingredients:["Poisonous Pufferfish"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 18 as @e[type=marker,tag=recipe_ingredient,tag=avocado] if data storage current_order1 Recipe{Ingredients:["Avocado"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 19 as @e[type=marker,tag=recipe_ingredient,tag=avocado_slice] if data storage current_order1 Recipe{Ingredients:["Avocado Slice"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 20 as @e[type=marker,tag=recipe_ingredient,tag=wasabi] if data storage current_order1 Recipe{Ingredients:["Wasabi"]} run team join recipe_filled @s

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 21 as @e[type=marker,tag=recipe_ingredient,tag=dough] if data storage current_order1 Recipe{Ingredients:["Pizza Dough"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 22 as @e[type=marker,tag=recipe_ingredient,tag=sauce] if data storage current_order1 Recipe{Ingredients:["Tomato Sauce"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 23 as @e[type=marker,tag=recipe_ingredient,tag=pizza_cheese] if data storage current_order1 Recipe{Ingredients:["Pizza Cheese"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 24 as @e[type=marker,tag=recipe_ingredient,tag=pepperoni] if data storage current_order1 Recipe{Ingredients:["Pepperoni"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 25 as @e[type=marker,tag=recipe_ingredient,tag=mushroom] if data storage current_order1 Recipe{Ingredients:["Mushroom"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 26 as @e[type=marker,tag=recipe_ingredient,tag=pineapple] if data storage current_order1 Recipe{Ingredients:["Pineapple"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 27 as @e[type=marker,tag=recipe_ingredient,tag=thick_crust] if data storage current_order1 Recipe{Ingredients:["Deep-Dish Crust"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 28 as @e[type=marker,tag=recipe_ingredient,tag=thin_crust] if data storage current_order1 Recipe{Ingredients:["Thin Crust"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 29 as @e[type=marker,tag=recipe_ingredient,tag=cut_mushroom] if data storage current_order1 Recipe{Ingredients:["Mushroom Slices"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 30 as @e[type=marker,tag=recipe_ingredient,tag=cut_pineapple] if data storage current_order1 Recipe{Ingredients:["Pineapple Chunks"]} run team join recipe_filled @s

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 31 as @e[type=marker,tag=recipe_ingredient,tag=tortilla] if data storage current_order1 Recipe{Ingredients:["Tortilla"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 32 as @e[type=marker,tag=recipe_ingredient,tag=raw_beef] if data storage current_order1 Recipe{Ingredients:["Raw Ground Beef"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 33 as @e[type=marker,tag=recipe_ingredient,tag=taco_cheese] if data storage current_order1 Recipe{Ingredients:["Taco Cheese"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 34 as @e[type=marker,tag=recipe_ingredient,tag=guac] if data storage current_order1 Recipe{Ingredients:["Guacamole"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 35 as @e[type=marker,tag=recipe_ingredient,tag=salsa] if data storage current_order1 Recipe{Ingredients:["Salsa"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 36 as @e[type=marker,tag=recipe_ingredient,tag=sour_cream] if data storage current_order1 Recipe{Ingredients:["Sour Cream"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 37 as @e[type=marker,tag=recipe_ingredient,tag=beef] if data storage current_order1 Recipe{Ingredients:["Ground Beef"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 38 as @e[type=marker,tag=recipe_ingredient,tag=lettuce_shreds] if data storage current_order1 Recipe{Ingredients:["Shredded Lettuce"]} run team join recipe_filled @s

execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 39 as @e[type=marker,tag=recipe_ingredient,tag=cone] if data storage current_order1 Recipe{Ingredients:["cone"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 40 as @e[type=marker,tag=recipe_ingredient,tag=bowl] if data storage current_order1 Recipe{Ingredients:["bowl"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 41 as @e[type=marker,tag=recipe_ingredient,tag=vanilla] if data storage current_order1 Recipe{Ingredients:["vanilla"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 42 as @e[type=marker,tag=recipe_ingredient,tag=chocolate] if data storage current_order1 Recipe{Ingredients:["chocolate"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 43 as @e[type=marker,tag=recipe_ingredient,tag=strawberry] if data storage current_order1 Recipe{Ingredients:["strawberry"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 44 as @e[type=marker,tag=recipe_ingredient,tag=cookies] if data storage current_order1 Recipe{Ingredients:["cookies"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 45 as @e[type=marker,tag=recipe_ingredient,tag=mint] if data storage current_order1 Recipe{Ingredients:["mint"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 46 as @e[type=marker,tag=recipe_ingredient,tag=mango] if data storage current_order1 Recipe{Ingredients:["mango"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 47 as @e[type=marker,tag=recipe_ingredient,tag=sprinkles] if data storage current_order1 Recipe{Ingredients:["sprinkles"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 48 as @e[type=marker,tag=recipe_ingredient,tag=chips] if data storage current_order1 Recipe{Ingredients:["chips"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 49 as @e[type=marker,tag=recipe_ingredient,tag=cherry] if data storage current_order1 Recipe{Ingredients:["cherry"]} run team join recipe_filled @s
execute if score $mode settings matches 0 if score @s[tag=!temporary_place_tag] ingredient matches 50 as @e[type=marker,tag=recipe_ingredient,tag=cookie_dough] if data storage current_order1 Recipe{Ingredients:["cookie_dough"]} run team join recipe_filled @s

# If ingredient was added, play sounds and get rid of armor stands
scoreboard players set @s[tag=!temporary_place_tag] ingredient 0
playsound entity.item.pickup master @s[tag=!temporary_place_tag] ~ ~ ~ 1 1.1
item replace entity @s[tag=!temporary_place_tag] hotbar.4 with air
execute if entity @s[tag=!temporary_place_tag] as @e[type=marker,tag=prep_display,limit=1,sort=nearest] at @s run tag @s add reset_prep_ingredients
#execute if entity @s[tag=!temporary_place_tag] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display -1

# Remove tags
tag @s remove temporary_place_tag