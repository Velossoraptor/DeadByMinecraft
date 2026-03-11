# Check survivor healthstates and run function
# Untested
execute as @e[team=Survivor, scores={health=..2}, tag=injured] run tag @s remove injured
execute as @e[team=Survivor, scores={health=..2}, tag=healthy] run tag @s remove healthy
execute as @e[team=Survivor, scores={health=..2}] unless entity @s[tag=downed] run tag @s add downed
execute as @e[team=Survivor, scores={health=..2}] run attribute @s scale base set .7
execute as @e[team=Survivor, scores={health=..2}] run attribute @s movement_speed base set .012

execute as @e[team=Survivor, scores={health=3..4}, tag=healthy] run tag @s remove healthy
execute as @e[team=Survivor, scores={health=3..4}, tag=downed] run tag @s remove downed
execute as @e[team=Survivor, scores={health=3..4}] unless entity @s[tag=injured] run tag @s add injured
execute as @e[team=Survivor, scores={health=3..4}] run attribute @s scale base reset
execute as @e[team=Survivor, scores={health=3..4}] run attribute @s movement_speed base reset

execute as @e[team=Survivor, scores={health=5..}, tag=injured] run tag @s remove injured
execute as @e[team=Survivor, scores={health=5..}, tag=downed] run tag @s remove downed
execute as @e[team=Survivor, scores={health=5..}] unless entity @s[tag=healthy] run tag @s add healthy
execute as @e[team=Survivor, scores={health=5..}] run attribute @s scale base reset
execute as @e[team=Survivor, scores={health=5..}] run attribute @s movement_speed base reset
# say checkhealthstate