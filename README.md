# MW PVP Server
一款专注于VMW/MWC枪械练习的Minecraft服务器

[中文](https://github.com/Koud-Wind/MW-PVP-Server/tree/main-zh) / [English](https://github.com/Koud-Wind/MW-PVP-Server/tree/main)



## 介绍
大部分由 `mcfunction` 实现, 玩法借鉴了**COD, CS, Hypixel**等

它经历了两年的个人维护, 由于精力与经济有限, 决定开源, 如果你想维护这个项目, 请联系我!


* **历程**

  `2021年10月` 开始制作

  `2022年06月` 整体重写

  `2022年11月` 大体完工

  `2023年04月` 使用Git托管

  `2024年11月` 正式开源



## 部署及游玩
**0.** **服务器所需规格: `2颗`最大睿频为`4.0GHz`的CPU核心, `4GB`可分配运存, `1GB`磁盘空间, `20Mbps`网络上行带宽, `Java8`运行环境**

**1.** **从[这里](https://github.com/Koud-Wind/MW-PVP-Server/archive/refs/heads/main-zh.zip)下载服务端本体, 解压它**

**2.** 编辑 `server.properties` 文件, 将 `server-port` 设置为未被占用的端口号

**3.** (可选) 将 `online-mode` 设置为 `false`

**4.** 运行 `!启动.bat` (确保你安装了Java)

**5.** (可选) 使用 `内网穿透 (frp)` 映射你设置的 `端口号` (默认为49999), 从**映射节点供应商**那里获取公网IP与端口

**6.** 玩家通过 `公网IP:端口` 进入服务器, 但在此之前, **需要装载[这里](https://github.com/Koud-Wind/MW-PVP-Server/releases)发布的客户端模组**



## 玩法
<details>
<summary><strong>总体</strong></summary>
  玩家需要从武器商店获取武器, 赚取金钱以便获取更好的武器, 白色光柱为末影箱位置, 蓝色光柱为防守点位置, 满足各模式的胜利要求即可获得更多的钞票, 使用钞票购买增值道具可以在下次游戏中得到较多优势及满足个性化需求
</details>

<details>
<summary><strong>个人对抗</strong></summary>
  各自为营, 相互厮杀, 有玩家达到30杀将进行结算, 击杀数排名保持在前两名取得胜利. 在一段时间内无人击杀每人会有1秒全图标记, 时间为25的倍数时每人会有3秒全图标记. 投掷物杀敌不计入击杀数. 
</details>

<details>
<summary><strong>军火之王</strong></summary>
  各自为营, 相互厮杀, 只有主武器, 有玩家达到120分将进行结算, 分数排名保持在前两名取得胜利. 每一次击杀会更换新的武器, 但不要光顾着杀敌, 可以拾取王冠获得自动加分/快速回血/提高护甲, 但代价是降低移速/全图标记. 
</details>

<details>
<summary><strong>求生对抗</strong></summary>
  各自为营, 存活到最后, 共5回合 (中途加入将是下个回合), 回合内不可重生, 每个回合会根据存活顺序加分, 主武器只能使用狙击步枪/射手步枪/冲锋枪, 分数排名保持在前两名取得胜利. 每个回合开始玩家可以自由选择降落位置, 时间剩余30秒时, 末影箱附近外的玩家将会持续扣血. 
</details>

<details>
<summary><strong>赏金爆破</strong></summary>
  阵营对峙, 拆除/引爆C4炸弹, 共9回合 (中途加入将是下个回合), 回合内不可重生, 胜利5回合将进行结算. 30秒武器商店使用时间. 玩家通过潜行与C4炸弹交互 (5秒), T阵营玩家需要将C4炸弹安装到蓝色光柱的红圈内 (CT防守点). 推荐购买投掷物获得更多优势, 每4回合会交互阵营, 每2次杀敌会升级一次护甲, 地图没有边界限制, 会有更多的进攻路线, 但不要尝试逃逸.
</details>

<details>
<summary><strong>破点攻防</strong></summary>
  阵营对峙, 歼敌/取得占领进度, 共7回合 (中途加入将是下个回合), 回合内有阵营重生数限制, 胜利4回合将进行结算. 50秒武器商店使用时间. CT阵营玩家需要防守据点, T阵营玩家需要进入蓝色光柱的红圈内 (CT防守点) 取得占领进度 (多个玩家会更快). 购买投掷物获得极高优势, 每2回合会交互阵营, 每4次杀敌会升级一次护甲, 单个玩家最多死7次, 地图没有边界限制, 会有更多的进攻路线, 但不要尝试逃逸.
</details>

<details>
<summary><strong>团队死斗</strong></summary>
  阵营对峙, 歼敌, 阵营分数达到65时进行结算, 分数多的阵营将取得胜利. 阵营成员重生就会给对方阵营加分. 满30分时将互换重生位置, 杀敌会升级护甲. 
</details>

<details>
<summary><strong>僵尸末日</strong></summary>
  团队合作, 消灭回合内的全部僵尸, 共30回合 (平均需要1小时45分钟), 修理门板以获得修复点, 手持探测器会自动标记附近的僵尸, 不推荐购买霰弹枪/狙击步枪, 使用修复点解锁新的区域会有更多可修复的门板, 尽量结伴而行, 不要单打独斗. 玩家可以购买护甲 (公寓/屋顶), 抽取终极武器 (花园), 购买炮台 (仓库), 购买无畏装甲 (发电站), 启动机器购买Buff, 能够降低通关难度并提升通关速度. 
</details>



## 结尾
感谢总共`2879`名在这里游玩过的国内玩家, 你们长期以来的支持就是我最大的动力, 游戏数据将以保留.

*-- Koud_Wind 敬上*

<br/>

交流群: [856636717](http://qm.qq.com/cgi-bin/qm/qr?_wv=1027&k=j6JedJrblKhGaHmsl1NmRjozu553-lrP&authKey=oiCUxEb6JyiQvXOEsTpf4XaR5vpH2K96uhvRf%2BHHsHSpiOwGgUJXonAogLeT1ynM&noverify=0&group_code=856636717)



## 视频
https://www.bilibili.com/video/BV1WuDLYSE1g

https://www.bilibili.com/video/BV1L4DLYMERg

https://www.bilibili.com/video/BV1fzDUYMERa

https://www.bilibili.com/video/BV1JpDQY2EJw

## 图片

![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map1-4.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map2-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map2-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map3-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map4-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map5-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map5-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/map6-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/zombie-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/hall-3.png)

![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-0.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-2.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/game-3.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/menu-1.png)
![](https://github.com/Koud-Wind/MW-PVP-Server/blob/resources/image/menu-2.png)
