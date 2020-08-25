# Add timer 1
scoreboard players add @e[name=game_mine_tnt,type=minecraft:armor_stand] Mine_timer_alive 1

# Rotate mine
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=1..}] at @s run teleport @s ~ ~ ~ ~1 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=400..}] at @s run teleport @s ~ ~ ~ ~1 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=800..}] at @s run teleport @s ~ ~ ~ ~1 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=1200..}] at @s run teleport @s ~ ~ ~ ~2 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=1600..}] at @s run teleport @s ~ ~ ~ ~2 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=2000..}] at @s run teleport @s ~ ~ ~ ~3 ~
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=2200..}] at @s run teleport @s ~ ~ ~ ~3 ~

# Kill mine
execute as @e[name=game_mine_tnt,type=minecraft:armor_stand,scores={Mine_timer_alive=2400..}] run function main:game/powerups/mine/kill_mine