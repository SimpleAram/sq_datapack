
#
#   PLAYER.REINFORCE : 플레이어 강화 준비 상태
#   PLAYER.REINFORCE_PER : 아이템 강화 확률
#   PLAYER.REINFORCE_TICK : 강화 씬 타이머
#   PLAYER.REINFORCE_ITEM : 강화될 아이템의 강화 가능 여부
#
#   can_reinforcement : 강화 가능 여부
#

##  노멀 리스트


#   예시 이벤트
execute as @e[type=interaction,tag=anvil] on target at @s if items entity @s[scores={PLAYER.REINFORCE=1}] weapon.mainhand *[custom_data~{can_reinforcement:true}] run playsound minecraft:entity.player.levelup voice @s ~ ~ ~ .7 2



#   newbie_stick
execute as @e[type=interaction,tag=anvil] on target if items entity @s[scores={PLAYER.REINFORCE=1}] weapon.mainhand *[custom_data~{item:"newbie_stick",can_reinforcement:true}] run function square_planet:map/reinforce/normal_list/newbie_stick




# execute as @e[type=interaction,tag=anvil] on target if items entity @s[scores={PLAYER.REINFORCE=1}] weapon.mainhand *[custom_data~{can_reinforcement:true}] run function square_planet:map/reinforce/cencel