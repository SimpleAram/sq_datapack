
#   PLAYER.RUNE_SLOT_1


##  < 룬 >


#   슬롯의 커스텀 값 출력
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] unless items entity @s inventory.0 *[minecraft:custom_data~{item:"empty_rune"}] store result score @s DEBUG run data get entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.max_mana


execute as @a[] run clear @s *[minecraft:custom_data~{item:"empty_rune"}]

#   해제 시
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s inventory.0 *[minecraft:custom_data~{item:"empty_rune"}] if items entity @s player.cursor *[minecraft:custom_data~{category:"rune"}] unless items entity @s inventory.0 *[minecraft:custom_data~{category:"rune"}] run scoreboard players operation @s PLAYER.MAX_MANA -= @s DEBUG
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s inventory.0 *[minecraft:custom_data~{item:"empty_rune"}] if items entity @s inventory.0 minecraft:air if items entity @s player.cursor *[minecraft:custom_data~{category:"rune"}] unless items entity @s inventory.0 *[minecraft:custom_data~{category:"rune"}] run execute as @a store result score @s DEBUG run data get entity @s Inventory[{Slot:9b}].components.minecraft:custom_data.max_mana



#   착용 시
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s inventory.0 *[custom_data~{item:"empty_rune"}] unless score @s DEBUG = @s PLAYER.RUNE_SLOT_1 run scoreboard players operation @s PLAYER.MAX_MANA -= @s PLAYER.RUNE_SLOT_1
execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s inventory.0 *[custom_data~{item:"empty_rune"}] unless score @s DEBUG = @s PLAYER.RUNE_SLOT_1 run scoreboard players operation @s DEBUG = @s PLAYER.RUNE_SLOT_1


execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] unless score @s DEBUG = @s PLAYER.RUNE_SLOT_1 run scoreboard players operation @s PLAYER.MAX_MANA += @s DEBUG



# execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] if items entity @s player.cursor *[minecraft:custom_data~{item:"empty_rune"}] if items entity @s inventory.0 *[custom_data~{category:"rune"}] run scoreboard players operation @s PLAYER.MAX_MANA += @s DEBUG





execute as @a[scores={STATE.HOLD_IN_CURSOR=0}] unless score @s DEBUG = @s PLAYER.RUNE_SLOT_1 run scoreboard players operation @s PLAYER.RUNE_SLOT_1 = @s DEBUG
#   커서 아이템 제거
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"empty_rune"}]
# execute as @a store success score @s STATE.HOLD_IN_CURSOR if items entity @s player.cursor *[minecraft:custom_data~{item:"empty_rune"}] run item replace entity @a player.cursor with air

