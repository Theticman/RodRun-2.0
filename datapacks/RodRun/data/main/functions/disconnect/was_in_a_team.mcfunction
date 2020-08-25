# Reset tags
tag @s remove Blue
tag @s remove White
tag @s remove Red

# Clear boots
replaceitem entity @s armor.feet air

# Reset teams
function main:lobby/others/set_team