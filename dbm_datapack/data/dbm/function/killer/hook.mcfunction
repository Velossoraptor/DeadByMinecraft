execute as @e[team=Killer] at @s if predicate dbm:crouching if entity @e[tag=hook,distance=..2.5] at @e[tag=hook, sort=nearest, limit=1] run tag @a[tag=beingcarried, sort=nearest, limit=1] add hooked
execute as @e[team=Killer] at @s if predicate dbm:crouching if entity @e[tag=hook,distance=..2.5] at @e[tag=hook, sort=nearest, limit=1] run tag @a[tag=beingcarried, sort=nearest, limit=1] remove beingcarried

execute at @e[tag=hook] run tp @a[tag=hooked, sort=nearest, limit=1,distance=..2.5] ~ ~1 ~
execute as @e[tag=hook] at @s run effect give @a[tag=hooked, tag=downed, sort=nearest, limit=1,distance=..2.5] regeneration 3 1 true
execute as @e[tag=hook] at @s run effect clear @a[tag=hooked, tag=injured, sort=nearest, limit=1,distance=..2.5] regeneration