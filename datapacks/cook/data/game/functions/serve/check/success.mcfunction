# Score
execute unless entity @s[tag=tutorial] if score $mode settings matches 0 run function game:serve/score/classic
execute unless entity @s[tag=tutorial] if score $mode settings matches 1 unless entity @s[tag=2] run function game:serve/score/versus_1
execute unless entity @s[tag=tutorial] if score $mode settings matches 1 if entity @s[tag=2] run function game:serve/score/versus_2
execute unless entity @s[tag=tutorial] if score $mode settings matches 2 unless entity @s[tag=2] run scoreboard players add $finished_recipes_1 game 1
execute unless entity @s[tag=tutorial] if score $mode settings matches 2 if entity @s[tag=2] run scoreboard players add $finished_recipes_2 game 1
execute unless entity @s[tag=tutorial] if score $mode settings matches 3 run function game:serve/score/competitive
scoreboard players reset @s recipe_timer

scoreboard players reset $tags calculate
# Reset marker
execute store success score $removed calculate run tag @s remove bun
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cheese
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove lettuce_head
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove lettuce_head_2
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove lettuce_leaf
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove tomato
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove tomato_slice
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove raw_hamburger
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove half_cooked_hamburger
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove hamburger
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove burnt_hamburger
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove scorched_food
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove rice
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove salmon
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cut_salmon
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove pufferfish
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cut_pufferfish
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove poison_pufferfish
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove avocado
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove avocado_slice
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove wasabi
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove dough
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove sauce
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove pizza_cheese
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove pepperoni
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove mushroom
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove pineapple
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove thick_crust
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove thin_crust
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cut_mushroom
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cut_pineapple
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove tortilla
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove raw_beef
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove taco_cheese
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove guac
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove salsa
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove sour_cream
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove beef
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove lettuce_shreds
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cone
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove bowl
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove vanilla
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove chocolate
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove strawberry
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cookies
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove mint
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove mango
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove sprinkles
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove chips
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cherry
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove cookie_dough
scoreboard players operation $tags calculate += $removed calculate
execute store success score $removed calculate run tag @s remove frozen_food
scoreboard players operation $tags calculate += $removed calculate

# Give advancement for an order with more than 6 ingredients
execute if score $tags calculate matches 6.. run advancement grant @a[gamemode=adventure,tag=playing,distance=..500] only advancements:order_six
scoreboard players reset $tags calculate

# Give advancement for order after time is up
execute if score $mode settings matches 0..1 if score $timer game_ticks matches ..18 run advancement grant @a[gamemode=adventure,tag=playing,distance=..500] only advancements:order_aftertime

# Give advancement for 100 orders
scoreboard players add @a[gamemode=adventure,tag=playing,distance=..500] finished_orders 1
advancement grant @a[gamemode=adventure,tag=playing,distance=..500,scores={finished_orders=100..}] only advancements:milestone_100

kill @e[type=armor_stand,tag=prep_slot,distance=..100]
playsound entity.player.levelup master @a ~ ~ ~ 1 1.1
particle totem_of_undying ~ ~ ~ .1 .1 .1 1 20 force
tag @s add add_new_recipe

# Unpress bell
execute as @e[type=armor_stand,tag=bell,tag=bell_pressed,limit=1,sort=nearest,distance=..500] at @s run function game:stations/bell/unpress

# Get rid of the closest customer
execute as @e[type=marker,tag=customer_line,sort=nearest,limit=1,distance=..100] at @s run function game:serve/customers/remove_first
execute unless entity @a[gamemode=adventure,tag=playing,scores={map=22},distance=..500] run setblock ~ ~ ~ air

# Next order
execute if entity @s[tag=tutorial] run tag @a[gamemode=adventure,tag=tutorial,distance=..500] add tut_serve
execute if entity @s[tag=tutorial] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=tutorial,limit=1] recipe_cooldown 25
execute if entity @s[tag=tutorial] run scoreboard players add $tutorial_orders prep_display 1
execute if entity @s[tag=tutorial] run setblock 0 -62 0 oak_sign{front_text:{messages:['["",{"score":{"objective":"prep_display","name":"$tutorial_orders"},"color":"green","bold":true}]', '{"text":""}', '{"text":""}', '{"text":""}'], has_glowing_text: false, color: "black"}} destroy
execute if entity @s[tag=tutorial] run data modify entity @e[type=area_effect_cloud,tag=station_display_text,tag=counter,tag=number,tag=tutorial,limit=1] CustomName set from block 0 -62 0 front_text.messages[0]
execute unless entity @s[tag=tutorial] if score $mode settings matches 0 run data remove storage orders_1 Recipe[0]
execute unless entity @s[tag=tutorial] if score $mode settings matches 3 run data remove storage orders_1 Recipe[0]
execute unless entity @s[tag=tutorial] if score $mode settings matches 1..2 unless entity @s[tag=2] run data remove storage orders_1 Recipe[0]
execute unless entity @s[tag=tutorial] if score $mode settings matches 1..2 if entity @s[tag=2] run data remove storage orders_2 Recipe[0]
execute unless entity @s[tag=tutorial] if score $mode settings matches 0 run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1] recipe_cooldown 25
execute unless entity @s[tag=tutorial] if score $mode settings matches 3 unless score $finished_recipes game matches 4.. run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1] recipe_cooldown 25
execute unless entity @s[tag=tutorial] if score $mode settings matches 1 unless entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,tag=!team_2] recipe_cooldown 25
execute unless entity @s[tag=tutorial] if score $mode settings matches 1 if entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,tag=team_2] recipe_cooldown 25
execute unless entity @s[tag=tutorial] if score $mode settings matches 2 unless score $food_type_1 shuffle matches 5.. unless score $recipes_1 shuffle >= $recipes settings unless entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,tag=!team_2] recipe_cooldown 25
execute unless entity @s[tag=tutorial] if score $mode settings matches 2 unless score $food_type_2 shuffle matches 5.. unless score $recipes_2 shuffle >= $recipes settings if entity @s[tag=2] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=!tutorial,limit=1,tag=team_2] recipe_cooldown 25