# Give temporary tag to avoid selecting self
tag @s add temporary_tag

# Finalize position
execute unless entity @e[type=armor_stand,tag=compact_display,tag=!temporary_tag,distance=..0.0275] run tag @s add final_position

# First move base ingredients if another base ingredient is present
execute as @s[tag=base_ingredient] at @s if entity @e[type=armor_stand,tag=compact_display,tag=base_ingredient,distance=..0.0275,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~0.033 ~
# Then move primary ingredients if primary or base ingredient is present
execute as @s[tag=primary_ingredient,tag=!base_ingredient] at @s if entity @e[type=armor_stand,tag=compact_display,tag=primary_ingredient,distance=..0.0275,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~0.033 ~
# Lastly, secondary ingredients
execute as @s[tag=!primary_ingredient] at @s if entity @e[type=armor_stand,tag=compact_display,distance=..0.0275,tag=!temporary_tag] positioned ~ ~ ~ run tp @s ~ ~0.033 ~

# Finalize position
execute unless entity @e[type=armor_stand,tag=compact_display,tag=!temporary_tag,distance=..0.0275] run tag @s add final_position

# Remove tag
tag @s remove temporary_tag