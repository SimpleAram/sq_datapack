scoreboard players set @s PLAYER.TITLE 1
function square_planet:player/inventory/title/page_1





#   슬롯 고정
execute as @a[team=Friendly,tag=Player,scores={PLAYER.TITLE=1}] run item replace entity @s inventory.17 with minecraft:compass[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='{"text":"역사의 길잡이","color":"#eda268","italic":false,"bold":true}',lore=['{"text":"정해진 운명 속에서 자신만의 역사를 그으리","color":"gray","italic":false}','{"text":" "}','{"text":"[ 칭호 효과 ]","color":"gray","italic":false}','{"text":"〉 존재하지 않음","color":"gray","italic":false}','{"text":" "}','{"text":"[ 획득 경로 ]","color":"gray","italic":false}','{"text":"〉 게임 최초 진행","color":"gray","italic":false}','{"text":" "}','{"color":"white","italic":false,"text":"[ 좌클릭으로 칭호 변경 ]"}'],minecraft:custom_data={item:"title",title_number:1b,can_drop:false,fixed:true}] 1