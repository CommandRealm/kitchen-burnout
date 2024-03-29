# Summon creepers
execute if score @s tnt_launchpad matches 20.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 40.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 60.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 80.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 100.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 120.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 140.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 160.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}

execute if score @s tnt_launchpad matches 20.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 40.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 60.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 80.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 100.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 120.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 140.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 160.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-2 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
# Extra creepers for waiting too long
execute if score @s tnt_launchpad matches 240.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 240.. run summon creeper ~ ~ ~ {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}

execute if score @s tnt_launchpad matches 240.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-1 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}
execute if score @s tnt_launchpad matches 240.. positioned ~ ~1 ~ run summon creeper ^ ^ ^-1 {Fuse:0,Invulnerable:1b,Tags:["die_between_games"]}

# Reset score
scoreboard players set @s tnt_launchpad 0