#
# Description:	Sets up armor stand for interactions
# Called by:	armor_statues:3_second
# Entity @s:	armor_stand
#
tag @s add as_interactable
tag @s add as_interactable_temp
data merge entity @s {Marker:1b}
execute store result score @s as_uuid1 run data get entity @s UUID[0]
execute store result score @s as_uuid2 run data get entity @s UUID[1]
execute store result score @s as_uuid3 run data get entity @s UUID[2]
execute store result score @s as_uuid4 run data get entity @s UUID[3]
# Head
#execute rotated ~ 0 positioned ^ ^0.76 ^ summon minecraft:interaction run function armor_statues:interactions/head_setup_small
function armor_statues:interactions/display_setup {\
        type: "head",\
        block: "minecraft:blue_stained_glass",\
        x: 0f,\
        y: 0.76f,\
        translation: -0.095f,\
        scale: 0.19f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^ ^0.76 ^ summon minecraft:block_display run function armor_statues:interactions/head_setup_small
function armor_statues:interactions/display_setup {\
        type: "head",\
        block: "minecraft:blue_stained_glass",\
        x: 0f,\
        y: 0.76f,\
        translation: -0.095f,\
        scale: 0.19f,\
        entity: "minecraft:block_display"\
    }
# Body
#execute rotated ~ 0 positioned ^ ^0.625 ^ summon minecraft:interaction run function armor_statues:interactions/body_setup_small
function armor_statues:interactions/display_setup {\
        type: "body",\
        block: "minecraft:white_stained_glass",\
        x: 0f,\
        y: 0.625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^ ^0.625 ^ summon minecraft:block_display run function armor_statues:interactions/body_setup_small
function armor_statues:interactions/display_setup {\
        type: "body",\
        block: "minecraft:white_stained_glass",\
        x: 0f,\
        y: 0.625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# Right Arm
#execute rotated ~ 0 positioned ^-0.171875 ^0.640625 ^ summon minecraft:interaction run function armor_statues:interactions/right_arm_setup_small
function armor_statues:interactions/display_setup {\
        type: "right_arm",\
        block: "minecraft:red_stained_glass",\
        x: -0.171875f,\
        y: 0.640625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^-0.171875 ^0.640625 ^ summon minecraft:block_display run function armor_statues:interactions/right_arm_setup_small
function armor_statues:interactions/display_setup {\
        type: "right_arm",\
        block: "minecraft:red_stained_glass",\
        x: -0.171875f,\
        y: 0.640625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# Left Arm
#execute rotated ~ 0 positioned ^0.171875 ^0.640625 ^ summon minecraft:interaction run function armor_statues:interactions/left_arm_setup_small
function armor_statues:interactions/display_setup {\
        type: "left_arm",\
        block: "minecraft:lime_stained_glass",\
        x: 0.171875f,\
        y: 0.640625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^0.171875 ^0.640625 ^ summon minecraft:block_display run function armor_statues:interactions/left_arm_setup_small
function armor_statues:interactions/display_setup {\
        type: "left_arm",\
        block: "minecraft:lime_stained_glass",\
        x: 0.171875f,\
        y: 0.640625f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# Right Leg
#execute rotated ~ 0 positioned ^-0.0625 ^0.328125 ^ summon minecraft:interaction run function armor_statues:interactions/right_leg_setup_small
function armor_statues:interactions/display_setup {\
        type: "right_leg",\
        block: "minecraft:light_blue_stained_glass",\
        x: -0.0625f,\
        y: 0.328125f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^-0.0625 ^0.328125 ^ summon minecraft:block_display run function armor_statues:interactions/right_leg_setup_small
function armor_statues:interactions/display_setup {\
        type: "right_leg",\
        block: "minecraft:light_blue_stained_glass",\
        x: -0.0625f,\
        y: 0.328125f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# Left Leg
#execute rotated ~ 0 positioned ^0.0625 ^0.328125 ^ summon minecraft:interaction run function armor_statues:interactions/left_leg_setup_small
function armor_statues:interactions/display_setup {\
        type: "left_leg",\
        block: "minecraft:yellow_stained_glass",\
        x: 0.0625f,\
        y: 0.328125f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^0.0625 ^0.328125 ^ summon minecraft:block_display run function armor_statues:interactions/left_leg_setup_small
function armor_statues:interactions/display_setup {\
        type: "left_leg",\
        block: "minecraft:yellow_stained_glass",\
        x: 0.0625f,\
        y: 0.328125f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# Base
#execute rotated ~ 0 positioned ^ ^ ^ summon minecraft:interaction run function armor_statues:interactions/base_setup_small
function armor_statues:interactions/display_setup {\
        type: "base",\
        block: "minecraft:black_stained_glass",\
        x: 0f,\
        y: 0f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:interaction"\
    }
#execute rotated ~ 0 positioned ^ ^ ^ summon minecraft:block_display run function armor_statues:interactions/base_setup_small
function armor_statues:interactions/display_setup {\
        type: "base",\
        block: "minecraft:black_stained_glass",\
        x: 0f,\
        y: 0f,\
        translation: -0.0625f,\
        scale: 0.125f,\
        entity: "minecraft:block_display"\
    }
# resets temp tag
tag @s remove as_interactable_temp