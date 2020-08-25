scoreboard players set !Count Villager_search 0

execute if entity @s[type=villager,tag=option_map] run function main:lobby/options/change_map
execute if entity @s[type=villager,tag=option_live] run function main:lobby/options/change_live
execute if entity @s[type=villager,tag=option_powerups] run function main:lobby/options/change_powerups
execute if entity @s[type=villager,tag=option_player_name] run function main:lobby/options/change_player_name
execute if entity @s[type=villager,tag=option_deathmatch] run function main:lobby/options/change_deathmatch
execute if entity @s[type=villager,tag=option_afk_glowing] run function main:lobby/options/change_afk_glowing
execute if entity @s[type=villager,tag=option_time] run function main:lobby/options/change_time
execute if entity @s[type=villager,tag=team_blue] as @a[tag=Scan_villager] run function main:lobby/options/teams/join_blue
execute if entity @s[type=villager,tag=team_white] as @a[tag=Scan_villager] run function main:lobby/options/teams/join_white
execute if entity @s[type=villager,tag=team_red] as @a[tag=Scan_villager] run function main:lobby/options/teams/join_red
execute if entity @s[type=villager,tag=tips] as @a[tag=Scan_villager] run function main:lobby/tips/give_tips
execute if entity @s[type=villager,tag=lobby_bar_click] as @a[tag=Scan_villager] run function main:lobby/bar/selection_init

execute if entity @s[type=villager,tag=options_information] unless entity @s[scores={Informations=0..}] as @a[tag=Scan_villager] run function main:lobby/informations/options/next_page
execute if entity @s[type=villager,tag=powerups_information] unless entity @s[scores={Informations=0..}] as @a[tag=Scan_villager] run function main:lobby/informations/powerups/next_page
execute if entity @s[type=villager,tag=map_1_information] unless entity @s[scores={Informations=0..}] as @a[tag=Scan_villager] run function main:lobby/informations/map_1/next_page
execute if entity @s[type=villager,tag=map_2_information] unless entity @s[scores={Informations=0..}] as @a[tag=Scan_villager] run function main:lobby/informations/map_2/next_page