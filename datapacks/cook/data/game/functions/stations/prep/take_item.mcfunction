# Take an item from the prep display

# Match ingredient
scoreboard players operation @s ingredient = @e[type=armor_stand,sort=nearest,limit=1,tag=prep_slot] ingredient
execute as @e[type=armor_stand,tag=prep_slot,sort=nearest,limit=1] at @s if entity @s[tag=!hamburger_bun] run kill @s
execute as @e[type=armor_stand,tag=prep_slot,sort=nearest,limit=1] at @s if entity @s[tag=hamburger_bun] run kill @e[type=armor_stand,tag=prep_slot,tag=hamburger_bun,limit=2,sort=nearest,distance=..10]

# Remove ingredient from array
execute if score @s ingredient matches 1 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove hamburger_bun
execute if score @s ingredient matches 2 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove cheese
execute if score @s ingredient matches 3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove lettuce_head
execute if score @s ingredient matches 4 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove lettuce_leaf
execute if score @s ingredient matches 5 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove tomato
execute if score @s ingredient matches 6 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove tomato_slice
execute if score @s ingredient matches 7 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove raw_hamburger
execute if score @s ingredient matches 8 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove half_cooked_hamburger
execute if score @s ingredient matches 9 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove hamburger
execute if score @s ingredient matches 10 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove burnt_hamburger
execute if score @s ingredient matches 11 as @e[type=marker,tag=prep_display,limit=1,sort=nearest] run tag @s remove scorched_food

tag @e[type=marker,tag=prep_display,limit=1,sort=nearest] add needs_prep_reset
scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display -1
execute as @e[type=marker,tag=prep_display,limit=1,sort=nearest] at @s if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot] run scoreboard players set @s prep_display 0

tag @s add took_item_tag
advancement grant @s only game:inventory_changed
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1