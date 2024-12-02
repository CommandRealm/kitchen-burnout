#> Takes in a storage path and a value and gets the value from that path from the key of the executor's name.
setblock 0 0 0 barrel
loot replace block 0 0 0 container.0 loot tools:head
data modify storage tools:storage key set from block 0 0 0 Items[0].components.minecraft:profile.name
$data modify storage tools:storage path set value "$(path)"
$data modify storage tools:storage result_key set value $(result_key)
function tools:storage/get with storage tools:storage