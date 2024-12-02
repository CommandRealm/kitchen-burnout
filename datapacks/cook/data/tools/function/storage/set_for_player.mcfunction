#> Takes in a storage path and a value and inserts the name of the executor as the key with that value into the path.
setblock 0 0 0 barrel
loot replace block 0 0 0 container.0 loot tools:head
data modify storage tools:storage key set from block 0 0 0 Items[0].components.minecraft:profile.name
$data modify storage tools:storage path set value "$(path)"
$data modify storage tools:storage value set value $(value)
function tools:storage/set with storage tools:storage