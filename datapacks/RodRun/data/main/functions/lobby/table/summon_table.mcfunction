# Kill previous table
function main:lobby/table/kill_table

# Summon table entities

# Bottom side
summon minecraft:armor_stand 17 20.3 -43 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_bottom"],CustomName:'{"text":"Lobby_table_holder"}'}
summon minecraft:armor_stand 18 20.3 -43 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_bottom"],CustomName:'{"text":"Lobby_table_holder"}'}

# Middle side
summon minecraft:armor_stand 17 20.34 -42 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_middle_right"],CustomName:'{"text":"Lobby_table_holder"}'}
summon minecraft:armor_stand 18 20.34 -42 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_middle_left"],CustomName:'{"text":"Lobby_table_holder"}'}

# Top side
summon minecraft:armor_stand 17 20.3 -41 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_top"],CustomName:'{"text":"Lobby_table_holder"}'}
summon minecraft:armor_stand 18 20.3 -41 {Invisible:1b,NoGravity:1b,Small:1b,NoBasePlate:1b,DisabledSlots:4144959,Passengers:[{id:"minecraft:falling_block",BlockState:{Name:"minecraft:dark_oak_planks",Properties:{type:"top"}},Time:1,DropItem:0b,HurtEntities:0b,Tags:["Lobby_table_falling_block"]}],Tags:["Lobby_table_top"],CustomName:'{"text":"Lobby_table_holder"}'}
