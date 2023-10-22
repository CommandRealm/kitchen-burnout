# Check for a successful sushi recipe
execute if entity @s[tag=!2] store result score $recipe_id game run data get storage orders_1 Recipe[0].id
execute if entity @s[tag=2] store result score $recipe_id game run data get storage orders_2 Recipe[0].id

execute if score $recipe_id game matches 0 if entity @s[tag=!rice,tag=!salmon,tag=cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=!wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 1 if entity @s[tag=!rice,tag=!salmon,tag=cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 2 if entity @s[tag=rice,tag=!salmon,tag=cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=!wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 3 if entity @s[tag=rice,tag=!salmon,tag=cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 4 if entity @s[tag=!rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=!wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 5 if entity @s[tag=!rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 6 if entity @s[tag=rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=!wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 7 if entity @s[tag=rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=cut_pufferfish,tag=!poison_pufferfish,tag=!avocado_slice,tag=!avocado,tag=wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 8 if entity @s[tag=rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=avocado_slice,tag=!avocado,tag=!wasabi] run function game:serve/check/success
execute if score $recipe_id game matches 9 if entity @s[tag=rice,tag=!salmon,tag=!cut_salmon,tag=!pufferfish,tag=!cut_pufferfish,tag=!poison_pufferfish,tag=avocado_slice,tag=!avocado,tag=wasabi] run function game:serve/check/success

execute if entity @s[tag=add_new_recipe] run tag @a[gamemode=adventure,tag=playing,distance=..500] add order_sushi
execute if entity @s[tag=add_new_recipe] run advancement grant @a[gamemode=adventure,tag=playing,distance=..500] only advancements:order_sushi