
##  강화 취소

scoreboard players reset @s PLAYER.REINFORCE
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"bold":true,"color":"#E6592E","text":"  강화의 모루"},{"color":"white","text":"의 접근을 취소했습니다\n"}]







#   커서 아이템 제거
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}]
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}] run item replace entity @a player.cursor with air