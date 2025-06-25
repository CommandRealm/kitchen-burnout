#execute if items entity @s weapon.offhand *[!custom_data={offhand:1b}] run function game:inputs/offhand/changed
execute as @s[gamemode=adventure,tag=playing] unless items entity @s weapon.offhand * if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..2] run function game:inputs/drop/trigger
execute as @s[gamemode=adventure,tag=playing,tag=holding_knife] unless items entity @s weapon.mainhand * if entity @e[type=item,nbt={Item:{id:"minecraft:ender_eye"}},distance=..2] run function game:inputs/drop/trigger

# Reset inventory
execute as @s[gamemode=adventure,tag=playing] run function game:inventory/reset_inventory
advancement revoke @s only game:inventory_changed
