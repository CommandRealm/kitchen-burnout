
# Setting the recipe bank

data remove storage recipe:bank {}
data merge storage recipe:bank {Recipe:[]}

data modify storage recipe:bank Recipe set value [{Id:0,Name:"plain hamburger",Ingredients:["Hamburger","Hamburger Bun"]},{Id:1,Name:"hamburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf"]},{Id:2,Name:"hamburger with tomato",Ingredients:["Hamburger","Hamburger Bun","Tomato Slice"]},{Id:3,Name:"hamburger with lettuce and tomato",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf","Tomato Slice"]},{Id:4,Name:"plain cheeseburger",Ingredients:["Hamburger","Hamburger Bun","Cheese"]},{Id:5,Name:"cheeseburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Cheese","Lettuce Leaf"]},{Id:6,Name:"cheeseburger with tomato",Ingredients:["Hamburger","Hamburger Bun","Cheese","Tomato Slice"]},{Id:7,Name:"cheeseburger with lettuce and tomato",Ingredients:["Hamburger","Hamburger Bun","Cheese","Lettuce Leaf","Tomato Slice"]}]

scoreboard players set $mod random 8