#> asset:artifact/2025.multitool_empty/trigger/fuel/wooden_fence_gates
#
# 所持チェック
#
# @within function asset:artifact/2025.multitool_empty/trigger/2.check_condition

# 処理
    execute unless score $1K9.Succeed Temporary matches 1.. store success score $1K9.Succeed Temporary run clear @s #asset:artifact/2025.multitool_empty/fuel/wooden_fence_gates 1
    execute if score $1K9.Succeed Temporary matches 1 run data modify storage asset:temp 1K9.FuelCount set value 300
    scoreboard players reset $1K9.Succeed Temporary