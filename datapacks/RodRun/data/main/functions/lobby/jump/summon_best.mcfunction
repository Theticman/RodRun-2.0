# Kill previous
kill @e[tag=jump_lobby_best]

# Summon new
summon minecraft:armor_stand 32 43 -11 {Tags:["jump_lobby_best","jump_lobby_best_player"],ShowArms:1b,Rotation:[80f],CustomName:'{"text":"???","color":"gray","italic":"true"}',NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{id:"minecraft:golden_boots",Count:1b},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Question"}}],NoBasePlate:1b}
summon minecraft:armor_stand 32 43.25 -11 {Tags:["jump_lobby_best","jump_lobby_best_time"],ShowArms:1b,Rotation:[80f],CustomName:'{"text":"???","color":"gray","italic":"true"}',NoGravity:1b,DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}
summon minecraft:armor_stand 32 43.7 -11 {Tags:["jump_lobby_best"],CustomName:'{"text":"Best time","color":"yellow","underlined":"true"}',NoGravity:1b,DisabledSlots:4144959,Invisible:1b,NoBasePlate:1b}