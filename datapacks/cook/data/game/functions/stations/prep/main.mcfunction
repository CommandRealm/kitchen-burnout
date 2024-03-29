# Show compact ingredients for when they're together
#execute if score @s prep_display matches 0 run function game:stations/prep/compact_display

# Reset score so display can be opened again
#execute if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=compact_display,tag=!final_compact_position,distance=..10] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display 0

# Bring ingredients closer together
execute if score @s prep_display matches -1 as @e[type=armor_stand,tag=prep_slot,tag=!final_position,tag=going_up,distance=..100] at @s run function game:stations/prep/tp/main
execute if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot,tag=going_up,distance=..100] as @e[type=armor_stand,distance=..100,tag=final_position,tag=prep_slot] at @s run function game:stations/prep/tp/compact_close

# Reset score so display can be opened again
#execute if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=compact_display,tag=!final_compact_position,distance=..10] run scoreboard players set @e[type=marker,tag=prep_display,limit=1,sort=nearest] prep_display 0

# Reset score so display can be opened again
execute if score @s prep_display matches -1 unless entity @e[type=armor_stand,tag=prep_slot,tag=final_position,distance=..100] run scoreboard players set @s prep_display 0

# Show spread out ingredients for interactions
execute if score @s prep_display matches 1.. run function game:stations/prep/display

execute if entity @s[tag=reset_prep_ingredients] run function game:stations/prep/summon_existing
execute if entity @s[tag=reset_prep_ingredients] run scoreboard players set @s prep_display 0


#execute if score @s prep_display matches -1 run function game:stations/prep/close_display
#scoreboard players set @s prep_display 0

scoreboard players add @s recipe_timer 1

execute if score @s prep_display matches 0 run tag @s remove start_closing

# Fix score not being assigned because of lag
execute unless score @s prep_display matches -2147483648..2147483647 run scoreboard players set @s prep_display 0

# Place down plate
execute if entity @s[tag=place_plate] unless block ~ ~ ~ oak_pressure_plate[powered=true] run function game:stations/prep/plate