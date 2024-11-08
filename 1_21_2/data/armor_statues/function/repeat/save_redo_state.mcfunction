#
# Description:	Copies last state for redoing
# Called by:	as_statue:repeat/undo
# Entity @s:	player
#
# Copies data to redo
#
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates prepend value {HasVisualFire:0b}
#
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Pose set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Pose
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].NoBasePlate set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] NoBasePlate
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].ShowArms set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] ShowArms
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Small set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Small
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Invisible set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Invisible
#data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].CustomNameVisible set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] CustomNameVisible
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].NoGravity set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] NoGravity
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Pos set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Pos
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] Rotation
data modify storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].HasVisualFire set from entity @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] HasVisualFire
execute store result storage armor_statues:book_storage SavedItem.components.minecraft:custom_data.RedoStates[0].Scale double 0.001 run attribute @e[type=armor_stand,sort=nearest,limit=1,tag=as_selected] minecraft:scale get 1000
