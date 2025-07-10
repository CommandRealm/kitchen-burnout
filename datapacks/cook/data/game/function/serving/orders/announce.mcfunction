# Called to announce the next order to the nearby players
#> Takes in the random request number (1-10)
$tellraw @a[distance=..500] [{text:"<",color:"white"},{translate:"orders.request.customer",color:"gold"}, \
    {text:"> "},{translate:"orders.request.prefix.$(request)"}," ", \
    {entity:"@s",nbt:"data.recipe_title[]", color:"green", "underlined":true, interpret:true, separator:" "}, \
    {entity:"@s",nbt:"data.recipe_subtitle", interpret:true}, \
    {translate:"orders.request.suffix.$(request)"}]
tellraw @a[distance=..500] [{text:"-",color:"white"},{text:"=",color:"gray"}, \
    {text:"-",color:"white"},{text:" ✯ ",color:"gold"}, \
    {translate:"orders.request.ingredients",color:"green"},{text:" ✯ ",color:"gold"}, \
    {text:"-",color:"white"},{text:"=",color:"gray"},{text:"-\n",color:"white"}, \
    {"entity":"@s",nbt:"data.ingredients_list[]",color:"yellow",interpret:true, separator:", "}]
