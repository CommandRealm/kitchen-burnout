# Called to check players inventories.

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

execute as @a[tag=playing,scores={ingredient=12}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:bone_meal"}]}] run function game:inventory/get_rice
execute as @a[tag=playing,scores={ingredient=13}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:salmon"}]}] run function game:inventory/get_salmon
execute as @a[tag=playing,scores={ingredient=14}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:pufferfish"}]}] run function game:inventory/get_pufferfish
execute as @a[tag=playing,scores={ingredient=15}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:orange_dye"}]}] run function game:inventory/get_cut_salmon
execute as @a[tag=playing,scores={ingredient=16}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye"}]}] run function game:inventory/get_cut_pufferfish
execute as @a[tag=playing,scores={ingredient=17}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:kelp"}]}] run function game:inventory/get_poison_pufferfish
execute as @a[tag=playing,scores={ingredient=18}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_avocado
execute as @a[tag=playing,scores={ingredient=19}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:lime_dye"}]}] run function game:inventory/get_avocado_slice
execute as @a[tag=playing,scores={ingredient=20}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:green_dye"}]}] run function game:inventory/get_wasabi

# Hat
execute as @a[tag=playing,scores={cosmetics_hat=0}] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef



advancement revoke @a only game:inventory_changed