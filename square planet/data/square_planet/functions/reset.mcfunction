
#
#
#
#
#
#
#
#
#




##  < 모든 스코어보드, 팀의 데이터를 초기화 >

scoreboard objectives remove NUMBER
scoreboard objectives add NUMBER dummy
scoreboard players set 10 NUMBER 10
scoreboard players set 100 NUMBER 100
scoreboard players set 1000 NUMBER 1000


##  플레이어 데이터

#   스텔라 크레딧 (SC)
scoreboard objectives remove PLAYER.STELLAR_CREDITS
scoreboard objectives add PLAYER.STELLAR_CREDITS level

#   체력 (HP)
scoreboard objectives remove PLAYER.HEALTH
scoreboard objectives add PLAYER.HEALTH health {"text":"HP","color":"#ed5398"}
scoreboard objectives setdisplay below_name PLAYER.HEALTH

#   마나 (MP)
scoreboard objectives remove PLAYER.MANA
scoreboard objectives add PLAYER.MANA dummy
scoreboard objectives remove PLAYERMAX_MANA
scoreboard objectives add PLAYERMAX_MANA dummy
scoreboard objectives remove PLAYEREMPTY_MANA
scoreboard objectives add PLAYEREMPTY_MANA dummy
scoreboard objectives remove PLAYERRATIO_MANA
scoreboard objectives add PLAYERRATIO_MANA dummy
scoreboard objectives remove PLAYER.RECOVERY_MANA
scoreboard objectives add PLAYER.RECOVERY_MANA dummy
scoreboard objectives remove PLAYER.RECOVERY_SPEED_MANA
scoreboard objectives add PLAYER.RECOVERY_SPEED_MANA dummy


#   강화
scoreboard objectives remove PLAYER.REINFORCE
scoreboard objectives add PLAYER.REINFORCE dummy
scoreboard objectives remove PLAYER.REINFORCE_PER
scoreboard objectives add PLAYER.REINFORCE_PER dummy
scoreboard objectives remove PLAYER.REINFORCE_TICK
scoreboard objectives add PLAYER.REINFORCE_TICK dummy
scoreboard objectives remove PLAYER.REINFORCE_ITEM
scoreboard objectives add PLAYER.REINFORCE_ITEM dummy




##  팀 디폴트 세팅

#   친화적 팀
team remove Friendly
team add Friendly
team modify Friendly prefix {"text":""}
team modify Friendly friendlyFire false
team modify Friendly seeFriendlyInvisibles true
team modify Friendly color white

#   우호적 팀
team remove Hostile
team add Hostile
team modify Hostile friendlyFire false
team modify Hostile color red


##   프롤로그 세팅

#   프롤로그 스코어보드
scoreboard objectives remove GAME.PROLOGUE
scoreboard objectives add GAME.PROLOGUE dummy

#   프롤로그 팀
team remove Prologue
team add Prologue
team modify Prologue nametagVisibility never
team modify Prologue seeFriendlyInvisibles false
team modify Prologue friendlyFire false
team modify Prologue color gray


##  상태 스코어보드 세팅

scoreboard objectives remove STATE.IS_SPECTATOR
scoreboard objectives add STATE.IS_SPECTATOR dummy

scoreboard objectives remove STATE.HOLD_IN_CURSOR
scoreboard objectives add STATE.HOLD_IN_CURSOR dummy




##  기타 스코어보드 세팅

#   칭호
scoreboard objectives remove PLAYER.TITLE
scoreboard objectives add PLAYER.TITLE dummy
scoreboard objectives remove PLAYER.TITLE_PAGE
scoreboard objectives add PLAYER.TITLE_PAGE dummy
scoreboard players set PLAYER.TITLE_MAX_PAGE PLAYER.TITLE_PAGE 3





scoreboard objectives remove DEBUG
scoreboard objectives add DEBUG dummy