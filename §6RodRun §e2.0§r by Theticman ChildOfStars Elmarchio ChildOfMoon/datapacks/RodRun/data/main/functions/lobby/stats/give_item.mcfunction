# Reset
loot replace block -1 19 -40 container.0 loot main:uuidtest
data modify block -1 19 -40 Items[0].tag.Tags set value ["head_stats"]
data modify block -1 19 -40 Items[0].tag.display.Name set value '[{"text":""},{"text":"       ","color":"yellow","strikethrough":"true"},{"text":" Stats ","color":"gold","bold":"true"},{"text":"       ","color":"yellow","strikethrough":"true"}]'
data merge block -1 20 -40 {Text4:''}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# =============== STATS =============== #
# Game played
scoreboard players operation !Sign stats_nb_game = @s stats_nb_game
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Games played: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_nb_game"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Hook thrown
scoreboard players operation !Sign stats_rod_use = @s stats_rod_use
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Total hook thrown: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_rod_use"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Blank
data merge block -1 20 -40 {Text4:''}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Wins
scoreboard players operation !Sign stats_wins = @s stats_wins
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Wins: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_wins"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Lose
scoreboard players operation !Sign stats_lose = @s stats_lose
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Lose: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_lose"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# WLR
scoreboard players set !10 stats_ratio 10
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

execute if score @s stats_lose matches 0..1 run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"WLR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"00","color":"gold"}]'}
execute if score @s stats_lose matches 2.. if score !Decimal stats_ratio matches 10.. run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"WLR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]'}
execute if score @s stats_lose matches 2.. if score !Decimal stats_ratio matches ..9 run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"WLR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Blank
data merge block -1 20 -40 {Text4:''}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Killstreak
scoreboard players operation !Sign stats_streak = @s stats_streak
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Best killstreak: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_streak"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Kills
scoreboard players operation !Sign stats_kills = @s stats_kills
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Kills: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_kills"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Deaths
scoreboard players operation !Sign stats_deaths = @s stats_deaths
data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"Deaths: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_deaths"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# KDR
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

execute if score @s stats_deaths matches 0..1 run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"KDR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"00","color":"gold"}]'}
execute if score @s stats_deaths matches 2.. if score !Decimal stats_ratio matches 10.. run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"KDR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]'}
execute if score @s stats_deaths matches 2.. if score !Decimal stats_ratio matches ..9 run data merge block -1 20 -40 {Text4:'[{"text":""},{"text":"KDR: ","color":"yellow"},{"score":{"name":"!Integer","objective":"stats_ratio"},"color":"gold"},{"text":".","color":"yellow"},{"text":"0","color":"gold"},{"score":{"name":"!Decimal","objective":"stats_ratio"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Blank
data merge block -1 20 -40 {Text4:''}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Total powerup used
scoreboard players operation !Sign stats_powerups = @s stats_powerups
data merge block -1 20 -40 {Text4:'[{"text":"Powerups used: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_powerups"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Speed used
scoreboard players operation !Sign stats_speed = @s stats_speed
data merge block -1 20 -40 {Text4:'[{"text":"Speed: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_speed"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Glow
scoreboard players operation !Sign stats_glow = @s stats_glow
data merge block -1 20 -40 {Text4:'[{"text":"Glow: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_glow"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Shield
scoreboard players operation !Sign stats_shield = @s stats_shield
data merge block -1 20 -40 {Text4:'[{"text":"Shield: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_shield"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Mine
scoreboard players operation !Sign stats_mine = @s stats_mine
data merge block -1 20 -40 {Text4:'[{"text":"Mine: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_mine"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Live picked
scoreboard players operation !Sign stats_live = @s stats_live
data merge block -1 20 -40 {Text4:'[{"text":"Live: ","color":"yellow"},{"score":{"name":"!Sign","objective":"stats_live"},"color":"gold"}]'}
data modify block -1 19 -40 Items[0].tag.display.Lore append from block -1 20 -40 Text4

# Replace item
loot replace entity @s container.22 mine -1 19 -40