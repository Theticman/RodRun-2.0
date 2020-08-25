# Detect walking on carrots
#function main:lobby/plantations/walk_on_carrots

# Detect carrots being crushed
#execute as @e[name=carrots_broke_detection,type=area_effect_cloud] at @s if block ~ ~-1 ~ dirt run function main:lobby/plantations/crushed_carrots

# Detect crushed carrot
execute as @a[tag=In_lobby,gamemode=adventure] at @s if block ~ 1 ~ orange_wool if block ~ ~-.5 ~ dirt align xyz positioned ~.5 ~.2 ~.5 unless entity @e[type=area_effect_cloud,name=crushed_carrots_waiting,distance=..0.5] run function main:lobby/plantations/crushed_carrots

# Wait for player to leave the crushed carrots
execute as @e[name=crushed_carrots_waiting,type=area_effect_cloud] at @s unless entity @a[distance=..2] run function main:lobby/plantations/init_carrots_animation

# Animation
execute as @e[name=carrots_animation,type=area_effect_cloud] at @s run function main:lobby/plantations/carrots_animation