# Sit Command
### **Trigger Command:**
- Add scoreboard objective `sit` as a trigger
- When a player has a score of 1 or higher on objective `sit` run function `trigger_seat` to spawn the seat and teleport it
- Re-enable trigger command for all players constantly

### **Summoning Seat:**  
- Spawn pig slightly above the ground level
- Teleport pig to player location & rotation
---
- The pig is silent, invisible, invulnerable, and has no AI
- The saddle is visible until player sits down
- The pig has tag `seat`
```
/execute as @a at @s run summon pig ~ ~-0.89999 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,CustomNameVisible:0b,DeathLootTable:"/",NoAI:1b,Saddle:1b,Tags:["seat"],ActiveEffects:[{Id:14b,Amplifier:1b,Duration:1999999980,ShowParticles:0b}]}
```
```
/execute as @a at @s if entity @e[tag=seat,type=pig,limit=1,sort=nearest,distance=0..1] run tp @e[tag=seat,type=pig,limit=1,sort=nearest,distance=0..1] ~ ~-0.89999 ~ facing ^ ^ ^2
```
---
### **After Player Sits:**  
For all entities with tag `seat` and in the same space as a player riding an entity:
- Remove saddle from pig
```
execute as @a at @s if data entity @s RootVehicle run data modify entity @e[dz=0,dx=0,tag=seat,limit=1] Saddle set value 0b
```
---
### **When Player Walks Away**  
For all entities with tag `seat` and over 1 block away from any player:
- Teleport every pig without tag `removed-seat` and one block away from any player to the void
- Add tag `removed-seat` to avoid repeated teleportation
```
/execute as @e[tag=seat,tag=!removed-seat] at @s unless entity @a[distance=0..1] run tag @s add removed-seat
```
```
/execute as @e[tag=seat,tag=removed-seat] at @s unless entity @a[distance=0..1] run tp @s ~ -256 ~
```
---
### Loops
For all entities with tag `seat` and in the same space as a player riding an entity:
- Remove saddle from pig
```
execute as @a at @s if data entity @s RootVehicle run data modify entity @e[dz=0,dx=0,tag=seat,limit=1] Saddle set value 0b
```
---
For all entities with tag `seat` and over 1 block away from any player:
- Teleport every pig without tag `removed-seat` and one block away from any player to the void
- Add tag `removed-seat` to avoid repeated teleportation
---
Add scoreboard objective `sit` and re-enable it for all players
```
# Scoreboards
scoreboard objectives add sit trigger

# Make scoreboards usable
scoreboard players enable @a sit
```
---
Run function when player `sit` score is 1 or higher
```
# Trigger Commands
execute as @a[scores={sit=1..}] as @s run function sitcommand:trigger_seat
```