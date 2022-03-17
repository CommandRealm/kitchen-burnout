# Score
## Classic Mode
execute if score $mode settings matches 0 run function game:serve/score/classic
execute if score $mode settings matches 1 unless entity @s[tag=2] run function game:serve/score/versus_1
execute if score $mode settings matches 1 if entity @s[tag=2] run function game:serve/score/versus_2
scoreboard players reset @s recipe_timer

# Reset marker
tag @s remove hamburger_bun
tag @s remove cheese
tag @s remove lettuce_head
tag @s remove lettuce_head_2
tag @s remove lettuce_leaf
tag @s remove tomato
tag @s remove tomato_slice
tag @s remove raw_hamburger
tag @s remove half_cooked_hamburger
tag @s remove hamburger
tag @s remove burnt_hamburger
tag @s remove scorched_food
tag @s remove rice
tag @s remove salmon
tag @s remove cut_salmon
tag @s remove pufferfish
tag @s remove cut_pufferfish
tag @s remove poison_pufferfish
tag @s remove avocado
tag @s remove avocado_slice
tag @s remove wasabi
tag @s remove dough
tag @s remove sauce
tag @s remove pizza_cheese
tag @s remove pepperoni
tag @s remove mushroom
tag @s remove pineapple
tag @s remove thick_crust
tag @s remove thin_crust
tag @s remove cut_mushroom
tag @s remove cut_pineapple
tag @s remove tortilla
tag @s remove raw_beef
tag @s remove taco_cheese
tag @s remove guac
tag @s remove salsa
tag @s remove sour_cream
tag @s remove beef
tag @s remove lettuce_shreds
tag @s remove cone
tag @s remove bowl
tag @s remove vanilla
tag @s remove chocolate
tag @s remove strawberry
tag @s remove cookies
tag @s remove mint
tag @s remove mango
tag @s remove sprinkles
tag @s remove chips
tag @s remove cherry
tag @s remove cookie_dough
tag @s remove frozen_food
kill @e[type=armor_stand,tag=prep_slot,distance=..15]
playsound entity.player.levelup master @a ~ ~ ~ 1 1.1
particle totem_of_undying ~ ~ ~ .1 .1 .1 1 20 force
tag @s add add_new_recipe
execute if score $mode settings matches 0 run data remove storage orders_1 Recipe[0]
execute if score $mode settings matches 1 unless entity @s[tag=2] run data remove storage orders_1 Recipe[0]
execute if score $mode settings matches 1 if entity @s[tag=2] run data remove storage orders_2 Recipe[0]
execute if score $mode settings matches 0 run scoreboard players set @a[gamemode=adventure,tag=playing,limit=1] recipe_cooldown 25
execute if score $mode settings matches 1 unless entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,limit=1,tag=!team_2] recipe_cooldown 25
execute if score $mode settings matches 1 if entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,limit=1,tag=team_2] recipe_cooldown 25