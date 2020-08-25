# Timer add time
scoreboard players add !Timer Space_game 1

# teleport player
#teleport @a[tag=In_lobby_space_game] 27 16 -20

# Instructions
execute if score !Timer Space_game matches 1 run setblock 29 17 -20 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"-==oOo==-","clickEvent":{"action":"run_command","value":"scoreboard players set !Timer Space_game 244"},"color":"dark_gray"}',Text2:'["",{"text":"Click ","color":"gold"},{"text":"here","color":"yellow"}]',Text3:'{"text":"to start","color":"yellow"}',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}

execute if score !Timer Space_game matches 5 run setblock 29 19 -20 minecraft:oak_wall_sign[facing=west]{Text1:'["",{"text":"Instructions","color":"gold"},{"text":":","color":"yellow"}]'}
execute if score !Timer Space_game matches 10 run data merge block 29 19 -20 {Text1:'["",{"text":"Instructions","color":"gold"},{"text":":","color":"yellow"}]',Text2:""}
execute if score !Timer Space_game matches 15 run data merge block 29 19 -20 {Text1:'["",{"text":"Instructions","color":"gold"},{"text":":","color":"yellow"}]',Text2:"",Text3:'{"text":"This is a fast","color":"yellow"}'}
execute if score !Timer Space_game matches 20 run data merge block 29 19 -20 {Text1:'["",{"text":"Instructions","color":"gold"},{"text":":","color":"yellow"}]',Text2:"",Text3:'{"text":"This is a fast","color":"yellow"}',Text4:'{"text":" mini-game.","color":"yellow"}'}


execute if score !Timer Space_game matches 25 run setblock 29 18 -21 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"You will be","color":"yellow"}'}
execute if score !Timer Space_game matches 30 run data merge block 29 18 -21 {Text1:'{"text":"You will be","color":"yellow"}',Text2:'{"text":"represented by","color":"yellow"}'}
execute if score !Timer Space_game matches 35 run data merge block 29 18 -21 {Text1:'{"text":"You will be","color":"yellow"}',Text2:'{"text":"represented by","color":"yellow"}',Text3:'{"text":"your head at the","color":"yellow"}'}
execute if score !Timer Space_game matches 40 run data merge block 29 18 -21 {Text1:'{"text":"You will be","color":"yellow"}',Text2:'{"text":"represented by","color":"yellow"}',Text3:'{"text":"your head at the","color":"yellow"}',Text4:'{"text":"bottom of the TV.","color":"yellow"}'}


execute if score !Timer Space_game matches 45 run setblock 29 18 -20 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"Move left and","color":"yellow"}'}
execute if score !Timer Space_game matches 50 run data merge block 29 18 -20 {Text1:'{"text":"Move left and","color":"yellow"}',Text2:'{"text":"right to avoid","color":"yellow"}'}
execute if score !Timer Space_game matches 55 run data merge block 29 18 -20 {Text1:'{"text":"Move left and","color":"yellow"}',Text2:'{"text":"right to avoid","color":"yellow"}',Text3:'{"text":"asteroids coming","color":"yellow"}'}
execute if score !Timer Space_game matches 60 run data merge block 29 18 -20 {Text1:'{"text":"Move left and","color":"yellow"}',Text2:'{"text":"right to avoid","color":"yellow"}',Text3:'{"text":"asteroids coming","color":"yellow"}',Text4:'{"text":"from the top.","color":"yellow"}'}


execute if score !Timer Space_game matches 65 run setblock 29 18 -19 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"Survive as long","color":"yellow"}'}
execute if score !Timer Space_game matches 70 run data merge block 29 18 -19 {Text1:'{"text":"Survive as long","color":"yellow"}',Text2:'{"text":"as you can to","color":"yellow"}'}
execute if score !Timer Space_game matches 75 run data merge block 29 18 -19 {Text1:'{"text":"Survive as long","color":"yellow"}',Text2:'{"text":"as you can to","color":"yellow"}',Text3:'{"text":"beat the top","color":"yellow"}'}
execute if score !Timer Space_game matches 80 run data merge block 29 18 -19 {Text1:'{"text":"Survive as long","color":"yellow"}',Text2:'{"text":"as you can to","color":"yellow"}',Text3:'{"text":"beat the top","color":"yellow"}',Text4:'{"text":"score!","color":"yellow"}'}

# Kill effect Place
execute if score !Timer Space_game matches 100 run setblock 29 17 -22 minecraft:oak_wall_sign[facing=west]{Text1:'{"text":"-==oOo==-","clickEvent":{"action":"run_command","value":"function main:lobby/others/found_kill_effects/number_2"},"color":"dark_gray"}',Text2:'["",{"text":"New","color":"gold"},{"text":" Kill Effect","color":"yellow"}]',Text3:'["",{"text":"(","color":"dark_gray"},{"text":"Click","color":"gold"},{"text":")","color":"dark_gray"}]',Text4:'{"text":"-==oOo==-","color":"dark_gray"}'}
execute if score !Timer Space_game matches 200 run setblock 29 17 -22 air


# Summon player
execute if score !Timer Space_game matches 250 run summon minecraft:armor_stand 29.9 16.5 -19.5 {Invisible:1b,Rotation:[90f],NoGravity:1b,NoBasePlate:1b,Small:1b,ShowArms:1b,CustomName:"{\"text\":\"space_game_player\"}",DisabledSlots:4144959}
execute if score !Timer Space_game matches 250 as @a[tag=In_lobby_space_game] run loot replace entity @e[name=space_game_player,type=minecraft:armor_stand] armor.head loot main:uuidtest

# Remove signs
execute if score !Timer Space_game matches 250 run fill 29 19 -22 29 17 -18 air destroy
execute if score !Timer Space_game matches 250 run setblock 28 17 -20 minecraft:barrier

# Place score signs
execute if score !Timer Space_game matches 250 run setblock 29 18 -23 oak_wall_sign[facing=west]
execute if score !Timer Space_game matches 250 run setblock 29 18 -17 oak_wall_sign[facing=west]

# Final teleport
execute if score !Timer Space_game matches 250 run teleport @a[tag=In_lobby_space_game] 27 16 -20 -90 -15

# Start music
execute if score !Timer Space_game matches 250 as @a[tag=In_lobby_space_game] run function space_game:play

# Tellraw music
execute if score !Timer Space_game matches 250 run tellraw @a[tag=In_lobby_space_game] ["",{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Playing music: ","color":"yellow"},{"text":"Symphonie en ut majeur No. 6, D. 589","color":"gold"},{"text":" by ","color":"yellow"},{"text":"Franz Schubert","color":"gold"},{"text":".","color":"yellow"},{"text":" (","color":"dark_gray"},{"text":"Adapted to Minecraft using Note Block Studio","color":"gray"},{"text":")","color":"dark_gray"}]

# Game state change
execute if score !Timer Space_game matches 250.. run scoreboard players set !State Space_game 2
execute if score !Timer Space_game matches 250.. run scoreboard players set !Timer Space_game -1
execute if score !Timer Space_game matches 250.. run scoreboard players set !Random Space_game 0