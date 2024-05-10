
##  < 퀘스트 로거 >


# execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s player.cursor *[minecraft:custom_data~{item:"quest_logger"}] run tellraw @a {"text":"test"}

#   커서 아이템 제거
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"quest_logger"}]
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"quest_logger"}] run item replace entity @a player.cursor with air
