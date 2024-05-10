scoreboard players set @s PLAYER.TITLE 0
function square_planet:player/inventory/title/page_1


#   슬롯 고정
execute as @a[team=Friendly,tag=Player,scores={PLAYER.TITLE=0}] run item replace entity @s inventory.17 with minecraft:nether_star[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='[{"bold":true,"color":"#A2FFD1","italic":false,"text":"S"},{"bold":true,"color":"#A2FFAB","italic":false,"text":"Q"},{"bold":true,"color":"#A2FF85","italic":false,"text":"U"},{"bold":true,"color":"#A2FF5F","italic":false,"text":"A"},{"bold":true,"color":"#FFFF99","italic":false,"text":"R"},{"bold":true,"color":"#FFE599","italic":false,"text":"E"},{"text":" "},{"bold":true,"color":"#FFB499","italic":false,"text":"P"},{"bold":true,"color":"#FF9D99","italic":false,"text":"L"},{"bold":true,"color":"#FF8399","italic":false,"text":"A"},{"bold":true,"color":"#FF6A99","italic":false,"text":"N"},{"bold":true,"color":"#FF5199","italic":false,"text":"E"},{"bold":true,"color":"#FF3899","italic":false,"text":"T"}]',lore=['{"color":"gray","italic":false,"text":"특별한 존재에게 부여되는 신비한 칭호"}','{"color":"gray","italic":false,"text":"“ 함께 고생해 주셔서 감사합니다 ”"}','{"text":" "}','{"color":"gray","italic":false,"text":"[ 칭호 효과 ]"}','[{"color":"gray","italic":false,"text":"〉 착용 중 상시 \'"},{"color":"green","italic":false,"text":"행운 버프"},{"color":"gray","italic":false,"text":"\' 적용"}]','[{"color":"gray","italic":false,"text":"〉 착용 중 \'"},{"color":"red","italic":false,"text":"하트 파티클"},{"color":"gray","italic":false,"text":"\' 적용"}]','{"text":" "}','{"color":"gray","italic":false,"text":"[ 획득 경로 ]"}','{"color":"gray","italic":false,"text":"〉 현재 획득 불가"}'],minecraft:custom_data={item:"title",title_number:1b,can_drop:false,fixed:true}] 1


#   어빌리티
execute as @a[team=Friendly,tag=Player,scores={PLAYER.TITLE=0}] run effect give @s luck 1 0 true


# particle minecraft:heart ~ ~2.3 ~ 0 .15 0 .1 1