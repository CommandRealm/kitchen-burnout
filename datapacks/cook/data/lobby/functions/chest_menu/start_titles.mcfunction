##Starting the ender chest cosmetics screen

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 99


##Middle row
item replace entity @s[tag=has_test] enderchest.0 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"(Tester) ","bold":false,"italic":false,"color":"white"}]'}}
item replace entity @s[tag=has_help] enderchest.1 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"[Helper] ","bold":false,"italic":false,"color":"gray"}]'}}
item replace entity @s[tag=has_bld] enderchest.2 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Builder} ","bold":false,"italic":false,"color":"blue"}]'}}
item replace entity @s[tag=has_srbld] enderchest.3 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Builder} ","bold":false,"italic":false,"color":"dark_blue"}]'}}
item replace entity @s[tag=has_prg] enderchest.4 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Programmer} ","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s[tag=has_srprg] enderchest.5 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Programmer} ","bold":false,"italic":false,"color":"dark_red"}]'}}
item replace entity @s[tag=has_manager] enderchest.6 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Manager} ","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[tag=has_lead] enderchest.7 with book{clickable:1,HideFlags:63,display:{Name:'[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"translate":"Project Lead","bold":false},{"text":"}","bold":true}]'}}
item replace entity @s[tag=has_cr] enderchest.8 with book{clickable:1,HideFlags:63,display:{Name:'[{"text":"{","color":"white","bold":true,"italic":false},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"}","color":"white","bold":true}]'}}
item replace entity @s[tag=has_art] enderchest.9 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Artist} ","bold":false,"italic":false,"color":"green"}]'}}
item replace entity @s[tag=has_srart] enderchest.10 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Artist} ","bold":false,"italic":false,"color":"dark_green"}]'}}


item replace entity @s[scores={prefix=0}] enderchest.0 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"(Tester) ","bold":false,"italic":false,"color":"dark_green"}]'}}
item replace entity @s[scores={prefix=1}] enderchest.1 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"[Helper] ","bold":false,"italic":false,"color":"green"}]'}}
item replace entity @s[scores={prefix=2}] enderchest.2 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Builder} ","bold":false,"italic":false,"color":"blue"}]'}}
item replace entity @s[scores={prefix=3}] enderchest.3 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Builder} ","bold":false,"italic":false,"color":"dark_blue"}]'}}
item replace entity @s[scores={prefix=4}] enderchest.4 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Programmer} ","bold":false,"italic":false,"color":"red"}]'}}
item replace entity @s[scores={prefix=5}] enderchest.5 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Programmer} ","bold":false,"italic":false,"color":"dark_red"}]'}}
item replace entity @s[scores={prefix=6}] enderchest.6 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Manager} ","bold":false,"italic":false,"color":"yellow"}]'}}
item replace entity @s[scores={prefix=7}] enderchest.7 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"{","color":"dark_purple","bold":true,"italic":false},{"translate":"Project Lead","bold":false},{"text":"}","bold":true}]'}}
item replace entity @s[scores={prefix=99}] enderchest.8 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"text":"{","color":"white","bold":true,"italic":false},{"text":"C","color":"aqua","bold":true},{"text":"R","color":"dark_aqua","bold":true},{"text":"}","color":"white","bold":true}]'}}
item replace entity @s[scores={prefix=8}] enderchest.9 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Artist} ","bold":false,"italic":false,"color":"green"}]'}}
item replace entity @s[scores={prefix=9}] enderchest.10 with written_book{invalid_click:1,clickable:1,HideFlags:63,display:{Name:'[{"translate":"{Sr. Artist} ","bold":false,"italic":false,"color":"dark_green"}]'}}

item replace entity @s enderchest.18 with barrier{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Back","bold":true,"italic":false,"color":"#ff0000"}]'}}