# Increment nearby gen-prog score "num-active" by 1
execute as @s[scores={repair-active=..0}] run scoreboard players add @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] num-active 1
execute as @s[scores={repair-active=1..}] run scoreboard players remove @e[tag=gen-prog,sort=nearest,limit=1,distance=..6] num-active 1

execute as @e[tag=repair_point,scores={repair-active=..0}] at @s if entity @p[distance=..0.3,predicate=dbm:crouching] run scoreboard players set @s repair-active 1
execute as @e[tag=repair_point,scores={repair-active=1..}] at @s unless entity @p[distance=..0.3,predicate=dbm:crouching] run scoreboard players set @s[scores={repair-active=1..}] repair-active 0