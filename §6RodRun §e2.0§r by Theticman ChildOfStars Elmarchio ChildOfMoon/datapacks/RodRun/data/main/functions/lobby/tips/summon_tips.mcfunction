# Kill previous one
kill @e[tag=Lobby_tips_villager]

# Summon villager
summon villager 4.0 21.0 -34.5 {Rotation:[180F],CustomName:'[{"text":"♦","color":"dark_green"},{"text":" Tips ","color":"white"},{"text":"♦","color":"dark_green"}]',Silent:1b,Invulnerable:1b,CustomNameVisible:1b,PersistenceRequired:1b,NoAI:1b,Willing:0b,Tags:["Lobby_tips_villager","tips"],VillagerData:{level:5,profession:"minecraft:nitwit",type:"minecraft:snow"}}
