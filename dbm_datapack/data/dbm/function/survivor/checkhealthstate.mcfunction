# Check survivor healthstates and run function
# Untested
execute as @e[team=Survivor, scores={health=..2}] run function dbm:survivor/downed
execute as @e[team=Survivor, scores={health=3..4}] run function dbm:survivor/injured
execute as @e[team=Survivor, scores={health=5..6}] run function dbm:survivor/healthy