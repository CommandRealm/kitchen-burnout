# Give temporary tag to avoid selecting self
tag @s add temporary_tag

# Finalize position
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,tag=final_position,distance=..0.04] run tag @s add compact_display
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,tag=final_position,tag=compact_display,distance=..0.04] run tag @s remove prep_slot
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,distance=..0.04] run tag @s remove final_position
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s add compact_display
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s remove final_position

# First move base ingredients if another base ingredient is present
execute as @s[tag=base_ingredient,tag=!compact_display,tag=final_position] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tp @s ~ ~-0.03 ~

# Then move primary ingredients if primary or base ingredient is present
execute as @s[tag=primary_ingredient,tag=!base_ingredient,tag=!compact_display,tag=final_position] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.04,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~-0.03 ~
# Lastly, secondary ingredients
execute as @s[tag=!primary_ingredient,tag=!compact_display,tag=final_position] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 unless entity @e[type=armor_stand,tag=prep_slot,distance=..0.04,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~-0.03 ~

# Finalize position
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,tag=final_position,distance=..0.04] run tag @s add compact_display
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,tag=final_position,tag=compact_display,distance=..0.04] run tag @s remove prep_slot
execute if entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,distance=..0.04] run tag @s remove final_position
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s add compact_display
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s remove final_position

# Reset score so display can be opened again
execute unless entity @e[type=armor_stand,tag=prep_slot,tag=!compact_display,tag=final_position,distance=..10] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display 0

# Remove tag
tag @s remove temporary_tag