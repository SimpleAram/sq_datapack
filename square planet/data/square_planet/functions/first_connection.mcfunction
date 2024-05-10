execute as @a[team=!Friendly] run tag @s remove Player
execute as @a[team=!Friendly] unless score @s GAME.PROLOGUE matches -1.. run scoreboard players set @s GAME.PROLOGUE 0
function square_planet:event/prologue/setting