
#   STATE.HOLD_IN_CURSOR : 아이템 커서 클릭 감지
#
#
#   can_drop : 아이템 버리기 허용 여부
#   fixed : 인벤토리 내 고정된 아이템 여부


##  < 플레이어 인벤토리 UI 시스템 >



##  퀘스트 로거

execute as @a[nbt={Inventory:[{Slot:17b,components:{"minecraft:custom_data":{item:"quest_logger"}}}]}] if items entity @s inventory.8 *[minecraft:custom_data~{item:"quest_logger"}] run clear @s *[minecraft:custom_data~{item:"quest_logger"}]

function square_planet:player/inventory/quest_logger
execute as @a[team=Friendly,tag=Player] run item replace entity @s inventory.8 with minecraft:light[minecraft:max_stack_size=1,minecraft:block_state={level:"0"},hide_additional_tooltip={},item_name='{"bold":false,"color":"gray","italic":false,"text":"기록된 퀘스트가 존재하지 않습니다"}',minecraft:custom_data={item:"quest_logger",can_drop:false,fixed:true}] 1

# item replace entity CourdeMonde inventory.8 with minecraft:light[minecraft:max_stack_size=1,minecraft:block_state={level:"1"},hide_additional_tooltip={},item_name='{"bold":true,"color":"blue","italic":false,"text":"잊혀지는 그림자의 기억 속에서"}',lore=['{"color":"gray","italic":false,"text":"「침묵하는 잔해」지역에서 \'레트로스펙트\' 찾기 ( 0 / 3 )"}'],minecraft:custom_data={item:"quest_logger",can_drop:false,fixed:true}] 1


##  칭호



execute as @a[nbt={Inventory:[{Slot:26b,components:{"minecraft:custom_data":{item:"title"}}}]}] if items entity @s inventory.17 *[minecraft:custom_data~{item:"title"}] run clear @s *[minecraft:custom_data~{item:"title"}]


function square_planet:player/inventory/title/0
function square_planet:player/inventory/title/1


function square_planet:player/inventory/title

# 슬롯 고정
execute as @a[team=Friendly,tag=Player] unless score @s PLAYER.TITLE matches 0.. run item replace entity @s inventory.17 with minecraft:barrier[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='{"bold":true,"color":"red","italic":false,"text":"장착된 칭호가 없습니다"}',lore=['[{"color":"gray","italic":false,"text":"자신의 칭호를 변경해 보세요"}]','{"text":" "}','[{"color":"white","italic":false,"text":"[ 좌클릭으로 칭호 변경 ]"}]'],minecraft:custom_data={item:"title",title_number:-1b,can_drop:false,fixed:true}] 1


##  내 정보

execute as @a[nbt={Inventory:[{Slot:35b,components:{"minecraft:custom_data":{item:"info"}}}]}] if items entity @s inventory.26 *[minecraft:custom_data~{item:"info"}] run clear @s *[minecraft:custom_data~{item:"info"}]

function square_planet:player/inventory/info
execute as @a[team=Friendly,tag=Player] run item replace entity @s inventory.26 with minecraft:written_book[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='{"bold":true,"color":"aqua","italic":false,"text":"내 정보"}',lore=['[{"color":"gray","italic":false,"text":"자신의 능력치를 상세히 확인합니다"}]','{"text":" "}','[{"color":"white","italic":false,"text":"[ 좌클릭으로 정보 확인 ]"}]'],minecraft:custom_data={item:"info",can_drop:false,fixed:true}] 1


##  퍼크 1



# execute as @a[] run clear @s *[minecraft:custom_data~{item:"empty_rune"}]
# execute as @a[] unless items entity @s inventory.0 *[minecraft:custom_data~{item:"empty_rune"}] run clear @s *[minecraft:custom_data~{item:"empty_rune"}]


# execute as @a[nbt={Inventory:[{Slot:9b,components:{"minecraft:custom_data":{item:"empty_rune"}}}]}] if items entity @s inventory.0 * run clear @s *[minecraft:custom_data~{item:"empty_rune"}]

function square_planet:player/inventory/rune
# execute as @a[team=Friendly,tag=Player] unless items entity @s inventory.0 * run item replace entity @s inventory.0 with minecraft:end_crystal[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='{"bold":false,"color":"gray","italic":false,"text":"비어있는 룬 슬롯입니다"}',minecraft:custom_data={item:"empty_rune",can_drop:false,fixed:true}] 1
execute as @a[team=Friendly,tag=Player] store success score @s STATE.HOLD_IN_CURSOR unless items entity @s player.cursor * unless items entity @s inventory.0 * run item replace entity @s inventory.0 with minecraft:end_crystal[minecraft:max_stack_size=1,hide_additional_tooltip={},item_name='{"bold":false,"color":"gray","italic":false,"text":"해당 룬 슬롯이 비어있습니다"}',lore=['{"color":"white","italic":false,"text":"▣ 개발자 노트"}','{"color":"white","italic":false,"text":"/function square_planet:debug 명령어를 통해"}','{"color":"white","italic":false,"text":"임의로 개발된 룬을 직접 사용해 볼 수 있으나"}','{"color":"red","italic":false,"text":"버그가 뒤지게 많고 9시간 넘게 고치지 못함"}'],minecraft:custom_data={item:"empty_rune",can_drop:false,fixed:true}] 1
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"empty_rune"}]
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"empty_rune"}] run item replace entity @a player.cursor with air


##  퍼크 2

# execute as @a[team=Friendly,tag=Player] run item replace entity @s inventory.9 with minecraft:end_crystal[item_name='{"bold":true,"color":"gray","italic":false,"text":"준비 중 ..."}'] 1


##  퍼크 3

# execute as @a[team=Friendly,tag=Player] run item replace entity @s inventory.18 with minecraft:end_crystal[item_name='{"bold":true,"color":"gray","italic":false,"text":"준비 중 ..."}'] 1


#   아이템 드랍 불가
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{can_drop:false}}}}] run data modify entity @s PickupDelay set value 0

#   이동/교체된 아이템 제거

execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{fixed:true}}}}] run kill @s