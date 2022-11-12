#> api:sacred_treasure/give/from_id
#
# 神器Assetの入手処理を叩く処理
#
# @input storage api: Argument.ID
# @api

# validate
    execute unless data storage api: Argument.ID run tellraw @a [{"storage":"global","nbt":"Prefix.ERROR"},{"text":"引数が足りません","color":"white"},{"text":" ID","color":"red"}]
# 既存にasset:context id&slotが存在する場合に備えて退避させる
    function asset_manager:common/context_id/stash
    function asset_manager:common/context_slot/stash
# 代入
    data modify storage asset:context id set from storage api: Argument.ID
    execute if data storage api: Argument.Slot run data modify storage asset:context Slot set from storage api: Argument.Slot
# 呼び出し
    execute if data storage api: Argument.ID run function #asset:sacred_treasure/give
# 退避させたasset:contextを戻す
    function asset_manager:common/context_id/pop
    function asset_manager:common/context_slot/pop
# リセット
    data remove storage api: Argument.ID
    data remove storage api: Argument.Slot