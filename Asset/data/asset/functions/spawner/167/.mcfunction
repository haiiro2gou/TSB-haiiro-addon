#> asset:spawner/167/
#
# スポナーのチェック
#
# @within tag/function asset:spawner/register/*

execute unless data storage asset:spawner DPR[{D:overworld,X:172,Y:68,Z:248}] in overworld positioned 172 68 248 if entity @p[distance=..40] run function asset:spawner/167/register