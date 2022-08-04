# Get sound
scoreboard players operation $sound bell_sound = @a[distance=..5,limit=1,sort=random] bell_sound

# Commons
execute if score $sound bell_sound matches 1 run playsound block.note_block.bell master @a ~ ~ ~ .5 1
execute if score $sound bell_sound matches 2 run playsound block.bell.use master @a ~ ~ ~ .5 1
execute if score $sound bell_sound matches 3 run playsound entity.player.burp master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 4 run playsound entity.generic.explode master @a ~ ~ ~ .5 1
execute if score $sound bell_sound matches 5 run playsound entity.dolphin.play master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 6 run playsound entity.pig.ambient master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 7 run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 8 run playsound entity.cat.ambient master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 9 run playsound block.beacon.deactivate master @a ~ ~ ~ .5 1

# Epics
execute if score $sound bell_sound matches 10 run playsound entity.goat.screaming.prepare_ram master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 11 run playsound music_disc.pigstep master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 12 run playsound entity.evoker.prepare_wololo master @a ~ ~ ~ 1 1
## \/\/\/ CUSTOM SOUNDS \/\/\/
execute if score $sound bell_sound matches 13 run playsound custom.weeeeee master @a ~ ~ ~ .25 1
execute if score $sound bell_sound matches 14 run playsound custom.oof master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 15 run playsound custom.melon master @a ~ ~ ~ 1 1

# Legendary
execute if score $sound bell_sound matches 16 run playsound custom.pufferfish master @a ~ ~ ~ 1 1
execute if score $sound bell_sound matches 17 run playsound custom.wilhelm master @a ~ ~ ~ .25 1
execute if score $sound bell_sound matches 18 run playsound custom.cc master @a ~ ~ ~ 1 1

# Advancement Unlock
execute if score $sound bell_sound matches 19 run playsound custom.regs master @a ~ ~ ~ .025 1