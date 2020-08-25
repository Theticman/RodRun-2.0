# Start timer for everryone!
execute as @a[tag=!In_lobby_afk] run function main:lobby/afk/timer

# Init afk
execute as @a[tag=In_lobby,scores={AFK_timer=2400..}] unless entity @s[tag=In_lobby_informations] unless entity @s[tag=In_lobby_jump] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] run function main:lobby/afk/init

# AFK
execute as @a[tag=In_lobby_afk] run function main:lobby/afk/afk

# AFK animation
execute as @e[type=minecraft:armor_stand,tag=AFK_armor] run function main:lobby/afk/afk_animation

# Reteleport bee
execute as @e[type=bee,tag=AFK_bee,x=3,y=46,z=-38,distance=50..] run teleport @s 3 46 -38

# Kill bee if no players inside
execute as @e[type=armor_stand,tag=AFK_armor] at @s unless entity @a[tag=In_lobby_afk,distance=..1] run kill @s