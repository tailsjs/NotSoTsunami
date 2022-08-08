# Message about datapack initializating...
tellraw @a ["",{"text":"Initializating "},{"text":"NotSoTsunami","color":"#01FBEA","hoverEvent":{"action":"show_text","contents":"by tailsjs <3"}},{"text":" datapack..."}]
tellraw @a [""]
# if you reset datapack, killing last session
kill @e[tag=tsn]
scoreboard objectives remove ts 
scoreboard objectives remove tsa 
scoreboard objectives remove ma
# adding new variables
scoreboard objectives add ts dummy
scoreboard objectives add tsa dummy
scoreboard objectives add ma dummy 
# set max amount of bats (default 1001)
scoreboard players add @p ma 1001 
# debug
# scoreboard objectives setdisplay sidebar ts

# giving egg
give @p minecraft:allay_spawn_egg{EntityTag:{id:"minecraft:bat",CustomName:"\"TsunamiMonster\"",Tags:["tsn"],Silent:1b,PersistenceRequired:1b,NoGravity:1b,Invulnerable:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]},display:{Name:'{"text":"Summon Tsunami","italic":false}'},Enchantments:[{id:"minecraft:mending",lvl:0s}]}

tellraw @a ["",{"text":"Thank you for installing "},{"text":"NotSoTsunami","color":"#01FBEA","clickEvent":{"action":"open_url","value":"https://github.com/tailsjs/NotSoTsunami"}},{"text":" datapack!\nSummon a Tsunami with an egg in your inventory!\n-- "},{"text":"tailsjs","clickEvent":{"action":"open_url","value":"https://github.com/tailsjs"}},{"text":" <3"}]