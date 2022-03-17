# Called to check players inventories.

execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function game:inventory/offhand_detector
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:0b,id:"minecraft:iron_sword"}]}] unless score @s map matches 26..30 run function game:inventory/get_knife
execute as @a[tag=playing,scores={map=11..15}] at @s unless entity @s[nbt={Inventory:[{Slot:1b,id:"minecraft:cobweb"}]}] run function game:inventory/get_fishing_net
execute as @a[tag=playing] at @s unless entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:structure_void"}]}] run function game:inventory/get_trash_can

execute as @a[tag=playing,scores={ingredient=1}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:bread"}]}] run function game:inventory/get_bread
execute as @a[tag=playing,scores={ingredient=2}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye"}]}] run function game:inventory/get_cheese
execute as @a[tag=playing,scores={ingredient=3}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_lettuce_head
execute as @a[tag=playing,scores={ingredient=-3}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_lettuce_head_2
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

execute as @a[tag=playing,scores={ingredient=21}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:stripped_birch_wood"}]}] run function game:inventory/get_dough
execute as @a[tag=playing,scores={ingredient=22}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:red_carpet"}]}] run function game:inventory/get_sauce
execute as @a[tag=playing,scores={ingredient=23}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_carpet"}]}] run function game:inventory/get_pizza_cheese
execute as @a[tag=playing,scores={ingredient=24}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:nether_wart"}]}] run function game:inventory/get_pepperoni
execute as @a[tag=playing,scores={ingredient=25}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:brown_mushroom"}]}] run function game:inventory/get_mushroom
execute as @a[tag=playing,scores={ingredient=26}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:player_head"}]}] run function game:inventory/get_pineapple
execute as @a[tag=playing,scores={ingredient=27}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:birch_slab"}]}] run function game:inventory/get_thick_crust
execute as @a[tag=playing,scores={ingredient=28}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:birch_pressure_plate"}]}] run function game:inventory/get_thin_crust
execute as @a[tag=playing,scores={ingredient=29}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:cocoa_beans"}]}] run function game:inventory/get_cut_mushroom
execute as @a[tag=playing,scores={ingredient=30}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye"}]}] run function game:inventory/get_cut_pineapple

execute as @a[tag=playing,scores={ingredient=31}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:birch_pressure_plate"}]}] run function game:inventory/get_tortilla
execute as @a[tag=playing,scores={ingredient=32}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:nether_wart"}]}] run function game:inventory/get_raw_beef
execute as @a[tag=playing,scores={ingredient=33}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:yellow_dye"}]}] run function game:inventory/get_taco_cheese
execute as @a[tag=playing,scores={ingredient=34}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:moss_carpet"}]}] run function game:inventory/get_guac
execute as @a[tag=playing,scores={ingredient=35}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:red_dye"}]}] run function game:inventory/get_salsa
execute as @a[tag=playing,scores={ingredient=36}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:string"}]}] run function game:inventory/get_sour_cream
execute as @a[tag=playing,scores={ingredient=37}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:cocoa_beans"}]}] run function game:inventory/get_beef
execute as @a[tag=playing,scores={ingredient=38}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:seagrass"}]}] run function game:inventory/get_lettuce_shreds

execute as @a[tag=playing,scores={ingredient=39}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:pointed_dripstone"}]}] run function game:inventory/get_cone
execute as @a[tag=playing,scores={ingredient=40}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:bowl"}]}] run function game:inventory/get_bowl
execute as @a[tag=playing,scores={ingredient=41}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:white_dye"}]}] run function game:inventory/get_vanilla
execute as @a[tag=playing,scores={ingredient=42}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:brown_dye"}]}] run function game:inventory/get_chocolate
execute as @a[tag=playing,scores={ingredient=43}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:pink_dye"}]}] run function game:inventory/get_strawberry
execute as @a[tag=playing,scores={ingredient=44}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:light_gray_dye"}]}] run function game:inventory/get_cookies
execute as @a[tag=playing,scores={ingredient=45}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:lime_dye"}]}] run function game:inventory/get_mint
execute as @a[tag=playing,scores={ingredient=46}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:orange_dye"}]}] run function game:inventory/get_mango
execute as @a[tag=playing,scores={ingredient=47}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:brain_coral"}]}] run function game:inventory/get_sprinkles
execute as @a[tag=playing,scores={ingredient=48}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:melon_seeds"}]}] run function game:inventory/get_chips
execute as @a[tag=playing,scores={ingredient=49}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:poppy"}]}] run function game:inventory/get_cherry
execute as @a[tag=playing,scores={ingredient=50}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:beetroot_seeds"}]}] run function game:inventory/get_cookie_dough
execute as @a[tag=playing,scores={ingredient=51}] unless entity @s[nbt={Inventory:[{Slot:4b,id:"minecraft:packed_ice"}]}] run function game:inventory/get_frozen_food

# Hat
execute as @a[tag=playing,scores={cosmetics_hat=0}] unless entity @s[nbt={Inventory:[{Slot:101b,id:"minecraft:stone_button"}]}] run function game:inventory/hat/chef

# Update ingredient icon for classic mode
execute as @a[tag=playing] if score $mode settings matches 0 run function game:inventory/join_team
# Update ingredient icon for versus mode team 1
execute as @a[tag=playing,tag=!team_2] if score $mode settings matches 1 run function game:inventory/join_team_1
# Update ingredient icon for versus mode team 2
execute as @a[tag=playing,tag=team_2] if score $mode settings matches 1 run function game:inventory/join_team_2

advancement revoke @a only game:inventory_changed