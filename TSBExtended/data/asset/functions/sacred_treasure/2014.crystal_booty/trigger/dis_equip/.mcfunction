#> asset:sacred_treasure/2014.crystal_booty/trigger/dis_equip/
#
# 装備を外した時に外した部位にのみのidが入った状態でトリガーされる
#
# @within tag/function asset:sacred_treasure/dis_equip

execute if data storage asset:context id{feet:2014} run function asset:sacred_treasure/2014.crystal_booty/trigger/dis_equip/main