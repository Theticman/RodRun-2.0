# Was in space game
execute as @a[tag=In_lobby_space_game,scores={Disconnect=1..}] run function main:disconnect/was_in_space_game

# Was in boat race
execute as @a[tag=In_boat_race,scores={Disconnect=1..}] run function main:disconnect/was_in_boat_race

# Was in a team (but mode changed)
execute if score !Mode Options matches 0 as @a[tag=Blue,nbt={Tags:["In_lobby"]},scores={Disconnect=1..}] run function main:disconnect/was_in_a_team
execute if score !Mode Options matches 0 as @a[tag=White,nbt={Tags:["In_lobby"]},scores={Disconnect=1..}] run function main:disconnect/was_in_a_team
execute if score !Mode Options matches 0 as @a[tag=Red,nbt={Tags:["In_lobby"]},scores={Disconnect=1..}] run function main:disconnect/was_in_a_team

# Reconnect during game
execute if score !State Gamestate matches 2 as @a[tag=Starting,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby
execute if score !State Gamestate matches 2 as @a[tag=In_game,scores={Disconnect=1..}] run function main:disconnect/rejoin_game_init
execute if score !State Gamestate matches 2 as @a[tag=Ending,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby

# Reconnect else
execute unless score !State Gamestate matches 2 as @a[tag=Starting,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby
execute unless score !State Gamestate matches 2 as @a[tag=In_lobby_kill_effect_animation,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby
execute unless score !State Gamestate matches 2 as @a[tag=In_game,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby
execute unless score !State Gamestate matches 2 as @a[tag=Ending,scores={Disconnect=1..}] run function main:disconnect/send_back_to_lobby

# Always
scoreboard players reset @a[scores={Disconnect=1..}] AFK_timer

# Reset disconnect score
scoreboard players reset @a Disconnect