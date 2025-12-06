# long range
execute as @e[tag=killer] at @s run playsound minecraft:entity.warden.heartbeat master @a[tag=!killer,distance=26..40] ~ ~ ~ 50 .3 0

execute as @e[tag=killer] at @s if entity @e[tag=killer] run schedule function dbm:tr/tr_pattern_far 30t