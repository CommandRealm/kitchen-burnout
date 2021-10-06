# If ingredient is already there, stop them from putting it there
execute if score @s ingredient matches 1 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=hamburger_bun] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 2 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=cheese] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 3 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_head] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 4 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=lettuce_leaf] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 5 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=tomato] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 6 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=tomato_slice] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 7 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=raw_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 8 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=half_cooked_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 9 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 10 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=burnt_hamburger] run function game:stations/prep/cannot_place
execute if score @s ingredient matches 11 if entity @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=scorched_food] run function game:stations/prep/cannot_place

# If ingredient is not there, add ingredient
execute if score @s[tag=!temporary_place_tag] ingredient matches 1 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!hamburger_bun] run tag @s add hamburger_bun
execute if score @s[tag=!temporary_place_tag] ingredient matches 2 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!cheese] run tag @s add cheese
execute if score @s[tag=!temporary_place_tag] ingredient matches 3 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_head] run tag @s add lettuce_head
execute if score @s[tag=!temporary_place_tag] ingredient matches 4 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!lettuce_leaf] run tag @s add lettuce_leaf
execute if score @s[tag=!temporary_place_tag] ingredient matches 5 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!tomato] run tag @s add tomato
execute if score @s[tag=!temporary_place_tag] ingredient matches 6 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!tomato_slice] run tag @s add tomato_slice
execute if score @s[tag=!temporary_place_tag] ingredient matches 7 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!raw_hamburger] run tag @s add raw_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 8 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!half_cooked_hamburger] run tag @s add half_cooked_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 9 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!hamburger] run tag @s add hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 10 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!burnt_hamburger] run tag @s add burnt_hamburger
execute if score @s[tag=!temporary_place_tag] ingredient matches 11 as @e[type=marker,tag=prep_display,limit=1,sort=nearest,tag=!scorched_food] run tag @s add scorched_food

# If ingredient was added, play sounds and get rid of armor stands
scoreboard players set @s[tag=!temporary_place_tag] ingredient 0
playsound entity.item.pickup master @s[tag=!temporary_place_tag] ~ ~ ~ 1 1.1
item replace entity @s[tag=!temporary_place_tag] hotbar.4 with air
execute if entity @s[tag=!temporary_place_tag] run tag @e[type=marker,tag=prep_display,limit=1,sort=nearest] add needs_prep_reset
execute if entity @s[tag=!temporary_place_tag] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display -1
execute as @e[type=marker,tag=prep_display,limit=1,sort=nearest] at @s if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot] run scoreboard players set @s prep_display 0

# Remove tags
tag @s remove temporary_place_tag