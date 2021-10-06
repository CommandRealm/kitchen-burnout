# Show compact ingredients for when they're together
#execute if score @s prep_display matches 0 run function game:stations/prep/compact_display

# Bring ingredients closer together
execute if score @s prep_display matches -1 as @e[type=armor_stand,distance=..15] at @s run function game:stations/prep/tp/compact_close

# Show spread out ingredients for interactions
execute if score @s prep_display matches 1.. run function game:stations/prep/display

#execute if score @s prep_display matches -1 run function game:stations/prep/close_display
#scoreboard players set @s prep_display 0