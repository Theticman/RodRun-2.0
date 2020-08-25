# Reset
scoreboard players set !Players Count_ready 0
scoreboard players set !Blue Count_ready 0
scoreboard players set !White Count_ready 0
scoreboard players set !Red Count_ready 0
scoreboard players set !Need_update Count_ready 0

# Players
execute if score !Mode Options matches 0 as @a[tag=Ready] run scoreboard players add !Players Count_ready 1
scoreboard players operation !Players_previous Count_ready -= !Players Count_ready

# Teams
execute if score !Mode Options matches 1 as @a[tag=Blue,nbt={Tags:["Ready"]}] run scoreboard players add !Blue Count_ready 1
execute if score !Mode Options matches 1 as @a[tag=White,nbt={Tags:["Ready"]}] run scoreboard players add !White Count_ready 1
execute if score !Mode Options matches 1 as @a[tag=Red,nbt={Tags:["Ready"]}] run scoreboard players add !Red Count_ready 1
scoreboard players operation !Blue_previous Count_ready -= !Blue Count_ready
scoreboard players operation !White_previous Count_ready -= !White Count_ready
scoreboard players operation !Red_previous Count_ready -= !Red Count_ready

# Update scoreboard ?
execute unless score !Players_previous Count_ready matches 0 run scoreboard players set !Need_update Count_ready 1
execute unless score !Blue_previous Count_ready matches 0 run scoreboard players set !Need_update Count_ready 1
execute unless score !White_previous Count_ready matches 0 run scoreboard players set !Need_update Count_ready 1
execute unless score !Red_previous Count_ready matches 0 run scoreboard players set !Need_update Count_ready 1

execute if score !Need_update Count_ready matches 1 run function main:scoreboard/display

# Save infos
scoreboard players operation !Players_previous Count_ready = !Players Count_ready
scoreboard players operation !Blue_previous Count_ready = !Blue Count_ready
scoreboard players operation !White_previous Count_ready = !White Count_ready
scoreboard players operation !Red_previous Count_ready = !Red Count_ready
