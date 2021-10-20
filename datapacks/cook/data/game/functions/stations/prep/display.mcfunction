# Kill compact display armor stands
#kill @e[type=armor_stand,tag=compact_display,distance=..10]

# Create ingredients and move them to proper positions
# OR
# Convert display armor stands to regular and use those for fancy-shmancy animation
#tag @e[type=armor_stand,tag=compact_display,distance=..10,tag=final_position] add prep_slot
#execute as @e[type=armor_stand,tag=compact_display,distance=..10,tag=final_position] at @s run tp @s ~ ~-0.077 ~
#tag @e[type=armor_stand,tag=compact_display,tag=prep_slot,distance=..10] remove final_position
#tag @e[type=armor_stand,tag=compact_display,tag=prep_slot,distance=..10] remove compact_display
execute if entity @s[tag=reset_prep_ingredients] run function game:stations/prep/summon_existing
execute as @e[type=armor_stand,tag=prep_slot,tag=!final_position] at @s run function game:stations/prep/tp/main
# Hide display if not being looked at
execute if score @s prep_display matches 1 run scoreboard players set @s prep_display -1
execute if score @s prep_display matches 2.. run scoreboard players remove @s prep_display 1