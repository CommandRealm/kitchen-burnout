# Called to update this prep station's bossbar with the current recipe and order information.
bossbar remove game:serving/order
bossbar remove game:serving/order_header

bossbar add game:serving/order [ \
    "◆ ", {entity: "@s", nbt:"data.recipe_title[]", interpret:true, separator:" ",shadow_color:-16777216}, \
    " ", {translate:"sidebar.order.subtitle_prefix", color:"yellow",shadow_color:-16777216}, \
    " ", {entity: "@s", nbt:"data.recipe_subtitle[]", interpret:true, separator:{"text":", "},shadow_color:-16777216}, \
    " ◆ ", {"entity":"@s","nbt":"data.recipe_icons[]","interpret":true,"separator":" ","font":"kitchen_burnout:ingredients",color:"white",shadow_color:-16777216}, " ◆" \
]
bossbar add game:serving/order_header [{"text":"◆ ","color":"gray"},{"translate":"bossbar.header.orders","color":"green","bold":true},{"text":" ◆","color":"gray"}]

bossbar set game:serving/order_header color green
bossbar set game:serving/order_header max 1
bossbar set game:serving/order_header value 1

bossbar set lobby players
bossbar set game:serving/order_header players @a
bossbar set game:serving/order players @a