scoreboard objectives add crmTload dummy "Load Pack"
execute unless score system crmTload matches 1 run function terra:setup
execute if entity @a[tag=crmTterraform] run function terra:in_use
scoreboard players set @a crmTsnowball 0
scoreboard players set @a crmTbatspawn 0
scoreboard players set @a crmTbeespawn 0
scoreboard players set @a crmTblazespawn 0
