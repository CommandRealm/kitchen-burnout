# Get owner
tag @a remove archery_owner
execute store result score $check_owner archery run data get entity @s Owner[1]
execute as @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500] at @s run function game:map/9/check_owner

# Give ingredient or fully prepped ingredient if it's a bullseye
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=tomato_slice,distance=..2] at @s unless block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 5
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=tomato_slice,distance=..2] at @s if block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 6
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=lettuce_leaf,distance=..2] at @s unless block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 3
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=lettuce_leaf,distance=..2] at @s if block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 4
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=hamburger_bun,distance=..2] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 1
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=cheese,distance=..2] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 2
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=hamburger,distance=..2] at @s unless block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 7
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,tag=hamburger,distance=..2] at @s if block ~ ~1 ~-1 target[power=15] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ingredient 9
advancement grant @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] only game:inventory_changed

# Effects
particle poof ~ ~ ~ 0 0 0 1 0 force
playsound entity.arrow.hit_player master @a[gamemode=adventure,tag=playing,scores={map=9},distance=..500,tag=archery_owner,sort=nearest,limit=1] ~ ~ ~ 2 0.6
# Bullseye!
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,distance=..2] at @s if block ~ ~1 ~-1 target[power=15] run scoreboard players set $bullseye archery 1
execute as @e[type=glow_item_frame,tag=ingredient_box_outline,distance=..2] at @s if block ~ ~1 ~-1 target[power=15] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 force

# Ending
tag @a remove archery_owner
kill @s