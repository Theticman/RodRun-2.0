# Title
title @s times 0 20 0
title @s title [{"text":"You are ","color":"yellow"},{"text":"AFK","color":"gold"},{"text":"!","color":"yellow"}]
title @s subtitle [{"text":""}]
title @s actionbar [{"text":"Press ","color":"yellow"},{"keybind":"key.sneak","color":"gold"},{"text":" and ","color":"yellow"},{"text":"move","color":"gold"},{"text":" to cancel!","color":"yellow"}]

# Cancel
execute at @s unless entity @e[type=armor_stand,limit=1,distance=..1,tag=AFK_armor] run function main:lobby/afk/cancel