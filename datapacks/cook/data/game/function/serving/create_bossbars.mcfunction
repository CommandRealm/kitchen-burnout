# Called to create this prep station's order bossbars with the current recipe and order information.
bossbar remove game:serving/order
#bossbar remove game:serving/order_2
bossbar remove game:serving/order_header

bossbar add game:serving/order [ \
    {text:"▶ ",color:"white"}, \
    {"entity":"@s","nbt":"data.recipe_icons[]","interpret":true,"separator":" ", \
        "font":"kitchen_burnout:ingredients", color:"white",bold:false}," ◀"]

#bossbar add game:serving/order_2 [ \
    {text:" ► ",color:"#797979"}, \
    {"entity":"@s","nbt":"data.recipe_icons_2[]","interpret":true,"separator":" ", \
        "font":"kitchen_burnout:small_ingredients", color:"#797979"}," ◄ "]

bossbar add game:serving/order_header [{"text":"◆ ","color":"dark_purple"},{"translate":"bossbar.header.orders","color":"light_purple","bold":true}," ◆"]

bossbar set game:serving/order_header color purple
bossbar set game:serving/order_header max 1
bossbar set game:serving/order_header value 1

bossbar set lobby players
bossbar set game:serving/order_header players @a
bossbar set game:serving/order players @a
#bossbar set game:serving/order_2 players @a