# Called by a prep station base when it needs to assign new positioning ids to all of its ingredients
# This is called whenever a new ingredient is added or an ingredient is removed
execute align xyz positioned ~ -64 ~ run scoreboard players reset @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0] prep_id
scoreboard players reset $counter prep_id

# Assign new positioning ids to all of the ingredients in priority order
execute align xyz positioned ~ -64 ~ as @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0,tag=base_ingredient] run function game:stations/prep/ingredient/positioning/get_id
execute align xyz positioned ~ -64 ~ as @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0,tag=primary_ingredient] run function game:stations/prep/ingredient/positioning/get_id
execute align xyz positioned ~ -64 ~ as @e[type=item_display,tag=prep_ingredient,dx=0,dy=384,dz=0,tag=!base_ingredient,tag=!primary_ingredient] run function game:stations/prep/ingredient/positioning/get_id

# Store our current position
execute store result score @s prep_position run data get entity @s Pos[1] 100