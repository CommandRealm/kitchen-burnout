# Called to add an ingredient's (id) display name to the current recipe's title
$data modify storage game:serving/recipe title append value {"translate":"ingredient.$(id).$(count)","color":"gold","font":"uniform","bold":true}
