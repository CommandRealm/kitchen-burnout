# When someone releases right click


execute store result score $current slot run data get entity @s SelectedItemSlot
scoreboard players add $current slot 1
execute if score @s slot = $current slot if score @s held_item matches 1.. if score @s click_length matches 20.. at @s run function game:inventory/throwing/throw




scoreboard players set @s click_length 0
tag @s remove holding_click
