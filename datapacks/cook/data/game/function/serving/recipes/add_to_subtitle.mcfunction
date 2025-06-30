# Called to add an ingredient's (id) display name to the current recipe's subtitle
$data modify storage game:serving/recipe subtitle append value {"translate":"ingredient.$(id).$(count)","color":"gold","font":"uniform","bold":true}
