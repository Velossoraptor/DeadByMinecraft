# Sets all Attributes, damage mods, etc to start a game of dbd
# Untested
execute as @e run attribute @s minecraft:safe_fall_distance base set 255
execute as @e[team=Survivor] run attribute @s max_health base set 6
execute as @e run attribute @s minecraft:oxygen_bonus base set 1000000
effect give @a minecraft:saturation infinite 255 true
gamerule drowning_damage false
gamerule spawn_mobs false
gamerule natural_health_regeneration false
execute as @a run damage @s 1 minecraft:generic
effect give @e instant_health
# initialize scratch mark tracking and bleeding
function dbm:survivor/scratch
function dbm:survivor/bleed
function dbm:heartbeat
function dbm:music