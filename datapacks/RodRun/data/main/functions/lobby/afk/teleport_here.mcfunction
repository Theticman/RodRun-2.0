tag @s add Teleport_here
execute as @a[tag=In_lobby_afk] if score @s Players_id = @e[tag=Teleport_here,limit=1] AFK_armor_id run tag @s add Teleport
teleport @a[tag=Teleport] @s
spectate @s @a[tag=Teleport,limit=1]
tag @s remove Teleport_here
tag @a remove Teleport