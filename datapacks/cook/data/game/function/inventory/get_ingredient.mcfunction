#> Takes in an inventory slot (slot) and an ingredient name (id) and puts the ingredient in the slot.

# Get the actual item
$item replace entity @s $(slot) with ender_eye[tooltip_display={hide_tooltip:true},item_name={"translate":"ingredient.$(id).name"},item_model="kitchen_burnout:ingredients/$(id)",custom_data={ingredient:$(id)}]

# Only works for markers
$execute as @s[type=marker] run data modify entity @s data.ingredient set value "$(id)"
