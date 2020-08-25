# Tag remove live add
execute if score !Mode OptionsInGame matches 0 run tag @a[tag=In_game,scores={Lives_left=1..}] add Remove_live
execute if score !Mode OptionsInGame matches 1 if score !Blue Lives_left matches 1.. run tag @a[tag=Blue,nbt={Tags:["In_game_playing"]}] add Remove_live
execute if score !Mode OptionsInGame matches 1 if score !White Lives_left matches 1.. run tag @a[tag=White,nbt={Tags:["In_game_playing"]}] add Remove_live
execute if score !Mode OptionsInGame matches 1 if score !Red Lives_left matches 1.. run tag @a[tag=Red,nbt={Tags:["In_game_playing"]}] add Remove_live

# Playsound
execute as @a[tag=Remove_live] at @s run playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 0

# Particle
execute as @a[tag=Remove_live] at @s run particle minecraft:damage_indicator ~ ~ ~ 0.2 0.5 0.2 0.2 50 normal @a[tag=In_game]

# Remove live
execute if score !Mode OptionsInGame matches 0 run scoreboard players remove @a[tag=Remove_live] Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @a[tag=Blue,nbt={Tags:["Remove_live"]}] run scoreboard players remove !Blue Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @a[tag=White,nbt={Tags:["Remove_live"]}] run scoreboard players remove !White Lives_left 1
execute if score !Mode OptionsInGame matches 1 if entity @a[tag=Red,nbt={Tags:["Remove_live"]}] run scoreboard players remove !Red Lives_left 1

# Update chestplate
execute as @a[tag=Remove_live] run function main:game/chestplate/replace

# Update scoreboard
execute if entity @a[tag=Remove_live,limit=1] run function main:scoreboard/display

# Tag remove
tag @a remove Remove_live
