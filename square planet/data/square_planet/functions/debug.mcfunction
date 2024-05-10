
##  DEBUG

tellraw @s {"text": "Debug Function Used ..","color": "gray"}

give @s soul_lantern[item_name='{"bold":true,"color":"light_purple","italic":false,"text":"정화되는 마나의 룬"}',lore=['[{"bold":false,"color":"white","italic":false,"text":"「"},{"bold":false,"color":"light_purple","italic":false,"text":"엘리트"},{"bold":false,"color":"white","italic":false,"text":"」"}]','{"bold":false,"color":"gray","italic":false,"text":"푸른 마나의 기운이 맴도는 룬"}','{"bold":false,"color":"gray","italic":false,"text":"룬 슬롯에 장착해 사용할 수 있다"}','{"text":" "}','{"bold":false,"color":"white","italic":false,"text":"[ 룬 슬롯에 장착 시 효과 ]"}','[{"bold":false,"color":"white","italic":false,"text":"〉 "},{"bold":false,"color":"#3B6AD1","italic":false,"text":"최대 마나 +80"}]'],custom_data={item:"mana_rune",category:"rune",max_mana:80}]

give @s lantern[item_name='{"bold":true,"color":"yellow","italic":false,"text":"저주받은 마나의 룬"}',lore=['[{"bold":false,"color":"white","italic":false,"text":"「"},{"bold":false,"color":"yellow","italic":false,"text":"레어"},{"bold":false,"color":"white","italic":false,"text":"」"}]','{"bold":false,"color":"gray","italic":false,"text":"마나가 매마르는 느낌의 룬"}','{"bold":false,"color":"gray","italic":false,"text":"룬 슬롯에 장착해 사용할 수 있다"}','{"text":" "}','{"bold":false,"color":"white","italic":false,"text":"[ 룬 슬롯에 장착 시 효과 ]"}','[{"bold":false,"color":"white","italic":false,"text":"〉 "},{"bold":false,"color":"#3B6AD1","italic":false,"text":"최대 마나 -80"}]'],custom_data={item:"mana_rune",category:"rune",max_mana:-80}]


give @p stick[minecraft:max_stack_size=1,item_name='{"bold":true,"color":"white","text":"초보자의 얇은 나뭇가지 +0"}',lore=['[{"color":"white","italic":false,"text":"「"},{"color":"white","italic":false,"text":"일반"},{"color":"white","italic":false,"text":"」"}]','{"color":"gray","italic":false,"text":"느슨한 나뭇의 얇은 나뭇가지다"}','{"color":"gray","italic":false,"text":"잡고 휘두르기에는 안성맞춤이지만"}','{"color":"gray","italic":false,"text":"그 파워는 상당히 약하다"}','{"text":" "}','{"color":"white","italic":false,"text":"( 강화 가능 )"}'],attribute_modifiers=[{type:"generic.attack_damage",name:"generic.attack_damage",amount:1.2,operation:"add_value",uuid:[I;-892698381,336088467,-1717986823,-1485280009],slot:"mainhand"}],custom_data={item:"newbie_stick",category:"weapon",can_reinforcement:true,reinforcement:0}] 1