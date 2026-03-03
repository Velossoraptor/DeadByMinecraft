execute as @e[team=Killer] at @s if predicate dbm:crouching if entity @e[tag=hook,distance=..5] at @e[tag=hook, sort=nearest, limit=1] run tag @a[tag=beingcarried, sort=nearest, limit=1] add hooked
execute as @e[team=Killer] at @s if predicate dbm:crouching if entity @e[tag=hook,distance=..5] at @e[tag=hook, sort=nearest, limit=1] run tag @a[tag=beingcarried, sort=nearest, limit=1] remove beingcarried

execute at @e[tag=hook] run tp @a[tag=hooked, sort=nearest, limit=1] ~ ~1 ~