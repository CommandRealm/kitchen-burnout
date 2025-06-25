#> Takes in an entity (entity), inventory slot (slot), and an ingredient name (id) and puts the ingredient in the slot for that entity.

# Get the actual item
$item replace entity $(entity) $(slot) with ender_eye[tooltip_display={hide_tooltip:true},item_name={"translate":"ingredient.$(id).name"},item_model="kitchen_burnout:ingredients/$(id)",custom_data={ingredient:$(id),offhand:1b}]

# Set the ingredient data
$data modify entity @s[type=!player] data.ingredient set value "$(id)"
