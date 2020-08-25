# Kill entities
kill @e[type=minecraft:armor_stand,tag=boat_race_podium_third]
kill @e[type=minecraft:armor_stand,tag=boat_race_podium_second]
kill @e[type=minecraft:armor_stand,tag=boat_race_podium_first]

summon minecraft:armor_stand -14 14.2 -42.5 {Tags:["boat_race_podium_third"],ShowArms:1b,Rotation:[-90f],Small:1b,CustomName:'{"text":"???","color":"gray","italic":"true"}',NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Question"}}]}
summon minecraft:armor_stand -14 14.5 -40.5 {Tags:["boat_race_podium_second"],ShowArms:1b,Rotation:[-90f],Small:1b,CustomName:'{"text":"???","color":"gray","italic":"true"}',NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Question"}}]}
summon minecraft:armor_stand -14 14.8 -41.5 {Tags:["boat_race_podium_first"],ShowArms:1b,Rotation:[-90f],Small:1b,CustomName:'{"text":"???","color":"gray","italic":"true"}',NoGravity:1b,DisabledSlots:4144959,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"MHF_Question"}}]}


# Reset scores
scoreboard players reset * Lobby_boat_best
scoreboard players set !First Lobby_boat_best 999999999
scoreboard players set !Second Lobby_boat_best 999999999
scoreboard players set !Third Lobby_boat_best 999999999

# Sign
data merge block -13 16 -42 {Text1:'[{"text":""},{"text":"First","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"text":"???","color":"gray"}]',Text2:'[{"text":""},{"text":"Second","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"text":"???","color":"gray"}]',Text3:'[{"text":""},{"text":"Third","color":"yellow","bold":"true"},{"text":": ","color":"yellow"},{"text":"???","color":"gray"}]',Text4:'[{"text":"(","color":"gray","clickEvent":{"action":"run_command","value":"function main:lobby/boat/podium/my_score"}},{"text":"Click","color":"white"},{"text":")","color":"gray"}]'}