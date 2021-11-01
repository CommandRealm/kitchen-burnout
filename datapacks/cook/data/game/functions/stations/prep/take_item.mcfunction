# Take an item from the prep display
scoreboard players set $calculate calculate 0

# Match ingredient
tag @e[type=armor_stand,sort=nearest,limit=1,tag=prep_slot] add selected_prep_slot
scoreboard players operation @s ingredient = @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] ingredient
execute as @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] at @s if entity @s[tag=!hamburger_bun] run kill @s
execute as @e[type=armor_stand,tag=prep_slot,tag=selected_prep_slot,limit=1,sort=nearest] at @s if entity @s[tag=hamburger_bun] run kill @e[type=armor_stand,tag=prep_slot,tag=hamburger_bun,sort=nearest,distance=..10]

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

#execute positioned ~ ~-2 ~ as @e[type=armor_stand,tag=prep_slot,distance=..12,sort=nearest] at @s run function game:stations/prep/tp/slide_down
#tag @e[type=armor_stand,tag=prep_slot,distance=..15] add compact_display
#tag @e[type=armor_stand,tag=prep_slot,distance=..15] remove prep_slot
scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display -1
#execute as @e[type=marker,tag=prep_display,limit=1,sort=nearest] at @s if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot,distance=..15] run scoreboard players set @s prep_display 0

tag @s add took_item_tag
advancement grant @s only game:inventory_changed
execute at @s if entity @e[type=armor_stand,tag=prep_slot,distance=..15] run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1