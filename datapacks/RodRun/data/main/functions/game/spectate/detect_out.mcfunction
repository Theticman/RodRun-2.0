# Detect if out y positions
execute as @a[tag=In_game_spectating] store result score @s Player_y run data get entity @s Pos[1] 1

execute if score !Map OptionsInGame matches 2 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..40 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 3 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..25 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 4 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..80 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 5 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..26 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 6 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..73 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 7 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..80 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 8 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..200 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 9 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..31 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 10 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..50 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 11 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..70 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 12 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..17 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 13 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 0..70 run tag @s add Spectator_out
execute if score !Map OptionsInGame matches 14 run execute as @a[tag=In_game_spectating] unless score @s Player_y matches 1..256 run tag @s add Spectator_out

# Detect if barrier block is still here
execute at @s unless block ~ 0 ~ minecraft:barrier run tag @s add Spectator_out

# Manage
execute as @a[tag=Spectator_out] run tellraw @s ["",{"text":"\n[","color":"dark_gray"},{"text":"Game","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Please do not try to leave the map! ","color":"yellow"},{"text":"\n"},{"text":"\u27a0","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§fClick to teleport to §elobby§f!"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§fClick to teleport to §elobby§f!"}},{"text":"Teleport to lobby","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§fClick to teleport to §elobby§f!"}},{"text":"\n"}]
execute as @a[tag=Spectator_out] run function main:game/spectate/teleport
execute as @a[tag=Spectator_out] at @s run playsound minecraft:entity.villager.no master @s
tag @a remove Spectator_out