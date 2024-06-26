#细节
execute @e[type=mwc:smokegrenade260] ~ ~ ~ detect ~ ~ ~ minecraft:water -1 scoreboard players tag @s add 爆炸失效 {Motion:[0.0d,0.0d,0.0d]}
kill @e[type=mwc:smokegrenade260,tag=爆炸失效]
scoreboard players tag @e[type=mwc:smokegrenade260,tag=爆炸失效] remove 爆炸失效

#投掷物粒子效果
execute @e[type=mwc:smokegrenade260,tag=燃烧瓶] ~ ~ ~ particle largesmoke ~ ~ ~ 0 0 0 0 1 force
execute @e[type=mwc:smokegrenade260,tag=烟雾弹] ~ ~ ~ particle cloud ~ ~ ~ 0 0 0 0 1 force

#手榴弹
#scoreboard players tag @a add 手雷 {SelectedItem:{id:"mwc:m18white",tag:{tag:["手雷"]}}}
#execute @a[tag=手雷,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=4,c=1,tag=!投掷物] add 手雷
scoreboard players tag @e[type=mwc:smokegrenade260,tag=!投掷物] add 手雷 {CustomName:"§fFrag Grenade"}
scoreboard players tag @e[type=mwc:smokegrenade260,tag=手雷] add 投掷物
scoreboard players tag @e[type=mwc:smokegrenade260,tag=手雷] add 爆炸手雷 {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸手雷] ~ ~ ~ summon minecraft:creeper ~ ~1 ~ {ActiveEffects:[{Id:14,Amplifier:0,Duration:3,ShowParticles:0b}],Fuse:4s,NoGravity:1b,ignited:1b,ExplosionRadius:9b,CustomName:"[破片手榴弹]",Silent:1b,CustomNameVisible:0b,Tags:["破片手榴弹"]}
#execute @e[type=mwc:smokegrenade260,tag=爆炸手雷] ~ ~ ~ tp @e[type=minecraft:creeper,c=1,tag=破片手榴弹] ~ ~-300 ~
kill @e[type=mwc:smokegrenade260,tag=爆炸手雷]
scoreboard players tag @a[tag=手雷] remove 震撼弹
scoreboard players tag @a[tag=手雷] remove 烟雾弹
scoreboard players tag @a[tag=手雷] remove 燃烧瓶

#燃烧瓶
#scoreboard players tag @a add 燃烧瓶 {SelectedItem:{id:"mwc:m18white",tag:{tag:["燃烧瓶"]}}}
#execute @a[tag=燃烧瓶,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=4,c=1,tag=!投掷物] add 燃烧瓶
scoreboard players tag @e[type=mwc:smokegrenade260,tag=!投掷物] add 燃烧瓶 {CustomName:"§fMolotov Cocktail"}
scoreboard players tag @e[type=mwc:smokegrenade260,tag=燃烧瓶] add 投掷物
scoreboard players tag @e[type=mwc:smokegrenade260,tag=燃烧瓶] add 爆炸燃烧 {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["爆炸燃烧"],Invisible:1b,Marker:1b,Small:1b}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.40d,0.45d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.40d,0.45d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.0d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.0d,0.45d,-0.45d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.35d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.45d,0.45d,0.45d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[0.35d,0.45d,-0.45d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["燃烧飞溅"],Invisible:1b,Marker:1b,Small:1b,Motion:[-0.40d,0.45d,-0.45d]}

execute @e[type=mwc:smokegrenade260,tag=爆炸燃烧] ~ ~ ~ playsound minecraft:block.glass.break ambient @a ~ ~ ~ 2 0
kill @e[type=mwc:smokegrenade260,tag=爆炸燃烧]
scoreboard players tag @a[tag=燃烧瓶] remove 手雷
scoreboard players tag @a[tag=燃烧瓶] remove 震撼弹
scoreboard players tag @a[tag=燃烧瓶] remove 烟雾弹
scoreboard players add @e[type=minecraft:armor_stand,tag=燃烧飞溅] 投掷物时间 1
scoreboard players add @e[type=minecraft:armor_stand,tag=爆炸燃烧] 投掷物时间 1
execute @e[type=minecraft:armor_stand,tag=燃烧飞溅,score_投掷物时间=20] ~ ~ ~ fill ~1 ~1 ~ ~-1 ~-1 ~ fire 0 replace air
execute @e[type=minecraft:armor_stand,tag=燃烧飞溅,score_投掷物时间=20] ~ ~ ~ fill ~ ~1 ~1 ~ ~-1 ~-1 fire 0 replace air
execute @e[type=minecraft:armor_stand,tag=爆炸燃烧,score_投掷物时间=20] ~ ~ ~ fill ~1 ~1 ~1 ~-1 ~-1 ~-1 fire 0 replace air

#execute @e[type=minecraft:armor_stand,tag=爆炸燃烧,score_投掷物时间=300] ~ ~ ~ scoreboard players tag @e[type=minecraft:armor_stand,tag=燃烧飞溅,rm=5] add 清除燃烧飞溅
#scoreboard players tag @e[type=minecraft:armor_stand,tag=燃烧飞溅] add 清除燃烧飞溅 {OnGround:1b}
#kill @e[type=minecraft:armor_stand,tag=清除燃烧飞溅]

execute @e[type=minecraft:armor_stand,tag=燃烧飞溅,score_投掷物时间=300,score_投掷物时间_min=300] ~ ~ ~ fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air 0 replace fire
kill @e[type=minecraft:armor_stand,tag=燃烧飞溅,score_投掷物时间_min=300]
execute @e[type=minecraft:armor_stand,tag=燃烧飞溅,score_投掷物时间=300] ~ ~ ~ effect @a[r=2] 2 1 2 true 

