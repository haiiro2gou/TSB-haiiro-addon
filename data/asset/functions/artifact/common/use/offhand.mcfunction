#> asset:artifact/common/use/offhand
#
# オフハンドの神器の使用時共通処理を実行します
#
# @within function asset:artifact/**main

data modify storage asset:artifact TargetSlot set value 'offhand'
function asset_manager:artifact/use/
tag @s remove CanUsed