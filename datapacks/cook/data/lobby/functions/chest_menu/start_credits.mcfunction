##Starting the credits screen

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 13


##Middle row
item replace entity @s enderchest.11 with chain_command_block{clickable:1,HideFlags:63,display:{Name:'[{"text":"The ","bold":false,"italic":false,"color":"white"},{"text":"Command ","bold":true,"italic":false,"color":"aqua"},{"text":"Realm ","bold":true,"italic":false,"color":"dark_aqua"},{"text":"Team","bold":false,"italic":false,"color":"white"}]'}}

item replace entity @s enderchest.13 with player_head{web:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Websites","bold":true,"italic":false,"color":"green"},{"text":" / ","color":"gray","bold":false},{"translate":"Other","color":"red"}]'},SkullOwner:{Id:[I;1830079298,1263619939,-1419560102,-1933383597],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZjAxZTAxZmVkMTNmZTNmMjVhMDVlNzFjNDgyMTM2YzY4ZDVlM2VlODVmZjRhZjYyMTgzOTY1ZThlMzlhOWU5MCJ9fX0="}]}}}

item replace entity @s enderchest.15 with player_head{translate:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"Translators","bold":true,"italic":false,"color":"blue"}]'},SkullOwner:{Id:[I;-1195250351,1452821052,-1604153347,1270116845],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvODc5ZTU0Y2JlODc4NjdkMTRiMmZiZGYzZjE4NzA4OTQzNTIwNDhkZmVjZDk2Mjg0NmRlYTg5M2IyMTU0Yzg1In19fQ=="}]}}}

##Back button
item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}