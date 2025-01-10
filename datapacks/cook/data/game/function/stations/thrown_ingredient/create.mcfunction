# Takes in an ingredient id and power, called to create a thrown ingredient 
# summon temporary entity "in front of the player", if the player was standing at 0 0 0
$execute positioned 0.0 0 0.0 run summon marker ^ ^ ^$(power) {Tags:["throw_direction"]}


execute anchored eyes run summon tropical_fish ~ ~ ~ {Variant:1,Tags:["thrown_ingredient","die_between_games"],Invulnerable:1b,active_effects:[{id:invisibility,show_particles:false,amplifier:1,duration:-1}],Passengers:[{id:"minecraft:item_display",Tags:["thrown_ingredient","die_between_games"]},{id:"minecraft:interaction",Tags:["die_between_games","thrown_ingredient","interactable"]}]}

data modify entity @n[type=tropical_fish,tag=thrown_ingredient,distance=..1] Motion set from entity @e[type=marker,tag=throw_direction,limit=1] Pos
execute as @n[type=item_display,tag=thrown_ingredient,distance=..1] run function game:inventory/get_ingredient with storage game:throwing
# clean up
tag @e[tag=projectile] remove projectile
kill @e[tag=throw_direction]

