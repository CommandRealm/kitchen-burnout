# Called to update this prep station's bossbar with the current recipe and order information.
bossbar set game:serving/order name [ \
    {text:"_,,<,m,",color:"white",font:"kb2:bossbar",shadow_color:0}, \
    {"entity":"@s","nbt":"data.bossbar_icons[]","interpret":true,"separator":" ", \
        "font":"kb2:bossbar",bold:false}," >"]