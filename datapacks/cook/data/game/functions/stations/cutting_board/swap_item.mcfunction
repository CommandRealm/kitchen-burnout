# Store cutting board ingredient
scoreboard players operation $swap ingredient = @e[type=armor_stand,sort=nearest,limit=1,tag=display_item] ingredient

# Place cutting board item
function game:stations/cutting_board/place_item

# Give player their ingredient
scoreboard players operation @s ingredient = $swap ingredient
tag @s add temporary_tag
advancement grant @s only game:inventory_changed
execute at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1

scoreboard players reset $swap ingredient