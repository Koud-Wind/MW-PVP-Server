#Display信息-大厅
execute @a[tag=!InGame] ~ ~ ~ execute @s[tag=!PVE-IG] ~ ~ ~ title @s[tag=!Watch] actionbar [{"text":"§aGame about to start:"},{"score":{"objective":"start-RTC","name":"@e[tag=VMW]"}},{"text":"s §bParticipants:"},{"score":{"objective":"start-RP","name":"§fRP"}},{"text":" §eYour note:"},{"score":{"objective":"note","name":"@s"}}]

#队伍特效
execute @a[team=2-ready] ~ ~ ~ particle flame ~ ~ ~ 0 0 0 0.05 1
execute @a[team=1-ready] ~ ~ ~ particle dragonbreath ~ ~ ~ 0 0 0 0.05 1
execute @a[team=1-ready] ~ ~ ~ particle lava ~ ~ ~ 1 0 1 0 1
effect @a[team=1-ready] 24 1 0 true

#假人
scoreboard players tag 1 add Preparing
scoreboard players tag 2 add Preparing
scoreboard players tag 3 add Preparing
scoreboard players tag 4 add Preparing
scoreboard players tag 5 add Preparing

#shop函数
scoreboard players enable @a S-MeleeWP
scoreboard players enable @a S-UltimateWP
scoreboard players enable @a S-ShopP
scoreboard players enable @a S-PaintingP
scoreboard players enable @a S-SightP
scoreboard players enable @a S-SilencerP

function vmwp:shop/itemShop if @a[score_S-MeleeWP_min=1]
function vmwp:shop/itemShop if @a[score_S-UltimateWP_min=1]
function vmwp:shop/itemShop if @a[score_S-ShopP_min=1]
function vmwp:shop/itemShop if @a[score_S-PaintingP_min=1]
function vmwp:shop/itemShop if @a[score_S-SightP_min=1]
function vmwp:shop/itemShop if @a[score_S-SilencerP_min=1]
clear @a[tag=!PVE-IG,m=2] minecraft:stained_glass_pane

#开始计时器
execute @e[tag=VMW,score_start-TR_min=420,score_start-TR=420] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s[tag=!Preparing] [{"text":"§cTip: You are not ready to participate in the game"}]
execute @e[tag=VMW,score_start-TR_min=220,score_start-TR=220] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ tellraw @s[tag=!Preparing] [{"text":"§cTip: You are not ready to participate in the game"}]
execute @e[tag=VMW,score_start-TR_min=220,score_start-TR=220] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ title @s[tag=!Preparing] title [{"text":"§cGame is about to start"}]
execute @e[tag=VMW,score_start-TR_min=220,score_start-TR=220] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s[tag=!Preparing] ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=120,score_start-TR=120] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=100,score_start-TR=100] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=80,score_start-TR=80] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=60,score_start-TR=60] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=40,score_start-TR=40] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
execute @e[tag=VMW,score_start-TR_min=20,score_start-TR=20] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ playsound minecraft:block.note.hat ambient @s ~ ~ ~ 1000000000
scoreboard players operation @e[tag=VMW] start-RTC = @e[tag=VMW] start-TR
scoreboard players operation @e[tag=VMW] start-RTC /= §fdivision start-RTC
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!suspend] ~ ~ ~ scoreboard players remove @s[score_start-TR_min=1,score_start-RP_min=2] start-TR 1
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_start-TR=0,score_start-RP_min=2,score_start-RP=7] add RS1
#execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_start-TR=0,score_start-RP_min=2] add RS2
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_start-TR=0,score_start-RP_min=8] add RS2
execute @e[tag=VMW] ~ ~ ~ scoreboard players set @s[score_start-TR_min=1,score_start-RP=1] start-TR 1200
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @s[score_start-TR_min=1,score_start-RP=1] remove suspend

#参与人数计算
scoreboard players operation @e[tag=VMW] start-RP = §fRP start-RP

