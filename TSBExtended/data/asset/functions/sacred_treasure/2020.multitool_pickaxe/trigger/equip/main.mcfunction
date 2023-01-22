#> asset:sacred_treasure/2020.multitool_pickaxe/trigger/equip/main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2020.multitool_pickaxe/trigger/equip/
#   asset:sacred_treasure/2021.multitool_shovel/trigger/equip/
#   asset:sacred_treasure/2022.multitool_axe/trigger/equip/
#   asset:sacred_treasure/2023.multitool_hoe/trigger/equip/
#   asset:sacred_treasure/2024.multitool_shear/trigger/equip/

#> private
# @private
    #declare score_holder $1K4.Count

# メイン処理
    execute store result score $1K4.Count Temporary run data get storage asset:context Items.mainhand.tag.TSB.TSBE.EquipCount 1.0
    scoreboard players remove $1K4.Count Temporary 1
    execute if score $1K4.Count Temporary matches 1.. store result storage api: Argument.ID int 1 run data get storage asset:context id.mainhand
    execute if score $1K4.Count Temporary matches 1.. store result storage asset:sacred_treasure DataExtension.EquipCount int 1 run scoreboard players get $1K4.Count Temporary
    execute unless score $1K4.Count Temporary matches 1.. run data modify storage api: Argument.ID set value 2019
    execute store result storage asset:sacred_treasure RemainingCount int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result storage asset:sacred_treasure RemainingCountMAX int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMAX
    function api:sacred_treasure/replace/from_id
    data modify storage asset:context Items.mainhand set from entity @s SelectedItem

# 演出
    execute unless score $1K4.Count Temporary matches 1.. run playsound block.lava.extinguish master @a ~ ~ ~ 0.5 0.7
    execute unless score $1K4.Count Temporary matches 1.. run particle cloud ~ ~1 ~ 0.1 0.1 0.1 0.1 10
    execute if score $1K4.Count Temporary matches 1.. run playsound block.piston.contract master @a ~ ~ ~ 0.5 1.5

# リセット
    scoreboard players reset $1K4.Count Temporary