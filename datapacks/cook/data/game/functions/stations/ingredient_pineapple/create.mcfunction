# Called to create the pineapple ingredient box.
summon marker ~ ~ ~ {Tags:["ingredient_box","die_between_games","raycast_target"]}
setblock ~ ~ ~ glass
scoreboard players set @e[type=marker,sort=nearest,limit=1,tag=ingredient_box,distance=..1] ingredient 26
# Glowing outline
execute if score $glowing settings matches 1 run summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,Size:1,Tags:["die_between_games","ingredient_box_outline","cut_pineapple"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
team join no_collision @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1]
# Spinning item
summon armor_stand ~ ~-1.25 ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ingredient_box_display","die_between_games","needs_item"]}
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run loot replace entity @s armor.head loot game:food/pizza/pineapple
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run tag @s remove needs_item