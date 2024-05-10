
##  강화할 아이템으로 모루 우클릭

scoreboard players set @s PLAYER.REINFORCE 1
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"color":"white","text":"  강화할 아이템을 들고 우클릭 해주세요\n\n  또는 "},{"clickEvent":{"action":"run_command","value":"/function square_planet:map/reinforce/cencel"},"color":"red","text":"[ 여기를 클릭해 강화 취소 ]"}]







#   커서 아이템 제거
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}]
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"title"}] run item replace entity @a player.cursor with air