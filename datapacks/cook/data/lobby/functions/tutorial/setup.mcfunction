# Kill old stuff
tp @e[type=!player,tag=tutorial] 0 -10000 0
kill @e[type=!player,tag=tutorial]

# Enable glowing
scoreboard players operation $glowing_t settings = $glowing settings
scoreboard players set $glowing settings 0

# Add new stations
execute positioned 18 67 -7 run function game:stations/stovetop/create
execute positioned 19 67 -7 run function game:stations/stovetop/create

execute positioned 18 67 -1 run function game:stations/cutting_board/create

execute positioned 22 66 -3 run function game:stations/ingredient_raw_hamburger/create
execute positioned 17 67 -1 run function game:stations/ingredient_lettuce_head/create
execute positioned 14 67 -2 run function game:stations/ingredient_bun/create

execute positioned 6 68 -3 run function game:stations/prep/create
execute positioned 5 68 -3 run function game:stations/bell/create

execute positioned 6 67 -2 run function game:stations/customer_line/create_north

# Fix glowing
scoreboard players operation $glowing settings = $glowing_t settings
scoreboard players reset $glowing_t settings

# Give needed tag and remove old one
tag @e[tag=die_between_games,x=13,y=67,z=-3,distance=..20] add tutorial
tag @e[tag=die_between_games,tag=tutorial,x=13,y=67,z=-3,distance=..20] remove die_between_games

# Generate the recipe for the tutorial
data remove storage tutorial {}
data merge storage tutorial {Recipe:{Id:1,Name:"hamburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf"]}}