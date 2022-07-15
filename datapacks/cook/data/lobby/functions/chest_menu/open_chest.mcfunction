##Called when a player opens an ender chest. This function clears the ender chest and determines what the start screen should be.

##Reset score
scoreboard players reset @s open_echest

# Start from hat menu in hat store otherwise open normal main menu
execute if entity @s[x=-13,y=67,z=0,distance=..6] run function lobby:chest_menu/start_hats
execute unless entity @s[x=-13,y=67,z=0,distance=..6] run function lobby:chest_menu/start


##Sound

playsound minecraft:entity.zombie.death master @s ~ ~ ~ 1 0