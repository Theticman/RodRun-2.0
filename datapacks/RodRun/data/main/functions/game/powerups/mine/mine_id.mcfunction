# Set id
scoreboard players operation @e[tag=Need_mine_id,type=armor_stand] Mine_id = !Count Mine_id

# Set kill id
scoreboard players operation @e[name=game_mine,tag=Need_mine_id,type=armor_stand] Mine_kill_id = @s Players_kill_id

# Owner id
scoreboard players operation @e[name=game_mine,tag=Need_mine_id,type=armor_stand] Mine_owner_id = @s Players_id

# Kill effect id
scoreboard players operation @e[name=game_mine,tag=Need_mine_id,type=armor_stand] Kill_effect_id = @s Kill_effect_id


# Remove tag
tag @e[tag=Need_mine_id,type=armor_stand] remove Need_mine_id

# Add !Count 1
scoreboard players add !Count Mine_id 1