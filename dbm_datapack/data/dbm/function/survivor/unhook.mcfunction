execute as @e[team=Survivor] at @s if predicate dbm:crouching if entity @e[team=Survivor,tag=hooked,distance=..5] run playsound block.honey_block.slide master @a ~ ~ ~ 80
execute as @e[team=Survivor] at @s if predicate dbm:crouching if entity @e[team=Survivor,tag=hooked,distance=..5] run tag @a[tag=hooked, sort=nearest, limit=1] remove hooked
