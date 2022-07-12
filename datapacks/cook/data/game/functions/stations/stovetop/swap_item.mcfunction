# Store stovetop ingredient
scoreboard players operation $swap ingredient = @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient

# Place stovetop item
function game:stations/stovetop/place_item

# Give player their ingredient
scoreboard players operation @s ingredient = $swap ingredient
tag @s add temporary_tag
advancement grant @s only game:inventory_changed
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1