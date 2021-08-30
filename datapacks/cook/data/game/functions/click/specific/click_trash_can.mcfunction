##Called when we click the trash can.

##sounds
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.75
##execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.5
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.9
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.15 0.67

scoreboard players set @s ingredient -1
item replace entity @s hotbar.4 with air

