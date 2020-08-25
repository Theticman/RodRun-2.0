# Reset gamestate
scoreboard players set !State Space_game 0

# Place best score
team leave @a[tag=In_lobby_space_game]
execute if score !Score Space_game > !Best Space_game run data merge block 27 17 -15 {Text1:'[{"text":""},{"text":"Leader","color":"yellow","bold":"true"},{"text":":","color":"yellow"}]',Text2:'{"selector":"@a[tag=In_lobby_space_game]","color":"gold"}',Text3:'["",{"text":"with ","color":"yellow"},{"score":{"name":"!Score","objective":"Space_game"},"color":"gold"},{"text":" points.","color":"yellow"}]',Text4:'[{"text":"(","color":"gray","clickEvent":{"action":"run_command","value":"function main:lobby/space_game/my_score"}},{"text":"Click","color":"white"},{"text":")","color":"gray"}]'}
execute if score !Score Space_game > !Best Space_game run scoreboard players operation !Best Space_game = !Score Space_game
execute as @a[tag=In_lobby_space_game] run function main:lobby/others/set_team

# Tellraw
tellraw @a[tag=In_lobby_space_game] [{"text":"Game over! Your score is: ","color":"yellow"},{"score":{"name":"!Score","objective":"Space_game"},"color":"gold"},{"text":"."}]

# Save score
execute unless score @a[tag=In_lobby_space_game,limit=1] Space_game_best matches 0.. run scoreboard players set @a[tag=In_lobby_space_game] Space_game_best 0
execute if score !Score Space_game > @a[tag=In_lobby_space_game,limit=1] Space_game_best run scoreboard players operation @a[tag=In_lobby_space_game] Space_game_best = !Score Space_game

# Reset game
scoreboard players set !Score Space_game 0
scoreboard players set !Timer Space_game -1
kill @e[name=space_game_player,type=armor_stand]
kill @e[name=space_game_asteroid,type=armor_stand]

# Reset builds
fill 26 18 -25 26 17 -16 air
fill 26 16 -25 26 16 -16 air destroy

setblock 29 18 -23 stone_button[facing=west]
setblock 29 18 -17 stone_button[facing=west]
setblock 28 17 -20 air

fill 27 18 -19 27 18 -21 air
fill 29 19 -22 29 17 -18 air

setblock 28 16 -20 oak_wall_sign[facing=west]{Text1:'{"text":"-==oOo==-","clickEvent":{"action":"run_command","value":"function main:lobby/space_game/init_space_game"},"color":"dark_gray"}',Text2:'{"text":"Play game","color":"yellow"}',Text3:'["",{"text":"(","color":"gray"},{"text":"Click","color":"white"},{"text":")","color":"gray"}]',Text4:'{"text":"-==oOo==","color":"dark_gray"}'}

# Player managment managment
execute as @a[tag=In_lobby_space_game] run function space_game:stop
teleport @a[tag=In_lobby_space_game] 20 16 -20 -90 0
execute as @a[tag=In_lobby_space_game] at @s run playsound minecraft:entity.player.death master @s
tag @a[tag=In_lobby_space_game] add Ready
tag @a[tag=In_lobby_space_game] remove In_lobby_space_game