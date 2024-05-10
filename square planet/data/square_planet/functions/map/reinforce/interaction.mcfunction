
##  모루 인터렉션

execute as @e[type=interaction,tag=anvil] on target unless score @s PLAYER.REINFORCE matches 0.. run scoreboard players set @s PLAYER.REINFORCE 0

execute as @e[type=interaction,tag=anvil] on target run function square_planet:map/reinforce/normal_list/clicked
execute as @e[type=interaction,tag=anvil] on target run function square_planet:map/reinforce/special_list/clicked



#   우클릭
execute as @e[type=interaction,tag=anvil] on target run tellraw @s[scores={PLAYER.REINFORCE=0}] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"bold":true,"color":"white","strikethrough":true,"text":"────────────"},{"bold":true,"color":"#E6592E","text":" 강화의 모루 "},{"bold":true,"color":"white","strikethrough":true,"text":"────────────"},{"text":" \n\n"},{"color":"white","text":"  ＃ 일반 강화"},{"color":"gray","text":"\n    - "},{"color":"white","text":"일반"},{"color":"gray","text":", "},{"color":"yellow","text":"레어"},{"color":"gray","text":", "},{"color":"light_purple","text":"엘리트"},{"color":"gray","text":" 등급의 아이템을 강화할 수 있습니다"},{"color":"gray","text":"\n    - "},{"color":"green","text":"스텔라 크레딧"},{"color":"gray","text":"을 소비하여 강화를 진행합니다"},{"text":"\n\n"},{"color":"aqua","text":"  # 특수 강화"},{"color":"gray","text":"\n    - "},{"color":"gold","text":"유니크"},{"color":"gray","text":", "},{"color":"red","text":"레전드"},{"color":"gray","text":" 등급의 아이템을 강화할 수 있습니다"},{"color":"gray","text":"\n    - "},{"color":"green","text":"스텔라 크레딧"},{"color":"gray","text":"과 "},{"color":"aqua","text":"특별한 강화 재료"},{"color":"gray","text":"를 소비하여 강화를 진행합니다"},{"text":"\n\n  "},{"clickEvent":{"action":"run_command","value":"/function square_planet:map/reinforce/item_select"},"color":"white","text":"[ 여기를 클릭해 강화 준비 ]"}]

# execute as @e[type=interaction,tag=anvil] on target run tellraw @s[scores={PLAYER.REINFORCE=0}] [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"bold":true,"color":"white","strikethrough":true,"text":"────────────"},{"bold":true,"color":"#E6592E","text":" 강화의 모루 "},{"bold":true,"color":"white","strikethrough":true,"text":"────────────"},{"text":" \n\n"},{"color":"white","text":"  ＃ 일반 강화"},{"color":"gray","text":"\n    - "},{"color":"white","text":"일반"},{"color":"gray","text":", "},{"color":"yellow","text":"레어"},{"color":"gray","text":", "},{"color":"light_purple","text":"엘리트"},{"color":"gray","text":" 등급의 아이템을 강화할 수 있습니다"},{"color":"gray","text":"\n    - "},{"color":"green","text":"스텔라 크레딧"},{"color":"gray","text":"을 소비하여 강화를 진행합니다"},{"text":"\n\n"},{"color":"aqua","text":"  # 특수 강화"},{"color":"gray","text":"\n    - "},{"color":"gold","text":"유니크"},{"color":"gray","text":", "},{"color":"red","text":"레전드"},{"color":"gray","text":" 등급의 아이템을 강화할 수 있습니다"},{"color":"gray","text":"\n    - "},{"color":"green","text":"스텔라 크레딧"},{"color":"gray","text":"과 "},{"color":"aqua","text":"특별한 강화 재료"},{"color":"gray","text":"를 소비하여 강화를 진행합니다"},{"text":"\n\n  "},{"clickEvent":{"action":"run_command","value":"/function square_planet:map/reinforce/item_select"},"color":"white","text":"[ 일반 강화 ]"},{"text":"  "},{"clickEvent":{"action":"run_command","value":"/function square_planet:map/reinforce/item_select"},"color":"aqua","text":"[ 특수 강화 ]"}]






execute as @e[type=interaction,tag=anvil] run data remove entity @s interaction
