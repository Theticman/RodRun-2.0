# Update kills
scoreboard players add @s Game_kills 1
scoreboard players add @s stats_kills 1
scoreboard players add @s Game_kill_streak 1

execute unless score @s Game_best_streak matches 0.. run scoreboard players set @s Game_best_streak 0
execute unless score @s stats_streak matches 0.. run scoreboard players set @s stats_streak 0

execute if score @s Game_kill_streak > @s Game_best_streak run scoreboard players operation @s Game_best_streak = @s Game_kill_streak
execute if score @s Game_kill_streak > @s stats_streak run scoreboard players operation @s stats_streak = @s Game_kill_streak