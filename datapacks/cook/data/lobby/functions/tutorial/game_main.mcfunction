# The function that runs whenever the game isn't running but the tutorial is.

# Effects
effect give @a[tag=playing] resistance 1 255 true

# Customers
execute as @e[type=marker,tag=customer_line] at @s run function game:serve/customers/main

# Check inventory
execute if entity @a[advancements={game:inventory_changed=true}] run function game:inventory/check

# Click cooldown
execute if entity @a[tag=playing,scores={click_cooldown=1..},limit=1] run function game:click/cooldown/main

# When we right-click
execute as @a[tag=playing,scores={click=1..}] at @s unless entity @s[scores={click_cooldown=1..}] run function game:click/start 

# Ingredient box setup
execute as @e[type=marker,tag=ingredient_setup] at @s unless block ~ ~ ~ air run function game:map/ingredient_setup/main

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
execute if entity @e[type=marker,scores={station=1..},tag=tutorial] run function game:stations/main

# Moving ingredients in boxes
execute if entity @e[type=armor_stand,tag=ingredient_box_display,tag=tutorial] run function game:stations/ingredient_box/_main

# Recipe actionbar display
execute as @a[tag=playing,tag=tutorial] at @s if data storage tutorial {} run title @s actionbar [{"text":"","color":"gray"},{"selector":"@e[type=marker,tag=recipe_ingredient,tag=tutorial]"}]

# Prep Station
execute as @e[type=marker,tag=prep_display,tag=tutorial] at @s run function game:stations/prep/main

# BELL
execute as @e[type=armor_stand,tag=bell,tag=tutorial] at @s run function game:stations/bell/main

# If there is a recipe cooldown
execute if entity @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..},tag=tutorial] run function game:recipe_cooldown/main
execute if score $place_plate_t recipe_cooldown matches 1.. run function game:recipe_cooldown/place_plate
execute if score $flag_t recipe_cooldown matches 1 unless entity @a[gamemode=adventure,tag=playing,scores={recipe_cooldown=1..},tag=tutorial] run scoreboard players set @a[gamemode=adventure,tag=playing,tag=tutorial,limit=1,sort=random] recipe_cooldown 65

# Globals
scoreboard players add $const game_ticks 1
scoreboard players operation $flashing game_ticks = $const game_ticks
scoreboard players operation $flashing game_ticks %= $8 number
scoreboard players operation $even game_ticks = $const game_ticks
scoreboard players operation $even game_ticks %= $2 number
scoreboard players reset @a[scores={is_sneaking=1..}] is_sneaking