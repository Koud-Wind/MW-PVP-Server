#个人处理
clear @a[tag=!PVE-IG]
scoreboard teams leave @a[tag=!PVE-IG]
gamemode 2 @a[tag=!PVE-IG]
#tp @a[tag=!PVE-IG] 267 66 1231 90 0
#spawnpoint @a[tag=!PVE-IG] 267 66 1231
tp @a[tag=!PVE-IG] -49 74 1054 90 0
spawnpoint @a[tag=!PVE-IG] -49 74 1054
effect @a[tag=!PVE-IG] 1 0 0 true
xp -10000L @a[tag=!PVE-IG]


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
scoreboard players reset @a[tag=!PVE-IG] money
scoreboard players reset @a[tag=!PVE-IG] MainW
scoreboard players reset @a[tag=!PVE-IG] SecondaryW
scoreboard players reset @a CT-killC

#全部处理
kill @e[type=item]
function vmwp:games/blast/resetMap
kill @e[tag=C4,type=armor_stand]
scoreboard players tag @e remove suspend
scoreboard players tag @e remove GlobalGame
scoreboard players tag @e remove CT-WaitF
scoreboard players tag @e remove CT-C4Placed
scoreboard players set @e[tag=VMW] Start-SMode 0

scoreboard objectives remove CT-Map
scoreboard objectives remove CT-TR
scoreboard objectives remove CT-RTC
scoreboard objectives remove CT-CTScore
scoreboard objectives remove CT-TScore
scoreboard objectives remove CT-Games
scoreboard objectives remove CT-WaitT
scoreboard objectives remove CT-Join
scoreboard objectives remove CT-BP
#scoreboard objectives remove money
#scoreboard objectives remove MainW
#scoreboard objectives remove SecondaryW
scoreboard objectives remove CT-RunC4
scoreboard objectives remove CT-C4T
scoreboard objectives remove CT-C4TC
scoreboard objectives remove CT-Sneak
scoreboard objectives remove CT-killC
scoreboard objectives remove CT-KillJ
scoreboard objectives remove CT-DeathJ


function vmwp:scoreboard
scoreboard players tag @e remove start2