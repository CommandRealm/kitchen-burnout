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

scoreboard players set @s cosmetics_hat 0