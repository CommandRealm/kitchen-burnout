##called to change our knife skin

# Commons
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set @s knife 1
execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set @s knife 2
execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set @s knife 3
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set @s knife 4
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set @s knife 5

# Epic
execute unless data entity @s[tag=knife_6] EnderItems[{Slot:9b}] run scoreboard players set @s knife 6
execute unless data entity @s[tag=knife_7] EnderItems[{Slot:10b}] run scoreboard players set @s knife 7
execute unless data entity @s[tag=knife_8] EnderItems[{Slot:11b}] run scoreboard players set @s knife 8
execute unless data entity @s[tag=knife_9] EnderItems[{Slot:12b}] run scoreboard players set @s knife 9
execute unless data entity @s[tag=knife_10] EnderItems[{Slot:13b}] run scoreboard players set @s knife 10
execute unless data entity @s[tag=knife_11] EnderItems[{Slot:14b}] run scoreboard players set @s knife 11
execute unless data entity @s[tag=knife_12] EnderItems[{Slot:15b}] run scoreboard players set @s knife 12
execute unless data entity @s[tag=knife_13] EnderItems[{Slot:16b}] run scoreboard players set @s knife 13
execute unless data entity @s[tag=knife_14] EnderItems[{Slot:17b}] run scoreboard players set @s knife 14

# Legendary
execute unless data entity @s[tag=knife_15] EnderItems[{Slot:20b}] run scoreboard players set @s knife 15
execute unless data entity @s[tag=knife_16] EnderItems[{Slot:21b}] run scoreboard players set @s knife 16
execute unless data entity @s[tag=knife_17] EnderItems[{Slot:22b}] run scoreboard players set @s knife 17
execute unless data entity @s[tag=knife_18] EnderItems[{Slot:23b}] run scoreboard players set @s knife 18
execute unless data entity @s[tag=knife_19] EnderItems[{Slot:24b}] run scoreboard players set @s knife 19

item replace entity @s armor.head with air