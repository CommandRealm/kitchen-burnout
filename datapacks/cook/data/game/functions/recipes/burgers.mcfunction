
# Setting the recipe bank

data remove storage recipe:bank {}
data merge storage recipe:bank {Recipe:[]}

data modify storage recipe:bank Recipe set value [{id:0,Name:"plain hamburger",Ingredients:["Hamburger","Hamburger Bun"]},{id:1,Name:"hamburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf"]},{id:2,Name:"hamburger with tomato",Ingredients:["Hamburger","Hamburger Bun","Tomato Slice"]},{id:3,Name:"hamburger with lettuce and tomato",Ingredients:["Hamburger","Hamburger Bun","Lettuce Leaf","Tomato Slice"]},{id:4,Name:"plain cheeseburger",Ingredients:["Hamburger","Hamburger Bun","Cheese"]},{id:5,Name:"cheeseburger with lettuce",Ingredients:["Hamburger","Hamburger Bun","Cheese","Lettuce Leaf"]},{id:6,Name:"cheeseburger with tomato",Ingredients:["Hamburger","Hamburger Bun","Cheese","Tomato Slice"]},{id:7,Name:"cheeseburger with lettuce and tomato",Ingredients:["Hamburger","Hamburger Bun","Cheese","Lettuce Leaf","Tomato Slice"]}]

scoreboard players set $mod random 8