# Display entities
scoreboard players set !Is_there Informations 0
execute if entity @a[tag=In_lobby_informations] run scoreboard players set !Is_there Informations 1
scoreboard players operation !Update Informations -= !Is_there Informations

execute unless score !Update Informations matches 0 if score !Is_there Informations matches 0 as @e[tag=information] run data merge entity @s {CustomNameVisible:0b}
execute unless score !Update Informations matches 0 if score !Is_there Informations matches 1.. as @e[tag=information] run data merge entity @s {CustomNameVisible:1b}

scoreboard players operation !Update Informations = !Is_there Informations
