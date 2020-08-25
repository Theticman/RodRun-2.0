# Set tag 
tag @a[tag=In_game,scores={useFishing=1..}] add Need_rod_assignement
execute as @a[tag=Need_rod_assignement] run function main:lobby/stats/update_hook_thrown
scoreboard players reset @a[tag=In_game] useFishing

# Set boopers without owner to 0
execute as @e[type=minecraft:fishing_bobber] unless entity @s[scores={Players_id=0..}] run scoreboard players set @s Players_id 0
# Set boopers without owner kill id to 0
execute as @e[type=minecraft:fishing_bobber] unless entity @s[scores={Players_kill_id=0..}] run scoreboard players set @s Players_kill_id 0
# Set boopers without kill effects to 0
execute as @e[type=minecraft:fishing_bobber] unless entity @s[scores={Kill_effect_id=0..}] run scoreboard players set @s Kill_effect_id 0

# Start recursive function
function main:game/kill/rod_assignement