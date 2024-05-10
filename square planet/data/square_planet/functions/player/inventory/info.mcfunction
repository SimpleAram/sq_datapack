
##  < 내 정보 자세히 >

#   내 정보 클릭
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] at @s if items entity @s player.cursor *[minecraft:custom_data~{item:"info"}] run playsound minecraft:ui.button.click voice @s ~ ~ ~ .9 2
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s player.cursor *[minecraft:custom_data~{item:"info"}] run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"【 플레이어 "},{"selector":"@s","bold":true,"color":"gold"},{"text":" 】\n"},{"text":"\n최대 MP ","color":"#3b6ad1"},{"score":{"name":"@s","objective":"PLAYER.MAX_MANA"},"bold":true},{"text":" / ","color":"gray"},{"text":"MP 회복속도 ","color":"#3b6ad1"},{"score":{"name":"@s","objective":"PLAYER.RECOVERY_SPEED_MANA"},"bold":true},{"text":"단계\n"}]


#   커서 아이템 제거
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"info"}]
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"info"}] run item replace entity @a player.cursor with air
