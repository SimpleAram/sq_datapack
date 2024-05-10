execute as @a[team=Prologue,scores={GAME.PROLOGUE=50},predicate=!is_sneaking] at @s run playsound minecraft:entity.experience_orb.pickup voice @s ~ ~ ~ .35 1.192

# execute as @a[team=Prologue,scores={GAME.PROLOGUE=50},predicate=!is_sneaking] run title @s title [{"text":"S","color":"#A2FFD1"},{"text":"Q","color":"#A2FFAB"},{"text":"U","color":"#A2FF85"},{"text":"A","color":"#A2FF5F"},{"text":"R","color":"#FFFF99"},{"text":"E","color":"#FFE599"},{"text":" ","color":"#FFCB99"},{"text":"P","color":"#FFB499"},{"text":"L","color":"#FF9D99"},{"text":"A","color":"#FF8399"},{"text":"N","color":"#FF6A99"},{"text":"E","color":"#FF5199"},{"text":"T","color":"#FF3899"}]
execute as @a[team=Prologue,scores={GAME.PROLOGUE=50},predicate=!is_sneaking] run title @s title [{"text":"기(도)가 막혀버린 모험 개발 中","color":"white"}]

# execute as @a[team=Prologue,scores={GAME.PROLOGUE=50},predicate=!is_sneaking] run title @s subtitle {"text":"─ [Shift]로 게임 시작 ─","color":"white"}
execute as @a[team=Prologue,scores={GAME.PROLOGUE=50},predicate=!is_sneaking] run title @s subtitle {"text":"쒸프트로 꼐임 씨짞","color":"white"}


execute as @a[team=Prologue,scores={GAME.PROLOGUE=50..90},predicate=is_sneaking] run title @s title {"text":""}
execute as @a[team=Prologue,scores={GAME.PROLOGUE=50..90},predicate=is_sneaking] run title @s subtitle {"text":""}

# {"text":"Skip Prologue ..","color":"gray"}
