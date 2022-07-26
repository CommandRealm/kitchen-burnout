##called to change our hat

execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set @s hat 1
execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set @s hat 2
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set @s hat 3
execute unless data entity @s[tag=hat_4] EnderItems[{Slot:10b}] run scoreboard players set @s hat 4
execute unless data entity @s[tag=hat_5] EnderItems[{Slot:11b}] run scoreboard players set @s hat 5
execute unless data entity @s[tag=hat_6] EnderItems[{Slot:12b}] run scoreboard players set @s hat 6
execute unless data entity @s[tag=hat_7] EnderItems[{Slot:13b}] run scoreboard players set @s hat 7
execute unless data entity @s[tag=hat_8] EnderItems[{Slot:14b}] run scoreboard players set @s hat 8
execute unless data entity @s[tag=hat_9] EnderItems[{Slot:15b}] run scoreboard players set @s hat 9
execute unless data entity @s[tag=hat_10] EnderItems[{Slot:16b}] run scoreboard players set @s hat 10

item replace entity @s armor.head with air