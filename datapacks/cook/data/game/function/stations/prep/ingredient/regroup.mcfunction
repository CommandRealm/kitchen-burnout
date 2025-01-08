# Called by a prep station ingredient while the prep station ingredients are regrouping
# Returns 1 if the ingredient is still moving, 0 if it isn't
tag @s add final_position

tag @s add temporary_tag
scoreboard players set $should_move prep_position 0
# First move base ingredients if another base ingredient is present
execute as @s[tag=base_ingredient] as @n[type=item_display,tag=prep_ingredient,tag=!temporary_tag,distance=..10] if entity @s[tag=base_ingredient] run scoreboard players set $should_move prep_position 1
# Then move primary ingredients if primary or base ingredient is present
execute as @s[tag=primary_ingredient,tag=!base_ingredient] as @n[type=item_display,tag=prep_ingredient,tag=!temporary_tag,distance=..10] if entity @s[tag=primary_ingredient] run scoreboard players set $should_move prep_position 1
# Lastly, secondary ingredients
execute as @s[tag=!primary_ingredient] as @n[type=item_display,tag=prep_ingredient,tag=!temporary_tag,distance=..10] run scoreboard players set $should_move prep_position 1
tag @s remove temporary_tag

execute if score $should_move prep_position matches 0 run return 0

# Move down unless there is an ingredient directly below us
scoreboard players set $should_move prep_position 0
tag @s add temporary_tag
execute positioned ~ ~-0.0625 ~ unless entity @n[type=item_display,tag=prep_ingredient,tag=!temporary_tag,distance=..0.07] unless entity @n[type=interaction,tag=prep_base,distance=..0.07] run scoreboard players set $should_move prep_position 1
tag @s remove temporary_tag

execute if score $should_move prep_position matches 0 run return 0
tp @s ~ ~-0.0625 ~

# Return 1 to indicate that the ingredient is still regrouping
tag @s remove final_position
return 1