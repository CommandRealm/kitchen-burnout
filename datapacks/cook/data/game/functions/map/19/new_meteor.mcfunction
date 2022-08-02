# Choose a section
scoreboard players set $mod random 8
function random:random
execute if score $output random matches 0 run summon marker 2520 102 1495 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 1 run summon marker 2525 102 1495 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 2 run summon marker 2530 102 1495 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 3 run summon marker 2530 102 1500 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 4 run summon marker 2530 102 1505 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 5 run summon marker 2525 102 1505 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 6 run summon marker 2520 102 1505 {Tags:["die_between_games","danger_zone","look_at"]}
execute if score $output random matches 7 run summon marker 2520 102 1500 {Tags:["die_between_games","danger_zone","look_at"]}

# Create actual meteor
summon minecraft:giant 2525 242 1500 {HandItems:[{id:"minecraft:magma_block",Count:1b}],NoGravity:1b,Tags:["die_between_games","meteor","invisible","spread"],Invulnerable:1b,Silent:1b,NoAI:1b,PersistenceRequired:1b}
team join no_collision @e[tag=meteor]
spreadplayers 2525 1500 1 40 under 200 false @e[type=giant,tag=meteor,tag=spread]
execute as @e[type=giant,tag=meteor,tag=spread] at @s run tp @s ~ 226 ~ facing entity @e[type=marker,tag=danger_zone,tag=look_at,limit=1,sort=nearest,distance=..500] 
execute as @e[type=giant,tag=meteor,tag=spread] at @s run playsound entity.firework_rocket.large_blast_far master @a ~ ~ ~ 50 0

# Remove setup tags
tag @e[type=giant,tag=meteor,tag=spread] remove spread
tag @e[type=marker,tag=danger_zone,tag=look_at] remove look_at