# Removes the saddle from pigs that players sit on.
execute as @a at @s if data entity @s RootVehicle run data modify entity @e[dz=0,dx=0,tag=seat,limit=1] Saddle set value 0b