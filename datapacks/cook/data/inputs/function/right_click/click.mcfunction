#> Called when the player is right clicking an ender pearl.
# Store the 1-indexed slot
execute store result score @s slot run data get entity @s SelectedItemSlot
scoreboard players add @s slot 1

scoreboard players add @s click_length 1

scoreboard players operation @s[tag=!holding_click] slot_old = @s slot

# Checks for when a player starts clicking
#execute as @s[tag=!holding_click,scores={slot=x}] at @s run start something

tag @s add holding_click
