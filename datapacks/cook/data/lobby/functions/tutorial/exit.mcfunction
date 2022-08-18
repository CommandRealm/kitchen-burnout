execute if entity @s[scores={recipe_cooldown=1..}] if entity @a[gamemode=adventure,tag=tutorial,tag=playing] run scoreboard players operation @a[tag=tutorial,tag=playing,limit=1,sort=nearest] recipe_cooldown = @s recipe_cooldown
execute if entity @s[scores={recipe_cooldown=1..}] if entity @a[gamemode=adventure,tag=tutorial,tag=playing] run scoreboard players reset @s recipe_cooldown
execute unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=magma_cube,tag=ingredient_box_outline,tag=tutorial] run data merge entity @s {Glowing:0b}
execute unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=villager,tag=customer,tag=has_blurb,distance=..100] run data merge entity @s {CustomName:"",CustomNameVisible:0b}
execute unless entity @a[gamemode=adventure,tag=tutorial,tag=playing] as @e[type=area_effect_cloud,tag=station_display_text,tag=tutorial] run data merge entity @s {CustomNameVisible:0b}
clear @s
tag @s remove tutorial