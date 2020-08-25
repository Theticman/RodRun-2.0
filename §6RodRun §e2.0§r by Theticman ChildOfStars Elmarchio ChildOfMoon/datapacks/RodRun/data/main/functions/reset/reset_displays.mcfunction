# Game Over 
execute if score !Timer Reset matches 2 run tellraw @a[tag=Ending] [{"text":""},{"text":"                       ","color":"yellow","strikethrough":true},{"text":" Game Over ","color":"gold","bold":true},{"text":"                       ","color":"yellow","strikethrough":true}]

# Winners / Tie
execute if score !Timer Reset matches 20 run scoreboard players set !Count Reset 0
execute if score !Timer Reset matches 20 as @a[tag=Winner] run scoreboard players add !Count Reset 1
execute if score !Timer Reset matches 20 if score !Count Reset matches 0 run team leave @a[tag=Winner_tie]
execute if score !Timer Reset matches 20 if score !Count Reset matches 1.. run team leave @a[tag=Winner]
execute if score !Timer Reset matches 20 if score !Count Reset matches 0 run tellraw @a[tag=Ending] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Game tied:","color":"yellow","bold":true}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 1 run tellraw @a[tag=Ending] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Winner:","color":"yellow","bold":true}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 2.. run tellraw @a[tag=Ending] [{"text":""},{"text":">","color":"gold","bold":true},{"text":" Winners:","color":"yellow","bold":true}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 0 as @a[tag=Winner_tie] run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"selector":"@s","color":"gray"}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 0 unless entity @a[tag=Winner_tie] run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Crosskilled!","color":"red"}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 1.. as @a[tag=Winner] run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"selector":"@s","color":"green","bold":true}]
execute if score !Timer Reset matches 20 if score !Count Reset matches 0 as @a[tag=Winner_tie] run function main:game/others/set_team
execute if score !Timer Reset matches 20 if score !Count Reset matches 1.. as @a[tag=Winner] run function main:game/others/set_team

