##Called when someone clicks on something in the ender chest

##Seeing if it's an invalid click
execute store result score @s click_ec run clear @s #game:click_ec{invalid_click:1} 0
tag @s[scores={click_ec=1..}] add invalid_click

##Score reset
scoreboard players reset @s click_ec

##Click
function lobby:chest_menu/click
#execute if entity @s[nbt={Inventory:[{tag:{clickable:1}}]}] run function lobby:chest_menu/shift_click


##Actual clear
clear @s #game:click_ec{clickable:1}

##tag removal
tag @s remove invalid_click