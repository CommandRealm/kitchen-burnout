execute unless score @s slot matches 1 run item replace entity @s hotbar.0 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 2 run item replace entity @s hotbar.1 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 3 run item replace entity @s hotbar.2 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 4 run item replace entity @s hotbar.3 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 5 run item replace entity @s hotbar.4 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 6 run item replace entity @s hotbar.5 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 7 run item replace entity @s hotbar.6 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 8 run item replace entity @s hotbar.7 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]
execute unless score @s slot matches 9 run item replace entity @s hotbar.8 with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:light_gray_stained_glass_pane"]

#item replace entity @s weapon.offhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},custom_data={offhand:1b},item_name='""']

# Changes the player's currently held item to the specified item.
# 0 - Nothing
# -1 - Knife
# -2 - Fishing Net
# -3 - Ice Cream Scooper
# 1-99 - Ingredients with the corresponding ID
execute if score @s held_item matches 0 run item replace entity @s weapon.mainhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:air"]
execute if score @s held_item matches -1 run item replace entity @s weapon.mainhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='{"translate": "tool.knife.name"}',item_model="minecraft:iron_sword"]
execute if score @s held_item matches -2 run item replace entity @s weapon.mainhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='{"translate": "tool.fishing_net.name"}',item_model="minecraft:string"]
execute if score @s held_item matches -3 run item replace entity @s weapon.mainhand with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='{"translate": "tool.ice_cream_scooper.name"}',item_model="minecraft:iron_shovel"]

execute unless score @s held_item matches 1.. run return 1
# Get the ingredient from the ingredient cache
data remove storage game:inventory/held_item {}
data modify storage game:inventory/held_item slot set value "weapon.mainhand"
function tools:storage/get_for_player {path:"game:ingredient",result_key:"held_item"}
data modify storage game:inventory/held_item id set from storage game:ingredient held_item
execute if score @s held_item matches 1.. run function game:inventory/get_ingredient with storage game:inventory/held_item