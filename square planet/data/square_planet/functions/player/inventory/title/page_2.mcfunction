
##  칭호 페이지 2

#   칭호 슬롯의 아이템 클릭 시
scoreboard players set @s PLAYER.TITLE_PAGE 2
playsound minecraft:ui.button.click voice @s ~ ~ ~ .9 2
tellraw @s [{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"},{"text":"──────────────────────────────"}]
# \n 100개, ─ 30개


##   칭호 해제

#   기본값
execute unless score @s PLAYER.TITLE matches -1.. run tellraw @s [{"text":" # "},{"text":"칭호 해제","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function square_planet:player/inventory/title/clear"},"hoverEvent":{"action":"show_text","value":[{"text":"칭호 해제","color":"red","bold":true},{"text":"\n클릭 시 현재 칭호를 해제합니다","color":"gray","bold":false}]}},{"text":" ✔","color":"green"}]
#   X
execute if score @s PLAYER.TITLE matches -1.. unless score @s PLAYER.TITLE matches -1 run tellraw @s [{"text":" # "},{"text":"칭호 해제","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function square_planet:player/inventory/title/clear"},"hoverEvent":{"action":"show_text","value":[{"text":"칭호 해제","color":"red","bold":true},{"text":"\n클릭 시 현재 칭호를 해제합니다","color":"gray","bold":false}]}}]
#   ✔
execute if score @s PLAYER.TITLE matches -1 run tellraw @s [{"text":" # "},{"text":"칭호 해제","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function square_planet:player/inventory/title/clear"},"hoverEvent":{"action":"show_text","value":[{"text":"칭호 해제","color":"red","bold":true},{"text":"\n클릭 시 현재 칭호를 해제합니다","color":"gray","bold":false}]}},{"text":" ✔","color":"green"}]


##  칭호 10 ~ 19

tellraw @s [{"text":" 10. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 11. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 12. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 13. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 14. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 15. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 16. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 17. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 18. ","color":"gray"},{"text":"???","color":"gray","bold":true},{"text":"\n"},{"text":" 19. ","color":"gray"},{"text":"???","color":"gray","bold":true}]





##  페이지 전환

tellraw @s [{"text":"───── "},{"text":"[ < ]","color":"yellow","clickEvent":{"action":"run_command","value":"/function square_planet:player/inventory/title/page_1"}},{"text":" "},{"score":{"name":"PLAYER.TITLE_MAX_PAGE","objective":"PLAYER.TITLE_PAGE"},"bold":true},{"text":" 페이지 중 ","color":"gray"},{"score":{"name":"@s","objective":"PLAYER.TITLE_PAGE"},"bold":true},{"text":" "},{"text":"[ > ]","color":"yellow","clickEvent":{"action":"run_command","value":"/function square_planet:player/inventory/title/page_3"}},{"text":" ─────"}]