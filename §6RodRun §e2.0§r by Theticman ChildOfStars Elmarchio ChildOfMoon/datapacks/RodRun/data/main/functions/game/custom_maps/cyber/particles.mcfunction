# Main tube
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}
summon minecraft:area_effect_cloud -500 75 -500 {CustomName:"{\"text\":\"cyber_main_tube_particle\"}"}

spreadplayers -500 -500 0 4 false @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud]
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-55 ~ 0 0.9 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-40 ~ 0 0.9 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-25 ~ 0 0.9 0 1 0 normal @a
kill @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud,limit=5]

# Corner SE
spreadplayers -483 -483 0 1 false @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud,limit=1]
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-55 ~ 0 1.4 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-40 ~ 0 1.4 0 1 0 normal @a

# Corner SW
spreadplayers -517 -483 0 1 false @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud,limit=1]
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-55 ~ 0 1.4 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-40 ~ 0 1.4 0 1 0 normal @a

# Corner NW
spreadplayers -517 -517 0 1 false @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud,limit=1]
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-55 ~ 0 1.4 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-40 ~ 0 1.4 0 1 0 normal @a

# Corner NE
spreadplayers -483 -517 0 1 false @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud,limit=1]
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-55 ~ 0 1.4 0 1 0 normal @a
execute as @e[name=cyber_main_tube_particle,type=minecraft:area_effect_cloud] at @s run particle minecraft:cloud ~ ~-40 ~ 0 1.4 0 1 0 normal @a

# Main tube player
execute as @a[gamemode=adventure,scores={Player_y=..65}] at @s if block ~ 75 ~ minecraft:black_stained_glass run particle minecraft:cloud ~ ~ ~ 0.1 0.05 0.1 0.1 10 normal @a
# Corne SE player
execute as @a[gamemode=adventure,x=-284,y=24,z=16,dx=2,dy=20,dz=2] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.05 0.1 0.1 10 normal @a
# Corne SW player
execute as @a[gamemode=adventure,x=-318,y=24,z=16,dx=2,dy=20,dz=2] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.05 0.1 0.1 10 normal @a
# Corne NW player
execute as @a[gamemode=adventure,x=-318,y=24,z=-18,dx=2,dy=20,dz=2] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.05 0.1 0.1 10 normal @a
# Corne NE player
execute as @a[gamemode=adventure,x=-284,y=24,z=-18,dx=2,dy=20,dz=2] at @s run particle minecraft:cloud ~ ~ ~ 0.1 0.05 0.1 0.1 10 normal @a
