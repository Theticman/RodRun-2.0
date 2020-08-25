execute as @e[type=minecraft:armor_stand,tag=lobby_friend_astroce] at @s run particle minecraft:effect ~ ~2 ~ 0.2 .1 .2 0 2 normal @a

schedule clear main:lobby/friends/drunk_particle
schedule function main:lobby/friends/drunk_particle 5s