
##  < 칭호 시스템 >

#   칭호 텍스트
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] at @s if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}] run playsound minecraft:ui.button.click voice @s ~ ~ ~ .9 2
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}] run function square_planet:player/inventory/title/page_1

#   커서 아이템 제거
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}]
execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}] run item replace entity @a player.cursor with air