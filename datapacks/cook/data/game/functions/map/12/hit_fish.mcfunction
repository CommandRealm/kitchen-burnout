playsound entity.enderman.teleport master @a[distance=..500] ~ ~ ~ 1000 2
playsound entity.arrow.hit_player master @a[gamemode=adventure,distance=..500,advancements={game:player_hit_trident=true}] ~ ~ ~ 1000 1
advancement revoke @a only game:player_hit_trident
tag @s add warp_fish
kill @e[type=trident,distance=..5,limit=1,sort=nearest]