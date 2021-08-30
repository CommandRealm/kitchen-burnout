##Called to give us our offhand detector

clear @s carrot_on_a_stick
kill @e[type=item,nbt={Item:{id:"minecraft:carrot_on_a_stick"}},distance=..5]
item replace entity @s weapon.offhand with carrot_on_a_stick{HideFlags: 63, display: {Name: '[{"text":""}]'}, CustomModelData: 1}