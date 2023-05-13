#细节
execute @e[type=mwc:smokegrenade260] ~ ~ ~ detect ~ ~ ~ minecraft:water -1 scoreboard players tag @s add Extinguish {Motion:[0.0d,0.0d,0.0d]}
kill @e[type=mwc:smokegrenade260,tag=Extinguish]
scoreboard players tag @e[type=mwc:smokegrenade260,tag=Extinguish] remove Extinguish

#AGrenade粒子效果
execute @e[type=mwc:smokegrenade260,tag=IncendiaryG] ~ ~ ~ particle largesmoke ~ ~ ~ 0 0 0 0 1 force
execute @e[type=mwc:smokegrenade260,tag=SmokeG] ~ ~ ~ particle largeexplode ~ ~ ~ 0 0 0 0 1 force

#
execute @a[tag=InGame,score_shotGunP_min=1] ~ ~ ~ tellraw @s [{"text":"§4§lMonkey playing is prohibited during the New Year!!!!!!","clickEvent":{"action":"run_command","value":"/trigger shotGunP set 100"}}]
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_shotGunP_min=100,score_shotGunP=100,tag=InGame] add ByOrigin-12
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_S&DMRP_min=1,tag=InGame,score_money_min=17] add ByM14DMR
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players add @a[score_assaultRP_min=1,tag=InGame] assaultRP 1
execute @e[tag=GlobalGame] ~ ~ ~ scoreboard players tag @a[score_ultimateWP_min=1,score_ultimateWP=1,tag=InGame,score_money_min=100] add BuyUltimateW
execute @a[tag=BuyUltimateW] ~ ~ ~ replaceitem entity @a[tag=InGame] slot.enderchest.13 mwc:russian_weapons_case 1 0 {ench:[{lvl:1s,id:71s}],HideFlags:1,display:{Name:"§4Ultimate weapon box"},tag:["UltimateW"]}
scoreboard players remove @a[tag=BuyUltimateW] money 100
execute @a[tag=BuyUltimateW] ~ ~ ~ execute @a[tag=InGame] ~ ~ ~ tellraw @s [{"selector":"@s"},{"text":"§f's §4Ultimate weapon box§c has been released to ender Chest"}]
execute @a[tag=BuyUltimateW] ~ ~ ~ playsound minecraft:entity.enderdragon.death ambient @a[tag=!PVE-InGame] ~ ~ ~ 100000000000000 0
scoreboard players tag @a[tag=BuyUltimateW] remove BuyUltimateW
scoreboard players reset @a[score_ultimateWP_min=1] ultimateWP
scoreboard players reset @a[score_shotGunP_min=1] shotGunP
scoreboard players reset @a[score_S&DMRP_min=1] S&DMRP

#
effect @a[tag=InGame] 5 1 7 true 
execute @e[type=mwc:flashgrenade262] ~ ~ ~ playsound minecraft:entity.wolf.howl ambient @a ~ ~ ~ 1 2

#手榴弹
scoreboard players tag @a add FragG {SelectedItem:{id:"mwc:m18white",tag:{tag:["grenade"]}}}
execute @a[tag=FragG,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=3,c=1,tag=!AGrenade] add FragG
scoreboard players tag @e[type=mwc:smokegrenade260,tag=FragG] add AGrenade
scoreboard players tag @e[type=mwc:smokegrenade260,tag=FragG] add ExplosiveG {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveG] ~ ~ ~ summon minecraft:creeper ~ ~0.5 ~ {Motion:[0.0d,2.0d,0.0d],powered:1b,ActiveEffects:[{Id:14,Amplifier:0,Duration:3,ShowParticles:0b}],Fuse:10s,ignited:1b,ExplosionRadius:30b,CustomName:"[Frag Grenade]",Silent:1b,CustomNameVisible:0b,Tags:["FragGrenade"]}
kill @e[type=mwc:smokegrenade260,tag=ExplosiveG]
scoreboard players tag @a[tag=FragG] remove StunG
scoreboard players tag @a[tag=FragG] remove SmokeG
scoreboard players tag @a[tag=FragG] remove IncendiaryG

#IncendiaryG
scoreboard players tag @a add IncendiaryG {SelectedItem:{id:"mwc:m18white",tag:{tag:["incendiaryGrenade"]}}}
execute @a[tag=IncendiaryG,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=3,c=1,tag=!AGrenade] add IncendiaryG
scoreboard players tag @e[type=mwc:smokegrenade260,tag=IncendiaryG] add AGrenade
scoreboard players tag @e[type=mwc:smokegrenade260,tag=IncendiaryG] add ExplosiveI {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["ExplosiveI"],Invisible:1b,Marker:1b,Small:1b}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.40d,0.45d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.40d,0.45d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.0d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.0d,0.45d,-0.45d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.35d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.45d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.35d,0.45d,-0.45d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["Splash"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.40d,0.45d,-0.45d]}

execute @e[type=mwc:smokegrenade260,tag=ExplosiveI] ~ ~ ~ playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0
kill @e[type=mwc:smokegrenade260,tag=ExplosiveI]
scoreboard players tag @a[tag=IncendiaryG] remove FragG
scoreboard players tag @a[tag=IncendiaryG] remove StunG
scoreboard players tag @a[tag=IncendiaryG] remove SmokeG
scoreboard players add @e[type=minecraft:armor_stand,tag=Splash] ThrowingT 1
scoreboard players add @e[type=minecraft:armor_stand,tag=ExplosiveI] ThrowingT 1

