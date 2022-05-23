# Give ingredient
execute if entity @s[tag=hamburger_bun] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1,limit=1,sort=nearest] ingredient 1
execute if entity @s[tag=cheese] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1,limit=1,sort=nearest] ingredient 2
execute if entity @s[tag=lettuce_head] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1,limit=1,sort=nearest] ingredient 3
execute if entity @s[tag=tomato] run scoreboard players set @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1,limit=1,sort=nearest] ingredient 5

advancement grant @a[gamemode=adventure,tag=playing,scores={map=17,ingredient=0},distance=..1,limit=1,sort=nearest] only game:inventory_changed

# Remove item
kill @s