# Select player to try to kill
tag @r[tag=Victim_test,limit=1] add Is_victim
tag @a[tag=Is_victim] remove Victim_test

# Compare rod id and player id => set score to Killed_by if is a victim
tag @s add Kill_test
execute as @a[tag=Is_victim] unless score @s Players_kill_id = @e[type=armor_stand,name=game_mine,tag=Kill_test,limit=1] Mine_kill_id run scoreboard players operation @s Killed_by = @e[type=armor_stand,name=game_mine,tag=Kill_test,limit=1] Mine_owner_id
tag @s remove Kill_test

# Remove tag
tag @a[tag=Is_victim] remove Is_victim

# Run kill interpret
execute if entity @a[tag=In_game_playing,scores={Killed_by=0..},limit=1] run function main:game/powerups/mine/kill_interpret

# Recall if not finished
execute if entity @a[tag=Victim_test,limit=1] run function main:game/powerups/mine/kill_test