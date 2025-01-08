# Called by a prep station ingredient while the prep station ingredients are separating
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

# Get y position of closest other ingredient and our ingredient
tag @s add temporary_tag
scoreboard players set $other_y prep_position 0
execute store result score $other_y prep_position run data get entity @n[type=item_display,tag=prep_ingredient,tag=!temporary_tag,distance=..10] Pos[1] 100
tag @s remove temporary_tag
execute if score $other_y prep_position matches 0 run return 0
execute store result score $our_y prep_position run data get entity @s Pos[1] 100

# Get difference in y position
scoreboard players operation $other_y prep_position -= $our_y prep_position
execute if score $other_y prep_position matches ..0 run scoreboard players operation $other_y prep_position *= $-1 number

# If the difference is greater than our current distance threshold, we don't need to move
execute unless score $other_y prep_position matches ..17 run return 0

# Move the ingredient
tp @s ~ ~0.125 ~

# Return 1 to indicate that the ingredient is still expanding
tag @s remove final_position
return 1