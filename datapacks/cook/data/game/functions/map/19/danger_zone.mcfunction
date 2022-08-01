tp @s ~ ~ ~ ~2 ~
execute if entity @s[tag=!triggered] run particle dust_color_transition 1 0 0 1 .8 .9 .6 ^ ^ ^-2 0 0 0 1 2 force
execute if entity @s[tag=!triggered] run particle dust_color_transition 1 0 0 1 .8 .9 .6 ^ ^ ^2 0 0 0 1 2 force
execute if entity @s[tag=!triggered] run particle small_flame ~ ~.1 ~ .25 0 .25 0 2 force

execute if entity @s[tag=triggered] run function game:map/19/triggered