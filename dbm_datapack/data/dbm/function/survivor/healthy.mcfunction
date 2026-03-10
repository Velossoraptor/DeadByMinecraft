# Set speed size and tags for healthy
# Untested
execute as @e[scores={health=..2}, tag=injured] run tag @s remove injured
execute as @e[scores={health=..2}, tag=downed] run tag @s remove downed
execute as @e[scores={health=..2}] unless entity @s[tag=healthy] run tag @s add healthy
execute as @e[scores={health=..2}] run attribute @s scale base reset
execute as @e[scores={health=..2}] run attribute @s movement_speed base reset
