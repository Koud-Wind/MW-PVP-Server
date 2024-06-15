scoreboard players tag @a[tag=InGame,team=CTT] add RandomTp

clear @a[tag=InGame]
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=!HalfHMode] ~ ~ ~ replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"}]}
execute @e[tag=VMW] ~ ~ ~ execute @s[tag=HalfHMode] ~ ~ ~ replaceitem entity @a[tag=InGame] slot.armor.chest minecraft:elytra 1 0 {ench:[{lvl:1s,id:10s}],Unbreakable:1b,HideFlags:5,display:{Name:""},AttributeModifiers:[{UUIDMost:3618156733941892737L,UUIDLeast:-7584274578594019785L,Amount:13.0d,Slot:"chest",AttributeName:"generic.armor",Operation:0,Name:"generic.armor"},{UUIDMost:6576250448452734424L,UUIDLeast:-7523519124796604724L,Amount:-10.0d,Slot:"chest",AttributeName:"generic.maxHealth",Operation:0,Name:"generic.maxHealth"}]}
scoreboard players set @a[tag=InGame] MainW 0
scoreboard players set @a[tag=InGame] SecondaryW 0

execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 2 10 50 true
#execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 15 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 8 11 130 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 12 15 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 14 10 0 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 6 1 4 true
execute @e[tag=VMW] ~ ~ ~ effect @a[tag=InGame] 11 11 50 true

execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add Camo
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add Melee
execute @e[tag=VMW] ~ ~ ~ scoreboard players tag @a[tag=InGame] add shop
scoreboard players set @e[tag=VMW] PC-N 4
scoreboard players add @e[tag=VMW] PC-Games 1
scoreboard players tag @e[tag=VMW] remove PC-WaitF

scoreboard players set @e[score_ThrowingT_min=0,type=minecraft:armor_stand] ThrowingT 299
scoreboard players set @e[tag=VMW] PC-TR 2800