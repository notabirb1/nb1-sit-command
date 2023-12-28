# Add tag removed-seat to every seat without tag removed-seat and over 1 block away from any player
execute as @e[type=pig,tag=seat,tag=!removed-seat] at @s unless entity @a[distance=0..1] run tag @s add removed-seat

# Teleport every seat with tag removed-seat to the void
execute as @e[type=pig,tag=seat,tag=removed-seat] at @s unless entity @a[distance=0..1] run tp @s ~ -256 ~