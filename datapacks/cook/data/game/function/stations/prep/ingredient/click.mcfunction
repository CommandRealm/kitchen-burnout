# Called when a prep station ingredient is clicked on, should forward the interaction to the prep_base
data modify entity @n[type=interaction,tag=prep_base,dx=0,dy=255,dz=0] interaction set from entity @s interaction
data remove entity @s interaction