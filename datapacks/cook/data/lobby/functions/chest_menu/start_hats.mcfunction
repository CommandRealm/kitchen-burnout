##Starting the ender chest cosmetics screen for hats

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 10


##Unselected
item replace entity @s enderchest.3 with stone_button{CustomModelData:1,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Default","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.4 with stone_button{CustomModelData:2,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Dark","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}
item replace entity @s enderchest.5 with stone_button{CustomModelData:4,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Chocolate","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]']}}

##Selected
item replace entity @s[scores={hat=1}] enderchest.3 with stone_button{CustomModelData:1,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Default","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=2}] enderchest.4 with stone_button{CustomModelData:2,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Dark","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=3}] enderchest.5 with stone_button{CustomModelData:4,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Chocolate","bold":true,"italic":false,"color":"dark_green"}]',Lore:['[{"translate":"Common","italic":false,"color":"green"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}

###Epics

##Locked
item replace entity @s enderchest.10 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Burger","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.11 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Sushi","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.12 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Taco","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.13 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Ice Cream","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=hat_4] enderchest.10 with stone_button{CustomModelData:6,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Burger","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=hat_5] enderchest.11 with stone_button{CustomModelData:7,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Sushi","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=hat_6] enderchest.12 with stone_button{CustomModelData:8,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Taco","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}
item replace entity @s[tag=hat_7] enderchest.13 with stone_button{CustomModelData:9,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Ice Cream","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]']}}

##Selected
item replace entity @s[scores={hat=4}] enderchest.10 with stone_button{CustomModelData:6,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Burger","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=5}] enderchest.11 with stone_button{CustomModelData:7,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Sushi","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=6}] enderchest.12 with stone_button{CustomModelData:8,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Taco","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=7}] enderchest.13 with stone_button{CustomModelData:9,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Ice Cream","bold":true,"italic":false,"color":"dark_purple"}]',Lore:['[{"translate":"Epic","italic":false,"color":"light_purple"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}

###Legendaries

##Locked
item replace entity @s enderchest.14 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Cake","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.15 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Guacamole","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]']}}
item replace entity @s enderchest.16 with iron_bars{clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Top Hat","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Locked","color":"red","italic":false}]']}}

##Unlocked
item replace entity @s[tag=hat_8] enderchest.14 with stone_button{CustomModelData:10,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Cake","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=hat_9] enderchest.15 with stone_button{CustomModelData:5,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Guacamole","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]']}}
item replace entity @s[tag=hat_10] enderchest.16 with stone_button{CustomModelData:3,clickable:1,cosmetic:1,HideFlags:63,display:{Name:'[{"translate":"Top Hat","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]']}}

##Selected
item replace entity @s[scores={hat=8}] enderchest.14 with stone_button{CustomModelData:10,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Cake","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=9}] enderchest.15 with stone_button{CustomModelData:5,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Guacamole","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}
item replace entity @s[scores={hat=10}] enderchest.16 with stone_button{CustomModelData:3,clickable:1,invalid_click:1,HideFlags:63,display:{Name:'[{"translate":"Top Hat","bold":true,"italic":false,"color":"gold"}]',Lore:['[{"translate":"LEGENDARY","italic":false,"color":"yellow"}]','[{"translate":"Selected","color":"blue","italic":false}]']},Enchantments:[{}]}


item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}

