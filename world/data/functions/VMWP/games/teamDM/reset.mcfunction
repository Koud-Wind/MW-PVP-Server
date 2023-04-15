#个人处理
clear @a[tag=!PVE-InGame]
scoreboard teams leave @a[tag=!PVE-InGame]
gamemode 2 @a[tag=!PVE-InGame]
#tp @a[tag=!PVE-InGame] 267 66 1231 90 0
#spawnpoint @a[tag=!PVE-InGame] 267 66 1231
tp @a[tag=!PVE-InGame] -49 74 1054 90 0
spawnpoint @a[tag=!PVE-InGame] -49 74 1054
effect @a[tag=!PVE-InGame] 1 0 0 true
xp -10000L @a[tag=!PVE-InGame]


replaceitem entity @a slot.enderchest.0 minecraft:air
replaceitem entity @a slot.enderchest.1 minecraft:air
replaceitem entity @a slot.enderchest.2 minecraft:air
replaceitem entity @a slot.enderchest.3 minecraft:air
replaceitem entity @a slot.enderchest.4 minecraft:air
replaceitem entity @a slot.enderchest.5 minecraft:air
replaceitem entity @a slot.enderchest.6 minecraft:air
replaceitem entity @a slot.enderchest.7 minecraft:air
replaceitem entity @a slot.enderchest.8 minecraft:air
replaceitem entity @a slot.enderchest.9 minecraft:air
replaceitem entity @a slot.enderchest.10 minecraft:air
replaceitem entity @a slot.enderchest.11 minecraft:air
replaceitem entity @a slot.enderchest.12 minecraft:air
replaceitem entity @a slot.enderchest.13 minecraft:air
replaceitem entity @a slot.enderchest.14 minecraft:air
replaceitem entity @a slot.enderchest.15 minecraft:air
replaceitem entity @a slot.enderchest.16 minecraft:air
replaceitem entity @a slot.enderchest.17 minecraft:air
replaceitem entity @a slot.enderchest.18 minecraft:air
replaceitem entity @a slot.enderchest.19 minecraft:air
replaceitem entity @a slot.enderchest.20 minecraft:air
replaceitem entity @a slot.enderchest.21 minecraft:air
replaceitem entity @a slot.enderchest.22 minecraft:air
replaceitem entity @a slot.enderchest.23 minecraft:air
replaceitem entity @a slot.enderchest.24 minecraft:air
replaceitem entity @a slot.enderchest.25 minecraft:air
replaceitem entity @a slot.enderchest.26 minecraft:air

scoreboard players tag @a remove InGame
scoreboard players tag @e remove shop

scoreboard players set @a music 0
scoreboard players reset @a[tag=!PVE-InGame] money
scoreboard players reset @a[tag=!PVE-InGame] MainW
scoreboard players reset @a[tag=!PVE-InGame] SecondaryW
scoreboard players reset @a CT-killC
scoreboard players reset @a CT-Death

#全部处理
kill @e[type=item]
execute @e[type=armor_stand,tag=!VMW] ~ ~ ~ fill ~6 ~7 ~6 ~-6 ~-7 ~-6 air 0 replace fire
function vmwp:games/teamDM/resetMap
execute @e[tag=VMW] ~ ~ ~ tp @s -49 250 1054
scoreboard players tag @e remove suspend
scoreboard players tag @e remove GlobalGame
scoreboard players tag @e remove Exchange
scoreboard players set @e[tag=VMW] Start-SMode 0

scoreboard objectives remove CT-Map
scoreboard objectives remove CT-TR
scoreboard objectives remove CT-RTC
scoreboard objectives remove CT-CTScore
scoreboard objectives remove CT-TScore
scoreboard objectives remove CT-WaitT
#scoreboard objectives remove money
#scoreboard objectives remove MainW
#scoreboard objectives remove SecondaryW
scoreboard objectives remove CT-killC
scoreboard objectives remove CT-KillJ
scoreboard objectives remove CT-DeathJ

function vmwp:scoreboard
scoreboard players tag @e remove start6