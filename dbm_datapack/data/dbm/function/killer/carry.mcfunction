# If you crouch while looking at a survivor you carry them by tping behind you permanently
execute as @a[team=Killer,sort=nearest,limit=1] at @s if predicate dbm:crouching if predicate dbm:lookingatsurv run tag @a[team=Survivor, tag=downed, distance=..2.5, sort=nearest, limit=1] add beingcarried

execute as @a[team=Killer,sort=nearest,limit=1] at @s run tp @a[team=Survivor, tag=beingcarried, limit=1] ^ ^-0.25 ^-0.8

# add tick function to prevent picking multiple survivors
# Maybe add drop functionality?