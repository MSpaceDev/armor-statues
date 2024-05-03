#
# Description:	Adds scale to armor stand
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# gets armor stand scale
#
execute store result score #scale as_angle run attribute @s minecraft:generic.scale base get 1000
#
# adds scale to value
#
execute if entity @s[scores={as_trigger=1300}] run scoreboard players remove #scale as_angle 500
execute if entity @s[scores={as_trigger=1301}] run scoreboard players remove #scale as_angle 100
execute if entity @s[scores={as_trigger=1302}] run scoreboard players remove #scale as_angle 10
execute if entity @s[scores={as_trigger=1303}] run scoreboard players add #scale as_angle 10
execute if entity @s[scores={as_trigger=1304}] run scoreboard players add #scale as_angle 100
execute if entity @s[scores={as_trigger=1305}] run scoreboard players add #scale as_angle 500
#
# make sure scale is within limits
#
execute if score #scale as_angle < #scale_min as_angle run scoreboard players operation #scale as_angle = #scale_min as_angle
execute if score #scale as_angle > #scale_max as_angle run scoreboard players operation #scale as_angle = #scale_max as_angle
#
# Sets back to scale
#
execute store result storage armor_statues:temp scale.scale float 0.001 run scoreboard players get #scale as_angle
function armor_statues:trigger/scale_helper with storage armor_statues:temp scale
#
# Tag the armor stand as modified
#
tag @s add as_modified
