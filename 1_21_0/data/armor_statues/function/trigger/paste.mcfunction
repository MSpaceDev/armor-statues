#
# Description:	Paste armor stand settings and pose from book
# Called by:	as_statue:trigger
# Entity @s:	armor stand
#
execute as @p[tag=as_selected] run function armor_statues:storage_in
#
data modify entity @s {} merge from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose
data modify entity @s Pose set from storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.Pose
function armor_statues:set_scale with storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose
#
execute as @p[tag=as_selected] run function armor_statues:player_message {\
    message: '{\
        "text":"Settings and pose pasted from the book",\
        "color":"dark_green"\
    }'\
}
#
# Tag the armor stand as modified
#
tag @s add as_modified
