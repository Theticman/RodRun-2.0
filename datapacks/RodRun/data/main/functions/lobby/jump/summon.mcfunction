# Kill previous
kill @e[tag=lobby_jump]

# Summon new
summon minecraft:area_effect_cloud 26 42.3 -10 {CustomName:'{"text":"Start jump","color":"gray","italic":"true"}',Tags:["lobby_jump"],CustomNameVisible:1b,Duration:2147483647}
summon minecraft:area_effect_cloud 24 43.9 -10 {CustomName:'{"text":"SpeedRun Parkour","color":"yellow","underlined":"true"}',Tags:["lobby_jump"],CustomNameVisible:1b,Duration:2147483647}
summon minecraft:area_effect_cloud 49.5 85.5 -14.00 {CustomName:'{"text":"Finish","color":"yellow","underlined":"true"}',Tags:["lobby_jump"],CustomNameVisible:1b,Duration:2147483647}