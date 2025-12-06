# close range
execute as @e[tag=killer] at @s run playsound minecraft:entity.warden.heartbeat master @a[tag=!killer,distance=..10] ~ ~ ~ 80 1 0

execute as @e[tag=killer] at @s if entity @e[tag=killer] run schedule function dbm:tr/tr_pattern_close 10t