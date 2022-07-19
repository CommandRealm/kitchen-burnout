# Called to create the wasabi ingredient box.
setblock ~ ~ ~ glass
summon marker ~ ~ ~ {Tags:["ingredient_box","reset_boxes","die_between_games","raycast_target","20"]}
scoreboard players set @e[type=marker,sort=nearest,limit=1,tag=ingredient_box,distance=..1] ingredient 20
# Glowing outline
execute if score $glowing settings matches 1 run summon magma_cube ~ ~ ~ {Silent:1b,Invulnerable:1b,Glowing:1b,NoAI:1b,Size:1,Tags:["die_between_games","ingredient_box_outline","invisible","sauce"],ActiveEffects:[{Id:14,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
team join no_collision @e[type=magma_cube,tag=ingredient_box_outline,limit=1,sort=nearest,distance=..1]
# Spinning item
summon armor_stand ~ ~-1.65 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ingredient_box_display","die_between_games","needs_item"]}
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run loot replace entity @s armor.head loot game:food/pizza/sauce
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run tag @s remove needs_item