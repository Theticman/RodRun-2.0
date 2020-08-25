# Playsounds
execute if score !Deathmatch Reset matches 0 as @a[tag=In_game] at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~

# Bossbars
execute if score !Deathmatch Reset matches 0 run bossbar set minecraft:new_powerup visible false

execute if score !Deathmatch Reset matches 0 run bossbar set minecraft:deathmatch visible true
execute if score !Deathmatch Reset matches ..0 run execute store result bossbar minecraft:deathmatch value run scoreboard players get !Deathmatch_bossbar Reset
execute if score !Deathmatch Reset matches ..0 run bossbar set minecraft:deathmatch players @a[tag=In_game]

# Tellraw
execute if score !Deathmatch Reset matches 36000 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"30","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 24000 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"20","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 12000 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"10","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 6000 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"5","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 3600 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"3","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 2400 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"2","color":"gold"},{"text":" minutes!","color":"yellow"}]
execute if score !Deathmatch Reset matches 1200 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"1","color":"gold"},{"text":" minute!","color":"yellow"}]
execute if score !Deathmatch Reset matches 600 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"30","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 200 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"10","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 100 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"5","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 80 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"4","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 60 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"3","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 40 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"2","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 20 run tellraw @a[tag=In_game] [{"text":"Sudden death starting in ","color":"yellow"},{"text":"1","color":"gold"},{"text":" seconds!","color":"yellow"}]
execute if score !Deathmatch Reset matches 0 run tellraw @a[tag=In_game] [{"text":"Sudden death starting ","color":"yellow"},{"text":"now","color":"gold"},{"text":"!","color":"yellow"}]