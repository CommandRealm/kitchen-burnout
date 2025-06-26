#> Takes in an ingredient name (id) and sets it as the player's current ingredient.
$function tools:storage/set_for_player {path:"game:inventory/ingredient",value:$(id)}
scoreboard players set @s held_item 1
advancement grant @s only game:inventory_changed

playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.67
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.75
playsound minecraft:entity.chicken.egg master @s ~ ~ ~ 1 0.89