# Called by a prep station ingredient (interaction) that should expand
data modify entity @s height set value 0.125f
tag @s remove collapsed
tag @s add expanded
execute on passengers run data merge entity @s {transformation:{translation:[0f,-0.225f,0f]}}
execute on passengers run data merge entity @s {transformation:{translation:[0f,-0.0625f,0f]},interpolation_duration:10,start_interpolation:10}