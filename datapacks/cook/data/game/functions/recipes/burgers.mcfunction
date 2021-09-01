
# Setting the recipe bank

data remove storage recipe:bank {}
data merge storage recipe:bank {Recipe:[]}

data modify storage recipe:bank Recipe set value [{Name:"plain hamburger",Ingredients:["Hamburger","Hamburger Bun"],Display_Ingredients:["Hamburger",", Hamburger Bun"]},{Name:"hamburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Lettuce Leaf"]},{Name:"hamburger with tomatoes",Ingredients:["Hamburger","Hamburger Bun","Tomato Slice"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Tomato Slice"]},{Name:"hamburger with lettuce and tomatoes",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf","Tomato Slice"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Lettuce Leaf",", Tomato Slice"]},{Name:"plain cheeseburger",Ingredients:["Hamburger","Hamburger Bun","Cheese"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Cheese"]},{Name:"cheeseburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Cheese","Lettuce Leaf"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Cheese",", Lettuce Leaf"]},{Name:"cheeseburger with tomatoes",Ingredients:["Hamburger","Hamburger Bun","Cheese","Tomato Slice"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Cheese",", Tomato Slice"]},{Name:"cheeseburger with lettuce and tomato",Ingredients:["Hamburger","Hamburger Bun","Cheese","Letuce Leaf","Tomato Slice"],Display_Ingredients:["Hamburger",", Hamburger Bun",", Cheese",", Lettuce Leaf",", Tomato Slice"]}]

scoreboard players set $mod random 8