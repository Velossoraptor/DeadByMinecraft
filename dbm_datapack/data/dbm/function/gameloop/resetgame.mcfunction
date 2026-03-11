# Run on game finish, resets all attributes back to how they were
# Untested
execute as @e run attribute @s minecraft:safe_fall_distance base reset
execute as @e[team=Survivor] run attribute @s max_health base reset
execute as @e run attribute @s minecraft:oxygen_bonus base reset
effect clear @a minecraft:saturation
gamerule drowning_damage true
gamerule spawn_mobs true
gamerule natural_health_regeneration true
# Clears scheduled bleed and scratch
schedule clear dbm:survivor/bleed
schedule clear dbm:survivor/scratch
schedule clear dbm:heartbeat
schedule clear dbm:music