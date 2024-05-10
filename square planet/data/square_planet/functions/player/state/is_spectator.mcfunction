
#   STATE.IS_SPECTATOR : 관전 상태 유무


##  < 관전 상태 감지 >

#   관전 상태 감지
execute as @a[team=Friendly,tag=Player,gamemode=spectator] unless score @s STATE.IS_SPECTATOR matches 1.. run scoreboard players set @s STATE.IS_SPECTATOR 0

#   1회 동작
execute as @a[team=Friendly,tag=Player,gamemode=spectator,scores={STATE.IS_SPECTATOR=0}] run title @s actionbar {"text":""}
execute as @a[team=Friendly,tag=Player,gamemode=spectator,scores={STATE.IS_SPECTATOR=0}] run title @s title {"text":""}
execute as @a[team=Friendly,tag=Player,gamemode=spectator,scores={STATE.IS_SPECTATOR=0}] run title @s subtitle {"text":""}

execute as @a[team=Friendly,tag=Player,gamemode=spectator,scores={STATE.IS_SPECTATOR=0}] run scoreboard players set @s STATE.IS_SPECTATOR 1
execute as @a[team=Friendly,tag=Player,gamemode=!spectator] run scoreboard players set @s STATE.IS_SPECTATOR 0