# Called to reset the players.

# so we don't reset again
scoreboard players add @s resetting 1

scoreboard players set @s prefix -1

function general:update_roles

# Setting our prefix score for if we have a tag.
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5
execute if entity @s[tag=has_srart] run scoreboard players set @s prefix 9

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7

scoreboard players set @s hat 1
scoreboard players set @s knife 1
scoreboard players set @s bell_sound 1

execute unless score @s comp_1 matches -2147483648..2147483647 run scoreboard players set @s comp_1 2147483647
execute unless score @s comp_2 matches -2147483648..2147483647 run scoreboard players set @s comp_2 2147483647
execute unless score @s comp_3 matches -2147483648..2147483647 run scoreboard players set @s comp_3 2147483647
execute unless score @s comp_4 matches -2147483648..2147483647 run scoreboard players set @s comp_4 2147483647
execute unless score @s comp_5 matches -2147483648..2147483647 run scoreboard players set @s comp_5 2147483647
execute unless score @s comp_6 matches -2147483648..2147483647 run scoreboard players set @s comp_6 2147483647
execute unless score @s comp_7 matches -2147483648..2147483647 run scoreboard players set @s comp_7 2147483647
execute unless score @s comp_8 matches -2147483648..2147483647 run scoreboard players set @s comp_8 2147483647
execute unless score @s comp_9 matches -2147483648..2147483647 run scoreboard players set @s comp_9 2147483647
execute unless score @s comp_10 matches -2147483648..2147483647 run scoreboard players set @s comp_10 2147483647
execute unless score @s comp_11 matches -2147483648..2147483647 run scoreboard players set @s comp_11 2147483647
execute unless score @s comp_12 matches -2147483648..2147483647 run scoreboard players set @s comp_12 2147483647
execute unless score @s comp_13 matches -2147483648..2147483647 run scoreboard players set @s comp_13 2147483647
execute unless score @s comp_14 matches -2147483648..2147483647 run scoreboard players set @s comp_14 2147483647
execute unless score @s comp_15 matches -2147483648..2147483647 run scoreboard players set @s comp_15 2147483647
execute unless score @s comp_16 matches -2147483648..2147483647 run scoreboard players set @s comp_16 2147483647
execute unless score @s comp_17 matches -2147483648..2147483647 run scoreboard players set @s comp_17 2147483647
execute unless score @s comp_18 matches -2147483648..2147483647 run scoreboard players set @s comp_18 2147483647
execute unless score @s comp_19 matches -2147483648..2147483647 run scoreboard players set @s comp_19 2147483647
execute unless score @s comp_20 matches -2147483648..2147483647 run scoreboard players set @s comp_20 2147483647