# Called to add an ingredient's (id) display name to the current recipe's subtitle
execute if data storage game:serving/recipe subtitle.translate run \
    data modify storage game:serving/recipe subtitle.extra append value {translate:"orders.request.subtitle.separator", "color":"green"}
execute unless data storage game:serving/recipe subtitle.translate run \
    data modify storage game:serving/recipe subtitle set value \
        {translate:"sidebar.order.subtitle_prefix", color:"gray", extra:[" "]}
$data modify storage game:serving/recipe subtitle.extra append value {translate:"ingredient.$(id).$(count)","color":"green"}
