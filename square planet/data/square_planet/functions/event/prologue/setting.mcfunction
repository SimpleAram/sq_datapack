
##  프롤로그

#   프롤로그 초입 세팅

execute as @a[team=!Friendly,scores={GAME.PROLOGUE=0..90}] run tp @s 0 300 -500 0 0
execute as @a[team=!Friendly,scores={GAME.PROLOGUE=0}] run team join Prologue @s

execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run stopsound @s
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run advancement revoke @s everything

execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run title @s times 2 17 8
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run title @s actionbar {"text":""}
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run title @s title {"text":""}
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run title @s subtitle {"text":""}

execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run xp set @s 0 levels
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run xp set @s 0 points
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run gamemode adventure @s
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run clear @s

execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run scoreboard players set @s PLAYER.MANA 0
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run scoreboard players set @s PLAYER.MAX_MANA 100
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run scoreboard players set @s PLAYER.RECOVERY_SPEED_MANA 1

execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect clear @s
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect give @s darkness infinite 0 true
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect give @s blindness infinite 0 true
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect give @s instant_health infinite 0 true
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect give @s saturation infinite 0 true
execute as @a[team=Prologue,scores={GAME.PROLOGUE=0}] run effect give @s invisibility infinite 0 true


#   프롤로그 준비

execute as @a[team=Prologue,scores={GAME.PROLOGUE=90},predicate=!is_sneaking] run scoreboard players set @s GAME.PROLOGUE 50
function square_planet:event/prologue/message
function square_planet:event/prologue/cutscene


execute as @a[team=Prologue,scores={GAME.PROLOGUE=..89}] unless score @s GAME.PROLOGUE matches 90 run scoreboard players add @s GAME.PROLOGUE 1