# Called to update a specific line of the sidebar (index) as done
$scoreboard players display name $$(index) sidebar \
    ["",{storage:"game:serving/recipe", nbt:"icons[$(index)]", source:"storage", interpret:true, font:"kb2:ingredients", color:"gray", shadow_color:-16777216}, \
    {text:"\uF001\uF000\uF002", font:"kb2:ingredients", color:"gray", shadow_color:-16777216}, \
    " ",{storage:"game:serving/recipe", nbt:"ingredients_list[$(index)]", source:"storage", interpret:true, font:"kb2:order", color:"gray", shadow_color:-13224394, strikethrough:true}]

# Make index visible
$execute unless score $$(index) sidebar matches -2147483648..2147483647 run scoreboard players set $$(index) sidebar 0