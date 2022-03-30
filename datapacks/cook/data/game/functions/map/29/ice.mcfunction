scoreboard players add @s thin_ice 1
execute if score @s thin_ice matches 10 run playsound minecraft:block.glass.break master @a ~ ~ ~ 0.15 1.85
execute if score @s thin_ice matches 15 run playsound minecraft:block.glass.place master @a ~ ~ ~ 0.4 0
execute if score @s thin_ice matches 15 run setblock ~ ~ ~ air
execute if score @s thin_ice matches 15 if entity @s[tag=ice] run summon armor_stand ~.5 ~-1 ~.5 {Invisible:1b,Invulnerable:1b,Tags:["die_between_games","thin_ice"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:ice"},Tags:["die_between_games","thin_ice"],Time:100}],Small:1b,NoGravity:1b}
execute if score @s thin_ice matches 15 if entity @s[tag=packed_ice] run summon armor_stand ~.5 ~-1 ~.5 {Invisible:1b,Invulnerable:1b,Tags:["die_between_games","thin_ice"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:packed_ice"},Tags:["die_between_games","thin_ice"],Time:100}],Small:1b,NoGravity:1b}
execute if score @s thin_ice matches 15 if entity @s[tag=blue_ice] run summon armor_stand ~.5 ~-1 ~.5 {Invisible:1b,Invulnerable:1b,Tags:["die_between_games","thin_ice"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:blue_ice"},Tags:["die_between_games","thin_ice"],Time:100}],Small:1b,NoGravity:1b}
execute if score @s thin_ice matches 295.. run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ .1 2
execute if score @s thin_ice matches 295.. if entity @s[tag=ice] run setblock ~ ~ ~ ice
execute if score @s thin_ice matches 295.. if entity @s[tag=packed_ice] run setblock ~ ~ ~ packed_ice
execute if score @s thin_ice matches 295.. if entity @s[tag=blue_ice] run setblock ~ ~ ~ blue_ice
execute if score @s thin_ice matches 295.. run kill @s