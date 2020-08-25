# Titles
title @s times 0 20 5
title @s title {"text":""}
title @s subtitle [{"text":"Welcome back!","color":"yellow"}]
title @s actionbar [{"text":""}]

# Tags add
tag @s add In_lobby
tag @s add Ready
tag @s remove In_lobby_afk

# Team join
function main:lobby/others/set_team

# Teleport
gamemode adventure @s
function main:lobby/others/teleport_lobby

# Kill bee
tag @s add Kill_own_bee
execute as @e[type=bee,tag=AFK_bee] if score @s Bee = @a[tag=Kill_own_bee,limit=1] Players_id run kill @s
tag @s remove Kill_own_bee