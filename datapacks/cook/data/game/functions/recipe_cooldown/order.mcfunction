# called when the recipe cooldown is over.

# Resetting nearby players' timer.
scoreboard players set @a[distance=..500,tag=playing,scores={recipe_cooldown=10}] recipe_cooldown 9

# Giving us the new recipe.
execute if entity @s[tag=!team_2] run function game:recipe_cooldown/order_1


# Reading the order

#randomizing the way they ask
scoreboard players set $mod random 10
function random:random

# Customer line
execute if score $rand random matches 0 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"May I please have the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"?"}]
execute if score $rand random matches 1 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"I'd like the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]
execute if score $rand random matches 2 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"I want the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]
execute if score $rand random matches 3 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"Please give me the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]
execute if score $rand random matches 4 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"Can I get the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"?"}]
execute if score $rand random matches 5 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"Give me the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]
execute if score $rand random matches 6 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"I want to try the "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]
execute if score $rand random matches 7 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"One "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":" please."}]
execute if score $rand random matches 8 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"I would love a "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"!"}]
execute if score $rand random matches 9 run tellraw @a[distance=..500] [{"text":"<","color":"white"},{"text":"Customer","color":"gold"},{"text":"> "},{"text":"I think I'll get a "},{"nbt":"Recipe.Name","storage":"minecraft:current_order1","color":"gray","underlined":true},{"text":"."}]


# Random sound pitch
scoreboard players set $mod random 16
function random:random

# sound
execute if score $rand random matches 0 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.5
execute if score $rand random matches 1 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.6
execute if score $rand random matches 2 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.7
execute if score $rand random matches 3 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.8
execute if score $rand random matches 4 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 0.9
execute if score $rand random matches 5 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.0
execute if score $rand random matches 6 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.1
execute if score $rand random matches 7 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.2
execute if score $rand random matches 8 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.3
execute if score $rand random matches 9 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.4
execute if score $rand random matches 10 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.5
execute if score $rand random matches 11 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.6
execute if score $rand random matches 12 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.7
execute if score $rand random matches 13 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.8
execute if score $rand random matches 14 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 1.9
execute if score $rand random matches 15 as @a[tag=playing,distance=..500] at @s run playsound minecraft:entity.villager.ambient master @s ~ ~ ~ 1 2.0
