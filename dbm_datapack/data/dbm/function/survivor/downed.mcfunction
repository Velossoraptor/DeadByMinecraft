# Set speed size and tags for downed
# Untested
execute as @e[scores={health=..2}, tag=injured] run tag @s remove injured
execute as @e[scores={health=..2}, tag=healthy] run tag @s remove healthy
execute as @e[scores={health=..2}] unless entity @s[tag=downed] run tag @s add downed
execute as @e[scores={health=..2}] run attribute @s scale base set .7
execute as @e[scores={health=..2}] run attribute @s movement_speed base set .012
