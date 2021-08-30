##Displaying the ingredients.
scoreboard players reset @a[distance=..500] recipe_cooldown

tellraw @a[distance=..500] [{"text":"-","color":"white"},{"text":"=","color":"gray"},{"text":"-","color":"white"},{"text":" ✯","color":"gold"},{"text":" INGREDIENTS ","color":"green"},{"text":"✯ ","color":"gold"},{"text":"-","color":"white"},{"text":"=","color":"gray"},{"text":"-","color":"white"},{"text":"\n"},{"nbt":"Recipe.Display_Ingredients","storage":"minecraft:current_order1","interpret": true,"color":"yellow"}]