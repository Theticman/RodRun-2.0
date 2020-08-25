# Kill others
kill @e[tag=game_start_aec,type=area_effect_cloud]

# Summon new ones
summon minecraft:area_effect_cloud 8.5 22.2 -34.3 {CustomName:'{"text":"Game start"}',CustomNameVisible:1b,Duration:2000000000,Tags:["game_start_aec"]}
summon minecraft:area_effect_cloud 23.5 21.5 -24.5 {CustomName:'{"text":"Game start"}',CustomNameVisible:1b,Duration:2000000000,Tags:["game_start_aec","Lobby_option_aec"]}