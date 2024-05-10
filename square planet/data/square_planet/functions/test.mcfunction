
##  돌 검

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] unless score @s tick matches 0.. run scoreboard players set @s tick 0

##   정면
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 0 rotated ~ 0 positioned ^ ^ ^2 run tp @s ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 1 rotated ~ 0 positioned ^ ^ ^2 run tp @s ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 2 rotated ~ 0 positioned ^ ^ ^3 run tp @s ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 3 rotated ~ 0 positioned ^ ^ ^4 run tp @s ~ ~ ~

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 0 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.8
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 1 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.94
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 2 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.75
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 3 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.9


#   파티클
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 0 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 6
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 1 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 8
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 2 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 5
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 3 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 6

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 0 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 1 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 2 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 3 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4

#   데미지
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 0 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 1 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 2 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 3 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~



#   후면
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 16 rotated ~-180 0 positioned ^ ^ ^1 run tp @s ~ ~ ~ ~ 40
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 17 rotated ~ 0 positioned ^ ^ ^2 run tp @s ~ ~ ~ ~ 40
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 18 rotated ~ 0 positioned ^ ^ ^3 run tp @s ~ ~ ~ ~ 40
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 19 rotated ~ 0 positioned ^ ^ ^4 run tp @s ~ ~ ~ ~ 40

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 16 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.84
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 17 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.93
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 18 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 2
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 19 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.97

#   파티클
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 16 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 17 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 2
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 18 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 7
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 19 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 5

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 16 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 17 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 18 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] at @s if score @s tick matches 19 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4

# 데미지
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 16 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 17 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 18 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] if score @s tick matches 19 run execute at @s as @e[distance=..4,type=!player] at @s run summon minecraft:lightning_bolt ~ ~ ~


execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] run scoreboard players add @s[scores={tick=..20}] tick 1

execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] run item replace entity @s[scores={tick=21}] weapon.mainhand with minecraft:stone_sword
execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:stone_sword"}]}] run item replace entity @s[scores={tick=21}] weapon.offhand with minecraft:air
scoreboard players reset @a[scores={tick=21}] tick




























##  철 검

# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] unless score @s tick matches 0.. run scoreboard players set @s tick 0

# ##   정면
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 0 rotated ~ 0 positioned ^ ^ ^2 run tp @s ~ ~ ~
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 1 rotated ~ 0 positioned ^ ^ ^2 run tp @s ~ ~ ~
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 2 rotated ~ 0 positioned ^ ^ ^3 run tp @s ~ ~ ~
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 3 rotated ~ 0 positioned ^ ^ ^4 run tp @s ~ ~ ~

# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 0 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.8
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 1 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.94
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 2 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.75
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 3 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.9


# #   파티클
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 0 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 6
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 1 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 8
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 2 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 5
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 3 run particle minecraft:sweep_attack ~ ~1 ~ .3 .3 .3 0 6

# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 0 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 1 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 2 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 3 run particle minecraft:cloud ~ ~1 ~ .3 .3 .3 0 4

# #   데미지
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] if score @s tick matches 0 run execute at @s as @e[distance=..4,type=!player] at @s run damage @s 8 minecraft:player_attack
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] if score @s tick matches 1 run execute at @s as @e[distance=..4,type=!player] at @s run damage @s 8 minecraft:player_attack
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] if score @s tick matches 2 run execute at @s as @e[distance=..4,type=!player] at @s run damage @s 8 minecraft:player_attack
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] if score @s tick matches 3 run execute at @s as @e[distance=..4,type=!player] at @s run damage @s 8 minecraft:player_attack



# #   기 모으기
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 16..59 run particle minecraft:flash ~ ~.5 ~ .3 .3 .3 0 25
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 10..59 run effect give @s slowness 1 9 true
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 10..30 run playsound minecraft:block.beacon.activate master @s ~ ~ ~ .8 2


# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 60 run effect clear @s slowness


# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 60..160 run playsound minecraft:entity.player.attack.sweep master @s ~ ~ ~ .7 1.84

# #   파티클
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] at @s if score @s tick matches 60..160 run particle minecraft:sweep_attack ~ ~1 ~ 3 1.5 3 0 120

# # 데미지
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] if score @s tick matches 60..160 run execute at @s as @e[distance=..7,type=!player] at @s run damage @s 13 minecraft:player_attack



# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] run scoreboard players add @s[scores={tick=..159}] tick 1

# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] run item replace entity @s[scores={tick=160}] weapon.mainhand with minecraft:iron_sword
# execute as @a[nbt={Inventory:[{Slot:-106b, id:"minecraft:iron_sword"}]}] run item replace entity @s[scores={tick=160}] weapon.offhand with minecraft:air
# scoreboard players reset @a[scores={tick=160}] tick