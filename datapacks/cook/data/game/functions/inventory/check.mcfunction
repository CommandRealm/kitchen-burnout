##Called to check players inventories.

execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function game:inventory/offhand_detector
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:iron_sword"}]}] run function game:inventory/get_knife
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:structure_void"}]}] run function game:inventory/get_trash_can

execute as @a[tag=playing,scores={ingredient=1}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:bread"}]}] run function game:inventory/get_bread
execute as @a[tag=playing,scores={ingredient=2}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye"}]}] run function game:inventory/get_cheese
execute as @a[tag=playing,scores={ingredient=3}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_lettuce_head
execute as @a[tag=playing,scores={ingredient=4}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:green_dye"}]}] run function game:inventory/get_lettuce_leaf
execute as @a[tag=playing,scores={ingredient=5}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_tomato
execute as @a[tag=playing,scores={ingredient=6}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:red_dye"}]}] run function game:inventory/get_tomato_slice
execute as @a[tag=playing,scores={ingredient=7}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:beef"}]}] run function game:inventory/get_raw_hamburger
execute as @a[tag=playing,scores={ingredient=8}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:beef"}]}] run function game:inventory/get_half_cooked_hamburger
execute as @a[tag=playing,scores={ingredient=9}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:cooked_beef"}]}] run function game:inventory/get_hamburger
execute as @a[tag=playing,scores={ingredient=10}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:charcoal"}]}] run function game:inventory/get_burnt_hamburger
execute as @a[tag=playing,scores={ingredient=11}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:charcoal"}]}] run function game:inventory/get_scorched_food

##Hat
execute as @a[tag=playing,scores={cosmetics_hat=0}] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef



advancement revoke @a only game:inventory_changed