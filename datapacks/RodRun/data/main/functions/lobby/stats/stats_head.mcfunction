execute as @a[tag=In_lobby] unless entity @s[tag=In_lobby_space_game] unless entity @s[tag=In_boat_race] unless entity @s[tag=In_lobby_kill_effect_animation] unless entity @s[tag=In_lobby_informations] run tag @s add Stats_head
tag @a[tag=Stats_head,nbt={Inventory:[{Slot:22b,id:"minecraft:player_head"}]}] remove Stats_head
clear @a[tag=Stats_head] player_head

execute as @a[tag=Stats_head] run function main:lobby/stats/give_item

kill @e[type=item,nbt={Item:{id:"minecraft:player_head",tag:{Tags:["head_stats"]}}}]