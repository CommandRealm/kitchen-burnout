scoreboard players add @s warp_fish 1
execute if score @s warp_fish matches ..15 run tp @s ~ ~.05 ~ ~2 ~
execute if score @s warp_fish matches 16..30 run tp @s ~ ~.05 ~ ~4 ~
execute if score @s warp_fish matches 31..45 run tp @s ~ ~.05 ~ ~8 ~
execute if score @s warp_fish matches 31..45 run tp @s ~ ~.05 ~ ~8 ~
execute if score @s warp_fish matches 45 run particle nautilus ~ ~ ~ 1 1 1 1 20 force
execute if score @s warp_fish matches 45 run particle reverse_portal ~ ~ ~ 1 1 1 1 10 force
execute if score @s warp_fish matches 45 run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5
execute if score @s warp_fish matches 46 run tp @s 1993.0 94.0 642.0
execute if score @s warp_fish matches 47 run particle nautilus ~ ~ ~ 1 1 1 1 20 force
execute if score @s warp_fish matches 47 run particle reverse_portal ~ ~ ~ 1 1 1 1 10 force