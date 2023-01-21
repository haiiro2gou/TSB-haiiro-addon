#> asset:sacred_treasure/2020.multitool_pickaxe/trigger/reset/3.main
#
# 神器のメイン処理部
#
# @within function
#   asset:sacred_treasure/2020.multitool_pickaxe/trigger/reset/2.check_condition
#   asset:sacred_treasure/2021.multitool_shovel/trigger/reset/2.check_condition
#   asset:sacred_treasure/2022.multitool_axe/trigger/reset/2.check_condition
#   asset:sacred_treasure/2023.multitool_hoe/trigger/reset/2.check_condition
#   asset:sacred_treasure/2024.multitool_shear/trigger/reset/2.check_condition

# デフォルトに戻しましょうねー
    data modify storage api: Argument.ID set value 2019
    execute store result storage asset:sacred_treasure RemainingCount int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCount
    execute store result storage asset:sacred_treasure RemainingCountMAX int 1 run data get storage asset:context Items.mainhand.tag.TSB.RemainingCountMAX
    tellraw @s {"nbt":"RemainingCount","storage":"asset:sacred_treasure"}
    function api:sacred_treasure/replace/from_id