# General statistics
execute if score !Timer Reset matches 30 run tellraw @a[tag=Ending] [{"text":"\n"},{"text":">","color":"gold","bold":true},{"text":" General statistics:","color":"yellow","bold":true}]
# Best killer
execute if score !Timer Reset matches 30 run scoreboard players set !Best Game_kills 0
execute if score !Timer Reset matches 30 run scoreboard players operation !Best Game_kills > @a[tag=Ending] Game_kills
execute if score !Timer Reset matches 30 run tag @a[tag=Ending] add Best_killer
execute if score !Timer Reset matches 30 as @a[tag=Best_killer] unless score @s Game_kills = !Best Game_kills run tag @s remove Best_killer
execute if score !Timer Reset matches 30 run scoreboard players set !Count Reset 0
execute if score !Timer Reset matches 30 as @a[tag=Best_killer] run scoreboard players add !Count Reset 1
execute if score !Timer Reset matches 30 run team leave @a[tag=Best_killer]
execute if score !Timer Reset matches 30 if score !Count Reset matches 1 if score !Best Game_kills matches 1 run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Best killer: ","color":"yellow"},{"selector":"@a[tag=Best_killer]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"!Best","objective":"Game_kills"},"color":"gold"},{"text":" kill","color":"yellow"}]
execute if score !Timer Reset matches 30 if score !Count Reset matches 1 if score !Best Game_kills matches 2.. run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Best killer: ","color":"yellow"},{"selector":"@a[tag=Best_killer]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"!Best","objective":"Game_kills"},"color":"gold"},{"text":" kills","color":"yellow"}]
execute if score !Timer Reset matches 30 if score !Count Reset matches 2.. if score !Best Game_kills matches 1 run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Best killers: ","color":"yellow"},{"selector":"@a[tag=Best_killer]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"!Best","objective":"Game_kills"},"color":"gold"},{"text":" kill","color":"yellow"}]
execute if score !Timer Reset matches 30 if score !Count Reset matches 2.. if score !Best Game_kills matches 2.. run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Best killers: ","color":"yellow"},{"selector":"@a[tag=Best_killer]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"!Best","objective":"Game_kills"},"color":"gold"},{"text":" kills","color":"yellow"}]
execute if score !Timer Reset matches 30 as @a[tag=Best_killer] run function main:game/others/set_team
execute if score !Timer Reset matches 30 run tag @a[tag=Best_killer] remove Best_killer
# Best streak
execute if score !Timer Reset matches 30 run scoreboard players set !Best Game_best_streak 0
execute if score !Timer Reset matches 30 run scoreboard players operation !Best Game_best_streak > @a[tag=Ending] Game_best_streak
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. run tag @a[tag=Ending] add Best_streak
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. as @a[tag=Best_streak] unless score @s Game_best_streak = !Best Game_best_streak run tag @s remove Best_streak
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. run team leave @a[tag=Best_streak]
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Best streak: ","color":"yellow"},{"selector":"@a[tag=Best_streak]","color":"gold"},{"text":" with ","color":"yellow"},{"score":{"name":"!Best","objective":"Game_best_streak"},"color":"gold"},{"text":" kills in a row","color":"yellow"}]
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. as @a[tag=Best_streak] run function main:game/others/set_team
execute if score !Timer Reset matches 30 if score !Best Game_best_streak matches 3.. run tag @a[tag=Best_streak] remove Best_streak
# Game time
execute if score !Timer Reset matches 40 run scoreboard players operation !Hours Game_time = !Timer Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Minutes Game_time = !Timer Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Seconds Game_time = !Timer Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Hours Game_time /= !72000 Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Minutes Game_time /= !1200 Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Seconds Game_time /= !20 Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Minutes Game_time %= !60 Game_time
execute if score !Timer Reset matches 40 run scoreboard players operation !Seconds Game_time %= !60 Game_time
execute if score !Timer Reset matches 40 if score !Hours Game_time matches 0 if score !Minutes Game_time matches 0 run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Game time: ","color":"yellow"},{"score":{"name":"!Seconds","objective":"Game_time"},"color":"gold"},{"text":"s.","color":"yellow"}]
execute if score !Timer Reset matches 40 if score !Hours Game_time matches 0 if score !Minutes Game_time matches 1.. run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Game time: ","color":"yellow"},{"score":{"name":"!Minutes","objective":"Game_time"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"!Seconds","objective":"Game_time"},"color":"gold"},{"text":"s.","color":"yellow"}]
execute if score !Timer Reset matches 40 if score !Hours Game_time matches 1.. run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Game time: ","color":"yellow"},{"score":{"name":"!Hours","objective":"Game_time"},"color":"gold"},{"text":"h ","color":"yellow"},{"score":{"name":"!Minutes","objective":"Game_time"},"color":"gold"},{"text":"m ","color":"yellow"},{"score":{"name":"!Seconds","objective":"Game_time"},"color":"gold"},{"text":"s.","color":"yellow"}]
# Stats rod use
execute if score !Timer Reset matches 50 run scoreboard players set !Total stats_IG_rod_use 0
execute if score !Timer Reset matches 50 as @a[tag=Ending] run scoreboard players operation !Total stats_IG_rod_use += @s stats_IG_rod_use
execute if score !Timer Reset matches 50 run tellraw @a[tag=Ending] [{"text":"    "},{"text":"➡ ","color":"gold","bold":true},{"text":"Total hook thrown: ","color":"yellow"},{"score":{"name":"!Total","objective":"stats_IG_rod_use"},"color":"gold"}]

# Lobby
execute if score !Timer Reset matches 70 run tellraw @a[tag=Ending] [{"text":""},{"text":"                       ","color":"yellow","strikethrough":true},{"text":" Lobby ","color":"gold","bold":true},{"text":"                       ","color":"yellow","strikethrough":true}]
