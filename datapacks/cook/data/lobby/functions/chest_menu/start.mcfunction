##Starting the ender chest menu

##Clearing chest

##Clear Function
function lobby:chest_menu/clear_chest

##Setting screen
scoreboard players set @s screen 0


##Middle row
item replace entity @s enderchest.10 with turtle_helmet{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Cosmetics","bold":true,"italic":false,"color":"gray"}]'}}

item replace entity @s enderchest.12 with book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Tutorial","bold":true,"italic":false,"color":"green"}]'}}

item replace entity @s enderchest.14 with nether_star{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Statistics","bold":true,"italic":false,"color":"red"}]'}}

item replace entity @s enderchest.16 with command_block{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Credits","bold":true,"italic":false,"color":"aqua"}]'}}

execute unless entity @s[tag=!has_test,tag=!has_help,tag=!has_bld,tag=!has_srbld,tag=!has_prg,tag=!has_srprg,tag=!has_manager,tag=!has_lead,tag=!has_pc,tag=!has_cr,tag=!has_art,tag=!has_srart] run item replace entity @s enderchest.26 with written_book{clickable:1,HideFlags:63,display:{Name:'[{"translate":"Titles","bold":true,"italic":false,"color":"white"}]'}}
