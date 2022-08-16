execute positioned 13476 72 1 run kill @e[tag=ingredient_setup,distance=..500]
fill 13497 70 22 13454 70 -21 water replace minecraft:frosted_ice
# Prep
execute positioned 13476 72 1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13476 72 0 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Holders
execute positioned 13475 72 -19 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13477 72 -19 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Toppings
execute positioned 13478 72 18 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13477 72 20 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13475 72 20 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13474 72 18 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Ice Cream
execute positioned 13459 72 2 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13457 72 3 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13456 72 1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13456 72 -1 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13457 72 -3 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
execute positioned 13459 72 -2 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}
# Customers
execute positioned 13477 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","ingredient_setup","ice_cream_set"]}

# Inner Buttons
#execute positioned 13480 72 0 run function game:map/26/button/new
execute positioned 13472 72 0 run function game:map/26/button/new
execute positioned 13476 72 -4 run function game:map/26/button/new
execute positioned 13476 72 4 run function game:map/26/button/new
# Outer Buttons
execute positioned 13476 72 17 run function game:map/26/button/new
execute positioned 13459 72 0 run function game:map/26/button/new
execute positioned 13476 72 -17 run function game:map/26/button/new
execute positioned 13493 72 0 run function game:map/26/button/new

# Save armor stands that fall
execute positioned 13482 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 13476 71 6 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 13470 71 0 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}
execute positioned 13476 71 -6 run summon marker ~ ~ ~ {Tags:["die_between_games","save_armor_stand"]}

# Armor stands
execute unless score $glowing settings matches 1 run summon armor_stand 13476 71 6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 13470 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 13476 71 -6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute unless score $glowing settings matches 1 run summon armor_stand 13491 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
execute if score $glowing settings matches 1 run summon armor_stand 13476 71 6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 13470 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 13476 71 -6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}
execute if score $glowing settings matches 1 run summon armor_stand 13491 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}],Glowing:1b}