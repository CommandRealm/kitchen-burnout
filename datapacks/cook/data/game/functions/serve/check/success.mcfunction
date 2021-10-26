# Score
## Classic Mode
execute if score $mode settings matches 0 run function game:serve/score/classic
scoreboard players reset @s recipe_timer

# Reset marker
tag @s remove hamburger_bun
tag @s remove cheese
tag @s remove lettuce_head
tag @s remove lettuce_leaf
tag @s remove tomato
tag @s remove tomato_slice
tag @s remove raw_hamburger
tag @s remove half_cooked_hamburger
tag @s remove hamburger
tag @s remove burnt_hamburger
tag @s remove scorched_food
kill @e[type=armor_stand,tag=prep_slot,distance=..10]
playsound entity.player.levelup master @a ~ ~ ~ 1 1.1
particle totem_of_undying ~ ~ ~ .1 .1 .1 1 20 force
tag @s add add_new_recipe
data remove storage minecraft:orders1 Recipe[0]
scoreboard players set @a[gamemode=adventure,tag=playing,limit=1] recipe_cooldown 25