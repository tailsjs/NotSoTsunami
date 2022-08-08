# Ticks
scoreboard players add @p ts 1
# Spawning water
execute at @e[tag=tsn] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 water keep
# Summon new bats (if tsa != ma)
execute if score @p ts matches 19 at @e[tag=tsn,limit=1] run summon bat ~ ~ ~ {CustomName:"\"TsunamiHelper\"",Tags:["tsn"],Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:20000000,ShowParticles:0b}]}
execute if score @p ts matches 19 run scoreboard players add @p tsa 1
# Set ticks to 0 (if tsa != ma)
execute if score @p ts matches 20 if score @p tsa < @p ma run scoreboard players set @a ts 0