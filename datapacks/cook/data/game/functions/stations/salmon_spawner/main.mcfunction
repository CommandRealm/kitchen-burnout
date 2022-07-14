# Summon
execute store result score @s fish_count if entity @e[type=salmon,distance=..30]
execute unless score @s fish_count matches 3.. unless score $glowing settings matches 1 run summon salmon ~ ~ ~ {Tags:["die_between_games","can_catch","cut_salmon"],ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}]}
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 run summon salmon ~ ~ ~ {Tags:["die_between_games","can_catch","cut_salmon"],Glowing:1b,ActiveEffects:[{Id:11,Amplifier:127b,Duration:1000000,ShowParticles:0b}]}

# Proper glowing colors
execute unless score @s fish_count matches 3.. run team join no_collision @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500]
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 unless entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} run tag @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500] add recipe_ingredient
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 unless entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} unless entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500,tag=cut_salmon] run team join recipe_missing @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500]
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 unless entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_1 Recipe{Ingredients:["Cut Salmon"]} if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500,tag=cut_salmon] run team join recipe_filled @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500]
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} run tag @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500] add recipe_ingredient
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} unless entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500,tag=cut_salmon] run team join recipe_missing @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500]
execute unless score @s fish_count matches 3.. if score $glowing settings matches 1 if entity @a[gamemode=adventure,tag=playing,tag=team_2,distance=..500] if data storage current_order_2 Recipe{Ingredients:["Cut Salmon"]} if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,distance=..500,tag=cut_salmon] run team join recipe_filled @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..500]