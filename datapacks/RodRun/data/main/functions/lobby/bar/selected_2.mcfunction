# Selected 2
execute at @s run playsound minecraft:entity.item.pickup master @s

# Give to player
clear @s player_head{choice:2}
replaceitem entity @s container.1 golden_apple 1

# Particles
execute at @e[type=minecraft:armor_stand,name=choice_2] run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.01 10 normal

# Kill others choices
kill @e[type=minecraft:armor_stand,tag=bar_glass_stand]

# Reset scores
scoreboard players set !State Lobby_bar 3
scoreboard players set !Timer Lobby_bar -1001