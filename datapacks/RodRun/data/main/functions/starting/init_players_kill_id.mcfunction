# Setup
scoreboard players reset * Players_kill_id

# Solo mode
execute if score !Mode OptionsInGame matches 0 as @a[tag=Starting] run scoreboard players operation @s Players_kill_id = @s Players_id

# Team mode
execute if score !Mode OptionsInGame matches 1 run scoreboard players set @a[nbt={Tags:["Blue","Starting"]}] Players_kill_id 1
execute if score !Mode OptionsInGame matches 1 run scoreboard players set @a[nbt={Tags:["White","Starting"]}] Players_kill_id 2
execute if score !Mode OptionsInGame matches 1 run scoreboard players set @a[nbt={Tags:["Red","Starting"]}] Players_kill_id 3
