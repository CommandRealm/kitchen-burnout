##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 1


##Middle row
item replace entity @s enderchest.10 with stone_button{CustomModelData:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Hats","bold":true,"italic":false,"color":"gray"}]',Lore:['[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

item replace entity @s enderchest.12 with iron_sword{CustomModelData:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Knives","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"Resource Pack Required","italic":false,"color":"red"}]']}}

item replace entity @s enderchest.14 with bell{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Bell Sounds","bold":true,"italic":false,"color":"light_purple"}]'}}

item replace entity @s enderchest.16 with gold_nugget{Enchantments:[{}],clickable:1,HideFlags:63,display:{Name:'[{"translate":"Unlocks","color":"gold","bold":true,"italic":false}]'}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

