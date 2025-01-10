# Called by a prep ingredient to create an interaction entity in its expanded position
# Takes in its expanded y position
$execute align xyz run summon interaction ~0.5 $(interaction_y) ~0.5 {Tags:["prep","prep_ingredient","die_between_games","interactable"],width:0.75f,height:0.0625f,response:true}