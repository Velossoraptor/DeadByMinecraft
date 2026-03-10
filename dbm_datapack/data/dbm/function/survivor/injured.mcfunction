# Set speed size and tags for injured
# Untested
execute as @e[scores={health=..2}, tag=healthy] run tag @s remove healthy
execute as @e[scores={health=..2}, tag=downed] run tag @s remove downed
execute as @e[scores={health=..2}] unless entity @s[tag=injured] run tag @s add injured
execute as @e[scores={health=..2}] run attribute @s scale base reset
execute as @e[scores={health=..2}] run attribute @s movement_speed base reset