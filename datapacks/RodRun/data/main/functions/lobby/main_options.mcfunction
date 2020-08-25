function main:lobby/options/main_click_detection
function main:lobby/options/main_mode
execute if score !Mode Options matches 1 run function main:lobby/options/main_teams
execute if score !Change_option Options matches 1.. run function main:lobby/options/change_option_timer

# Teleport villager
execute as @e[type=minecraft:armor_stand,tag=Villager1_1] at @s run teleport @s ~ ~ ~ ~10 ~
execute as @e[type=minecraft:armor_stand,tag=Villager1] at @s run teleport @s ~ ~ ~ ~-10 ~

# Reset sneaking
scoreboard players reset @a Sneaking

# Display options
execute unless entity @a[x=16,y=21,z=-34,dx=14,dy=2,dz=19] as @e[type=villager,tag=Lobby_option_villager] run data merge entity @s {CustomNameVisible:0b}
execute unless entity @a[x=16,y=21,z=-34,dx=14,dy=2,dz=19] as @e[type=area_effect_cloud,tag=Lobby_option_aec] run data merge entity @s {CustomNameVisible:0b}
execute as @a[x=16,y=21,z=-34,dx=14,dy=2,dz=19] run function main:lobby/options/display_options