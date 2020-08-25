# Speed
execute if score !Deathmatch Reset matches ..0 run effect give @a[tag=In_game_playing] minecraft:speed 99999 0 true
execute if score !Deathmatch Reset matches ..0 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 0 true
execute if score !Deathmatch Reset matches ..-600 run effect give @a[tag=In_game_playing] minecraft:speed 99999 1 true
execute if score !Deathmatch Reset matches ..-600 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 1 true
execute if score !Deathmatch Reset matches ..-1200 run effect give @a[tag=In_game_playing] minecraft:speed 99999 2 true
execute if score !Deathmatch Reset matches ..-1200 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 2 true
execute if score !Deathmatch Reset matches ..-1800 run effect give @a[tag=In_game_playing] minecraft:speed 99999 3 true
execute if score !Deathmatch Reset matches ..-1800 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 3 true
execute if score !Deathmatch Reset matches ..-2400 run effect give @a[tag=In_game_playing] minecraft:speed 99999 4 true
execute if score !Deathmatch Reset matches ..-2400 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 4 true
execute if score !Deathmatch Reset matches ..-3000 run effect give @a[tag=In_game_playing] minecraft:speed 99999 5 true
execute if score !Deathmatch Reset matches ..-3000 run effect give @a[tag=In_game_respawning] minecraft:speed 99999 5 true

# Glowing
execute if score !Deathmatch Reset matches ..0 run effect give @a[tag=!In_game_tyrolean,nbt={Tags:["In_game_playing"]}] minecraft:glowing 99999 0 true
