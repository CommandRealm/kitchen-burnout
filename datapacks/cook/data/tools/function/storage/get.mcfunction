#> Takes in a storage path, a key, and a value and gets the value from that path from the key and stores it in result_key.
$data modify storage $(path) $(result_key) set from storage $(path) $(key)