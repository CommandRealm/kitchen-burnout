execute positioned 3476 72 1 run kill @e[tag=ingredient_setup,distance=..500]
# Prep
execute positioned 3476 72 1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3476 72 0 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Holders
execute positioned 3475 72 -19 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3477 72 -19 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Toppings
execute positioned 3478 72 18 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3477 72 20 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3475 72 20 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3474 72 18 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Ice Cream
execute positioned 3459 72 2 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3457 72 3 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3456 72 1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3456 72 -1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3457 72 -3 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 3459 72 -2 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Customers
execute positioned 3477 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}

# Inner Buttons
#execute positioned 3480 72 0 run function game:map/26/button/new
execute positioned 3472 72 0 run function game:map/26/button/new
execute positioned 3476 72 -4 run function game:map/26/button/new
execute positioned 3476 72 4 run function game:map/26/button/new
# Outer Buttons
execute positioned 3476 72 17 run function game:map/26/button/new
execute positioned 3459 72 0 run function game:map/26/button/new
execute positioned 3476 72 -17 run function game:map/26/button/new
execute positioned 3493 72 0 run function game:map/26/button/new

# Save armor stands that fall
execute positioned 3482 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 3476 71 6 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 3470 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 3476 71 -6 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}

# Armor stands
execute unless score $glowing settings matches 1 run summon armor_stand 3476 71 6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 3470 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 3476 71 -6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 3491 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute if score $glowing settings matches 1 run summon armor_stand 3476 71 6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 3470 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 3476 71 -6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 3491 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}