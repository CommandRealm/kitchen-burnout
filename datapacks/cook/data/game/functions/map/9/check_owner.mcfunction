execute store result score @s archery run data get entity @s UUID[1]
execute if score @s archery = $check_owner archery run tag @s add archery_owner