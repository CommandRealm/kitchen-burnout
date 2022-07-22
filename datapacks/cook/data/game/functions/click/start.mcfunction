# Called when we right click.
scoreboard players reset @s click
scoreboard players set @s click_cooldown 5
scoreboard players set $calculate calculate 43
execute unless entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^0.75 run function game:click/raycast
execute if entity @s[nbt={SelectedItemSlot:8}] anchored eyes positioned ^ ^ ^0.75 run function game:click/specific/click_trash_can