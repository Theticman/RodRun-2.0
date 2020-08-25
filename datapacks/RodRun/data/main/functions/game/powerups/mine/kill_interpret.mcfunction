# Select Victim
tag @a[tag=In_game_playing,scores={Killed_by=0..},limit=1] add Victim

# Select killer
execute as @a[tag=In_game] if score @s Players_id = @a[tag=Victim,limit=1] Killed_by run tag @s add Killer
scoreboard players reset @a Killed_by

# Tellraw
function main:game/powerups/mine/random_kill_message

# Perform kill effect
execute if score @s Kill_effect_id matches 1 as @a[tag=Killer] run function main:game/kill_effect/random_kill_effect
execute if score @s Kill_effect_id matches 2 as @a[tag=Victim] at @s run function main:game/kill_effect/init_cloud
execute if score @s Kill_effect_id matches 3 as @a[tag=Victim] at @s run function main:game/kill_effect/init_blood
execute if score @s Kill_effect_id matches 4 as @a[tag=Victim] at @s run function main:game/kill_effect/init_totem
execute if score @s Kill_effect_id matches 5 as @a[tag=Victim] at @s run function main:game/kill_effect/init_xp
execute if score @s Kill_effect_id matches 6 as @a[tag=Victim] at @s run function main:game/kill_effect/init_note
execute if score @s Kill_effect_id matches 7 as @a[tag=Victim] at @s run function main:game/kill_effect/init_head_flying
execute if score @s Kill_effect_id matches 8 as @a[tag=Victim] at @s run function main:game/kill_effect/init_dab

# Kill mine
execute as @s run function main:game/powerups/mine/kill_mine

# Manage victim
execute as @a[tag=Victim] run function main:game/powerups/mine/killed_init

# Manage killer
effect give @a[tag=Killer] minecraft:speed 2 2 true
execute as @a[tag=Killer] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~
execute as @a[tag=Killer] run function main:lobby/stats/update_kills
execute as @a[tag=Killer,scores={Game_kill_streak=3..}] run function main:game/kill/killstreak_message

# Remove tags
tag @a remove Killer
tag @a remove Victim

# Update scoreboard
function main:scoreboard/display