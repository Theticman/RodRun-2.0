# Teleport mine to hitself
execute as @e[name=game_mine,type=armor_stand] at @s positioned ~ ~-.88 ~ unless entity @e[name=game_mine_button,distance=..0.00000000001,type=armor_stand] run function main:game/powerups/mine/mine_teleport
execute as @e[name=game_mine_button,type=armor_stand] at @s positioned ~ ~.88 ~ unless entity @e[name=game_mine,distance=..0.00000000001,type=armor_stand] run function main:game/powerups/mine/mine_teleport_2

# Particles
execute as @e[name=game_mine,type=minecraft:armor_stand] at @s if entity @a[tag=In_game_playing,distance=..10] run function main:game/powerups/mine/particles

# Mine kill
execute at @a[tag=In_game_playing] as @e[type=armor_stand,name=game_mine,distance=..1] run function main:game/powerups/mine/kill_test_select

# Mine alive timer
function main:game/powerups/mine/timer_alive