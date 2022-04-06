# Called to create the cherry ingredient box.
summon marker ~ ~ ~ {Tags:["ingredient_box","die_between_games","raycast_target"]}
setblock ~ ~ ~ glass
scoreboard players set @e[type=marker,sort=nearest,limit=1,tag=ingredient_box,distance=..1] ingredient 49
# Spinning item
summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["ingredient_box_display","die_between_games","needs_item"],Pose:{Head:[180f,180f,0f]}}
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run loot replace entity @s armor.head loot game:food/ice_cream/cherry
execute as @e[type=armor_stand,sort=nearest,limit=1,tag=ingredient_box_display,distance=..3,tag=needs_item] at @s run tag @s remove needs_item