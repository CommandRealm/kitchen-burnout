function game:map/26/teleport_2

# Prep
execute positioned 13476 72 0 run function game:map/ingredient_sets/ice_cream
execute positioned 13477 72 0 run function game:map/ingredient_sets/ice_cream
# Holders
execute positioned 13475 72 -19 run function game:map/ingredient_sets/ice_cream
execute positioned 13477 72 -19 run function game:map/ingredient_sets/ice_cream
# Toppings
execute positioned 13478 72 18 run function game:map/ingredient_sets/ice_cream
execute positioned 13477 72 20 run function game:map/ingredient_sets/ice_cream
execute positioned 13475 72 20 run function game:map/ingredient_sets/ice_cream
execute positioned 13474 72 18 run function game:map/ingredient_sets/ice_cream
# Ice Cream
execute positioned 13459 72 2 run function game:map/ingredient_sets/ice_cream
execute positioned 13457 72 3 run function game:map/ingredient_sets/ice_cream
execute positioned 13456 72 1 run function game:map/ingredient_sets/ice_cream
execute positioned 13456 72 -1 run function game:map/ingredient_sets/ice_cream
execute positioned 13457 72 -3 run function game:map/ingredient_sets/ice_cream
execute positioned 13459 72 -2 run function game:map/ingredient_sets/ice_cream

# Inner Buttons
execute positioned 13480 72 0 run function game:map/26/button/new
execute positioned 13472 72 0 run function game:map/26/button/new
execute positioned 13476 72 -4 run function game:map/26/button/new
execute positioned 13476 72 4 run function game:map/26/button/new
# Outer Buttons
execute positioned 13476 72 17 run function game:map/26/button/new
execute positioned 13459 72 0 run function game:map/26/button/new
execute positioned 13476 72 -17 run function game:map/26/button/new
execute positioned 13493 72 0 run function game:map/26/button/new

# Armor stands
summon armor_stand 13476 71 6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
summon armor_stand 13470 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
summon armor_stand 13476 71 -6 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}
summon armor_stand 13491 71 0 {Invulnerable:1b,DisabledSlots:2039583,Tags:["die_between_games","ice_bridge"],ArmorItems:[{id:"minecraft:diamond_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:frost_walker",lvl:1}]}},{},{},{}]}