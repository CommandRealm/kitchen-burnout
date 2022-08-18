# Called when we click the trash can.

# Sounds
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.75
# execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.5
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.step master @s ~ ~ ~ 1 0.9
execute if data entity @s Inventory[{Slot:4b}] run playsound minecraft:entity.iron_golem.damage master @s ~ ~ ~ 0.15 0.67

# Advancement
execute if data entity @s Inventory[{Slot:4b}] run scoreboard players add @s ingredients_trashed 1
execute if data entity @s Inventory[{Slot:4b}] run advancement grant @s[scores={ingredients_trashed=50..}] only advancements:milestone_trash

# Tutorial
execute if data entity @s Inventory[{Slot:4b}] run tag @s[tag=tutorial] add tut_trash

scoreboard players set @s ingredient 0
item replace entity @s hotbar.4 with air

