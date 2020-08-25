# Playsound
execute at @s run playsound minecraft:ui.button.click master @s

# Tellraw
tellraw @s [{"text":""},{"text":"                                                                     ","color":"yellow","strikethrough":true}]

tellraw @s [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Your stats","color":"yellow","bold":true},{"text":":","color":"yellow"}]

# Wins / Lose
scoreboard players set !10 stats_ratio 10
scoreboard players set !100 stats_ratio 100
scoreboard players set !1000 stats_ratio 1000
scoreboard players set !Remove stats_ratio 1000
scoreboard players set !10000 stats_ratio 10000

scoreboard players operation !Integer stats_ratio = @s stats_wins
scoreboard players operation !Integer stats_ratio /= @s stats_lose
scoreboard players operation !Decimal stats_ratio = @s stats_wins
scoreboard players operation !Decimal stats_ratio *= !1000 stats_ratio
scoreboard players operation !Decimal stats_ratio /= @s stats_lose
scoreboard players operation !Remove stats_ratio *= !Integer stats_ratio
scoreboard players operation !Decimal stats_ratio -= !Remove stats_ratio
scoreboard players operation !Last_decimal stats_ratio = !Decimal stats_ratio
scoreboard players operation !Decimal stats_ratio /= !10 stats_ratio
scoreboard players operation !Last_decimal stats_ratio %= !10 stats_ratio
execute if score !Last_decimal stats_ratio matches 5.. run scoreboard players add !Decimal stats_ratio 1

tellraw @s [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Game played: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_nb_game"},"color":"gold"}]
tellraw @s [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Wins: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_wins"},"color":"gold"}]
tellraw @s [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Lose: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_lose"},"color":"gold"}]

execute if score @s stats_lose matches 0..1 run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"W/L ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"00","color":"gold"}]
execute if score @s stats_lose matches 2.. if score !Decimal stats_ratio matches 10.. run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"W/L ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]
execute if score @s stats_lose matches 2.. if score !Decimal stats_ratio matches ..9 run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"W/L ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]

# Kills / Deaths
scoreboard players set !Remove stats_ratio 1000

scoreboard players operation !Integer stats_ratio = @s stats_kills
scoreboard players operation !Integer stats_ratio /= @s stats_deaths
scoreboard players operation !Decimal stats_ratio = @s stats_kills
scoreboard players operation !Decimal stats_ratio *= !1000 stats_ratio
scoreboard players operation !Decimal stats_ratio /= @s stats_deaths
scoreboard players operation !Remove stats_ratio *= !Integer stats_ratio
scoreboard players operation !Decimal stats_ratio -= !Remove stats_ratio
scoreboard players operation !Last_decimal stats_ratio = !Decimal stats_ratio
scoreboard players operation !Decimal stats_ratio /= !10 stats_ratio
scoreboard players operation !Last_decimal stats_ratio %= !10 stats_ratio
execute if score !Last_decimal stats_ratio matches 5.. run scoreboard players add !Decimal stats_ratio 1

tellraw @s [{"text":"\n    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Kills: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_kills"},"color":"gold"}]
tellraw @s [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Deaths: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_deaths"},"color":"gold"}]

execute if score @s stats_deaths matches 0..1 run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"K/D ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"00","color":"gold"}]
execute if score @s stats_deaths matches 2.. if score !Decimal stats_ratio matches 10.. run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"K/D ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]
execute if score @s stats_deaths matches 2.. if score !Decimal stats_ratio matches ..9 run tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"K/D ratio: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]
tellraw @s [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Max streak: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_streak"},"color":"gold"}]

# Powerups
tellraw @s [{"text":"\n    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Total powerups used: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_powerups"},"color":"gold"}]
tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"Speed used: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_speed"},"color":"gold"}]
tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"Glow used: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_glow"},"color":"gold"}]
tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"Shield used: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_shield"},"color":"gold"}]
tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"Mine used: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_mine"},"color":"gold"}]
tellraw @s [{"text":"        "},{"text":"➡ ","color":"gold","bold":true},{"text":"Live picked: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_live"},"color":"gold"}]

# Hook thrown
tellraw @s [{"text":"\n    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Total hook thrown: ","color":"yellow"},{"score":{"name":"@s","objective":"stats_rod_use"},"color":"gold"}]
tellraw @s [{"text":""},{"text":"                                                                     ","color":"yellow","strikethrough":true}]
