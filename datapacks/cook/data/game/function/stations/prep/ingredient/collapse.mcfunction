# Called by a prep station ingredient (interaction) that should collapse
data modify entity @s height set value 0.0625f
tag @s remove expanded
tag @s add collapsed
execute on passengers run data merge entity @s {transformation:{translation:[0f,-0.0325f,0f]},interpolation_duration:5,start_interpolation:0}