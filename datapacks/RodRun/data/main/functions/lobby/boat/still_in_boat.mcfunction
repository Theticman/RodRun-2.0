# Add tag to everyone and everyone the one that are in a boat
tag @s add Not_in_boat
tag @a[tag=Boat_race,nbt={RootVehicle:{Entity:{id:"minecraft:boat",Tags:["boat_race"]}}}] remove Not_in_boat

# Reset if not in boat
execute as @a[tag=Not_in_boat] run function main:lobby/boat/reset_player