scoreboard players set @s PLAYER.TITLE -1

execute if score @s PLAYER.TITLE_PAGE matches 1 run function square_planet:player/inventory/title/page_1
execute if score @s PLAYER.TITLE_PAGE matches 2 run function square_planet:player/inventory/title/page_2
execute if score @s PLAYER.TITLE_PAGE matches 3 run function square_planet:player/inventory/title/page_3
