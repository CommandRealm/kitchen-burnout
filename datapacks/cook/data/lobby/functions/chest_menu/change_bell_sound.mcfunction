##called to change our bell sound.


execute unless data entity @s EnderItems[{Slot:0b}] run scoreboard players set @s bell_sound 1
execute unless data entity @s EnderItems[{Slot:1b}] run scoreboard players set @s bell_sound 2
execute unless data entity @s EnderItems[{Slot:2b}] run scoreboard players set @s bell_sound 3
execute unless data entity @s EnderItems[{Slot:3b}] run scoreboard players set @s bell_sound 4
execute unless data entity @s EnderItems[{Slot:4b}] run scoreboard players set @s bell_sound 5
execute unless data entity @s EnderItems[{Slot:5b}] run scoreboard players set @s bell_sound 6
execute unless data entity @s EnderItems[{Slot:6b}] run scoreboard players set @s bell_sound 7
execute unless data entity @s EnderItems[{Slot:7b}] run scoreboard players set @s bell_sound 8
execute unless data entity @s EnderItems[{Slot:8b}] run scoreboard players set @s bell_sound 9

execute unless data entity @s[tag=bell_10] EnderItems[{Slot:10b}] run scoreboard players set @s bell_sound 10
execute unless data entity @s[tag=bell_11] EnderItems[{Slot:11b}] run scoreboard players set @s bell_sound 11
execute unless data entity @s[tag=bell_12] EnderItems[{Slot:12b}] run scoreboard players set @s bell_sound 12
execute unless data entity @s[tag=bell_13] EnderItems[{Slot:14b}] run scoreboard players set @s bell_sound 13
execute unless data entity @s[tag=bell_14] EnderItems[{Slot:15b}] run scoreboard players set @s bell_sound 14
execute unless data entity @s[tag=bell_15] EnderItems[{Slot:16b}] run scoreboard players set @s bell_sound 15

execute unless data entity @s[tag=bell_16] EnderItems[{Slot:21b}] run scoreboard players set @s bell_sound 16
execute unless data entity @s[tag=bell_17] EnderItems[{Slot:22b}] run scoreboard players set @s bell_sound 17
execute unless data entity @s[tag=bell_18] EnderItems[{Slot:23b}] run scoreboard players set @s bell_sound 18

# Play sound as example
execute if score @s bell_sound matches 1 run playsound block.note_block.bell master @s ~ ~ ~ .5 1
execute if score @s bell_sound matches 2 run playsound block.bell.use master @s ~ ~ ~ .5 1
execute if score @s bell_sound matches 3 run playsound entity.player.burp master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 4 run playsound entity.generic.explode master @s ~ ~ ~ .5 1
execute if score @s bell_sound matches 5 run playsound entity.dolphin.play master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 6 run playsound entity.pig.ambient master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 7 run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 8 run playsound entity.cat.ambient master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 9 run playsound block.beacon.deactivate master @s ~ ~ ~ .5 1

# Epics
execute if score @s bell_sound matches 10 run playsound entity.goat.screaming.prepare_ram master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 11 run playsound music_disc.pigstep master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 11 run tag @s add pigste-
execute if score @s bell_sound matches 11 run schedule function lobby:chest_menu/pigste- 29t
execute if score @s bell_sound matches 12 run playsound entity.evoker.prepare_wololo master @s ~ ~ ~ 1 1
## \/\/\/ CUSTOM SOUNDS \/\/\/
execute if score @s bell_sound matches 13 run playsound custom.weeeeee master @s ~ ~ ~ .25 1
execute if score @s bell_sound matches 14 run playsound custom.oof master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 15 run playsound custom.melon master @s ~ ~ ~ 1 1

# Legendary
execute if score @s bell_sound matches 16 run playsound custom.mail master @s ~ ~ ~ 1 1
execute if score @s bell_sound matches 17 run playsound custom.wilhelm master @s ~ ~ ~ .25 1
execute if score @s bell_sound matches 18 run playsound custom.cc master @s ~ ~ ~ 1 1