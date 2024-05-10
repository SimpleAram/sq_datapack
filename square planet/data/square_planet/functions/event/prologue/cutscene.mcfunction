
##  프롤로그 컷씬

execute as @a[team=Prologue,scores={GAME.PROLOGUE=50..90},predicate=is_sneaking] run scoreboard players set @s GAME.PROLOGUE 100

#   이동 연출
execute as @a[team=Prologue,scores={GAME.PROLOGUE=100..180}] run tp @s 0 1 -500
execute as @a[team=Prologue,scores={GAME.PROLOGUE=100}] run effect clear @s darkness
execute as @a[team=Prologue,scores={GAME.PROLOGUE=100}] run effect give @s darkness 4 0 true
execute as @a[team=Prologue,scores={GAME.PROLOGUE=101}] at @s run playsound minecraft:entity.evoker.cast_spell voice @s ~ ~ ~ .7 .82
execute as @a[team=Prologue,scores={GAME.PROLOGUE=101}] at @s run particle minecraft:dust{color:[.9, .9, .9], scale:4.0} ~ ~.3 ~ 1 1 1 1 1200
execute as @a[team=Prologue,scores={GAME.PROLOGUE=135}] run effect clear @s blindness

#   시야 연출
execute as @a[team=Prologue,scores={GAME.PROLOGUE=180}] run effect clear @s
execute as @a[team=Prologue,scores={GAME.PROLOGUE=180}] run title @s times 0 40 20

#   플레이어 태그
execute as @a[team=Prologue,scores={GAME.PROLOGUE=300}] run tag @s add Player
execute as @a[team=Prologue,scores={GAME.PROLOGUE=300}] run team join Friendly @s

execute as @a[team=Prologue,scores={GAME.PROLOGUE=100..299}] unless score @s GAME.PROLOGUE matches 300 run scoreboard players add @s GAME.PROLOGUE 1
