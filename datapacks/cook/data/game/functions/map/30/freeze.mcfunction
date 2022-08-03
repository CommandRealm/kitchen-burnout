# Set time frozen
scoreboard players set @s freeze_time 100

# Summon snow blocks
summon armor_stand ~ ~-1.5 ~ {Invisible:1b,Invulnerable:1b, Tags: ["die_between_games","frozen_blocks"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:powder_snow"},DropItem:0b,Tags:["die_between_games","frozen_blocks"],NoGravity:1b,Time:1}]}
summon armor_stand ~ ~-.5 ~ {Invisible:1b,Invulnerable:1b, Tags: ["die_between_games","frozen_blocks"],Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:powder_snow"},DropItem:0b,Tags:["die_between_games","frozen_blocks"],NoGravity:1b,Time:1}]}

# Store position values for locking position
execute store result score @s freeze_pos_x run data get entity @s Pos[0] 100
execute store result score @s freeze_pos_y run data get entity @s Pos[1] 1
execute store result score @s freeze_pos_z run data get entity @s Pos[2] 100
execute store result score @s freeze_rot_x run data get entity @s Rotation[0] 1000
execute store result score @s freeze_rot_y run data get entity @s Rotation[1] 1000

# Freeze ingredient
execute unless score @s ingredient matches 0 run scoreboard players set @s ingredient 51
advancement grant @s only game:inventory_changed
advancement grant @s only advancements:general_hazard

# Sound
playsound minecraft:entity.player.hurt_freeze master @s ~ ~ ~ 1 0 .1