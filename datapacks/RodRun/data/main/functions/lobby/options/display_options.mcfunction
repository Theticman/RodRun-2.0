execute as @e[type=villager,tag=Lobby_option_villager] run data merge entity @s {CustomNameVisible:1b}
execute as @e[type=area_effect_cloud,tag=Lobby_option_aec] run data merge entity @s {CustomNameVisible:1b}

title @s actionbar [{"text":""},{"text":"> ","color":"gold","bold":true},{"text":"Options","color":"yellow","bold":true},{"text":": ","color":"yellow"},{"text":"Click the villager to change the options, sneak to cycle backward.","color":"yellow"}]