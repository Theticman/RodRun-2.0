# Reset sign
data merge block 27 17 -15 {Text1:'{"text":"-==oOo==-","color":"dark_gray"}',Text2:'{"text":"Leader:","color":"yellow"}',Text3:'{"text":"Nobody yet","color":"red"}',Text4:'{"text":"-==oOo==-","color":"dark_gray","clickEvent":{"action":"run_command","value":"function main:lobby/space_game/my_score"}}'}

# Reset Best
scoreboard players set !Best Space_game 0

# Reset players best
scoreboard players reset * Space_game_best