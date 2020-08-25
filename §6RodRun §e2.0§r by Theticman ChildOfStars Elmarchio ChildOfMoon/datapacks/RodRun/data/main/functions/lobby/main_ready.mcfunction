# Change to ready
execute as @a[tag=In_lobby,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:16711680}}}]}] run function main:lobby/ready/switch_to_ready
execute as @a[tag=In_lobby,nbt={Inventory:[{Slot:103b,id:"minecraft:leather_helmet",Count:1b,tag:{display:{color:65280}}}]}] run function main:lobby/ready/switch_to_unready

# Can't move item
function main:lobby/ready/cant_move_item

# Can't drop
kill @e[type=item,nbt={Item:{id:"minecraft:leather_helmet"}}]