execute if block ~ ~ ~ air run setblock ~ ~ ~ sponge
execute positioned ^ ^ ^1 unless entity @e[type=shulker,tag=crmTline,limit=1,sort=nearest,distance=..0.5,tag=!crmTdrawingline] run function terra:line_cast
execute unless entity @e[type=shulker,tag=crmTline,limit=1,sort=nearest,distance=..0.5,tag=!crmTdrawingline] run kill @s