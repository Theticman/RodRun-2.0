# Tag player to be tested
tag @s add Test_has_moved

# AEC still around ?
execute at @s as @e[type=minecraft:area_effect_cloud,name=afk_detection,distance=5..] if score @s AFK_detection = @a[tag=Test_has_moved,limit=1] Players_id run tag @a[tag=Test_has_moved] add Has_moved

# Kill AEC
execute as @s[tag=Has_moved] as @e[type=minecraft:area_effect_cloud,name=afk_detection] if score @s AFK_detection = @a[tag=Has_moved,limit=1] Players_id run kill @s

# Tag / score managment
scoreboard players reset @s[tag=Has_moved] AFK_detection
title @s[tag=Has_moved] actionbar {"text":""}
tag @s remove Test_has_moved
tag @s remove Has_moved
