# The function that runs whenever the game is running.

# General timer
#scoreboard players add $time game 1
execute if score $mode settings matches 0 run function game:timers/normal

# Stop game, then end
execute if score $timer game_ticks matches 18 run function game:stop_message
execute if score $timer game_ticks matches ..-41 run function game:end

# Mode
# execute if score $mode settings matches 0 run function game:default/main

# If someone votes to end the game
# execute as @a[tag=playing,scores={end=1..},team=game] at @s run function game:vote_end/vote

# Check inventory
execute if entity @a[advancements={game:inventory_changed=true}] run function game:inventory/check

# Click cooldown
execute if entity @a[tag=playing,scores={click_cooldown=1..},limit=1] run function game:click/cooldown/main

# When we right-click
execute as @a[tag=playing,scores={click=1..}] at @s unless entity @s[scores={click_cooldown=1..}] run function game:click/start 

# Prep display raycast (maybe add something that kills all the display entities to quick-start the display animation if you look at the marker while it's removing the ingredients)
execute as @a[tag=playing] at @s unless entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^1.75 as @e[type=marker,tag=prep_display,scores={prep_display=0..8},distance=..1.25] run scoreboard players add @s prep_display 2
#execute as @a[tag=playing] at @s unless entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^1.75 as @e[type=marker,tag=prep_display,scores={prep_display=1},distance=1..1.25] run scoreboard players set @s prep_display -1

# If a station has something going on.
execute if entity @e[type=marker,scores={station=1..}] run function game:stations/main

# Prep Station
execute as @e[type=marker,tag=prep_display] at @s run function game:stations/prep/main

# If there is a recipe cooldown
execute if entity @a[scores={recipe_cooldown=1..}] run function game:recipe_cooldown/main