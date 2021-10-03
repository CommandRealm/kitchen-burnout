execute if score @s prep_display matches 1 run function game:stations/prep/display
execute if score @s prep_display matches -1 run function game:stations/prep/close_display
#scoreboard players set @s prep_display 0