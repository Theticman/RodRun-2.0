# Teleport to playing player
teleport @s @r[tag=In_game_playing,sort=random,limit=1]

# Teleport to respawning player if no others
execute unless entity @a[tag=In_game_playing] run teleport @s @r[tag=In_game_respawning,sort=random,limit=1]