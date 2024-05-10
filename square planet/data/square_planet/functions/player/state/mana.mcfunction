
#   NUMBER : 고정값 스코어보드
#   PLAYER.MANA : 플레이어 현재 마나
#   PLAYER.MAX_MANA : 플레이어 최대 마나
#   PLAYER.EMPTY_MANA : 최대 마나까지 필요한 마나
#   PLAYER.RATIO_MANA : 최대 마나 중 현재 마나의 비율
#   PLAYER.RECOVERY_MANA : 마나 회복 타이머
#   PLAYER.RECOVERY_SPEED_MANA : 마나 회복 속도 단계


##  < 플레이어 마나 시스템 >

#   계산 전용 스코어보드
scoreboard players set 10 NUMBER 10
scoreboard players set 100 NUMBER 100
scoreboard players set 1000 NUMBER 1000


##  마나 스코어보드 계산

#   마나 비율 계산
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.RATIO_MANA = @s PLAYER.MANA
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.RATIO_MANA *= 1000 NUMBER
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.RATIO_MANA /= @s PLAYER.MAX_MANA
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.RATIO_MANA /= 10 NUMBER

#   남은 마나 계산
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.EMPTY_MANA = @s PLAYER.MAX_MANA
execute as @a[team=Friendly,tag=Player] run scoreboard players operation @s PLAYER.EMPTY_MANA -= @s PLAYER.MANA


##  자연적 마나 회복

execute as @a[team=Friendly,tag=Player] if score @s PLAYER.EMPTY_MANA matches 1.. run scoreboard players add @s PLAYER.RECOVERY_MANA 1

#   ▼ 마나 회복 속도 : 1단계
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=1}] PLAYER.RECOVERY_MANA matches 30.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=1}] PLAYER.RECOVERY_MANA matches 30.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0
#   ▼ 마나 회복 속도 : 2단계
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=2}] PLAYER.RECOVERY_MANA matches 26.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=2}] PLAYER.RECOVERY_MANA matches 26.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0
#   ▼ 마나 회복 속도 : 3단계
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=3}] PLAYER.RECOVERY_MANA matches 18.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=3}] PLAYER.RECOVERY_MANA matches 18.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0
#   ▼ 마나 회복 속도 : 4단계
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=4}] PLAYER.RECOVERY_MANA matches 14.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=4}] PLAYER.RECOVERY_MANA matches 14.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0
#   ▼ 마나 회복 속도 : 5단계
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=5}] PLAYER.RECOVERY_MANA matches 6.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=5}] PLAYER.RECOVERY_MANA matches 6.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0
#   ▼ 마나 회복 속도 : 6단계 ~
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=6}] PLAYER.RECOVERY_MANA matches 2.. run scoreboard players add @s PLAYER.MANA 1
execute as @a[team=Friendly,tag=Player] if score @s[scores={PLAYER.RECOVERY_SPEED_MANA=6}] PLAYER.RECOVERY_MANA matches 2.. run scoreboard players set @s PLAYER.RECOVERY_MANA 0



##  마나 비율별 액션바


#   NOTE : 스킬 등 마나 소모의 이벤트 발생 후 다시 액션바를 나타내는 조치 필요

#   ▼ 0% ~ 4%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=..4}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 5% ~ 9%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=5..9}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"█","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 10% ~ 14%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=10..14}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"██","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 15% ~ 19%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=15..19}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"███","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 20% ~ 24%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=20..24}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 25% ~ 29%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=25..29}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"█████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 30% ~ 34%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=30..34}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"██████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 35% ~ 39%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=35..39}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"███████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 40% ~ 44%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=40..44}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 45% ~ 49%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=45..49}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"█████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 50% ~ 54%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=50..54}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"██████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 55% ~ 59%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=55..59}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"███████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 60% ~ 64%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=60..64}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 65% ~ 69%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=65..69}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"█████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 70% ~ 74%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=70..74}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"██████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 75% ~ 79%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=75..79}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"███████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 80% ~ 84%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=80..84}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"████████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 85% ~ 89%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=85..89}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"█████████████████","color":"#3b6ad1","bold":false},{"text":"▒▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 90% ~ 94%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=90..94}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"██████████████████","color":"#3b6ad1","bold":false},{"text":"▒▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 95% ~ 99%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=95..99}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"███████████████████","color":"#3b6ad1","bold":false},{"text":"▒","color":"#95979c","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 100%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=100}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#3b6ad1","bold":true},{"text":"  "},{"text":"████████████████████","color":"#3b6ad1","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"#95979c","bold":true}]
#   ▼ 101% ~
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] if score @s PLAYER.MANA > @s PLAYER.MAX_MANA run title @s actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"#d1c53b","bold":true},{"text":"  "},{"text":"████████████████████","color":"#d1c53b","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.RATIO_MANA"},"color":"#e6e5e1","bold":true},{"text":"%","color":"#e6e5e1"}]
#   ▼ ~ -1%
execute as @a[team=Friendly,tag=Player,gamemode=!spectator,scores={PLAYER.RECOVERY_MANA=1}] run title @s[scores={PLAYER.RATIO_MANA=..-1}] actionbar [{"score":{"name":"@s","objective":"PLAYER.MANA"},"color":"red","bold":true},{"text":"  "},{"text":"ERROR","color":"red","bold":false},{"text":"  "},{"score":{"name":"@s","objective":"PLAYER.EMPTY_MANA"},"color":"gray","bold":true},{"text":"%","color":"gray"}]