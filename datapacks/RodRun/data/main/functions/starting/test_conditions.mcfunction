# Solo mode
scoreboard players set !Ready_lobby Starting 0
execute as @a[tag=Starting] run scoreboard players add !Ready_lobby Starting 1

# Team mode
scoreboard players set !Team_lobby Starting 0
execute if entity @a[nbt={Tags:["Starting","Blue"]},limit=1] run scoreboard players add !Team_lobby Starting 1
execute if entity @a[nbt={Tags:["Starting","White"]},limit=1] run scoreboard players add !Team_lobby Starting 1
execute if entity @a[nbt={Tags:["Starting","Red"]},limit=1] run scoreboard players add !Team_lobby Starting 1


# Conditions are still OK ?
execute if score !Mode OptionsInGame matches 0 if score !Ready_lobby Starting matches ..1 run function main:starting/start_error
execute if score !Mode OptionsInGame matches 1 if score !Team_lobby Starting matches ..1 run function main:starting/start_error
