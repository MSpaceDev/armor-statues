#
# Description:	teleports interactions to correct positions
# Called by:	armor_statues:interactions/interact_pointer
# Entity @s:	armor_stand
#
# summons temp block display for multiplication
#
summon minecraft:block_display ^ ^ ^ {Tags:["as_temp_block_display"]}
execute store result storage armor_statues:temp multiply.var2 float 0.0001 run attribute @s minecraft:generic.scale get 10000
# Stores uuid to select entities
scoreboard players operation #uuid_selector as_uuid1 = @s as_uuid1
scoreboard players operation #uuid_selector as_uuid2 = @s as_uuid2
scoreboard players operation #uuid_selector as_uuid3 = @s as_uuid3
scoreboard players operation #uuid_selector as_uuid4 = @s as_uuid4
# Selects entities from their stored uuid
function armor_statues:select_by_uuid
# head
data merge storage armor_statues:temp {\
        tp: {\
            x: 0f\
        }\
    }
data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.76f,\
            out: 'storage armor_statues:temp tp.y'\
        }\
    }

execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_head_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# body
data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.625f,\
            out: 'storage armor_statues:temp tp.y'\
        }\
    }

execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_body_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# right arm
data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.171875f,\
            out: 'storage armor_statues:temp tp.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
    data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.640625f,\
            out: 'storage armor_statues:temp tp.y'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_right_arm_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# left arm
data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.171875f,\
            out: 'storage armor_statues:temp tp.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_left_arm_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# right leg
data merge storage armor_statues:temp {\
        multiply: {\
            var1: -0.0625f,\
            out: 'storage armor_statues:temp tp.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
    data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.328125f,\
            out: 'storage armor_statues:temp tp.y'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_right_leg_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# left leg
data merge storage armor_statues:temp {\
        multiply: {\
            var1: 0.0625f,\
            out: 'storage armor_statues:temp tp.x'\
        }\
    }
execute as @e[type=minecraft:block_display,sort=nearest,limit=1,tag=as_temp_block_display] at @s run function armor_statues:multiply_float with storage armor_statues:temp multiply
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_left_leg_interactable] rotated ~ 0 run function armor_statues:interactions/tp_helper with storage armor_statues:temp tp
# base
execute as @e[type=#armor_statues:selectable,tag=as_uuid_selected,tag=as_base_interactable] rotated ~ 0 run tp ^ ^ ^
tag @e[tag=as_uuid_selected] remove as_uuid_selected