#execute @e[type=minecraft:armor_stand,tag=ExplosiveI,score_ThrowingT=300] ~ ~ ~ scoreboard players tag @e[type=minecraft:armor_stand,tag=Splash,rm=5] add CSplash
#scoreboard players tag @e[type=minecraft:armor_stand,tag=Splash] add CSplash {OnGround:1b}
#kill @e[type=minecraft:armor_stand,tag=CSplash]

execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300,score_ThrowingT_min=300] ~ ~ ~ fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air 0 replace fire
kill @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT_min=300]
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 2 1 2 true 
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ playsound mwc:flashbang ambient @a ~ ~ ~ 0.1 0.7
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 15 1 0 true 
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 2 1 4 true 
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 8 1 195 true 
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 9 1 0 true 
execute @e[type=minecraft:armor_stand,tag=Splash,score_ThrowingT=300] ~ ~ ~ effect @a[r=3] 24 1 0 true 

execute @e[type=minecraft:armor_stand,tag=ExplosiveI,score_ThrowingT=300,score_ThrowingT_min=300] ~ ~ ~ fill ~6 ~7 ~6 ~-6 ~-7 ~-6 air 0 replace fire
kill @e[type=minecraft:armor_stand,tag=ExplosiveI,score_ThrowingT_min=300]
execute @e[type=minecraft:armor_stand,tag=ExplosiveI,score_ThrowingT=300] ~ ~ ~ effect @a[r=4] 2 1 2 true 

scoreboard players tag @a add Burning {Fire:260s}
scoreboard players tag @a add Burning {Fire:261s}
scoreboard players tag @a add Burning {Fire:262s}
scoreboard players tag @a add Burning {Fire:263s}
#scoreboard players tag @a add Burning {Fire:165s}
#scoreboard players tag @a add Burning {Fire:166s}
#scoreboard players tag @a add Burning {Fire:167s}
#scoreboard players tag @a add Burning {Fire:168s}
#scoreboard players tag @a add Burning {Fire:169s}
#scoreboard players tag @a add Burning {Fire:170s}
#scoreboard players tag @a add Burning {Fire:100s}
#scoreboard players tag @a add Burning {Fire:101s}
#scoreboard players tag @a add Burning {Fire:102s}
#scoreboard players tag @a add Burning {Fire:103s}
#scoreboard players tag @a add Burning {Fire:104s}
execute @a ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 effect @s 8 1 200 true
execute @a ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 effect @s 7 1 0 true
effect @a[tag=Burning] 7 1 1 true
scoreboard players tag @a[tag=Burning] remove Burning

#StunG
scoreboard players tag @a add StunG {SelectedItem:{id:"mwc:m18white",tag:{tag:["stunGrenade"]}}}
execute @a[tag=StunG,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=3,c=1,tag=!AGrenade] add StunG
scoreboard players tag @e[type=mwc:smokegrenade260,tag=StunG] add AGrenade
scoreboard players tag @e[type=mwc:smokegrenade260,tag=StunG] add ExplosionS {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosionS] ~ ~ ~ effect @a[r=13] 25 1 50 true 
execute @e[type=mwc:smokegrenade260,tag=ExplosionS] ~ ~ ~ playsound mwc:flashbang ambient @a ~ ~ ~ 2 0.7
kill @e[type=mwc:smokegrenade260,tag=ExplosionS]
scoreboard players tag @a[tag=StunG] remove FragG
scoreboard players tag @a[tag=StunG] remove SmokeG
scoreboard players tag @a[tag=StunG] remove IncendiaryG

#SmokeG
scoreboard players tag @a add SmokeG {SelectedItem:{id:"mwc:m18white",tag:{tag:["smokeGrenade"]}}}
execute @a[tag=SmokeG,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=3,c=1,tag=!AGrenade] add SmokeG
scoreboard players tag @e[type=mwc:smokegrenade260,tag=SmokeG] add AGrenade
scoreboard players tag @e[type=mwc:smokegrenade260,tag=SmokeG] add ExplosionSmo {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=ExplosionSmo] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["ExplosionSmo"],Invisible:1b,Small:1b}
execute @e[type=mwc:smokegrenade260,tag=ExplosionSmo] ~ ~ ~ playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 2 0
kill @e[type=mwc:smokegrenade260,tag=ExplosionSmo]
scoreboard players tag @a[tag=SmokeG] remove FragG
scoreboard players tag @a[tag=SmokeG] remove StunG
scoreboard players tag @a[tag=SmokeG] remove IncendiaryG
scoreboard players add @e[type=minecraft:armor_stand,tag=ExplosionSmo] ThrowingT 1
execute @e[type=minecraft:armor_stand,tag=ExplosionSmo,score_ThrowingT=200] ~ ~ ~ particle largeexplode ~ ~2.5 ~ 3.5 2 3.5 0 25 force
execute @e[type=minecraft:armor_stand,tag=ExplosionSmo] ~ ~ ~ effect @a[r=5] 14 1 0 true
execute @e[type=minecraft:armor_stand,tag=ExplosionSmo] ~ ~ ~ scoreboard players tag @a[r=10] add smokeHide
execute @e[type=minecraft:armor_stand,tag=ExplosionSmo] ~ ~ ~ effect @a[r=15] 20 1 120 true 
execute @e[type=minecraft:armor_stand,tag=ExplosionSmo] ~ ~ ~ effect @a[r=7] 7 2 0 true 
kill @e[type=minecraft:armor_stand,tag=ExplosionSmo,score_ThrowingT_min=200]







