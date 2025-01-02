advancement revoke @s only game:inventory_changed
execute unless entity @s[gamemode=adventure,tag=playing] run return 1
#execute if items entity @s weapon.offhand *[!custom_data={offhand:1b}] run function game:inputs/offhand/changed
execute unless items entity @s weapon.mainhand * if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..2] run function game:inputs/drop/trigger

# Reset inventory
function game:inventory/reset_inventory
