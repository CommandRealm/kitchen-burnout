execute unless score @s slot matches 1 run item replace entity @s hotbar.0 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 2 run item replace entity @s hotbar.1 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 3 run item replace entity @s hotbar.2 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 4 run item replace entity @s hotbar.3 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 5 run item replace entity @s hotbar.4 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 6 run item replace entity @s hotbar.5 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 7 run item replace entity @s hotbar.6 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 8 run item replace entity @s hotbar.7 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']
execute unless score @s slot matches 9 run item replace entity @s hotbar.8 with minecraft:light_gray_stained_glass_pane[hide_tooltip={},hide_additional_tooltip={},item_name='""']

item replace entity @s weapon.offhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},custom_data={offhand:1b},item_name='""']
execute if score @s ingredient matches 0 run item replace entity @s weapon.mainhand with air