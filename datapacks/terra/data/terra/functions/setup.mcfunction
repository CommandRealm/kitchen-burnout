tellraw @a ["",{"text":"<","bold":true,"color":"dark_aqua"},{"text":"|","color":"aqua"},{"text":"[","bold":true,"color":"dark_aqua"},{"text":"CR Map Tools","color":"aqua"},{"text":"]","bold":true,"color":"dark_aqua"},{"text":"|","color":"aqua"},{"text":">","bold":true,"color":"dark_aqua"},{"text":" The Terraforming Pack has been installed successfully.","color":"gold"}]
scoreboard objectives add crmTsnowball minecraft.used:minecraft.snowball "Throw Snowball"
scoreboard objectives add crmTsnowballtime dummy "Snowball Timer"
scoreboard objectives add crmTbatspawn minecraft.used:minecraft.bat_spawn_egg "Spawn Bat"
scoreboard objectives add crmTbeespawn minecraft.used:minecraft.bee_spawn_egg "Spawn Bee"
scoreboard objectives add crmTblazespawn minecraft.used:minecraft.blaze_spawn_egg "Spawn Blaze"
scoreboard objectives add crmTdropcat minecraft.dropped:minecraft.cat_spawn_egg "Drop Cat Egg"
scoreboard objectives add crmTdropcave minecraft.dropped:minecraft.cave_spider_spawn_egg "Drop Cave Spider Egg"
scoreboard objectives add crmTchickenspawn minecraft.used:minecraft.chicken_spawn_egg "Spawn Chicken"
scoreboard objectives add crmTcodspawn minecraft.used:minecraft.cod_spawn_egg "Spawn Cod"
scoreboard objectives add crmTfill dummy "Fill Settings"

scoreboard objectives add crmTshulkerspawn minecraft.used:minecraft.shulker_spawn_egg "Spawn Shulker"
#scoreboard objectives add crmTcanDrop dummy "Can Drop Egg"
scoreboard objectives add crmTrandom dummy "Random"
scoreboard objectives add crmTshape dummy "Shape"
scoreboard objectives add crmTraycasthit dummy "Raycast Hit"

scoreboard objectives add crmTsneak minecraft.custom:sneak_time
scoreboard players set system crmTload 1