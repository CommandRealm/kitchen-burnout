##Called when the first map is being started.
tp @a[tag=playing,scores={map=1}] 991 61 505 225 5
execute at @a[tag=playing] run forceload add ~30 ~30 ~-30 ~-30


##Recipe set
scoreboard players set $recipe game 1