scoreboard players tag @e[type=item] add ready {Item:{tag:{tag:["ready"]}}}
execute @e[type=item,tag=ready] ~ ~ ~ function vmwp:readyTeam
kill @e[tag=ready,type=item]

scoreboard players tag @e[type=item] add noReady {Item:{tag:{tag:["noReady"]}}}
execute @e[type=item,tag=noReady] ~ ~ ~ scoreboard players tag @p[r=3] remove Preparing
execute @e[type=item,tag=noReady] ~ ~ ~ scoreboard teams leave @p[r=3]
execute @e[type=item,tag=noReady] ~ ~ ~ tellraw @p[r=3] [{"text":"§4You choose not to participate in the game!"}]
execute @e[type=item,tag=noReady] ~ ~ ~ playsound minecraft:block.note.pling ambient @p[r=3] ~ ~ ~ 1000000000 0
kill @e[tag=noReady,type=item]

#道具与效果
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-IG] 18 1 1 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-IG] 11 1 50 true
#execute @e[tag=VMW] ~ ~ ~ effect @a[tag=!PVE-IG] 1 1 0 true
execute @e[tag=VMW] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s[tag=!Preparing] slot.hotbar.0 minecraft:dye 1 10 {display:{Lore:["§fWhen the number of participants is 8 or more, player cannot select Free For All and King of Weapons"],Name:"§aPress Q to participate in the game (2 people are required to start)"},tag:["ready"]}
execute @e[tag=VMW] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s[tag=Preparing] slot.hotbar.0 minecraft:dye 1 1 {display:{Name:"§4Press Q to not participate in the game"},tag:["noReady"]}
execute @e[tag=VMW] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s slot.hotbar.8 minecraft:ender_chest 1 0 {display:{Name:"§fmenu"}}
#execute @e[tag=VMW] ~ ~ ~ replaceitem entity @a slot.hotbar.8 minecraft:written_book 1 0 {tag:["NO"],HideFlags:32,author:"null",title:"shop",pages:["[{\"text\":\"§3§lShop\\n\\n\"},{\"text\":\"§b§l§nWeaponsStone\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"2\"}},{\"text\":\"§b§l§nCamo\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"3\"}},{\"text\":\"§b§l§nMeleeWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"4\"}},{\"text\":\"§b§l§nUltimateWeapons\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"5\"}},{\"text\":\"§b§l§nSight\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"6\"}},{\"text\":\"§b§l§nSilencer\\n\",\"clickEvent\":{\"action\":\"change_page\",\"value\":\"7\"}}]","[{\"text\":\"§5§l§oWeaponsStone\\n\\n\"},{\"text\":\"§lWeaponsStone1\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"                     \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 1\"}},{\"text\":\"\\n§lWeaponsStone2\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 3\"}},{\"text\":\"\\n§lWeaponsStone3\\n\",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"                \"},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-ShopP set 5\"}}]","[{\"text\":\"§5§l§oCamo\\n\\n\"},{\"text\":\"§lDiamond      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 1\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 2\"}},{\"text\":\"\\n§lGold         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:4000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 3\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 4\"}},{\"text\":\"\\n§lArctic       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 5\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 6\"}},{\"text\":\"\\n§lWoodland     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 7\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 8\"}},{\"text\":\"\\n§lBloodForest  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 9\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 10\"}},{\"text\":\"\\n§lPink         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 11\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 12\"}},{\"text\":\"\\n§lBlue         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 13\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 14\"}},{\"text\":\"\\n§lUnit01       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 15\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 16\"}},{\"text\":\"\\n§4§l§nCancal Camo\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-PaintingP set 21\"}}]","[{\"text\":\"§5§l§oMeleeWeapons\\n\\n\"},{\"text\":\"§lBaseball Bat      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 1\"}},{\"text\":\"\\n§lTomahawk'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 3\"}},{\"text\":\"\\n§lBat w/ Nails \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-MeleeWP set 5\"}}]","[{\"text\":\"§5§l§oUltimateWeapons\\n\\n\"},{\"text\":\"§lGL-06'            \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 1\"}},{\"text\":\"\\n§lRPG-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 3\"}},{\"text\":\"\\n§lGPC-A1       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 5\"}},{\"text\":\"\\n§lVSS          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 7\"}},{\"text\":\"\\n§lM202         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 9\"}},{\"text\":\"\\n§lM32 MGL      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:2000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 11\"}},{\"text\":\"\\n§lM134         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:3000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 13\"}},{\"text\":\"\\n§lFat man      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:5000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-UltimateWP set 15\"}}]","[{\"text\":\"§5§l§oSight\\n\\n\"},{\"text\":\"§l15 MOA Reflex     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 1\"}},{\"text\":\"\\n§lRMR          \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 3\"}},{\"text\":\"\\n§lOKP-7        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 5\"}},{\"text\":\"\\n§l8-18 Kobra   \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 7\"}},{\"text\":\"\\n§lKobra Gen-3  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 9\"}},{\"text\":\"\\n§lEOTech       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:700\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 11\"}},{\"text\":\"\\n§lVortex       \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:800\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 13\"}},{\"text\":\"\\n§lBijia'        \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1000\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 15\"}},{\"text\":\"\\n§lSpecter      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 18\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 19\"}},{\"text\":\"\\n§lACOG         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 20\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 21\"}},{\"text\":\"\\n§lNight Raider' \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:1500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 22\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SightP set 23\"}}]","[{\"text\":\"§5§l§oSilencer\\n\\n\"},{\"text\":\"§l7.62x39mm         \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:0\"}},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 1\"}},{\"text\":\"\\n§l7.62x54mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 2\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 3\"}},{\"text\":\"\\n§l.50 BMG'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:100\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 4\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 5\"}},{\"text\":\"\\n§l7.62x51mm'    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:200\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 6\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 7\"}},{\"text\":\"\\n§l12 Gauge     \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 8\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 9\"}},{\"text\":\"\\n§l.45 ACP'      \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:500\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 10\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 11\"}},{\"text\":\"\\n§l9(x18/19)mm'  \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 12\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 13\"}},{\"text\":\"\\n§l5.56x45mm    \",\"hoverEvent\":{\"action\":\"show_text\",\"value\":\"§fnote:600\"}},{\"text\":\"§a§l§nbuy\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 14\"}},{\"text\":\"§r  \"},{\"text\":\"§a§l§nswitch\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/trigger S-SilencerP set 15\"}}]"]}
execute @e[tag=VMW] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s slot.hotbar.7 mwc:remington_700 1 0 {IUuidLeast:-8526920175805208252L,AtId:[I;4493,0,0,0,0,0,0,0,0,0,4176,0,0,0,4696,4695,0,0,0,0,0,0,0,0,0,4096,0],Ammo:0,IUuidMost:8402382143315660442L,Instance:[B;76B,97B,-17B,6B,112B,-40B,-64B,96B,-20B,-124B,8B,-95B,100B,-107B,5B,-33B,0B,0B,0B,9B,116B,-101B,66B,10B,-89B,106B,78B,-102B,-119B,-86B,75B,71B,21B,4B,-23B,68B,0B,0B,19B,83B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,38B,-56B,-30B,-89B,46B,-14B,7B,37B,75B,-109B,48B,-17B,71B,-94B,4B,125B,-126B,0B,0B,0B,22B,27B,0B,0B,17B,-115B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-2B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,80B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,88B,0B,0B,18B,87B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,16B,0B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,0B,0B,65B,32B,0B,0B,0B,0B,0B,1B,62B,97B,71B,-82B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§fLoad sight"},tag:["NO"]}
#execute @e[tag=VMW] ~ ~ ~ execute @a[tag=!PVE-IG] ~ ~ ~ replaceitem entity @s slot.hotbar.6 minecraft:written_book 1 0  {tag:["NO"],title:"help",author:"MW_PVP",pages:["[{\"text\":\"§a§l§o个人对抗\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§5§l§o玩法: §5§o各自为营, 购买自己心仪的武器, 击杀数尽可能进入前二名, 时间结束或有人击杀数达到25杀直接进行结算.\\n\\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§3§l§o机制: §3§o无限购买时间, 每十秒内无人杀敌全体获得1秒发光, 固定时间点全体会获得3秒发光, 每25秒为一周期, 对敌人造成爆炸/燃烧伤害不记入击杀数, 结束后部分金钱将转为note.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§6§l§o军火之王\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§5§l§o玩法: §5§o各自为营, 不可购买武器, 每次击杀会更换武器, 满三击杀数可拾取Crown以快速获取分数, 得分尽可能进入前二名, 当你全部使用过你所S-Switch的shop内的武器及终极武器时, 你只能使用Melee, 留意击杀数, 时间结束或有人分数达到120分时直接进行结算.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§6§l§o军火之王\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§3§l§o机制: §3§oCrown会持续保持发光, 拾取时会得到缓慢, 发光及持续回血的效果, HoldCrown时每2秒加1分, 试试每一把枪的手感, 当你S-Switch到终极武器时, 还可再击杀4名敌人才会换成Melee.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§4§l§o赏金爆破\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§5§l§o玩法: §5§o团队战, 购买AGrenade与副武器将有较高优势, 30秒购买时间, C4炸弹将随机分配给T队员, 在剩余时间内将炸弹安装到蓝色信标附近下的红圈内(抬头), CT队员可以通过潜行拆除C4炸弹, 每4局交换阵营, 各阵营满5胜场时进行结算, 部分金钱将转为note.\\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§4§l§o赏金爆破\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§3§l§o机制: §3§o每二次击杀会升级护甲, C4炸弹掉落时会持续保持发光, C4炸弹有不到5秒的安装/拆除时间, 尽可能的使用AGrenade, 地图没有边界, 有更多的前进路线, 但不要离地图过远.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§9§l§o破点攻防\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§5§l§o玩法: §5§o团队战, 购买AGrenade与副武器有极高优势,50秒购买时间, CT队员需要前往蓝色光束附近守护目标点, 不建议前往其他地点, T队员需要占领任意目标点可获得胜利, 双方均有health数限制, 当一方全部处于Watch时判定对方胜, 每2局交换阵营, 任意一方满4胜场将进行结算, 部分金钱转为note.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§9§l§o破点攻防\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§3§l§o机制: §3§o每4击杀会升级护甲, 重生后有6秒无敌, T队员占点无需潜行, 可jump, 若T队员只有一人在占点, 那么至少需要2分钟才能胜利, 每人最多死7次, 地图没有边界, 有更多的前进路线, 但不要离地图过远.\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§0§l§o僵尸末日\\n§0§m                         \\n\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false},{\"text\":\"§9§l§o攻略: §9§o前期多积攒金钱购买大弹容武器(不建议购买狙击步枪与霰弹枪), 尽可能多修复窗口以获取修复点, 建议5回合后开门集体前往二楼镇守, 单走大概率会倒地, 手持detector能够快速寻找到残留怪物, 尽快开启\\\"花园\\\", 抽取终极武器方便镇守(粉色及§0§k00§9§o品质能够极大幅提高通关概率), 解锁\\\"公寓\\\"及\\\"屋顶\\\"可购\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]","[{\"text\":\"§9§o买以升级护甲, 解锁\\\"办公室\\\"及\\\"发电站\\\"可使用电力设施以获取buff(去世后失效), 后期尽量集体镇守在\\\"发电站\\\"或\\\"花园\\\", 27回合后难度将大幅提高, 通关后可获得大量note及10胜场(用于升级ready队伍, 最高为LV4).\",\"bold\":false,\"italic\":false,\"underlined\":false,\"strikethrough\":false,\"obfuscated\":false}]"]}
scoreboard players tag @e[type=item] add NOitem {Item:{tag:{tag:["NO"]}}}
kill @e[tag=NOitem,type=item]
#music
scoreboard players add @a[tag=!PVE-IG] music 1
playsound minecraft:record.blocks record @a[score_music_min=10,score_music=10] ~ ~ ~ 1000000000
stopsound @a[score_music_min=4000] record
scoreboard players set @a[score_music_min=4000] music 0

#彩蛋
scoreboard players tag @a add 15note {Inventory:[{id:"minecraft:paper",tag:{tag:["15note"]}}]}
scoreboard players add @a[tag=15note] note 15
tellraw @a[tag=15note] [{"text":"§6+15note"}]
clear @a[tag=15note] minecraft:paper
scoreboard players tag @a[tag=15note] remove 15note

#退出处理
scoreboard players set @a[score_leave_min=1] music 0
scoreboard players reset @a[score_leave_min=1] money
scoreboard players reset @a[score_leave_min=1] MainW
scoreboard players reset @a[score_leave_min=1] SecondaryW
scoreboard players reset @a[score_leave_min=1] CT-killC

scoreboard players tag @a[score_leave_min=1] remove Preparing
scoreboard players tag @a[score_leave_min=1] remove InGame
scoreboard players tag @a[score_leave_min=1] remove shop

scoreboard teams leave @a[score_leave_min=1]

effect @a[score_leave_min=1] clear
effect @a[score_leave_min=1] 24 1 0 true
effect @a[score_leave_min=1] 1 0 0 true
xp -10000L @a[score_leave_min=1]
clear @a[score_leave_min=1]
gamemode 2 @a[score_leave_min=1]
tp @a[score_leave_min=1] -49 74 1054 90 0
spawnpoint @a[score_leave_min=1] -49 74 1054

#scoreboard players tag @a[score_leave_min=1] add ASuit {ForgeCaps:{"mwc:player_custom_inventory":{CustomInvTag:[{Slot:0b,id:"mwc:forest_bergen_backpack",Count:1b,tag:{size:0},Damage:0s},{Slot:1b,id:"mwc:juggernaut_body_armor",Count:1b,Damage:0s}]}}}
#scoreboard players tag @a[score_leave_min=1] add ASuit {ForgeCaps:{"mwc:player_custom_inventory":{CustomInvTag:[{Slot:0b,id:"mwc:forest_bergen_backpack",Count:1b,tag:{size:0},Damage:0s}]}}}
#replaceitem entity @a[tag=ASuit] slot.armor.head minecraft:lit_pumpkin 1 0
#replaceitem entity @a[tag=ASuit] slot.hotbar.5 mwc:m134 1 0 {IUuidLeast:-8281808225426711573L,Ammo:100,AtId:[I;0,0,0,0,5120,0,4911,0,0,0,0,0,0,5060,0,0,0,0,0,0,0,0,0,0,0,4765,0],IUuidMost:-5231262996970254965L,Instance:[B;-32B,83B,21B,-112B,-126B,43B,-31B,45B,117B,49B,126B,79B,17B,126B,62B,-127B,0B,0B,0B,9B,-73B,102B,-46B,5B,74B,-15B,77B,-117B,-115B,17B,27B,76B,65B,-120B,91B,-21B,0B,0B,20B,95B,0B,0B,0B,5B,0B,0B,0B,0B,0B,0B,7B,-28B,75B,99B,82B,108B,-118B,-87B,-71B,14B,-97B,-92B,100B,-74B,-111B,106B,61B,-40B,0B,0B,0B,1B,27B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,20B,0B,0B,0B,0B,0B,0B,0B,19B,47B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,19B,-60B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,18B,-99B,0B,0B,0B,0B,27B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,-1B,0B,0B,0B,100B,0B,63B,-128B,0B,0B,127B,-1B,-1B,-1B,63B,-128B,0B,0B,0B,0B,0B,0B,0B,0B,0B,1B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B,0B],display:{Name:"§4M134"}}
#replaceitem entity @a[tag=ASuit] slot.hotbar.5 minecraft:elytra 1 0 {Unbreakable:1b,HideFlags:4}
#scoreboard players tag @a[tag=ASuit] remove ASuit

scoreboard players set @a[score_leave_min=1] leave 0

