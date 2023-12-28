# Spawn seat
execute at @s run summon pig ~ ~-0.89999 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"/",NoAI:1b,Saddle:1b,Tags:["seat"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}]}

# Teleport seat to player position and rotation
execute at @s if entity @e[tag=seat,type=pig,limit=1,sort=nearest,distance=0..1] run tp @e[tag=seat,type=pig,limit=1,sort=nearest,distance=0..1] ~ ~-0.89999 ~ facing ^ ^ ^2

# Reset score
scoreboard players set @s sit 0