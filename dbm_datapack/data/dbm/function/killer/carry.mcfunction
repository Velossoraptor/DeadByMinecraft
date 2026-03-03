# If you crouch while looking at a survivor you carry them by tping behind you permanently
execute as @a[team=Killer,sort=nearest,limit=1] at @s if predicate dbm:crouching if predicate dbm:lookingatsurv run tag @a[team=Survivor, sort=nearest, limit=1] add beingcarried

execute as @a[team=Killer,sort=nearest,limit=1] at @s run tp @a[team=Survivor, tag=beingcarried, limit=1] ^ ^-0.25 ^-0.8

# Add selector for downed survivors
# Add limit to how close they have to be