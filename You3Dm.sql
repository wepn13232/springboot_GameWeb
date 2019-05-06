/*
 Navicat Premium Data Transfer

 Source Server         : You3dmxyz
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : You3Dm

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 04/05/2019 20:38:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_id` int(11) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `forum_title` varchar(255) DEFAULT NULL,
  `forum_content` text,
  `game_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of forum
-- ----------------------------
BEGIN;
INSERT INTO `forum` VALUES (9, '[快讯] 《彩虹六号：围攻》玩家破4千万', '        育碧旗下的战术射击游戏《彩虹六号：围攻》虽然已经发售近3年，但依然是市面上最流行的射击游戏之一。据育碧在今年6月E3大展上公布的数字，该作已经在全球范围内收获了3500万玩家。而根据最新消息，这一数字已经飙升到了4千万。\r\n        这意味着，《彩虹六号：围攻》在三个多月内收获了500万新玩家，这一表现对于一款老游戏来说非常惊人。育碧之前公布的数字包括2017年8月的2000万，2018年4月的3000万，E3的3500万，以及现在宣布的4000万。这种增长没有出现明显放缓。由于免费周末和其他促销活动，这些数字在未来还有提升潜力，而育碧最新的财务报告也表明，该作的月度活跃用户同比10月份出现增长，因此现在比去年同期有更多人在玩这款游戏，当然万圣节活动的吸引力也不容小觑。\r\n　　育碧给出的数字涵盖了所有平台。对于PC平台而言，SteamCharts显示，在过去的两个月中，《彩虹六号：围攻》平均在线玩家达到了惊人的73000人，而3月份以来的最高纪录是83000人。这还不包括坚持使用育碧自家的Uplay平台的玩家。\r\n　　《彩虹六号：围攻》是一款由育碧蒙特利尔开发由育碧软件发行的第一人称战术射击游戏。本作是《彩虹六号系列》时隔8年后推出的正统续作，同时继承了被取消的《彩虹六号：爱国者》的一些要素。《彩虹六号：围攻》主打多人游戏，游戏系统着重于小队对抗，而单人模式也以教学为主，不像前作更重视剧情。\r\n', 1, 'PostMalone', '2019-04-30 13:03:00');
INSERT INTO `forum` VALUES (10, '[快讯] 《冷血悍将》《彩虹六号》将改编成电影 黑豹主演', '据悉，派拉蒙影业将首先将《冷血悍将（Without Remorse）》搬上大荧幕，之后再是《彩虹六号》。乔丹还是电影改编的监制人之一，其他还有Josh Appelbaum和Corrin Nemec。不过主要监制是负责DC《泰坦》电视剧系列的 Akiva Goldsman。\r\nJohn Clark曾在17部《汤姆克兰西》小说中出现，在JackR Ryan系列中通常是作为男二号。不过在前传小说《冷血悍将》中Clark是男一号，讲述的是他在越战中在海报突击队里服役的故事。而《彩虹六号》小说更注重于非常黑暗的跨国反恐任务。\r\n据IGN，派拉蒙原计划是在2012年就要拍《冷血悍将》电影，2017年探索《彩虹六号》电影，但是直到现在才正式敲定。而在此之前，Savoy影业自1993年以来也想拍一部《冷血悍将》电影，但由于小说过于暴力黑暗，一直没有尝试。', 1, 'PostMalone', '2019-04-30 13:06:00');
INSERT INTO `forum` VALUES (11, '[讨论] 《看门狗2》游民评分（6.5分）', NULL, 3, 'PostMalone', '2019-04-30 13:07:00');
INSERT INTO `forum` VALUES (12, '[资讯] b站up主带你玩看门狗2', 'https://www.bilibili.com/video/av31022916 这是我第一次录制剪辑视频，有些瑕疵，但还是希望各位喜欢玩看门狗2的朋友可以多多捧场，点个关注收藏，多多支持，谢谢大家', 3, 'PostMalone', '2019-04-30 13:07:00');
INSERT INTO `forum` VALUES (13, '《皇牌空战7》IGN评分6分', '《皇牌空战7》IGN评分6分', 18, 'PostMalone', '2019-05-01 09:25:00');
INSERT INTO `forum` VALUES (15, '《只狼》著名名言', '犹豫，只会败北；坚决，只会白给', 7, 'PostMalone', '2019-05-02 13:38:00');
INSERT INTO `forum` VALUES (16, '《战地5》ign 评分8分', '《战地5》ign 评分8分 我傻了', 13, 'linqiyuan', '2019-05-02 19:06:00');
COMMIT;

-- ----------------------------
-- Table structure for game
-- ----------------------------
DROP TABLE IF EXISTS `game`;
CREATE TABLE `game` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) DEFAULT NULL,
  `game_info` varchar(255) DEFAULT NULL,
  `game_price` int(4) DEFAULT NULL,
  `system` varchar(255) DEFAULT NULL,
  `cpu` varchar(255) DEFAULT NULL,
  `memory` varchar(255) DEFAULT NULL,
  `GPU` varchar(255) DEFAULT NULL,
  `status` int(2) DEFAULT NULL,
  `save_price` int(4) DEFAULT NULL,
  `closing_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of game
-- ----------------------------
BEGIN;
INSERT INTO `game` VALUES (1, '《彩虹六号：围攻》', '《彩虹六号：围攻》是由育碧蒙特利尔工作室专为新一代游戏主机开发的一款反恐题材射击游戏，属于《汤姆·克兰西之彩虹六号》系列。游戏于2015年11月28日起正式登陆登陆PC，Xbox One和PS4平台。\n该作灵感来源于现实世界中的反恐行动，玩家将在游戏中将扮演警察或匪徒进行殊死较量。', 168, 'Windows 7 / 8.1 / 10(仅支持64位)', 'Intel Core i3 560 @ 3.3 GHz / AMD Phenom II X4 945 @ 3.0 GHz\n', '6 GB\n', 'Nvidia GeForce GTX 460 / AMD Radeon HD 5870\n', 0, 0, NULL);
INSERT INTO `game` VALUES (2, '《无人深空》', '《无人深空》是一款以太空探索冒险生存为主题的游戏。游戏中全是随机生成的星球可以供玩家探索，几乎可以看做是无限大。同时因为游戏是使用算法生成星球，所以游戏本身体积不大，而且可以完全离线游玩', 78, 'Windows 7(游戏仅支持64位)\r\n', 'Intel Core i3\r\n', '8 GB\r\n', 'NVIDIA GTX 480\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (3, '《看门狗2》', '游戏背景设定在未来的旧金山，玩家需要扮演年轻的聪明黑客马可仕·哈洛威，来到技术革命的起源地：旧金山湾区。加入最恶名昭彰的黑客团体 DedSec，执行史上最大规模的黑客行动，彻底消灭犯罪首脑用来大规模监视操控市民的侵入性运作系统 ctOS 2.0', 56, 'Windows 7 / 8.1 / 10（游戏仅支持64位）\r\n', 'Intel Core i5 2400S / AMD FX-6120\r\n', '6 GB\r\n', 'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (4, '《怪物猎人：世界》', '2018年8月13日，腾讯Wegame发布公告，称“因WeGame平台发行的《怪物猎人 世界》部分游戏内容未完全符合政策法规要求”，相关政府管理部门接到大量举报，该游戏相应运营资质文件现在已被取消。应主管部门要求，现执行下架整改，停止游戏售卖', 152, 'Windows 7 / 8 / 8.1 / 10（游戏仅支持64位）\r\n', 'Intel Core i5-4460 3.2GHz处理器 / AMD FX-6300\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 760 / AMD Randeon R7 260X\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (5, '《刺客信条：奥德赛》', '《刺客信条：奥德赛》是由育碧制作并发行的动作游戏。本作的游戏背景设定在古希腊，视角聚焦在了斯巴达战士身上，玩家可以选择男性与女性两个全新的主角，并且加入了对话选项。游戏内容可以称作《刺客信条：起源》“某种意义上的续作”，还包括“起源”神魔大战风格的希腊神话角色战斗', 152, 'Windows 7 / 8.1 / 10(游戏仅支持64位)\r\n', 'Intel Core i5-2400 / AMD FX 6300\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 660 2GB / AMD Radeon R9 285\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (6, '《仁王》', '故事的舞台是群雄割据的日本战国时代，讲述了在妖魔横行的时代下，一个金发碧眼的英国船员，为了追杀游戏中的反派辗转来到日本的故事', 65, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'Intel Core i5 3550或更好\r\n', '6 GB\r\n', 'NVIDIA GeForce GTX 780 /AMD Radeon R9 280或更好\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (7, '《只狼》', '　　《只狼：影逝二度》是由制作《黑暗之魂》系列的开发商FROM SOFTWARE所制作的一款动作角色扮演游戏。游戏的故事发生在十六世纪末的日本战国时代，玩家将扮演一名忍者角色，为自己的领主执行任务，见证一个不断流血的世界。游戏以剑为战斗核心，然后通过各种道具与假肢手臂增强战斗。\n\n　　官方表示由宫崎英高监督的本作设计将会非常硬核，风格硬朗，节奏偏快，FromSoftware表示本作会带来黑暗扭曲的新游戏体验。', 219, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'Intel Core i3-2100 / AMD FX-6300\r\n', '4 GB\r\n', 'NVIDIA GeForce GTX 760 / AMD Radeon HD 7950\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (8, '《零世代》', '《零世代》由《正当防卫》及《疯狂麦克斯》开发商Avalanche打造，游戏使用了多次获奖的Apex引擎，拥有完整的日夜循环以及变化莫测的天气系统，同时还拥有更为复杂的AI设计，以及更真实的弹道模拟和音效。游戏将支持单人以及最高4名玩家进行游戏，可以通过玩家们之间不同技能的组合打出更为复杂的技术。\n\n　　本作背景设定在1980年代的瑞典，敌对的机器入侵了祥和的乡村，玩家们需要在反击的同时寻求背后发生的秘密。', 178, 'Windows 7\r\n', 'Intel 四核处理器 i5\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 660\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (9, '《刺客信条3：重制版》', '《刺客信条3：重制版》游戏拥有更高分辨率，还有新的角色模型，新的光照渲染系统。育碧还改进了一些游戏机制，其中一些功能根据玩家的反馈进行修改或调整。除了游戏本体及全部扩展内容外，讲述了女刺客艾弗琳旅程的《刺客信条3：解放》完整重制也在其中。', 112, 'Windows 7 / 8.1 / 10\r\n', 'Intel Core i5 2400 3.1 GHz / AMD FX 6350 3.9 GHz\r\n', '8 GB\r\n', 'Nvidia GeForce GTX 660 / AMD Radeon R9 270X', 0, 0, NULL);
INSERT INTO `game` VALUES (10, '《死或生6》', '《死或生6》是一款由Team Ninja制作的格斗游戏，该作为《死或生》系列的正统续作。游戏保持了系列一贯的格斗方式和场景伤害互动区域玩法特性。游戏除了优化修改原有角色外，还会新增大量新人物。并且本作会使次世代主机机能最大化，使游戏画面更加真实优质。', 199, 'Windows 10（64位操作系统）\r\n', 'Intel Core i5-4690\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 770', 0, 0, NULL);
INSERT INTO `game` VALUES (11, '《尘埃拉力赛2.0》', '《尘埃拉力赛2.0》是由Codemasters制作的《尘埃》系列新作，本作带来位于全球各处的特选经典拉力赛事地点，驾驶世界上最好的越野车辆。拉力赛地点分别在新西兰、阿根廷、西班牙、波兰、澳大利亚和美国，包含8条FIA认证的拉力赛道。', 185, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'Intel Core i3 2130 / AMD FX 4300\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 650Ti / AMD HD 7750\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (12, '《全境封锁2》', '《全境封锁2》是由Ubisoft Massive制作，育碧安纳西，育碧上海等支持，根据著名军事小说家汤姆克兰西的同名小说改编游戏《全境封锁》系列续作。本作的游戏引擎更换为改进版雪花莲引擎，玩家还可以将一些游戏进度从一代转移到本作当中。', 259, 'Windows 7 / 8 / 10\r\n', 'AMD FX-6350 / Intel Core I5-2500K\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 660 2GB / AMD Radeon R9 285\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (13, '《战地5》', '《战地5》是一款由EA制作并发行的第一人称射击游戏，为《战地》的正统续作。本作的多人模式增加了多个如同电影大片般的角色动画，玩家叱诧战场，还得提防背后敌人的袭击，震撼的画质加上角色动画，堪比电影大片。\n\n　　《战地5》的战场非常巨大，通过在名为“盛大行动”的模式中，玩家将在多变的战场与敌人作战，全新的战斗、前线任务与奖励都将动态出现在壮阔的战场中。同时本作引入了“兄弟连(Company)”系统，玩家可以自定义角色的性别、种族、面部、发型以及大量配件，组成兄弟一起作战。', 299, 'Windows 7 / 8.1 / 10（游戏仅支持64位）\r\n', 'Intel Core i5-6600k / AMD FX-8350\r\n', '8 GB\r\n', 'NVIDIA GTX 1050 / NVIDIA GTX 660 / AMD Randeon HD 7850 / AMD Radeon RX 560\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (14, '《辐射76》', '《辐射76》的故事发生于76号避难所，该避难所的记录存在于钢铁兄弟会总部Citadel的电脑中，是17个受控制的避难所之一。这里可容纳有500人，计划在核战20年后开放。此外，该避难所还有一起外星人绑架事件的记录。', 199, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'Intel Core i5-6600k 3.5 GHz / AMD Ryzen 3 1300X 3.5 GHz\r\n', '8 GB\r\n', 'NVIDIA GTX 780 3GB / AMD R9 285 2GB\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (15, '《克苏鲁的呼唤》', '《克苏鲁的呼唤》由巴黎的Cyanide工作室打造，本作融合了恐怖和解密元素，还要根据SAN值去选择知晓真相或是保持清醒，玩家要在梦魔克苏鲁醒来之际进行恐怖的冒险。故事背景将回到19世纪20年代的波士顿，玩家扮演“Edward Pierce”一位退役老兵兼私家侦探，来调查发生在黑水岛上“Sarah Hawkins”一家发生的神秘惨案。', 126, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'Intel Core i5-3450 3.1 GHz / AMD FX-6300 3.5 GHz\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 660 2GB / Radeon HD 7870\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (16, '《我的英雄学院》', '《我的英雄学院 One\'s Justice》是由万代南梦宫根据Jump热门人气动漫《我的英雄学园》改编制作并开发的一款动作类游戏。游戏将继承原作中爽快的战斗动作，并且还增加了环境物的破坏功能。这部全新的《我的英雄学院 One\'s Justice》将会登陆PS4与Switch平台。', 209, 'Windows 7(游戏仅支持64位)\r\n', 'Intel Core i5-750 / AMD Phenom II X4 940\r\n', '4 GB\r\n', 'NVIDIA GeForce GTX 460 / AMD Radeon HD 6870\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (17, '《使命召唤15》', '《使命召唤15：黑色行动4》是由Treyarch制作，动视发行的一款第一人称射击类游戏，也是《使命召唤》游戏系列的第15部作品。和系列以往的续作不同，本作打破了cod一直延续的传统，取消了单机剧情，将目光聚焦到了目前最火的三大游戏模式上：大逃杀模式、僵尸模式和多人模式。', 299, 'Windows 7(游戏仅支持64位)\r\n', 'Intel Core i3-4340 / AMD FX-6300\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 660 2GB / GeForce GTX 1050 2GB / Radeon HD 7950 2GB\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (18, '《皇牌空战7》', '《皇牌空战7》是由日本游戏公司Namco Bandai推出的空战射击类游戏，《皇牌空战》系列大多使用的是虚构的世界和国家，但是许多细节和现实中的战争非常相似，就像二战、海湾战争和冷战。一些战斗机的现实特征也在游戏中表现出来，也包括一些虚构的飞机，尤其是空中堡垒。另外，超级武器，Boss级别的敌机和飞行钻洞、钻隧道也是皇牌空战的一大特色。', 235, 'Windows 7 / 8 / 8.1 / 10(游戏仅支持64位)\r\n', 'Intel Core i3-7100\r\n', '4 GB\r\n', 'NVIDIA GeForce GTX 750Ti\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (19, '《暗黑血统3》', '《暗黑血统3》是由Gunfire Games开发《暗黑血统》系列新作，本作中玩家要扮演由四骑士中的“怒神”，重返灾变的人间界，展开猎杀“七宗罪”的任务。身为神秘四骑士之中最变化莫测怒神，这趟任务只许成功，不许失败，这份为目前饱受蹂躏的人间界带来力量平衡的任务，将由玩家去完成。', 87, 'Windows 7 / 8 / 10(游戏仅支持64位)\r\n', 'AMD FX-8320 / Intel i5-4690K\r\n', '8 GB\r\n', 'GeForce GTX 660 / Radeon R7 370\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (20, '《NBA 2K19》', '《NBA 2K19》是2K Sports开发的《NBA 2K》系列作品。从一流的画质和高度的可玩性，到突破性的游戏模式，再到令人神往的开放“社区”，20年来《NBA 2K》一直在不断刷新体育游戏的定义。本次《NBA 2K19》将继续突破极限，让玩家获得最接近真实的篮球体验、体验最纯粹的篮球文化。', 199, 'Windows 7(64位)或更好\r\n', 'Intel Core i3 530 2.93GHz  / AMD PhenomII X4 805 2.50GHz或更好', '4 GB\r\n', 'NVIDIA GeForce GTX 460 / AMD Radeon R7 260\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (21, '《FIFA 19》', '《FIFA 19》是由EA制作发行的足球体育类游戏，是人气系列《FIFA》系列的正统续作。本作保持系列一贯的高水准，给玩家带来最棒的足球游戏体验。', 389, 'Windows 7 / 8.1 / 10(游戏仅支持64位)\r\n', 'Intel Core i3-2100\r\n', '8 GB\r\n', 'NVIDIA GeForce GTX 460 / AMD Radeon R7 260\r\n', 0, 0, NULL);
INSERT INTO `game` VALUES (22, '《天涯明月刀》', '《天涯明月刀》是腾讯北极光工作室研发的一款武侠题材的3D大型多人在线角色扮演电脑客户端游戏，于2016年07月01日在中国大陆正式公测 [1]  ，由《天涯明月刀》小说改编而成。', 168, 'Windows 7 / 8.1 / 10(仅支持64位)', 'Intel Core i3 560 @ 3.3 GHz / AMD Phenom II X4 945 @ 3.0 GHz', '6 GB', 'Nvidia GeForce GTX 460 / AMD Radeon HD 5870', 0, 0, NULL);
INSERT INTO `game` VALUES (23, '《寻仙》', '《寻仙》是像素软件投资研发，由腾讯代理的中国传统神话美术片网游。', 56, 'Windows 7(游戏仅支持64位)', 'Intel Core i3', '8 GB', 'NVIDIA GTX 480', 0, 0, NULL);
INSERT INTO `game` VALUES (24, '《流放之路》', '《流放之路》是一款以瓦尔克拉斯大陆——被人们称之为鬼岛的地方作为背景的黑暗幻想风格线上动作游戏。流放之路是个构建在庞大的物品种类、角色养成、PvP 竞技、以及竞赛天梯的全方位线上游戏。', 152, 'Windows 7 / 8.1 / 10（游戏仅支持64位）', 'Intel Core i5 2400S / AMD FX-6120', '6 GB', 'NVIDIA GeForce GTX 660 / AMD Radeon HD 7870', 0, 0, NULL);
INSERT INTO `game` VALUES (25, '《极品飞车ONLINE》', '《极品飞车ONLINE》无论是汽车还是配件，玩家可以通过完成任务、参与活动以及比赛对局获来取得金币进行购买。当然我们也推出了全新的自由交易市场，让玩家不付费也可以获得顶级车辆。在游戏平衡部分，极品飞车作为竞技类游戏，良好的操作能力及反应能力才是玩家的分水岭。 A车跑赢S车的情况也是会发生的，要获胜需要玩家的不断努力。', 229, 'Windows 7 / 8 / 8.1 / 10（游戏仅支持64位）', 'Intel Core i5-4460 3.2GHz处理器 / AMD FX-6300', '8 GB', 'NVIDIA GeForce GTX 760 / AMD Randeon R7 260X', 0, 0, NULL);
INSERT INTO `game` VALUES (26, '《斗战神》', '斗战神是创别书城签约作者恋青衣创作的作品。主要讲述一个起于世俗的卑微少年，以一块惊世魔碑，走上通神之路。天道至高，天心难测！要以我道衍天道，要以我心证天心。', 112, 'Windows 7 / 8.1 / 10(游戏仅支持64位)', 'Intel Core i5-2400 / AMD FX 6300', '8 GB', 'NVIDIA GeForce GTX 660 2GB / AMD Radeon R9 285', 0, 0, NULL);
INSERT INTO `game` VALUES (27, '《天命奇御》', '《天命奇御》是甲山林娱乐自制研发以北宋为背景的 3D 武侠单机游戏，官方并抢先揭露故事背景与开发中场景画面。', 185, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'Intel Core i5 3550或更好', '6 GB', 'NVIDIA GeForce GTX 780 /AMD Radeon R9 280或更好', 0, 0, NULL);
INSERT INTO `game` VALUES (28, '《古剑奇谭三》', '《古剑奇谭三》梦付千秋星垂野》是由上海烛龙信息科技有限公司研发、北京网元圣唐娱乐科技有限公司出品的一款国产单机RPG游戏，是《古剑奇谭》系列第三部单机作品 [1]  。', 299, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'Intel Core i3-2100 / AMD FX-6300', '4 GB', 'NVIDIA GeForce GTX 760 / AMD Radeon HD 7950', 0, 0, NULL);
INSERT INTO `game` VALUES (29, '《战争雷霆》', '《战争雷霆》是俄罗斯Gaijin Entertainment研发的一款专业载具类战争网游，于2013年封测。', 126, 'Windows 7', 'Intel 四核处理器 i5', '8 GB', 'NVIDIA GeForce GTX 660', 0, 0, NULL);
INSERT INTO `game` VALUES (31, '《河洛群侠传》', '《河洛群侠传》是河洛工作室在重回单机领域后推出的第三款单机作品。 [2]  河洛工作室最新单机游戏作品《河洛群侠传》即将于2018暑期与大家见面。游戏首部宣传视频2018年4月25日曝光，秀美风光、丰富玩法、随心探索、自由修炼以及快意战斗都将在此展现。 [3]  已经与2018年10月23日发售', 87, 'Windows 10（64位操作系统）', 'Intel Core i5-4690', '8 GB', 'NVIDIA GeForce GTX 650Ti / AMD HD 7750', 0, 0, NULL);
INSERT INTO `game` VALUES (32, '《变形金刚OL》', '腾讯旗舰自研大作《变形金刚》是光子工作室群历时三年潜心打造的一款官方正版授权变形射击网游。游戏获得了世界级品牌娱乐公司孩之宝变形金刚动漫和电影IP双授权的资格，秉承着尊重IP原生角色设定的理念，深度挖掘英雄特质，对其战斗形态进行设计，使得变形金刚以一种全新的互动形式震撼回归。 [1] ', 389, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'Intel Core i3 2130 / AMD FX 4300', '8 GB', 'NVIDIA GeForce GTX 660 2GB / AMD Radeon R9 285', 0, 0, NULL);
INSERT INTO `game` VALUES (34, '《剑灵洪门崛起》', '《剑灵洪门崛起》是由北京趣酷科技有限公司研发的一款3D即时战斗微端网游，该作于2017年11月16日正式公测。', 152, 'Windows 7 / 8.1 / 10（游戏仅支持64位）', 'Intel Core i5-6600k / AMD FX-8350', '8 GB', 'NVIDIA GTX 780 3GB / AMD R9 285 2GB', 0, 0, NULL);
INSERT INTO `game` VALUES (35, '《虚幻争霸》', '《虚幻争霸》是一款由Epic Games开发、国内由腾讯代理的MOBA射击游戏。 [1]  原名《帕拉贡》，2016年12月09日国内腾讯宣布代理并重新定名。游戏由虚幻引擎4开发。', 65, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'Intel Core i5-6600k 3.5 GHz / AMD Ryzen 3 1300X 3.5 GHz', '8 GB', 'NVIDIA GeForce GTX 660 2GB / Radeon HD 7870', 0, 0, NULL);
INSERT INTO `game` VALUES (36, '《铁甲雄兵》', '《铁甲雄兵》是由云蟾游戏旗下Evolution工作室研发的一款军团竞技策略网游，于2016年9月29日在中国千军版本首测。', 178, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'Intel Core i5-3450 3.1 GHz / AMD FX-6300 3.5 GHz', '8 GB', 'NVIDIA GeForce GTX 460 / AMD Radeon HD 6870', 0, 0, NULL);
INSERT INTO `game` VALUES (37, '《堡垒之夜》', '《堡垒之夜》 [1]  是一款第三人称射击游戏，已登陆PlayStation4,XBOX One,Nintendo Switch， [2]  PC，IOS，Android平台。 [3] ', 179, 'Windows 7(游戏仅支持64位)', 'Intel Core i5-750 / AMD Phenom II X4 940', '4 GB', 'NVIDIA GeForce GTX 660 2GB / GeForce GTX 1050 2GB / Radeon HD 7950 2GB', 1, 20, NULL);
INSERT INTO `game` VALUES (38, '《奇奥英雄传》', '《奇奥英雄传》是深圳大学艺术设计学院2015届动画专业学生设计，由深圳巨壬文化传播有限公司制作出版的一款竞技类桌面卡牌游戏。', 259, 'Windows 7(游戏仅支持64位)', 'Intel Core i3-4340 / AMD FX-6300', '8 GB', 'NVIDIA GeForce GTX 750Ti', 0, 0, NULL);
INSERT INTO `game` VALUES (39, '《艾兰岛》', '《艾兰岛》（英文名：Ylands）由捷克知名游戏开发商Bohemia Interactive出品，2018年腾讯UP+发布会宣布代理,并正式公布中文名《艾兰岛》，于2018年12月11日开启抢先体验！', 199, 'Windows 7 / 8 / 8.1 / 10(游戏仅支持64位)', 'Intel Core i3-7100', '4 GB', 'GeForce GTX 660 / Radeon R7 370', 0, 0, NULL);
INSERT INTO `game` VALUES (40, '《轩辕传奇》', '《轩辕传奇》是腾讯游戏旗下首款3D浅规则战斗网游，倡导一种极致热血战斗文化。首创3D原始荒蛮上古战场，丰富的战术策略组合，颠覆传统PK中沉重的规则束缚。', 209, 'Windows 7 / 8 / 10(游戏仅支持64位)', 'AMD FX-8320 / Intel i5-4690K', '8 GB', 'NVIDIA GeForce GTX 460 / AMD Radeon R7 260', 0, 0, NULL);
INSERT INTO `game` VALUES (41, '《使命召唤》', '《使命召唤》（Call of Duty: Black Ops）是由Treyarch工作室研发的一款第一人称射击游戏，为动视FPS游戏使命召唤系列的第七部作品。 [1] ', 235, 'Windows 7(64位)或更好', 'Intel Core i3 530 2.93GHz  / AMD PhenomII X4 805 2.50GHz或更好', '4 GB', 'NVIDIA GeForce GTX 460 / AMD Radeon R7 260', 0, 0, NULL);
INSERT INTO `game` VALUES (42, '《风暴岛》', '《风暴岛》是一款由风暴工作室开发的借鉴狼人杀猜身份，多人实时匹配的戏精类非对称竞技游戏。 [1] ', 198, 'Windows 7 / 8.1 / 10(游戏仅支持64位)', 'Intel Core i3 530 2.93GHz  / AMD PhenomII X4 805 2.50GHz或更好', '8 GB', 'NVIDIA GeForce GTX 460 / AMD Radeon R7 260', 1, 1, NULL);
COMMIT;

-- ----------------------------
-- Table structure for orderlist
-- ----------------------------
DROP TABLE IF EXISTS `orderlist`;
CREATE TABLE `orderlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `game_name` varchar(255) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shopcar
-- ----------------------------
DROP TABLE IF EXISTS `shopcar`;
CREATE TABLE `shopcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL,
  `game_name` varchar(255) DEFAULT NULL,
  `game_price` int(4) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shopcar
-- ----------------------------
BEGIN;
INSERT INTO `shopcar` VALUES (1, 'PostMalone', '《彩虹六号：围攻》', 168, '2019-05-04 19:55:08', 1);
INSERT INTO `shopcar` VALUES (2, 'PostMalone', '《战地5》', 299, '2019-05-04 20:00:00', 0);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `cashLeft` int(255) DEFAULT NULL,
  `game_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, 'admin', '123', 0, '');
INSERT INTO `user` VALUES (2, 'PostMalone', '131898a', 432, '');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
