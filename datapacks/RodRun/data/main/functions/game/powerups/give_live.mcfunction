# Subtitle
title @s times 0 20 5
title @s title {"text":""}
execute if score !Mode OptionsInGame matches 0 run title @s subtitle [{"text":""},{"text":"You recovered a ","color":"yellow"},{"text":"live","color":"gold","bold":true},{"text":"!","color":"yellow"}]
execute if score !Mode OptionsInGame matches 1 run title @s subtitle [{"text":""},{"text":"Your team recovered a ","color":"yellow"},{"text":"live","color":"gold","bold":true},{"text":"!","color":"yellow"}]

# Tellraw
team leave @s
execute if score !Mode OptionsInGame matches 0 run tellraw @a[tag=In_game] [{"text":"\n❤ ","color":"red"},{"selector":"@s","color":"gold"},{"text":" recovered a live!","color":"yellow"}]
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] run tellraw @a[tag=In_game] [{"text":"\n❤ ","color":"red"},{"text":"Blue","color":"blue"},{"text":" team recovered a live!","color":"yellow"}]
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] run tellraw @a[tag=In_game] [{"text":"\n❤ ","color":"red"},{"text":"White","color":"white"},{"text":" team recovered a live!","color":"yellow"}]
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] run tellraw @a[tag=In_game] [{"text":"\n❤ ","color":"red"},{"text":"Red","color":"red"},{"text":" team recovered a live!","color":"yellow"}]

execute as @s run function main:game/others/set_team

# Playsound
execute at @s run playsound minecraft:entity.villager.celebrate master @a[tag=In_game] ~ ~ ~

# Add life
execute if score !Mode OptionsInGame matches 0 run scoreboard players add @s Lives_left 1

execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] run scoreboard players add !Blue Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] run scoreboard players add !White Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] run scoreboard players add !Red Lives_left 1

# Clear item
clear @s minecraft:totem_of_undying{Tags:["powerup_live"]} 1

# Replace chestplate
function main:game/chestplate/replace
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Blue] as @a[tag=Blue,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=White] as @a[tag=White,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace
execute if score !Mode OptionsInGame matches 1 if entity @s[tag=Red] as @a[tag=Red,nbt={Tags:["In_game_playing"]}] run function main:game/chestplate/replace

# Remove tag
tag @s remove Give_powerup_live

# Update stats
function main:lobby/stats/update_live

# Update scoreboard
function main:scoreboard/display
