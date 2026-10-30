# Called to create this prep station's order bossbars with the current recipe and order information.
bossbar remove game:serving/order
#bossbar remove game:serving/order_2
bossbar remove game:serving/order_header

bossbar add game:serving/order ""

function game:serving/bossbar/update_order_bossbar

#bossbar add game:serving/order_2 [ \
    {text:" ► ",color:"#797979"}, \
    {"entity":"@s","nbt":"data.bossbar_icons_2[]","interpret":true,"separator":" ", \
        "font":"kb2:small_bossbar", color:"#797979"}," ◄ "]

# In game, the header will be the timer
bossbar add game:serving/order_header [{translate:"kitchen.tutorial",color:"gold",font:"kb2:bossbar_title"}]

#bossbar set game:serving/order_header color purple
#bossbar set game:serving/order_header max 1
#bossbar set game:serving/order_header value 1

bossbar set lobby players
bossbar set game:serving/order_header players @a
bossbar set game:serving/order players @a
#bossbar set game:serving/order_2 players @a