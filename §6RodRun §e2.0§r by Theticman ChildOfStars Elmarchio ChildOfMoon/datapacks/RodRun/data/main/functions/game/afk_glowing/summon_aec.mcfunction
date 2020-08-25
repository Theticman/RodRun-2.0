# Summon AEC
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:200,Tags:["need_score"],CustomName:'{"text":"afk_detection"}'}

# Copy player score to AEC
scoreboard players operation @e[type=minecraft:area_effect_cloud,name=afk_detection,tag=need_score] AFK_detection = @s Players_id

# Remove need score
tag @e[type=minecraft:area_effect_cloud,name=afk_detection] remove need_score
