# Give temporary tag to avoid selecting self
tag @s add temporary_tag


# Finalize position
execute unless entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,distance=..0.08] run tag @s add final_position

# First move base ingredients if another base ingredient is present
execute as @s[tag=base_ingredient] at @s if entity @e[type=armor_stand,tag=prep_slot,tag=base_ingredient,distance=..0.5,tag=!temporary_tag] run tp @s ~ ~0.09 ~
# Then move primary ingredients if primary or base ingredient is present
execute as @s[tag=primary_ingredient,tag=!base_ingredient] at @s if entity @e[type=armor_stand,tag=prep_slot,tag=primary_ingredient,distance=..0.5,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~0.09 ~
# Lastly, secondary ingredients
execute as @s[tag=!primary_ingredient] at @s if entity @e[type=armor_stand,tag=prep_slot,distance=..0.5,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~0.09 ~

# Finalize position
execute unless entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_tag,distance=..0.08] run tag @s add final_position

# Remove tag
tag @s remove temporary_tag