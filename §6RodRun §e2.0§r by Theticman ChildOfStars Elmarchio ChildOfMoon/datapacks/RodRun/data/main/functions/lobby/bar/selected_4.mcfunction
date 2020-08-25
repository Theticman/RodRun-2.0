# Selected 4
execute at @s run playsound minecraft:entity.item.pickup master @s

# Give to player
clear @s player_head{choice:4}
replaceitem entity @s container.1 minecraft:potion{display:{Name:'{"text":"???"}'},CustomPotionEffects:[{Id:2b,Amplifier:1b,Duration:400,ShowParticles:0b},{Id:9b,Amplifier:0b,Duration:400,ShowParticles:0b}]} 1

# Particles
execute at @e[type=minecraft:armor_stand,name=choice_4] run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.01 10 normal

# Kill others choices
kill @e[type=minecraft:armor_stand,tag=bar_glass_stand]

# Reset scores
scoreboard players set !State Lobby_bar 3
scoreboard players set !Timer Lobby_bar -1001