# Called by a prep station base when it needs to assign new positioning ids to all of its ingredients
# This is called whenever a new ingredient is added or an ingredient is removed
scoreboard players reset @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1] prep_id
scoreboard players reset $counter prep_id

# Assign new positioning ids to all of the ingredients in priority order
execute as @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1,tag=base_ingredient] run function game:stations/prep/ingredient/positioning/get_id
execute as @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1,tag=primary_ingredient] run function game:stations/prep/ingredient/positioning/get_id
execute as @e[type=item_display,tag=prep_ingredient,dx=-1,dy=255,dz=-1,tag=!base_ingredient,tag=!primary_ingredient] run function game:stations/prep/ingredient/positioning/get_id

# Store our current position
execute store result score @s prep_position run data get entity @s Pos[1] 100