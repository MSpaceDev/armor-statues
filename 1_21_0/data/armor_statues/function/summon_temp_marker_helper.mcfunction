# 
# Description:	Summons a temp marker to use as a pointer
# Called by:	armor_statues:summon_temp_marker
# Entity @s:	armor stand
# Parameters:
#   x (float): x coord
#   y (float): y coord
#
# summons temp marker
#
#$say x:$(x) y:$(y)
$summon minecraft:marker ^$(x) ^$(y) ^ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["as_temp_marker"],DisabledSlots:4144959,Silent:1b}