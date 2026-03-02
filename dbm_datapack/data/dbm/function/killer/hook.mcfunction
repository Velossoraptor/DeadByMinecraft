# Tp mounted player to nearest hook
execute as @e[team=Killer] at @e[tag=hook, sort=nearest, limit=1] run tp @p[team=Survivor, sort=nearest, limit=1, nbt={RootVehicle:{Entity:{id:"minecraft:wolf"}}}] ~ ~ ~

# Kill the dog
execute as @e[team=Killer] as @e[team=Killer] run function dbm:killer/drop
