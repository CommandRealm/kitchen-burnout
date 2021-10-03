tp @s ~ ~.25 ~
tag @s add moving_prep_item
#execute if entity @e[type=armor_stand,tag=prep_slot,tag=base_ingredient,distance=..0.001,tag=!moving_prep_item] run function game:stations/prep/tp/base_ingredients
tag @s remove moving_prep_item