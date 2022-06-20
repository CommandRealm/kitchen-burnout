## UNUSED
tag @s add temporary_slide_tag
execute positioned ~ ~-0.033 ~ if entity @s[tag=prep_slid_down] unless entity @e[type=armor_stand,tag=prep_slot,tag=!temporary_slide_tag,distance=..0.0275] positioned ~-0.3125 ~0.77 ~-0.375 unless entity @e[type=marker,tag=prep_display,distance=..0.0275] positioned ~0.3125 ~-0.77 ~0.375 run tp @s ~ ~ ~
tag @s remove temporary_slide_tag 