# The function that runs whenever the game is running.

# Effects
effect give @a[tag=playing] resistance 1 255 true

# General timer
#scoreboard players add $time game 1
execute if score $mode settings matches 0..1 run function game:timers/normal

# Stop game, then end
execute if score $timer game_ticks matches 18 run function game:stop_message
# Resets ingredient boxes back to their normal blocks
execute if score $timer game_ticks matches -38 as @e[type=marker,tag=ingredient_box] at @s run function game:map/reset_boxes
execute if score $timer game_ticks matches -38 as @e[type=marker,tag=fish_spawner] at @s run function game:map/reset_boxes
execute if score $timer game_ticks matches ..-41 run function game:end

# Mode
# execute if score $mode settings matches 0 run function game:mode_classic/main

# If someone votes to end the game
# execute as @a[tag=playing,scores={end=1..},team=game] at @s run function game:vote_end/vote

# Call map main functions
function game:map/mains

# Check inventory
execute if entity @a[advancements={game:inventory_changed=true}] run function game:inventory/check

# Click cooldown
execute if entity @a[tag=playing,scores={click_cooldown=1..},limit=1] run function game:click/cooldown/main

# When we right-click
execute as @a[tag=playing,scores={click=1..}] at @s unless entity @s[scores={click_cooldown=1..}] run function game:click/start 

# Prep display activator
execute as @a[tag=playing] at @s unless entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^1.75 as @e[type=marker,tag=prep_display,scores={prep_display=0..10},distance=..1.25,sort=nearest,limit=1,tag=!start_closing] unless entity @e[type=armor_stand,tag=bell,distance=..5,tag=bell_pressed] run scoreboard players add @s prep_display 20
execute as @a[tag=playing] at @s unless entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^1.75 positioned ~0.3125 ~-0.77 ~0.375 if entity @e[type=armor_stand,tag=prep_slot,distance=..1] positioned ~0.3125 ~-0.77 ~0.375 as @e[type=marker,tag=prep_display,scores={prep_display=0..10},sort=nearest,limit=1,tag=!start_closing] unless entity @e[type=armor_stand,tag=bell,distance=..5,tag=bell_pressed] run scoreboard players add @s prep_display 20

# Cutting board display activator
execute as @a[tag=playing,nbt={SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,scores={station_timer=-10..10},distance=..0.75] run tag @s add using_cutting_board
execute as @a[tag=playing] at @s anchored eyes positioned ^ ^ ^1.75 unless entity @e[type=marker,tag=cutting_board,distance=..0.75] run tag @s remove using_cutting_board
# Hold knife reminder
execute as @a[tag=playing,nbt=!{SelectedItemSlot:0}] run tag @s remove using_cutting_board
execute as @a[tag=playing,nbt=!{SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,distance=..0.75] if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1,distance=..2] HandItems[0].tag{cutting_board:1b} run title @s subtitle [{"translate":"Hold your knife.","color":"red"}]
execute as @a[tag=playing,nbt=!{SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,distance=..0.75] if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1,distance=..2] HandItems[0].tag{cutting_board:1b} run title @s title [{"text":""}]

# If a station has something going on.
execute if entity @e[type=marker,scores={station=1..}] run function game:stations/main

# Prep Station
execute as @e[type=marker,tag=prep_display] at @s run function game:stations/prep/main

# BELL
execute as @e[type=armor_stand,tag=bell] at @s run function game:stations/bell/main

# If there is a recipe cooldown
execute if entity @a[scores={recipe_cooldown=1..}] run function game:recipe_cooldown/main

# Recipe actionbar display
execute if score $mode settings matches 0 as @a[tag=playing] at @s if data storage current_order_1 {} run title @s actionbar ["",{"selector":"@e[type=marker,tag=recipe_ingredient]","color":"gray"}]
execute if score $mode settings matches 1 as @a[tag=playing,team=!2] at @s if data storage current_order_1 {} run title @s actionbar ["",{"selector":"@e[type=marker,tag=recipe_ingredient,tag=!2]","color":"gray"}]
execute if score $mode settings matches 1 as @a[tag=playing,team=2] at @s if data storage current_order_2 {} run title @s actionbar ["",{"selector":"@e[type=marker,tag=recipe_ingredient,tag=2]","color":"gray"}]