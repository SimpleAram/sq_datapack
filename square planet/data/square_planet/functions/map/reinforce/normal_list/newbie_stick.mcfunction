
##  newbie_stick

execute store result score @s[scores={PLAYER.REINFORCE=1}] PLAYER.REINFORCE_ITEM run data get entity @s SelectedItem.components.minecraft:custom_data.reinforcement

execute if score @s[scores={PLAYER.REINFORCE=1}] PLAYER.REINFORCE_ITEM matches 0..4 if score @s PLAYER.REINFORCE_ITEM matches 0 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"bold":true,"color":"white","text":"\n\n  초보자의 얇은 나뭇가지 +0"},{"color":"gray","text":"\n\n  ▼ "},{"color":"green","text":"스텔라 크레딧"},{"color":"white","text":" -1500"},{"color":"gray","text":"\n  ▼ "},{"color":"dark_aqua","text":"성공 확률"},{"color":"white","text":" 100%"},{"bold":true,"color":"white","text":"\n\n  초보자의 견고한 나뭇가지 +1"},{"text":"\n\n  "},{"clickEvent":{"action":"run_command","value":"/say 강화한다"},"text":"[ 강화한다 ]"},{"text":"  "},{"clickEvent":{"action":"run_command","value":"/function square_planet:map/reinforce/cencel"},"color":"red","text":"[ 취소한다 ]"}]




execute if score @s[scores={PLAYER.REINFORCE=1}] PLAYER.REINFORCE_ITEM matches 5 run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"color":"white","text":"  강화하려는 아이템이 마지막 강화가 이미 진행됐으므로\n"},{"bold":true,"color":"#E6592E","text":"  강화의 모루"},{"color":"white","text":"의 접근을 취소했습니다\n"}]
execute if score @s[scores={PLAYER.REINFORCE=1}] PLAYER.REINFORCE_ITEM matches 5 run scoreboard players reset @s PLAYER.REINFORCE

