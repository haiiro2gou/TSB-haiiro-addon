#> asset:mob/2003.frestchika_full_tuned/tick/reset
#
#
#
# @within function asset:mob/2003.frestchika_full_tuned/tick/**

# 腕を戻す
    data modify entity @e[type=armor_stand,tag=1JN.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.LeftArm set value [0f,0f,340f]
    data modify entity @e[type=armor_stand,tag=1JN.ArmorStand,distance=..0.01,sort=nearest,limit=1] Pose.RightArm set value [0f,0f,20f]
# アイテムも戻す
    item replace entity @e[type=armor_stand,tag=1JN.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.mainhand with stick{CustomModelData:20144}
    item replace entity @e[type=armor_stand,tag=1JN.ArmorStand,distance=..0.01,sort=nearest,limit=1] weapon.offhand with stick{CustomModelData:20143}
    item replace entity @e[type=armor_stand,tag=1JN.ArmorStand,distance=..0.01,sort=nearest,limit=1] armor.head with stick{CustomModelData:20147}

# タグをリセットする
    function asset:mob/2003.frestchika_full_tuned/tick/skill_tag_remove
# スコアを戻す
    scoreboard players set @s 1JN.Tick -10

# 条件でテレポートする
    function asset:mob/2003.frestchika_full_tuned/tick/move/teleport_check