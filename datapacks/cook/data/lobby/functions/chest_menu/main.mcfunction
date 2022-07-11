# Open ender chest
execute if entity @s[scores={open_echest=1..}] run function lobby:chest_menu/open_chest

# Seeing if we clicked.
execute store result score @s click_ec run clear @s #game:click_ec{clickable:1} 0
execute if entity @s[scores={click_ec=1..}] at @s run function lobby:chest_menu/check_click

# If we have something we shouldn't in the ender chest.
execute if entity @s[nbt={EnderItems:[{tag:{not_clickable:1}}]}] at @s run function lobby:chest_menu/reset_screen

# If someone dropped something
execute as @e[type=item,nbt={Item:{tag:{clickable:1}}},x=0,y=66,z=0,distance=..500] at @s run function lobby:chest_menu/dropped_item
