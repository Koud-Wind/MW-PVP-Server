#个人处理
clear @a[tag=!PVE-InGame]
scoreboard teams leave @a[tag=!PVE-InGame]
gamemode 2 @a[tag=!PVE-InGame]
#tp @a[tag=!PVE-InGame] 267 66 1231 90 0
#spawnpoint @a[tag=!PVE-InGame] 267 66 1231
tp @a[tag=!PVE-InGame] -49 74 1054 90 0
spawnpoint @a[tag=!PVE-InGame] -49 74 1054
effect @a[tag=!PVE-InGame] clear
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
scoreboard players tag @a remove 1rd
scoreboard players tag @a remove 2rd

scoreboard players set @a music 0
scoreboard players reset @a[tag=!PVE-InGame] money
scoreboard players reset @a[tag=!PVE-InGame] MainW
scoreboard players reset @a[tag=!PVE-InGame] SecondaryW
scoreboard players reset @a PC-KillCount
scoreboard players reset @a PC-KCC
scoreboard players reset @a PC-Score

#全部处理
kill @e[type=item]
execute @e[tag=VMW] ~ ~ ~ setblock -229 71 1303 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -316 75 1245 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -343 72 1343 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -402 78 1171 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -439 73 1584 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock -230 73 1533 minecraft:obsidian
execute @e[tag=VMW] ~ ~ ~ setblock 165 65 1159 minecraft:air
execute @e[tag=VMW] ~ ~ ~ setblock 166 65 1159 minecraft:air
execute @e[tag=VMW] ~ ~ ~ setblock 165 65 1159 minecraft:chest 9 keep {Items:[{Slot:22b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"§f+15note"},tag:["15note"]},Damage:0s}]}
#execute @e[tag=VMW] ~ ~ ~ setblock -64 164 1075 minecraft:chest 3 keep {Items:[{Slot:22b,id:"minecraft:paper",Count:1b,tag:{display:{Name:"§f+15note"},tag:["15note"]},Damage:0s}]}
execute @e[tag=VMW] ~ ~ ~ replaceitem block -64 164 1075 slot.container.22 minecraft:paper 1 0 {display:{Name:"§f+15note"},tag:["15note"]}
#execute @e[tag=VMW] ~ ~ ~ setblock 166 65 1159 minecraft:chest 9 keep {Items:[{Slot:4b,id:"mwc:m17",Count:1b,tag:{IUuidLeast:-6070939775969995191L,Ammo:2147481642,IUuidMost:-2597649329511184495L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-37B,-13B,75B,-78B,-97B,116B,71B,-111B,-85B,-65B,-80B,112B,96B,-124B,-42B,73B,0B,0B,21B,-27B,0B,0B,0B,4B,0B,0B,0B,0B,0B,0B,40B,99B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-29B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-123B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,22B,22B,0B,0B,0B,0B,0B,0B,19B,122B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,0B,127B,-1B,-8B,42B,0B,64B,64B,0B,0B,0B,0B,0B,1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B]},Damage:0s}]}

#execute @e[tag=VMW] ~ ~ ~ tp @s 267 250 1231
execute @e[tag=VMW] ~ ~ ~ tp @s -49 250 1054

execute @e[type=armor_stand,tag=!VMW] ~ ~ ~ fill ~6 ~7 ~6 ~-6 ~-7 ~-6 air 0 replace fire
kill @e[type=armor_stand,tag=!VMW]
scoreboard players tag @e remove suspend
scoreboard players tag @e remove GlobalGame
#scoreboard players tag @e remove HalfHMode
scoreboard players tag @e remove PC-WaitF
scoreboard players tag @e[tag=GlowT] remove GlowT
#scoreboard players set @e[tag=VMW] Start-SMode 0

#scoreboard objectives remove PC-Map
scoreboard objectives remove PC-TR
scoreboard objectives remove PC-RTC
scoreboard objectives remove PC-KCC
scoreboard objectives remove PC-1rdK
scoreboard objectives remove PC-2rdK
scoreboard objectives remove PC-3rdK
scoreboard objectives remove PC-Join
#scoreboard objectives remove money
#scoreboard objectives remove MainW
#scoreboard objectives remove SecondaryW
scoreboard objectives remove PC-KillCount
scoreboard objectives remove PC-KillJ
scoreboard objectives remove PC-DeathJ
scoreboard objectives remove PC-Score
scoreboard objectives remove PC-Games
scoreboard objectives remove PC-WaitT
scoreboard objectives remove PC-N



function vmwp:scoreboard
scoreboard players tag @e remove start5