# The function that runs whenever the game is running.

# Effects
effect give @a[tag=playing] resistance 1 255 true

# Timers
#scoreboard players add $time game 1
execute if score $mode settings matches 0..1 run function game:timers/normal
execute if score $mode settings matches 2 run function game:timers/shuffle
execute if score $mode settings matches 3 run function game:timers/competitive

# Stop game, then end
execute if score $mode settings matches 0..1 if score $timer game_ticks matches 18 run function game:stop_message
# Resets ingredient boxes back to their normal blocks
execute if score $mode settings matches 0..1 if score $timer game_ticks matches -38 as @e[type=marker,tag=reset_boxes] at @s run function game:map/reset_boxes
execute if score $mode settings matches 0..1 if score $timer game_ticks matches -38 as @e[type=marker,tag=thin_ice] at @s run scoreboard players set @s thin_ice 295
execute if score $mode settings matches 0..1 if score $timer game_ticks matches -38 as @e[type=marker,tag=thin_ice] at @s run function game:map/29/ice
execute if score $mode settings matches 0..1 if score $timer game_ticks matches ..-41 run function game:end

# Ending the game in shuffle and competitive modes
execute if score $mode settings matches 2 unless score $winner shuffle matches 0 run function game:mode_shuffle/ending
execute if score $mode settings matches 3 unless score $winner shuffle matches 0 run function game:mode_competitive/ending

# Ending the game early
execute if entity @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={end=1..}] run function game:stop_early
# Restarting early in Competitive Mode
execute if entity @a[gamemode=adventure,tag=playing,tag=!tutorial,scores={restart=1..}] if score $mode settings matches 3 run function game:restart_early

# Customers
execute as @e[type=marker,tag=customer_line] at @s run function game:serve/customers/main

# Call map main functions
function game:map/mains

# Check inventory
execute if entity @a[advancements={game:inventory_changed=true}] run function game:inventory/check

# Click cooldown
execute if entity @a[tag=playing,scores={click_cooldown=1..},limit=1] run function game:click/cooldown/main

# When we right-click
execute as @a[tag=playing,scores={click=1..}] at @s unless entity @s[scores={click_cooldown=1..}] run function game:click/start 

### CAN OPTIMIZE BY LIMITING NBT CHECKS TO ONLY HAPPEN WHEN IN RANGE OF ENTITIES
# Prep display activator
execute as @a[tag=playing,gamemode=adventure] at @s if entity @e[type=marker,tag=prep_display,distance=..10] run function game:stations/prep/activate

# Cutting board display activator
execute as @a[tag=playing,gamemode=adventure,nbt={SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,scores={station_timer=-10..10},distance=..0.75] run tag @s add using_cutting_board
execute as @a[tag=playing,gamemode=adventure] at @s anchored eyes positioned ^ ^ ^1.75 unless entity @e[type=marker,tag=cutting_board,distance=..0.75] run tag @s remove using_cutting_board
# Hold knife reminder
execute as @a[tag=playing,gamemode=adventure,nbt=!{SelectedItemSlot:0}] run tag @s remove using_cutting_board
execute as @a[tag=playing,gamemode=adventure,nbt=!{SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,distance=..0.75] if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1,distance=..2] HandItems[0].tag{cutting_board:1b} run title @s subtitle [{"translate":"Hold your knife.","color":"red"}]
execute as @a[tag=playing,gamemode=adventure,nbt=!{SelectedItemSlot:0}] at @s anchored eyes positioned ^ ^ ^1.75 if entity @e[type=marker,tag=cutting_board,distance=..0.75] if data entity @e[type=armor_stand,tag=cutting_board_item,sort=nearest,limit=1,distance=..2] HandItems[0].tag{cutting_board:1b} run title @s title [{"text":""}]

# If a station has something going on.
execute if entity @e[type=marker,scores={station=1..}] run function game:stations/main

# Moving ingredients in boxes
execute if entity @e[type=armor_stand,tag=ingredient_box_display] run function game:stations/ingredient_boxes

# Recipe actionbar display
execute if score $mode settings matches 0 as @a[tag=playing,tag=!tutorial] at @s if data storage current_order_1 {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=!tutorial]"}]
execute if score $mode settings matches 3 as @a[tag=playing,tag=!tutorial] at @s if data storage current_order_1 {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=!tutorial]"}]
execute if score $mode settings matches 1..2 as @a[tag=playing,tag=!tutorial,tag=!team_2] at @s if data storage current_order_1 {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=!2,tag=!tutorial]"}]
execute if score $mode settings matches 1..2 as @a[tag=playing,tag=!tutorial,tag=team_2] at @s if data storage current_order_2 {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=2,tag=!tutorial]"}]
execute as @a[tag=playing,tag=tutorial] at @s if data storage tutorial {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=tutorial]"}]

# Prep Station
execute as @e[type=marker,tag=prep_display] at @s run function game:stations/prep/main

# BELL
execute as @e[type=armor_stand,tag=bell] at @s run function game:stations/bell/main

# If there is a recipe cooldown
execute if entity @a[scores={recipe_cooldown=1..}] run function game:recipe_cooldown/main

# Globals
scoreboard players add $const game_ticks 1
scoreboard players operation $flashing game_ticks = $const game_ticks
scoreboard players operation $flashing game_ticks %= $8 number
scoreboard players operation $even game_ticks = $const game_ticks
scoreboard players operation $even game_ticks %= $2 number
scoreboard players reset @a[scores={is_sneaking=1..}] is_sneaking