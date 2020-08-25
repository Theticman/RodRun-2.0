# Kill near
kill @e[tag=island_teleport_back_display,distance=..3,type=area_effect_cloud]

# summon stay out of water
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"Stay out of water!","color":"red","bold":true}',CustomNameVisible:1b,Duration:30,Tags:["island_teleport_back_display"]}

# Summon AEC
summon minecraft:area_effect_cloud ~ ~ ~ {CustomName:'{"text":"island_teleport_back"}'}

# Move to last safe location
execute store result entity @e[name=island_teleport_back,limit=1,type=minecraft:area_effect_cloud] Pos[0] double 1 run scoreboard players get @s Player_x
execute store result entity @e[name=island_teleport_back,limit=1,type=minecraft:area_effect_cloud] Pos[1] double .1 run scoreboard players get @s Player_y
execute store result entity @e[name=island_teleport_back,limit=1,type=minecraft:area_effect_cloud] Pos[2] double 1 run scoreboard players get @s Player_z

# Teleport player
tag @s add Teleport_back
execute as @e[name=island_teleport_back,limit=1] at @s run teleport @p[tag=Teleport_back,limit=1] ~.5 ~ ~.5
tag @s remove Teleport_back

# Playsound
stopsound @s master minecraft:entity.villager.no
playsound minecraft:entity.villager.no master @s

# Effect
#effect give @s minecraft:slowness 1 10 true

# Kill entity
kill @e[name=island_teleport_back,limit=1,type=minecraft:area_effect_cloud]