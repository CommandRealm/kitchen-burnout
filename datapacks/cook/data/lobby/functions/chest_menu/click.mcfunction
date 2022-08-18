##called when we click

##Reset
scoreboard players reset @s click_ec

#####Seeing what we've clicked.

##If we're on the titles screen
execute if score @s screen matches 99 run function lobby:chest_menu/click_titles

##Main screen
execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:turtle_helmet"}] run function lobby:chest_menu/start_cosmetics

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:nether_star"}] run function lobby:chest_menu/start_statistics

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:command_block"}] run function lobby:chest_menu/start_credits

execute if score @s screen matches 0 unless data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:tutorial/teleport

execute if score @s screen matches 0 unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art] unless data entity @s EnderItems[{id:"minecraft:written_book"}] run function lobby:chest_menu/start_titles

##Cosmetics screen.
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:stone_button"}] run function lobby:chest_menu/start_hats
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:iron_sword"}] run function lobby:chest_menu/start_knives
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:bell"}] run function lobby:chest_menu/start_bell_sounds
execute if score @s screen matches 1 unless data entity @s EnderItems[{id:"minecraft:gold_nugget"}] run function lobby:chest_menu/start_unlocks

##Personal Bests screen
#execute if score @s screen matches 5 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
#execute if score @s screen matches 5 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_statistics

##Cosmetics Hats screen.
execute if score @s screen matches 10 store result score $calculate calculate run clear @s #game:click_ec{cosmetic:1} 0
execute if score @s screen matches 10 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_hat
execute if score @s screen matches 10 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 10 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_hats

##Cosmetics Knife Skins screen.
execute if score @s screen matches 11 store result score $calculate calculate run clear @s #game:click_ec{cosmetic:1} 0
execute if score @s screen matches 11 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_knife
execute if score @s screen matches 11 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 11 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_knives

##Cosmetics Bell Sounds screen.
execute if score @s screen matches 12 store result score $calculate calculate run clear @s #game:click_ec{cosmetic:1} 0
execute if score @s screen matches 12 if score $calculate calculate matches 1.. run function lobby:chest_menu/change_bell_sound
execute if score @s screen matches 12 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics
execute if score @s screen matches 12 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_bell_sounds

##Credits
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:chain_command_block"}] run function lobby:chest_menu/start_team_credits
execute if score @s screen matches 13 unless data entity @s EnderItems[{id:"minecraft:player_head"}] run function lobby:chest_menu/start_website_credits

##Team credits
execute if score @s screen matches 14 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_credits
execute if score @s screen matches 14 if data entity @s EnderItems[{id:"minecraft:barrier"}] if data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:chest_menu/start_team_credits
execute if score @s screen matches 14 unless data entity @s EnderItems[{id:"minecraft:book"}] run function lobby:chest_menu/view_testers

##Website credits
execute if score @s screen matches 15 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_credits
execute if score @s screen matches 15 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_website_credits

##Unlock screen
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_general=true}] unless data entity @s EnderItems[{Slot:10b,id:"minecraft:stone_button"}] run scoreboard players set @s hat 11
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_general=true}] unless data entity @s EnderItems[{Slot:10b,id:"minecraft:stone_button"}] run clear @s stone_button
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_milestone=true}] unless data entity @s EnderItems[{Slot:12b,id:"minecraft:iron_sword"}] run scoreboard players set @s knife 20
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_order=true}] unless data entity @s EnderItems[{Slot:14b,id:"minecraft:player_head"}] run scoreboard players set @s bell_sound 19
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_order=true}] unless data entity @s EnderItems[{Slot:14b,id:"minecraft:player_head"}] run playsound custom.regs master @s ~ ~ ~ .025 1
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_lobby=true}] unless data entity @s EnderItems[{Slot:16b,id:"minecraft:oak_sign"}] run scoreboard players set @s prefix 263
execute if score @s screen matches 18 if entity @s[advancements={advancements:all_lobby=true}] unless data entity @s EnderItems[{Slot:16b,id:"minecraft:oak_sign"}] run function general:rank
execute if score @s screen matches 18 if data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_unlocks
execute if score @s screen matches 18 unless data entity @s EnderItems[{id:"minecraft:barrier"}] run function lobby:chest_menu/start_cosmetics



##Sound
playsound minecraft:ui.button.click master @s[tag=!invalid_click] ~ ~ ~ 1 1


execute unless score $difficulty settings matches -1 if entity @s[team=!test,team=!help,team=!bld,team=!srbld,team=!prg,team=!srprg,team=!manager,team=!lead,team=!pc,team=!cr,team=!art,team=!unlock] run advancement grant @s[scores={cosmetics_punch=1..,armor=1..}] only advancements:lobby-cosmetic