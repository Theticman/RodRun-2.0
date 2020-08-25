# Kill previous
kill @e[type=armor_stand,tag=boat_race_podium_third]

# Summon Third
summon minecraft:armor_stand -14 14.2 -42.5 {ShowArms:1b,Rotation:[-90f],Small:1b,Tags:["boat_race_podium_third"],NoGravity:1b,DisabledSlots:4144959}
loot replace entity @e[type=minecraft:armor_stand,tag=boat_race_podium_third] armor.head loot main:uuidtest
scoreboard players operation @e[type=minecraft:armor_stand,tag=boat_race_podium_third] Lobby_boat_best = @s Players_id

# Set name
tag @s add Sign
team leave @s
data merge block -14 13 -42 {Text3:'[{"selector":"@a[tag=Sign]","color":"yellow","italic":"true"}]'}
function main:lobby/others/set_team
data modify entity @e[tag=boat_race_podium_third,limit=1] CustomName set from block -14 13 -42 Text3
tag @s remove Sign

# Update score
scoreboard players operation !Third Lobby_bosat_best = @s Lobby_boat_best

# Update sign
function main:lobby/boat/podium/update_sign_third

# Subtitle
title @s subtitle [{"text":"You made it to the ","color":"yellow"},{"text":"third","color":"gold"},{"text":" place!","color":"yellow"}]

# Remove tag
tag @s remove on_podium
