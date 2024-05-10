
##  < 강화의 모루 위치 >


function square_planet:map/reinforce/interaction



execute positioned 2 3 -528 if entity @a[distance=..10] unless entity @e[type=minecraft:interaction,tag=anvil,distance=..1] run summon minecraft:interaction 2 3 -528 {Tags:["anvil"],width:1.05f,height:1.05f}







execute at @e[type=minecraft:interaction,tag=anvil] as @a[scores={PLAYER.REINFORCE=1},distance=4..] if entity @s run tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"bold":true,"color":"#E6592E","text":"  강화의 모루"},{"color":"white","text":"에서 멀어져 접근이\n  취소되었습니다\n"}]
execute at @e[type=minecraft:interaction,tag=anvil] as @a[scores={PLAYER.REINFORCE=1},distance=4..] if entity @s run scoreboard players reset @s PLAYER.REINFORCE