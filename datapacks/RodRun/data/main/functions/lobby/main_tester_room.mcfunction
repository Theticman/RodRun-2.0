# Display
function main:lobby/tester_room/display

# Change tester
execute if block 42 16 -56 minecraft:birch_button[powered=true] run function main:lobby/tester_room/change_tester
execute if block 42 17 -48 minecraft:oak_button[powered=true] run function main:lobby/tester_room/change_tester