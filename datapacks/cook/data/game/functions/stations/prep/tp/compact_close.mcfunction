# Give temporary tag to avoid selecting self
tag @s add temporary_tag
tag @s add final_position

# Finalize position
execute if entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,tag=!temporary_tag,distance=..0.04] run tag @s remove final_position
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s remove final_position

# First move base ingredients if another base ingredient is present
execute as @s[tag=base_ingredient,tag=final_position] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tp @s ~ ~-0.03 ~

# Then move primary ingredients if primary or base ingredient is present
execute as @s[tag=primary_ingredient,tag=!base_ingredient,tag=final_position,scores={ingredient=..38}] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.04,tag=!temporary_tag] unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.04,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~-0.03 ~
execute as @s[tag=primary_ingredient,tag=!base_ingredient,tag=final_position,scores={ingredient=39..51}] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.04,tag=!temporary_tag] unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,tag=base_ingredient,distance=..0.20,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~-0.03 ~
# Lastly, secondary ingredients
execute as @s[tag=!primary_ingredient,tag=final_position] at @s positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 unless entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.04,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~-0.03 ~

# Finalize position
execute if entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,tag=!temporary_tag,distance=..0.04] run tag @s remove final_position
execute if entity @e[type=armor_stand,tag=prep_slot,tag=base_ingredient,tag=!temporary_tag,distance=..0.20] run tag @s[scores={ingredient=39..51}] remove final_position
execute positioned ~-0.3125 ~0.77 ~-0.375 if entity @e[type=marker,tag=prep_display,distance=..0.04] positioned ~0.3125 ~-0.77 ~0.375 run tag @s remove final_position

# Remove tag
tag @s remove temporary_tag
tag @s remove going_up