# Set tag
tag @a[x=0,y=200,z=0,distance=..2] add Spawn

# Timer add
scoreboard players add @a[tag=Spawn] Spawning 1

# Set initial kill effect
scoreboard players set @a[scores={Spawning=1}] Kill_effect 1
scoreboard players set @a[scores={Spawning=1}] Kill_effect_id 2
scoreboard players set @a[scores={Spawning=1}] Kill_effect_sign 10000000

# Effect
effect give @a[tag=Spawn] minecraft:resistance 999999 127 true
effect give @a[tag=Spawn] minecraft:saturation 999999 127 true
effect give @a[tag=Spawn] minecraft:weakness 999999 127 true

# Tags lobby
tag @a[scores={Spawning=1}] add In_lobby
tag @a[scores={Spawning=1}] add Ready

# Set players id
execute as @a[scores={Spawning=1}] run function main:lobby/spawn/set_players_id

# Set rank
execute as @a[scores={Spawning=1}] run function main:lobby/spawn/set_rank

# Manage player
gamemode adventure @a[scores={Spawning=5}]
execute as @a[scores={Spawning=5}] run function main:lobby/others/teleport_lobby

# Display
title @a[scores={Spawning=5},tag=Spawn] times 10 20 10
title @a[scores={Spawning=5},tag=Spawn] title {"text":"RodRun","color":"gold","bold":"true"}
title @a[scores={Spawning=20},tag=Spawn] subtitle {"text":"By ChildOfStars, Theticman, Elmarchio, ChildOfMoon","color":"yellow","bold":"true"}

# Team join rank
execute as @a[scores={Spawning=5},tag=Spawn,tag=!Player] run function main:lobby/others/set_team

# Message join
execute as @a[scores={Spawning=5},tag=Spawn] run tellraw @a[tag=In_lobby] [{"text":"[","color":"dark_gray"},{"text":"RodRun","color":"gold","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Welcome to the map ","color":"yellow"},{"selector":"@s","color":"gold"},{"text":"!","color":"yellow"}]

# Team join
execute as @a[scores={Spawning=5},tag=Spawn] run function main:lobby/others/set_team

# Remove tags
tag @a[scores={Spawning=100},tag=Spawn] remove Spawn
scoreboard players reset @a[scores={Spawning=100}] Spawning