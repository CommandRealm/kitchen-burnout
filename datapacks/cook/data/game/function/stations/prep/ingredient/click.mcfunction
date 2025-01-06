# Called when a prep station ingredient is clicked on, should forward the interaction to the prep_base
data modify entity @n[type=interaction,tag=prep_base,distance=..10] interaction set from entity @s interaction
data remove entity @s interaction