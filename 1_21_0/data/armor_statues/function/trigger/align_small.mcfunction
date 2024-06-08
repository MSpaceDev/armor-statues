#
# Description:	Align held block or item with supporting surface for small armor stands
# Called by:	armor_statues:trigger
# Entity @s:	armor stand
#
# summons temp block display for multiplication
#
summon minecraft:block_display ^ ^ ^ {Tags:["as_temp_block_display"]}
execute store result storage armor_statues:temp multiply.var2 float 0.0001 run attribute @s minecraft:generic.scale get 10000
#
# Align block to surface
#
execute if entity @s[scores={as_trigger=151}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.28625f,\
            out: 'storage armor_statues:temp align.x'\
        }\
    }
execute if entity @s[scores={as_trigger=151}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=151}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.3275f,\
            out: 'storage armor_statues:temp align.y'\
        }\
    }
execute if entity @s[scores={as_trigger=151}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=151}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.176,\
            out: 'storage armor_statues:temp align.z'\
        }\
    }
execute if entity @s[scores={as_trigger=151}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply

execute if entity @s[scores={as_trigger=151}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-15.0f,135.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=151}] at @s run function armor_statues:trigger/tp_helper with storage armor_statues:temp align
#
# Align item to surface (upright)
#
execute if entity @s[scores={as_trigger=152}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.18f,\
            out: 'storage armor_statues:temp align.x'\
        }\
    }
execute if entity @s[scores={as_trigger=152}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=152}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.705f,\
            out: 'storage armor_statues:temp align.y'\
        }\
    }
execute if entity @s[scores={as_trigger=152}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=152}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.28125,\
            out: 'storage armor_statues:temp align.z'\
        }\
    }
execute if entity @s[scores={as_trigger=152}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply

execute if entity @s[scores={as_trigger=152}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-90.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=152}] at @s run function armor_statues:trigger/tp_helper with storage armor_statues:temp align
#
# Align item to surface (flat)
#
execute if entity @s[scores={as_trigger=153}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.1925f,\
            out: 'storage armor_statues:temp align.x'\
        }\
    }
execute if entity @s[scores={as_trigger=153}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=153}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.39f,\
            out: 'storage armor_statues:temp align.y'\
        }\
    }
execute if entity @s[scores={as_trigger=153}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=153}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.1475,\
            out: 'storage armor_statues:temp align.z'\
        }\
    }
execute if entity @s[scores={as_trigger=153}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply

execute if entity @s[scores={as_trigger=153}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[0.0f,0.0f,0.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=153}] at @s run function armor_statues:trigger/tp_helper with storage armor_statues:temp align
#
# Align tool to surface (flat)
#
execute if entity @s[scores={as_trigger=154}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.085f,\
            out: 'storage armor_statues:temp align.x'\
        }\
    }
execute if entity @s[scores={as_trigger=154}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=154}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.6425f,\
            out: 'storage armor_statues:temp align.y'\
        }\
    }
execute if entity @s[scores={as_trigger=154}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute if entity @s[scores={as_trigger=154}] run data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.22,\
            out: 'storage armor_statues:temp align.z'\
        }\
    }
execute if entity @s[scores={as_trigger=154}] as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply

execute if entity @s[scores={as_trigger=154}] run data merge entity @s {ShowArms:1b,NoGravity:1b,Invisible:1b,Pose:{Head:[0.0f,0.001f,0.0f],Body:[0.0f,0.001f,0.0f],RightArm:[-10.0f,0.0f,-90.0f],LeftArm:[0.0f,0.0f,0.0f],RightLeg:[0.0f,0.0f,0.0f],LeftLeg:[0.0f,0.0f,0.0f]}}
execute if entity @s[scores={as_trigger=154}] at @s run function armor_statues:trigger/tp_helper with storage armor_statues:temp align
#
#
# Tag the armor stand as modified and invisible
#
tag @s add as_invisible
tag @s add as_modified

#
# kill temp block display
#
kill @e[type=minecraft:block_display,tag=as_temp_block_display]