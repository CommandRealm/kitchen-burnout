##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 12


##Unselected
item replace entity @s enderchest.0 with note_block{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Ding","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.1 with bell{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Dong","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.2 with potion{clickable:1,cosmetic:1,HideFlags:63,Potion:"minecraft:awkward",display:{Name:'[{"translate":"Burp","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.3 with tnt{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Boom Doom","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.4 with cod_bucket{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Thanks For All The Fish!","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.5 with porkchop{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Oink","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.6 with ender_pearl{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Vwoop","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.7 with cod{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"text":":3","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.8 with beacon{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Beam Me Up!","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}

##Selected
item replace entity @s[scores={bell_sound=1}] enderchest.0 with note_block{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Ding","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=2}] enderchest.1 with bell{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Dong","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=3}] enderchest.2 with potion{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,Potion:"minecraft:awkward",display:{Name:'[{"translate":"Burp","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=4}] enderchest.3 with tnt{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Boom Doom","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=5}] enderchest.4 with cod_bucket{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Thanks For All The Fish!","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=6}] enderchest.5 with porkchop{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Oink","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=7}] enderchest.6 with ender_pearl{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Vwoop","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=8}] enderchest.7 with cod{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"text":":3","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=9}] enderchest.8 with beacon{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Beam Me Up!","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}

###Epics

##Locked
item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"AAAAAAAAAAAAH","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Pigste-","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Wololo","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}

item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Weeeeee!","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"oof.","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"The Melon Man","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

##Unlocked
item replace entity @s[tag=bell_10] enderchest.10 with goat_horn{clickable:1,cosmetic:1,HideFlags:63,instrument:"",display:{Name:'[{"translate":"AAAAAAAAAAAAH","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=bell_11] enderchest.11 with music_disc_pigstep{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Pigste-","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=bell_12] enderchest.12 with blue_wool{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Wololo","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}

item replace entity @s[tag=bell_13] enderchest.14 with cake{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Weeeeee!","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[tag=bell_14] enderchest.15 with skeleton_skull{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"oof.","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[tag=bell_15] enderchest.16 with melon{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"The Melon Man","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

##Selected
item replace entity @s[scores={bell_sound=10}] enderchest.10 with goat_horn{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,instrument:"",display:{Name:'[{"translate":"AAAAAAAAAAAAH","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=11}] enderchest.11 with music_disc_pigstep{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Pigste-","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}
item replace entity @s[scores={bell_sound=12}] enderchest.12 with blue_wool{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Wololo","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']}}

item replace entity @s[scores={bell_sound=13}] enderchest.14 with cake{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Weeeeee!","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[scores={bell_sound=14}] enderchest.15 with skeleton_skull{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"oof.","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[scores={bell_sound=15}] enderchest.16 with melon{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"The Melon Man","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

###Legendaries

##Locked
item replace entity @s enderchest.21 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Mail Time","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s enderchest.22 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Man Falling Down Shaft","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s enderchest.23 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Culinary Champions!","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

##Unlocked
item replace entity @s[tag=bell_16] enderchest.21 with writable_book{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Mail Time","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[tag=bell_17] enderchest.22 with ghast_tear{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Man Falling Down Shaft","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[tag=bell_18] enderchest.23 with player_head{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Culinary Champions!","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']},SkullOwner:{Id:[I;1706158226,-2029172357,-1939623872,-874332322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ1NDM4YjVlOWU2NzkyOWIxYWNjNThmMDMzNDI3ZDAzNmNmNTM3NjBmYWZlYTk5Y2Y1MzRlOWRkMWU1YjUyMSJ9fX0="}]}}}

##Selected
item replace entity @s[scores={bell_sound=16}] enderchest.21 with writable_book{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Mail Time","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[scores={bell_sound=17}] enderchest.22 with ghast_tear{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Man Falling Down Shaft","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}
item replace entity @s[scores={bell_sound=18}] enderchest.23 with player_head{clickable:1,invalid_click:1,Enchantments:[{}],HideFlags:63,display:{Name:'[{"translate":"Culinary Champions!","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]','[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']},SkullOwner:{Id:[I;1706158226,-2029172357,-1939623872,-874332322],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMmQ1NDM4YjVlOWU2NzkyOWIxYWNjNThmMDMzNDI3ZDAzNmNmNTM3NjBmYWZlYTk5Y2Y1MzRlOWRkMWU1YjUyMSJ9fX0="}]}}}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

