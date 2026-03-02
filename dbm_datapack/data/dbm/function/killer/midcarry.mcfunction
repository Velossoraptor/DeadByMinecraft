# Make nearest killer the owner
 data modify entity @e[tag=carry, limit=1] Owner set from entity @p[team=Killer, sort=nearest, limit=1] UUID
# Leash to nearest Killer
 data modify entity @e[tag=carry, limit=1] leash.UUID set from entity @p[team=Killer, sort=nearest, limit=1] UUID

schedule function dbm:killer/endcarry 1t