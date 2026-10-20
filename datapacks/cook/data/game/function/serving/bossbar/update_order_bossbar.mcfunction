# Called to update this prep station's bossbar with the current recipe and order information.
bossbar set game:serving/order name [ \
    {text:"▶ ",color:"white"}, \
    {"entity":"@s","nbt":"data.bossbar_icons[]","interpret":true,"separator":" ", \
        "font":"kb2:bossbar", color:"white",bold:false}," ◀"]