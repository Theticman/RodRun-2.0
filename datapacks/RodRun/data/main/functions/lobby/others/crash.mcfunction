# Timer
scoreboard players add @s Crash 1

# Title
title @s[scores={Crash=2}] times 0 10000 0
title @s[scores={Crash=2}] title {"text":"Enjoy :)","color":"yellow"}
title @s[scores={Crash=35}] subtitle {"text":"Restart Minecraft and come back!","color":"yellow"}

# Set Signs
execute as @s[scores={Crash=2}] run setblock 13 8 -48 minecraft:oak_wall_sign[facing=east]{Color: "black", x: 13, Text4: '{"color":"dark_gray","text":"-==oOo==-"}', y: 8, Text3: '{"extra":[{"color":"gray","text":"("},{"color":"white","text":"Click"},{"color":"gray","text":")"}],"text":""}', z: -48, Text2: '{"color":"yellow","text":"Free Crash"}', id: "minecraft:sign", Text1: '{"color":"dark_gray","clickEvent":{"action":"run_command","value":"execute unless score @s Crash matches 1.. run scoreboard players set @s Crash 1"},"text":"-==oOo==-"}'} destroy

# Playsound
execute as @s[scores={Crash=5}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0
execute as @s[scores={Crash=10}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.25
execute as @s[scores={Crash=15}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.5
execute as @s[scores={Crash=20}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 0.75
execute as @s[scores={Crash=25}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1
execute as @s[scores={Crash=30}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 1.5
execute as @s[scores={Crash=35}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2

# Particle
execute as @s[scores={Crash=40}] at @s run particle minecraft:flame ~ ~-2 ~ 0 0 0 0 100000000 normal @s

# Reset
execute as @s[scores={Crash=40}] run setblock 13 8 -48 minecraft:oak_wall_sign[facing=east]{Text1:'{"text":"","clickEvent":{"action":"run_command","value":"execute unless score @s Crash matches 1.. run scoreboard players set @s Crash 1"}}'} destroy

scoreboard players reset @s[scores={Crash=40}] Crash