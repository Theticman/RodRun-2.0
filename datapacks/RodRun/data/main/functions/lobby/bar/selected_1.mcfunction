# Selected 1
execute at @s run playsound minecraft:entity.item.pickup master @s

# Give to player
clear @s player_head{choice:1}
replaceitem entity @s container.1 minecraft:player_head{Tags:["cup_of_coffee"],display:{Name:'{"text":"Cup of Coffee"}'},SkullOwner:{Id:"1a9a32c6-ca4a-4ed6-b854-41067cd1318f",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWRjN2RkMWRlNjY0NzhlN2JiYTM1ZDg1NDc2MTI5N2JmYzdjZTMxNDJkMWJiOTg1MWM0NjQxMjMxOWVlIn19fQ=="}]}}}

# Particles
execute at @e[type=minecraft:armor_stand,name=choice_1] run particle minecraft:cloud ~ ~1 ~ 0 0 0 0.01 10 normal

# Kill others choices
kill @e[type=minecraft:armor_stand,tag=bar_glass_stand]

# Reset scores
scoreboard players set !State Lobby_bar 3
scoreboard players set !Timer Lobby_bar -1001