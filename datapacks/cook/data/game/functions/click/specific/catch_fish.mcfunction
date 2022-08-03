# Called when you catch a fish with the fishing net
scoreboard players set $calculate calculate 0

particle sweep_attack ~ ~ ~ 0 0 0 1 0 force
playsound entity.player.attack.sweep master @s ~ ~ ~ 1 1.7

# Advancement
scoreboard players add @s fish_caught 1
advancement grant @s[scores={fish_caught=50..}] only advancements:milestone_fish

execute if entity @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..0.75] run function game:inventory/get_salmon
execute if entity @e[type=salmon,tag=can_catch,limit=1,sort=nearest,distance=..0.75] run scoreboard players set @s ingredient 13
execute if entity @e[type=pufferfish,tag=can_catch,limit=1,sort=nearest,distance=..0.75] run function game:inventory/get_pufferfish
execute if entity @e[type=pufferfish,tag=can_catch,limit=1,sort=nearest,distance=..0.75] run scoreboard players set @s ingredient 14
tp @e[type=#game:fish,tag=can_catch,limit=1,sort=nearest,distance=..0.75] ~ ~-10000 ~