execute @e[type=minecraft:armor_stand,tag=爆炸燃烧,score_投掷物时间=300,score_投掷物时间_min=300] ~ ~ ~ fill ~6 ~7 ~6 ~-6 ~-7 ~-6 air 0 replace fire
kill @e[type=minecraft:armor_stand,tag=爆炸燃烧,score_投掷物时间_min=300]
execute @e[type=minecraft:armor_stand,tag=爆炸燃烧,score_投掷物时间=300] ~ ~ ~ effect @a[r=4] 2 1 2 true 

scoreboard players tag @a add 燃烧中 {Fire:260s}
scoreboard players tag @a add 燃烧中 {Fire:261s}
scoreboard players tag @a add 燃烧中 {Fire:262s}
scoreboard players tag @a add 燃烧中 {Fire:263s}
#scoreboard players tag @a add 燃烧中 {Fire:165s}
#scoreboard players tag @a add 燃烧中 {Fire:166s}
#scoreboard players tag @a add 燃烧中 {Fire:167s}
#scoreboard players tag @a add 燃烧中 {Fire:168s}
#scoreboard players tag @a add 燃烧中 {Fire:169s}
#scoreboard players tag @a add 燃烧中 {Fire:170s}
#scoreboard players tag @a add 燃烧中 {Fire:100s}
#scoreboard players tag @a add 燃烧中 {Fire:101s}
#scoreboard players tag @a add 燃烧中 {Fire:102s}
#scoreboard players tag @a add 燃烧中 {Fire:103s}
#scoreboard players tag @a add 燃烧中 {Fire:104s}
execute @a ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 effect @s 8 1 130 true
execute @a ~ ~ ~ detect ~ ~ ~ minecraft:fire -1 effect @s 7 1 0 true
effect @a[tag=燃烧中] 7 1 1 true
scoreboard players tag @a[tag=燃烧中] remove 燃烧中

#震撼弹
#scoreboard players tag @a add 震撼弹 {SelectedItem:{id:"mwc:m18white",tag:{tag:["震撼弹"]}}}
#execute @a[tag=震撼弹,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=4,c=1,tag=!投掷物] add 震撼弹
scoreboard players tag @e[type=mwc:smokegrenade260,tag=!投掷物] add 震撼弹 {CustomName:"§fStun Grenade"}
scoreboard players tag @e[type=mwc:smokegrenade260,tag=震撼弹] add 投掷物
scoreboard players tag @e[type=mwc:smokegrenade260,tag=震撼弹] add 爆炸震撼 {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ effect @a[r=8] 15 6 0 true 
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ effect @a[r=8] 2 6 4 true 
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ effect @a[r=8] 8 2 195 true 
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ effect @a[r=8] 9 10 0 true 
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ effect @a[r=8] 24 1 0 true 
execute @e[type=mwc:smokegrenade260,tag=爆炸震撼] ~ ~ ~ playsound mwc:flashbang ambient @a ~ ~ ~ 2 0.7
kill @e[type=mwc:smokegrenade260,tag=爆炸震撼]
scoreboard players tag @a[tag=震撼弹] remove 手雷
scoreboard players tag @a[tag=震撼弹] remove 烟雾弹
scoreboard players tag @a[tag=震撼弹] remove 燃烧瓶

#烟雾弹
#scoreboard players tag @a add 烟雾弹 {SelectedItem:{id:"mwc:m18white",tag:{tag:["烟雾弹"]}}}
#execute @a[tag=烟雾弹,m=!3] ~ ~ ~ scoreboard players tag @e[type=mwc:smokegrenade260,r=4,c=1,tag=!投掷物] add 烟雾弹
scoreboard players tag @e[type=mwc:smokegrenade260,tag=!投掷物] add 烟雾弹 {CustomName:"§fSmoke Grenade"}
scoreboard players tag @e[type=mwc:smokegrenade260,tag=烟雾弹] add 投掷物
scoreboard players tag @e[type=mwc:smokegrenade260,tag=烟雾弹] add 爆炸烟雾 {Motion:[0.0d,0.0d,0.0d]}
execute @e[type=mwc:smokegrenade260,tag=爆炸烟雾] ~ ~ ~ summon minecraft:armor_stand ~ ~ ~ {Tags:["爆炸烟雾"],Invisible:1b,Small:1b}
execute @e[type=mwc:smokegrenade260,tag=爆炸烟雾] ~ ~ ~ playsound minecraft:block.lava.extinguish ambient @a ~ ~ ~ 2 0
kill @e[type=mwc:smokegrenade260,tag=爆炸烟雾]
scoreboard players tag @a[tag=烟雾弹] remove 手雷
scoreboard players tag @a[tag=烟雾弹] remove 震撼弹
scoreboard players tag @a[tag=烟雾弹] remove 燃烧瓶
scoreboard players add @e[type=minecraft:armor_stand,tag=爆炸烟雾] 投掷物时间 1
execute @e[type=minecraft:armor_stand,tag=爆炸烟雾,score_投掷物时间=200] ~ ~ ~ particle largeexplode ~ ~2.5 ~ 3.5 2 3.5 0 25 force
execute @e[type=minecraft:armor_stand,tag=爆炸烟雾] ~ ~ ~ effect @a[r=5] 14 1 0 true
execute @e[type=minecraft:armor_stand,tag=爆炸烟雾] ~ ~ ~ scoreboard players tag @a[r=10] add 烟雾隐藏
kill @e[type=minecraft:armor_stand,tag=爆炸烟雾,score_投掷物时间_min=200]







