# Called to create a prep station
execute align xyz positioned ~ -64 ~ run kill @e[tag=prep,dx=0,dy=384,dz=0]
setblock ~ ~ ~ oak_pressure_plate[powered=true]

execute align xyz run summon interaction ~0.5 ~ ~0.5 { \
    Tags:["prep","prep_station","station","die_between_games","interactable"], \
    width:1.0f, height:0.1f, response:true, data: { \
        ingredients: [], \
        formatted_ingredients: [], \
    }}

# Set starting values
scoreboard players set @n[tag=prep_station] prep_display 0
scoreboard players set @n[tag=prep_station] prep_index -1

# Store the base position of the prep station
execute as @n[tag=prep_station] store result score @s prep_position run data get entity @s Pos[1] 100

# Get a random starting recipe
execute as @n[tag=prep_station] run function game:serving/get_new_random