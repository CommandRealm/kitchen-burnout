
# Setting the recipe bank

data remove storage recipe:bank {}
data merge storage recipe:bank {Recipe:[]}

data modify storage recipe:bank Recipe set value [{id:0,Name:"salmon sashimi",Ingredients:["Cut Salmon"]},{id:1,Name:"salmon sashimi with wasabi",Ingredients:["Cut Salmon","Wasabi"]},{id:2,Name:"salmon nigiri",Ingredients:["Cut Salmon","Sushi Rice"]},{id:3,Name:"salmon nigiri with wasabi",Ingredients:["Cut Salmon","Sushi Rice","Wasabi"]},{id:4,Name:"pufferfish sashimi",Ingredients:["Cut Pufferfish"]},{id:5,Name:"pufferfish sashimi with wasabi",Ingredients:["Cut Pufferfish","Wasabi"]},{id:6,Name:"pufferfish nigiri",Ingredients:["Cut Pufferfish","Sushi Rice"]},{id:7,Name:"pufferfish nigiri with wasabi",Ingredients:["Cut Pufferfish","Sushi Rice","Wasabi"]},{id:8,Name:"avocado nigiri",Ingredients:["Avocado Slice","Sushi Rice"]},{id:9,Name:"avocado nigiri with wasabi",Ingredients:["Avocado Slice","Sushi Rice","Wasabi"]}]

scoreboard players set $mod random 10