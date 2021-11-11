execute store result score @s fish_count if entity @e[type=salmon,distance=..30]
execute unless score @s fish_count matches 3.. run summon salmon ~ ~ ~ {Tags:["die_between_games","can_catch"]}
