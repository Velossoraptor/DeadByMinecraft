# Run on game finish, resets all attributes back to how they were
# Untested
execute as @a run attribute @s minecraft:safe_fall_distance base reset
execute as @a[team=Survivor] run attribute @s max_health base reset
execute as @a run attribute @s minecraft:oxygen_bonus base reset
effect clear @a minecraft:saturation
gamerule drowning_damage true
gamerule spawn_mobs true
gamerule natural_health_regeneration true
execute as @a run attribute @s minecraft:attack_damage base reset
effect clear @a minecraft:saturation
# Clears scheduled bleed and scratch
schedule clear dbm:survivor/bleed
schedule clear dbm:survivor/scratch
schedule clear dbm:heartbeat
schedule clear dbm:music