# Triggers carry
# Add selectore to pred for downed survivor
# Is there a resource hog concern for this running constantly? maybe it only runs when there is a downed survivor score or something?

execute as @p[team=Killer,sort=nearest,limit=1] at @s if predicate dbm:crouching if predicate dbm:lookingatsurv run function dbm:killer/carry