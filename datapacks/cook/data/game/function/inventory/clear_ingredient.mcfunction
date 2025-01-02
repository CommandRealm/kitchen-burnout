#> Takes in an inventory slot (slot) and clears the ingredient from the slot.

# Remove the item
$item replace entity @s[type=!player] $(slot) with air
#$item replace entity @s[type=player] $(slot) with ender_eye[hide_tooltip={},hide_additional_tooltip={},item_name='""',item_model="minecraft:gray_stained_glass_pane"]
execute as @s[type=player] run function tools:storage/set_for_player {path:"game:ingredient",value:""}
scoreboard players set @s[type=player] held_item 0
advancement grant @s[type=player] only game:inventory_changed

# Only works for markers
execute as @s[type=marker] run data remove entity @s data.ingredient
