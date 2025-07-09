# Called to update this prep station's bossbar with the current recipe and order information.
bossbar set game:serving/order name [ \
    {text:"▶ ",color:"white"}, \
    {"entity":"@s","nbt":"data.recipe_icons[]","interpret":true,"separator":" ", \
        "font":"kitchen_burnout:ingredients", color:"white",bold:false}," ◀"]