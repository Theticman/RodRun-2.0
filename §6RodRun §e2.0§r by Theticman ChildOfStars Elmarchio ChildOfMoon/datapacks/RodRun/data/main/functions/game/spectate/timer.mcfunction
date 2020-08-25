# Timer add 1
scoreboard players add @a[tag=In_game_spectating] Spectate_timer 1
scoreboard players reset @a[tag=In_game_spectating,scores={Spectate_timer=1201..}] Spectate_timer

# Enable trigger
scoreboard players enable @a[tag=In_game_spectating] Spectate

# Reset if wrong
execute as @a[tag=In_game_spectating] unless score @s Spectate matches 0 run scoreboard players set @s 0

# Tellraw
tellraw @a[tag=In_game_spectating,scores={Spectate_timer=1200}] ["",{"text":"\n[","color":"dark_gray"},{"text":"Game","bold":true,"color":"gold"},{"text":"] ","color":"dark_gray"},{"text":"Currently spectating the game!","color":"yellow"},{"text":"\n"},{"text":"\u27a0","color":"gold","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":" ","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"Teleport to lobby","color":"yellow","clickEvent":{"action":"run_command","value":"/trigger Spectate set 2020"},"hoverEvent":{"action":"show_text","value":"§6Click §eto teleport to §6lobby§e!"}},{"text":"\n "}]