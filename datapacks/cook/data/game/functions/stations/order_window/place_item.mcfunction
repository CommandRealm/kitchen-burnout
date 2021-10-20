# Called when we click on the cutting board without it being in the cutting state. It could be us placing an item down or picking an item up; or an invalid click.

execute at @e[type=marker,sort=nearest,limit=1,tag=order_window] run function game:stations/place_item

tag @s add temporary_tag