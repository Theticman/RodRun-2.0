# Reset player
kill @e[type=minecraft:armor_stand,name=kill_effect_animation_travelling]
kill @e[type=minecraft:armor_stand,name=kill_effect_animation_stand]
kill @e[type=minecraft:experience_orb,x=27,y=6,z=-42,distance=..10]
gamemode adventure @a[tag=In_lobby_kill_effect_animation]
teleport @a[tag=In_lobby_kill_effect_animation] 25 21.1 -42 -90 0

# Score reset
tag @a[tag=In_lobby_kill_effect_animation] add Ready
tag @a[tag=In_lobby_kill_effect_animation] remove In_lobby_kill_effect_animation
 scoreboard players set !Timer Kill_effect_anim -1