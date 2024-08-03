#
# Description:	Copies selected armor stand settings and pose to the book
# Called by:	as_statue:trigger
# Entity @s:	armor stand
#
execute as @p[tag=as_selected] run function armor_statues:storage_in
#
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose set value {Pose: {RightArm: [0f, 0f, 0f], LeftLeg: [0f, 0f, 0f], Head: [0f, 0f, 0f], LeftArm: [0f, 0f, 0f], RightLeg: [0f, 0f, 0f], Body: [0f, 0f, 0f]}, NoBasePlate:0b, ShowArms:0b, Small:0b, Invisible:0b, HasVisualFire:0b}
#
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.Pose merge from entity @s Pose
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.NoBasePlate set from entity @s NoBasePlate
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.ShowArms set from entity @s ShowArms
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.Small set from entity @s Small
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.Invisible set from entity @s Invisible
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.HasVisualFire set from entity @s HasVisualFire
execute store result storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.Scale double 0.001 run attribute @s minecraft:scale get 1000
execute if score #cnv_enabled as_angle matches 1.. run data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.CustomNameVisible set value 0
execute if score #cnv_enabled as_angle matches 1.. run data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.CustomNameVisible set from entity @s CustomNameVisible
execute if score #name_enabled as_angle matches 1.. run data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.SavedPose.CustomName set from entity @s CustomName
#
execute as @p[tag=as_selected] run function armor_statues:storage_out
#
effect give @s minecraft:glowing 1
execute as @p[tag=as_selected] run function armor_statues:player_message {\
    message: '{\
        "text":"Pose and settings copied to the book",\
        "color":"dark_green"\
    }'\
}
