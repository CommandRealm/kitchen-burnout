execute if items entity @s weapon.offhand *[!custom_data={offhand:1b}] run function inputs:offhand/changed
execute unless items entity @s weapon.mainhand * if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..2] run function inputs:drop/trigger

# Reset inventory
function inputs:inventory/reset_inventory

advancement revoke @s only game:inventory_changed