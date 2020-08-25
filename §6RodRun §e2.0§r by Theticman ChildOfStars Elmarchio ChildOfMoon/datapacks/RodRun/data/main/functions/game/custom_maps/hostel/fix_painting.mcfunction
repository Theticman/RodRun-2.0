# Kill previous
kill @e[type=painting,tag=hostel_painting]

# Summon new
summon minecraft:painting 4 20 -500 {Facing:2b,Invulnerable:1b,Motive:"minecraft:wanderer",Tags:["hostel_painting"]}
summon minecraft:painting 4 20 -501 {Facing:0b,Invulnerable:1b,Motive:"minecraft:wanderer",Tags:["hostel_painting"]}
summon minecraft:painting 6 22 -506 {Facing:3b,Invulnerable:1b,Motive:"minecraft:graham",Tags:["hostel_painting"]}