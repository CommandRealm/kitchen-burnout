#> Takes in an inventory slot (slot) and an ingredient name (id) and puts the ingredient in the slot.
execute at @s[type=player] run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.67
execute at @s[type=player] run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.75
execute at @s[type=player] run playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.89
clear @s ender_eye
$item replace entity @s[type=player] $(slot) with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='{"translate":"ingredient.$(id).name"}',item_model="game:ingredient/$(id)"]
$execute as @s[type=player] run function tools:storage/set_for_player {path:"game:ingredient",value:$(id)}
$execute as @s[type=!player] run data modify entity @s data.ingredient set value $(id)

scoreboard players set @s[type=player] held_item 1