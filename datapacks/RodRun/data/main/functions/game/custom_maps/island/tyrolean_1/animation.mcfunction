# Timer
scoreboard players add @s Tyrolean_timer 1

# Stop start cooldown
execute if entity @s[scores={Tyrolean_timer=15}] run scoreboard players set !Start Tyrolean_id 0

# Tags add
tag @s add Tyrolean_main_armor
execute as @a[tag=In_game_tyrolean] if score @s Players_id = @e[tag=Tyrolean_main_armor,name=game_tyrolean_1_armor,limit=1] Tyrolean_id run tag @s add Tyrolean_player_teleport
#execute if entity @s[scores={Tyrolean_timer=0..60}] as @e[name=game_tyrolean_1_AEC,type=area_effect_cloud] if score @s Tyrolean_id = @e[tag=Tyrolean_main_armor,limit=1] Tyrolean_id run tag @s add Tyrolean_AEC_teleport
execute unless entity @a[tag=Tyrolean_player_teleport] run kill @s

# Teleport
#execute if entity @s[scores={Tyrolean_timer=0..60}] run teleport @a[tag=Tyrolean_player_teleport] @e[tag=Tyrolean_AEC_teleport,type=area_effect_cloud,limit=1]
execute if entity @s[scores={Tyrolean_timer=0..10}] at @s run teleport @s ^ ^ ^0.3 ~ ~-1.2
execute if entity @s[scores={Tyrolean_timer=11..20}] at @s run teleport @s ^ ^ ^0.3 ~ ~-.2
execute if entity @s[scores={Tyrolean_timer=21..28}] at @s run teleport @s ^ ^ ^0.3 ~ ~-1.3
execute if entity @s[scores={Tyrolean_timer=29..40}] at @s run teleport @s ^ ^ ^0.3
execute if entity @s[scores={Tyrolean_timer=41..48}] at @s run teleport @s ^ ^ ^0.3 ~ ~-.7
execute if entity @s[scores={Tyrolean_timer=49..58}] at @s run teleport @s ^ ^ ^0.3

# Start POV
#execute if entity @s[scores={Tyrolean_timer=1}] run gamemode spectator @a[tag=Tyrolean_player_teleport]
#execute if entity @s[scores={Tyrolean_timer=1..}] run spectate @s @a[tag=Tyrolean_player_teleport,limit=1]
execute if entity @s[scores={Tyrolean_timer=1..}] run teleport @a[tag=Tyrolean_player_teleport] @s

# Tags remove
tag @s remove Tyrolean_main_armor
tag @a[tag=In_game_tyrolean] remove Tyrolean_player_teleport
#tag @e[name=game_tyrolean_1_AEC,type=area_effect_cloud] remove Tyrolean_AEC_teleport

# End
execute as @s[scores={Tyrolean_timer=58..}] run function main:game/custom_maps/island/tyrolean_1/end