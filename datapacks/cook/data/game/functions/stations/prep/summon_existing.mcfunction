# Kill compact display armor stands
kill @e[type=armor_stand,tag=prep_slot,distance=..10]
kill @e[type=armor_stand,tag=compact_display,distance=..10]

# Create item armor stands
execute if entity @s[tag=hamburger_bun] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","hamburger_bun"]}
# Top bun
execute if entity @s[tag=hamburger_bun] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","hamburger_bun"]}
execute if entity @s[tag=burnt_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","burnt_hamburger"]}
execute if entity @s[tag=cheese] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","cheese"]}
execute if entity @s[tag=half_cooked_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","half_cooked_hamburger"]}
execute if entity @s[tag=hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","hamburger"]}
execute if entity @s[tag=lettuce_head] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","lettuce_head"]}
execute if entity @s[tag=lettuce_leaf] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","lettuce_leaf"]}
execute if entity @s[tag=raw_hamburger] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","raw_hamburger"]}
execute if entity @s[tag=scorched_food] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","scorched_food"]}
execute if entity @s[tag=tomato_slice] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","tomato_slice"]}
execute if entity @s[tag=tomato] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","tomato"]}

execute if entity @s[tag=rice] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","rice"]}
execute if entity @s[tag=salmon] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","salmon"]}
execute if entity @s[tag=pufferfish] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","pufferfish"]}
execute if entity @s[tag=cut_salmon] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cut_salmon"]}
execute if entity @s[tag=cut_pufferfish] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cut_pufferfish"]}
execute if entity @s[tag=poison_pufferfish] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","poison_pufferfish"]}
execute if entity @s[tag=avocado] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","avocado"]}
execute if entity @s[tag=avocado_slice] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","avocado_slice"]}
execute if entity @s[tag=wasabi] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","wasabi"]}

execute if entity @s[tag=dough] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","dough"]}
execute if entity @s[tag=sauce] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","sauce"]}
execute if entity @s[tag=pizza_cheese] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","pizza_cheese"]}
execute if entity @s[tag=pepperoni] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","pepperoni"]}
execute if entity @s[tag=mushroom] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","mushroom"]}
execute if entity @s[tag=pineapple] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","pineapple"]}
execute if entity @s[tag=thick_crust] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","thick_crust"]}
execute if entity @s[tag=thin_crust] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[-15.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","thin_crust"]}
execute if entity @s[tag=cut_mushroom] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cut_mushroom"]}
execute if entity @s[tag=cut_pineapple] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cut_pineapple"]}

execute if entity @s[tag=tortilla] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[-15.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","tortilla"]}
execute if entity @s[tag=raw_beef] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","raw_beef"]}
execute if entity @s[tag=taco_cheese] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","taco_cheese"]}
execute if entity @s[tag=guac] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[-15.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","guac"]}
execute if entity @s[tag=salsa] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","salsa"]}
execute if entity @s[tag=sour_cream] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","sour_cream"]}
execute if entity @s[tag=beef] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","beef"]}
execute if entity @s[tag=lettuce_shreds] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","lettuce_shreds"]}
execute if entity @s[tag=lettuce_head_2] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","lettuce_head_2"]}

execute if entity @s[tag=cone] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","cone"]}
execute if entity @s[tag=bowl] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","bowl"]}
execute if entity @s[tag=vanilla] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","vanilla"]}
execute if entity @s[tag=chocolate] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","chocolate"]}
execute if entity @s[tag=strawberry] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","strawberry"]}
execute if entity @s[tag=cookies] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","cookies"]}
execute if entity @s[tag=mint] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","mint"]}
execute if entity @s[tag=mango] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","mango"]}
execute if entity @s[tag=sprinkles] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","sprinkles"]}
execute if entity @s[tag=chips] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","chips"]}
execute if entity @s[tag=cherry] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cherry"]}
execute if entity @s[tag=cookie_dough] run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","cookie_dough"]}


# Using storage system
#execute if data storage current_order1 Recipe{Prep:["Hamburger Bun"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","base_ingredient","primary_ingredient","hamburger_bun"]}
## Top bun
#execute if data storage current_order1 Recipe{Prep:["Hamburger Bun"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","hamburger_bun"]}
#execute if data storage current_order1 Recipe{Prep:["Burnt Hamburger"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","burnt_hamburger"]}
#execute if data storage current_order1 Recipe{Prep:["Cheese"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","cheese"]}
#execute if data storage current_order1 Recipe{Prep:["Half-Cooked Hamburger"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","half_cooked_hamburger"]}
#execute if data storage current_order1 Recipe{Prep:["Hamburger"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","hamburger"]}
#execute if data storage current_order1 Recipe{Prep:["Lettuce Head"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","lettuce_head"]}
#execute if data storage current_order1 Recipe{Prep:["Lettuce Leaf"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","lettuce_leaf"]}
#execute if data storage current_order1 Recipe{Prep:["Raw Hamburger"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","raw_hamburger"]}
#execute if data storage current_order1 Recipe{Prep:["Scorched Food"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","scorched_food"]}
#execute if data storage current_order1 Recipe{Prep:["Tomato Slice"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","tomato_slice"]}
#execute if data storage current_order1 Recipe{Prep:["Tomato"]} run summon minecraft:armor_stand ~0.3125 ~-0.77 ~0.375 {ShowArms:1b,Pose:{RightArm:[0.0f,0.0f,0.0f]},Rotation:[90f,0f],NoGravity:1b,Marker:1b,Invisible:1b,Invulnerable:1b,Silent:1b,Tags:["prep_slot","die_between_games","display_item","primary_ingredient","tomato"]}

execute as @e[type=armor_stand,tag=hamburger_bun] at @s run function game:inventory/get_bread
execute as @e[type=armor_stand,tag=cheese] at @s run function game:inventory/get_cheese
execute as @e[type=armor_stand,tag=lettuce_head] at @s run function game:inventory/get_lettuce_head
execute as @e[type=armor_stand,tag=lettuce_leaf] at @s run function game:inventory/get_lettuce_leaf
execute as @e[type=armor_stand,tag=tomato] at @s run function game:inventory/get_tomato
execute as @e[type=armor_stand,tag=tomato_slice] at @s run function game:inventory/get_tomato_slice
execute as @e[type=armor_stand,tag=raw_hamburger] at @s run function game:inventory/get_raw_hamburger
execute as @e[type=armor_stand,tag=half_cooked_hamburger] at @s run function game:inventory/get_half_cooked_hamburger
execute as @e[type=armor_stand,tag=hamburger] at @s run function game:inventory/get_hamburger
execute as @e[type=armor_stand,tag=burnt_hamburger] at @s run function game:inventory/get_burnt_hamburger
execute as @e[type=armor_stand,tag=scorched_food] at @s run function game:inventory/get_scorched_food

execute as @e[type=armor_stand,tag=rice] at @s run function game:inventory/get_rice
execute as @e[type=armor_stand,tag=salmon] at @s run function game:inventory/get_salmon
execute as @e[type=armor_stand,tag=pufferfish] at @s run function game:inventory/get_pufferfish
execute as @e[type=armor_stand,tag=cut_salmon] at @s run function game:inventory/get_cut_salmon
execute as @e[type=armor_stand,tag=cut_pufferfish] at @s run function game:inventory/get_cut_pufferfish
execute as @e[type=armor_stand,tag=poison_pufferfish] at @s run function game:inventory/get_poison_pufferfish
execute as @e[type=armor_stand,tag=avocado] at @s run function game:inventory/get_avocado
execute as @e[type=armor_stand,tag=avocado_slice] at @s run function game:inventory/get_avocado_slice
execute as @e[type=armor_stand,tag=wasabi] at @s run function game:inventory/get_wasabi

execute as @e[type=armor_stand,tag=dough] at @s run function game:inventory/get_dough
execute as @e[type=armor_stand,tag=sauce] at @s run function game:inventory/get_sauce
execute as @e[type=armor_stand,tag=pizza_cheese] at @s run function game:inventory/get_pizza_cheese
execute as @e[type=armor_stand,tag=pepperoni] at @s run function game:inventory/get_pepperoni
execute as @e[type=armor_stand,tag=mushroom] at @s run function game:inventory/get_mushroom
execute as @e[type=armor_stand,tag=pineapple] at @s run function game:inventory/get_pineapple
execute as @e[type=armor_stand,tag=thick_crust] at @s run function game:inventory/get_thick_crust
execute as @e[type=armor_stand,tag=thin_crust] at @s run function game:inventory/get_thin_crust
execute as @e[type=armor_stand,tag=cut_mushroom] at @s run function game:inventory/get_cut_mushroom
execute as @e[type=armor_stand,tag=cut_pineapple] at @s run function game:inventory/get_cut_pineapple

execute as @e[type=armor_stand,tag=tortilla] at @s run function game:inventory/get_tortilla
execute as @e[type=armor_stand,tag=raw_beef] at @s run function game:inventory/get_raw_beef
execute as @e[type=armor_stand,tag=taco_cheese] at @s run function game:inventory/get_taco_cheese
execute as @e[type=armor_stand,tag=guac] at @s run function game:inventory/get_guac
execute as @e[type=armor_stand,tag=salsa] at @s run function game:inventory/get_salsa
execute as @e[type=armor_stand,tag=sour_cream] at @s run function game:inventory/get_sour_cream
execute as @e[type=armor_stand,tag=beef] at @s run function game:inventory/get_beef
execute as @e[type=armor_stand,tag=lettuce_shreds] at @s run function game:inventory/get_lettuce_shreds
execute as @e[type=armor_stand,tag=lettuce_head_2] at @s run function game:inventory/get_lettuce_head_2

execute as @e[type=armor_stand,tag=cone] at @s run function game:inventory/get_cone
execute as @e[type=armor_stand,tag=bowl] at @s run function game:inventory/get_bowl
execute as @e[type=armor_stand,tag=vanilla] at @s run function game:inventory/get_vanilla
execute as @e[type=armor_stand,tag=chocolate] at @s run function game:inventory/get_chocolate
execute as @e[type=armor_stand,tag=strawberry] at @s run function game:inventory/get_strawberry
execute as @e[type=armor_stand,tag=cookies] at @s run function game:inventory/get_cookies
execute as @e[type=armor_stand,tag=mint] at @s run function game:inventory/get_mint
execute as @e[type=armor_stand,tag=mango] at @s run function game:inventory/get_mango
execute as @e[type=armor_stand,tag=sprinkles] at @s run function game:inventory/get_sprinkles
execute as @e[type=armor_stand,tag=chips] at @s run function game:inventory/get_chips
execute as @e[type=armor_stand,tag=cherry] at @s run function game:inventory/get_cherry
execute as @e[type=armor_stand,tag=cookie_dough] at @s run function game:inventory/get_cookie_dough

tag @s remove reset_prep_ingredients