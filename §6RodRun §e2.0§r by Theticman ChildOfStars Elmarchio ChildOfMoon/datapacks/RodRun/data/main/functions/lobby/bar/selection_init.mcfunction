# Change state
execute if score !State Lobby_bar matches 0 at @s run playsound minecraft:entity.villager.celebrate master @s
execute if score !State Lobby_bar matches 0 run scoreboard players set !State Lobby_bar 1
