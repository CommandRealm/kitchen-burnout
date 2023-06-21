# Called to reset the players.

# so we don't reset again
scoreboard players add @s has_reset 1

scoreboard players set @s prefix -1

function general:update_roles

# Setting our prefix score for if we have a tag.
execute if entity @s[tag=has_cr] run scoreboard players set @s prefix 99
execute if entity @s[tag=has_test] run scoreboard players set @s prefix 0
execute if entity @s[tag=has_help] run scoreboard players set @s prefix 1
execute if entity @s[tag=has_translate] run scoreboard players set @s prefix 20
execute if entity @s[tag=has_bld] run scoreboard players set @s prefix 2
execute if entity @s[tag=has_prg] run scoreboard players set @s prefix 4
execute if entity @s[tag=has_art] run scoreboard players set @s prefix 8
execute if entity @s[tag=has_srbld] run scoreboard players set @s prefix 3
execute if entity @s[tag=has_srprg] run scoreboard players set @s prefix 5
execute if entity @s[tag=has_srart] run scoreboard players set @s prefix 9

execute if entity @s[tag=has_manager] run scoreboard players set @s prefix 6
execute if entity @s[tag=has_lead] run scoreboard players set @s prefix 7

# Reset cosmetics
scoreboard players set @s hat 1
scoreboard players set @s knife 1
scoreboard players set @s bell_sound 1

tag @s remove hat_4
tag @s remove hat_5
tag @s remove hat_6
tag @s remove hat_7
tag @s remove hat_8
tag @s remove hat_9
tag @s remove hat_10

tag @s remove knife_6
tag @s remove knife_7
tag @s remove knife_8
tag @s remove knife_9
tag @s remove knife_10
tag @s remove knife_11
tag @s remove knife_12
tag @s remove knife_13
tag @s remove knife_14
tag @s remove knife_15
tag @s remove knife_16
tag @s remove knife_17
tag @s remove knife_18
tag @s remove knife_19

tag @s remove bell_10
tag @s remove bell_11
tag @s remove bell_12
tag @s remove bell_13
tag @s remove bell_14
tag @s remove bell_15
tag @s remove bell_16
tag @s remove bell_17
tag @s remove bell_18
tag @s remove bell_19

# Reset tutorial
tag @s remove tut_cook
tag @s remove tut_cut
tag @s remove tut_ingredient
tag @s remove tut_place
tag @s remove tut_trash
tag @s remove tut_serve
tag @s remove tut_mistake

tag @s remove order_burger
tag @s remove order_icecream
tag @s remove order_sushi
tag @s remove order_taco

tag @s remove m_1
tag @s remove m_2
tag @s remove m_3
tag @s remove m_4
tag @s remove m_5
tag @s remove m_6
tag @s remove m_7
tag @s remove m_8
tag @s remove m_9
tag @s remove m_10
tag @s remove m_11
tag @s remove m_12
tag @s remove m_13
tag @s remove m_14
tag @s remove m_15
tag @s remove m_16
tag @s remove m_17
tag @s remove m_18
tag @s remove m_19
tag @s remove m_20
tag @s remove m_21
tag @s remove m_22
tag @s remove m_23
tag @s remove m_24
tag @s remove m_25
tag @s remove m_26
tag @s remove m_27
tag @s remove m_28
tag @s remove m_29
tag @s remove m_30

tag @s remove all_cosmetics

# Set PBs
execute unless score @s comp_1 matches 1..2147483647 run scoreboard players set @s comp_1 2147483647
execute unless score @s comp_2 matches 1..2147483647 run scoreboard players set @s comp_2 2147483647
execute unless score @s comp_3 matches 1..2147483647 run scoreboard players set @s comp_3 2147483647
execute unless score @s comp_4 matches 1..2147483647 run scoreboard players set @s comp_4 2147483647
execute unless score @s comp_5 matches 1..2147483647 run scoreboard players set @s comp_5 2147483647
execute unless score @s comp_6 matches 1..2147483647 run scoreboard players set @s comp_6 2147483647
execute unless score @s comp_7 matches 1..2147483647 run scoreboard players set @s comp_7 2147483647
execute unless score @s comp_8 matches 1..2147483647 run scoreboard players set @s comp_8 2147483647
execute unless score @s comp_9 matches 1..2147483647 run scoreboard players set @s comp_9 2147483647
execute unless score @s comp_10 matches 1..2147483647 run scoreboard players set @s comp_10 2147483647
execute unless score @s comp_11 matches 1..2147483647 run scoreboard players set @s comp_11 2147483647
execute unless score @s comp_12 matches 1..2147483647 run scoreboard players set @s comp_12 2147483647
execute unless score @s comp_13 matches 1..2147483647 run scoreboard players set @s comp_13 2147483647
execute unless score @s comp_14 matches 1..2147483647 run scoreboard players set @s comp_14 2147483647
execute unless score @s comp_15 matches 1..2147483647 run scoreboard players set @s comp_15 2147483647
execute unless score @s comp_16 matches 1..2147483647 run scoreboard players set @s comp_16 2147483647
execute unless score @s comp_17 matches 1..2147483647 run scoreboard players set @s comp_17 2147483647
execute unless score @s comp_18 matches 1..2147483647 run scoreboard players set @s comp_18 2147483647
execute unless score @s comp_19 matches 1..2147483647 run scoreboard players set @s comp_19 2147483647
execute unless score @s comp_20 matches 1..2147483647 run scoreboard players set @s comp_20 2147483647

# Start intro
tag @s add intro_text_call