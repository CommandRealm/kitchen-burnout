
# Setting the recipe bank

data remove storage recipe:bank {}
data merge storage recipe:bank {Recipe:[]}

data modify storage recipe:bank Recipe set value [{Id:0,Name:"salmon sashimi",Ingredients:["Cut Salmon"]},{Id:1,Name:"salmon sashimi with wasabi",Ingredients:["Cut Salmon","Wasabi"]},{Id:2,Name:"salmon nigiri",Ingredients:["Cut Salmon","Sushi Rice"]},{Id:3,Name:"salmon nigiri with wasabi",Ingredients:["Cut Salmon","Sushi Rice","Wasabi"]},{Id:4,Name:"pufferfish sashimi",Ingredients:["Cut Pufferfish"]},{Id:5,Name:"pufferfish sashimi with wasabi",Ingredients:["Cut Pufferfish","Wasabi"]},{Id:6,Name:"pufferfish nigiri",Ingredients:["Cut Pufferfish","Sushi Rice"]},{Id:7,Name:"pufferfish nigiri with wasabi",Ingredients:["Cut Pufferfish","Sushi Rice","Wasabi"]},{Id:8,Name:"avocado nigiri",Ingredients:["Avocado Slice","Sushi Rice"]},{Id:9,Name:"avocado nigiri with wasabi",Ingredients:["Avocado Slice","Sushi Rice","Wasabi"]}]

scoreboard players set $mod random 10