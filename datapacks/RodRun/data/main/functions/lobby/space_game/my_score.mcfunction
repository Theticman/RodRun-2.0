# set base score
execute unless score @s Space_game_best matches 1.. run scoreboard players set @s Space_game_best 0

# Tellraw
title @s[scores={Space_game_best=0}] actionbar [{"text":"You haven't played the game yet!","color":"red"}]
execute at @s[scores={Space_game_best=0}] run playsound minecraft:entity.villager.no master @s
tellraw @s[scores={Space_game_best=1..}] [{"text":"Your best score is: ","color":"yellow"},{"score":{"name":"@s","objective":"Space_game_best"},"color":"gold"},{"text":"!","color":"yellow"}]


# Playsound
execute at @s run playsound minecraft:ui.button.click master @s