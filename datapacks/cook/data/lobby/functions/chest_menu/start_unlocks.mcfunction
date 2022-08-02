##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 18

##Locked
item replace entity @s enderchest.10 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.12 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.14 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Locked","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s enderchest.16 with iron_bars{invalid_click:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Locked","bold":false,"italic":false,"color":"red"}]'}}

##Unlocked
item replace entity @s[advancements={advancements:all_general=true}] enderchest.10 with stone_button{CustomModelData:11,clickable:1,cosmetic:1,HideFlags:63,display:{Name: '[{"translate":"Gene","color":"gold","italic":false,"bold":true},{"translate":" Plush","color":"gold"},{"translate":" Hat","color":"gold"}]'},Lore:['[{"translate":"Unlocked by completing all general advancements.","italic":false,"color":"gray"}]']}
item replace entity @s[advancements={advancements:all_milestone=true}] enderchest.12 with iron_sword{CustomModelData:20,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Ice Cream... Knife?","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all \\"milestone\\" advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={advancements:all_order=true}] enderchest.14 with bell{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Intense Bell Sound","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"text":"Unlocked by completing all order-based advancements.","italic":false,"color":"gray"}]']}}
item replace entity @s[advancements={advancements:all_lobby=true}] enderchest.16 with oak_sign{clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Lobby Prefix","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all lobby advancements.","italic":false,"color":"gray"}]']}}

##Selected
item replace entity @s[scores={hat=11}] enderchest.10 with stone_button{CustomModelData:11,invalid_click:1,Enchantments:[{}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Gene","color":"gold","italic":false,"bold":true},{"translate":" Plush","color":"gold"},{"translate":" Hat","color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all general advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[scores={knife=20}] enderchest.12 with iron_sword{CustomModelData:20,invalid_click:1,Enchantments:[{}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Ice Cream... Knife?","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all \\"milestone\\" advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[scores={bell_sound=19}] enderchest.14 with bell{invalid_click:1,Enchantments:[{}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Bell Sound","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all order-based advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}
item replace entity @s[team=unlock] enderchest.16 with oak_sign{invalid_click:1,Enchantments:[{}],clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Lobby Prefix","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Unlocked by completing all lobby advancements.","italic":false,"color":"gray"}]','[{"text":"Selected","italic":false,"color":"blue"}]']}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"text":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}