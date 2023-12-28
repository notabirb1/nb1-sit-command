# Scoreboards
scoreboard objectives add sit trigger

# Make scoreboards usable
scoreboard players enable @a sit

# Trigger Commands
execute as @a[scores={sit=1..}] as @s run function sitcommand:trigger_seat

# Remove saddle when player sits on seat
function sitcommand:remove_saddle

# Delete seats that are 1 block away from any player
function sitcommand:remove_inactive_seats