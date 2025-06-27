# Uses a bidirectional subset check to check if the order matches the recipe. (Shoutout to my Math for Computer Science class) 
#> Takes in the recipe and order arrays of ingredients.
$execute unless data storage game:serving/orders {recipe:$(order)} run return fail
$execute unless data storage game:serving/orders {order:$(recipe)} run return fail
# If we made it through both checks, the order matches the recipe!
return 1