/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : shuoshuo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-12-21 16:11:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `ss_accredit`
-- ----------------------------
DROP TABLE IF EXISTS `ss_accredit`;
CREATE TABLE `ss_accredit` (
  `qq` varchar(13) NOT NULL DEFAULT '0' COMMENT 'qq',
  `password` varchar(126) DEFAULT NULL,
  `uin` varchar(126) DEFAULT NULL,
  `sKey` varchar(126) DEFAULT NULL,
  `pUin` varchar(126) DEFAULT NULL,
  `pSkey` varchar(126) DEFAULT NULL,
  `pt4Token` varchar(126) DEFAULT NULL,
  `gtk` varchar(126) DEFAULT NULL,
  `ptcz` varchar(128) DEFAULT NULL,
  `gtk2` varchar(126) DEFAULT NULL,
  PRIMARY KEY (`qq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_accredit
-- ----------------------------
INSERT INTO `ss_accredit` VALUES ('435024179', null, 'o0435024179', '@PhB9qKMKN', 'o0435024179', 'BME0nGBEofyiW*YBidcoDxGSalZ4gj2dKo99OQE47rE_', 'j-qfDdlb*b6jiESnmj3p*A__', '2140466106', 'df22c90326e1173d747cfdb2c53c089c29567b7652e0164201c72b59243afafb', '2009880225');

-- ----------------------------
-- Table structure for `ss_friend_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_comment`;
CREATE TABLE `ss_friend_comment` (
  `uin` varchar(13) NOT NULL COMMENT '好友qq',
  `cellid` varchar(256) NOT NULL COMMENT '说说的key 不知道是与qq唯一还是全表唯一',
  `fuin` varchar(13) NOT NULL COMMENT '评论者qq',
  `commentid` int(11) NOT NULL,
  `commentpic` varchar(256) DEFAULT NULL,
  `content` text,
  `referid` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_comment
-- ----------------------------
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b6256c55dc600900', '154894476', '1', null, '@{uin:583710161,nick:の、舞影零乱﹌,who:1} 你这秒赞啊', '0', '1433150999');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09bbe51b55039b0a00', '979741120', '1', null, '那要看你说的假话听起来像不像真话！[em]e113[/em]', '0', '1427892998');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fc20f55749c0a00', '455973965', '1', null, '已经被你玩坏了！', '0', '1427097931');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fc20f55749c0a00', '790131730', '2', null, '啊？回家？', '0', '1427098949');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fc20f55749c0a00', '565181859', '3', null, 'xiaona小娜？', '0', '1427111271');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fc20f55749c0a00', '410197948', '4', null, '小娜是谁？你家有女人？那涛涛怎么办？', '0', '1427112680');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099862ed5485030700', '304699522', '3', null, '三对三 刚好[em]e120[/em]', '0', '1424844768');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099862ed5485030700', '1879417112', '4', null, '原来在这[em]e120[/em]', '0', '1424845055');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099862ed5485030700', '1098356802', '5', null, '你们', '0', '1424846303');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099862ed5485030700', '359645770', '6', null, '[em]e151[/em][em]e151[/em][em]e151[/em]', '0', '1424853516');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099862ed5485030700', '906670640', '7', null, '[em]e103[/em]为何你躲到这么角落去', '0', '1424908923');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093f1eeb5468010b00', '583710161', '2', null, '我帮你吃[em]e104[/em]', '0', '1424696435');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093f1eeb5468010b00', '1098356802', '3', null, '少年  赶紧来吧，旅途愉快。', '0', '1424700257');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093f1eeb5468010b00', '471871858', '4', null, '又要走了？', '0', '1424703451');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093f1eeb5468010b00', '599030223', '5', null, '兄弟，最近有点事，有时间再聚，工作顺利，加油。', '0', '1424722656');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093f1eeb5468010b00', '364720722', '6', null, '回家待了多久', '0', '1424933555');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b092bb8e454f6850c00', '435024179', '1', null, '说好的大包呢？', '0', '1424276024');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b092bb8e454f6850c00', '583710161', '2', null, '新年快乐', '0', '1424278213');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b092bb8e454f6850c00', '598487136', '3', null, '讨了红包都不发！', '0', '1424278565');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b092bb8e454f6850c00', '1193367461', '4', null, '新年快乐！', '0', '1424278897');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09325be35442020f00', '1178314202', '2', null, '沒对象那是要努力点，加油吧！', '0', '1424187027');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '3', null, '提示找不到对象是有原因的，打开debug，看对象有没有被实例化，没有你就new一个，然后还提示，那就肯定是自身的问题，看有没有语法错误。捕获异常。', '0', '1424187206');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09325be35442020f00', '404503870', '4', null, '楼上是程序猿么，这么深奥，不过红红不是有对象么', '0', '1424187960');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09325be35442020f00', '364720722', '5', null, '赶紧找个人[em]e128[/em]', '0', '1424218111');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09325be35442020f00', '244756646', '6', null, '我都有对象了，你还不快点', '0', '1424224748');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09732cde54477c0700', '545973325', '1', null, '回家了', '0', '1423873638');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09732cde54477c0700', '359645770', '2', null, '你说也巧不，早上碰到了发哥！他和我聊了聊人生！时间也快，果然还是老了不少！', '0', '1423885534');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aec9dd54bc6d0500', '435024179', '1', null, '…………', '0', '1423827568');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0961ccdc5464ac0e00', '790131730', '1', null, '文艺小青年[em]e113[/em]', '0', '1423756580');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0961ccdc5464ac0e00', '583710161', '2', null, '洛洛，回来约吗？', '0', '1423756990');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0961ccdc5464ac0e00', '404503870', '3', null, '那是你还不够沉思', '0', '1423762382');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09be33d25448240700', '790131730', '1', null, '哈哈 就是就是', '0', '1423062038');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090dfccc546d2c0500', '1098356802', '1', null, '李小龙同志', '0', '1422764993');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ca7da654f3d30c00', '435024179', '1', null, '', '0', '1420200908');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ca7da654f3d30c00', '1447558231', '2', null, '有广仔风度了，', '0', '1420202737');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ea78a5541ab10700', '404503870', '1', null, '我看见了你，是耳边轻轻的叫着我的名字，是指尖略过我的长发，是我无可奈何落下的眼泪。', '0', '1420141902');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ea78a5541ab10700', '583710161', '2', null, '啧啧啧', '0', '1420163908');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ea78a5541ab10700', '398109852', '3', null, '羊羊羊，啧啧啧。', '0', '1420207977');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097cf6a354f7d70900', '707340708', '1', null, '改变什么', '0', '1420032105');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '1098356802', '1', null, '老表 早点休息  明天还去搬砖了[em]e328513[/em]', '0', '1418572008');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '583710161', '2', null, '骚年', '0', '1418603436');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '461726359', '3', null, '在那边做什么呢', '0', '1418603927');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '184177576', '4', null, ' 平凡之路', '0', '1418618728');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '1879417112', '5', null, '文艺青年泥嚎', '0', '1419002101');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '954262027', '1', null, '你现在工作在惠州了？', '0', '1418520742');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '583710161', '2', null, '赞', '0', '1418530947');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '972596277', '3', null, '请带着我一起飞～', '0', '1418543834');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '58848252', '4', null, '好高大上的影子', '0', '1418630511');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '1879417112', '5', null, '长腿欧巴，哈哈哈哈哈 ', '0', '1419002025');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0918868c544e370e00', '476504333', '1', null, '怎么了？', '0', '1418514079');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0918868c544e370e00', '790131730', '2', null, '这话说的 有情况啊', '0', '1418518350');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0918868c544e370e00', '331531088', '3', null, '这话说的。有点内容噢！', '0', '1418518973');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0918868c544e370e00', '184177576', '4', null, '为情所困啊', '0', '1418619456');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091c026e5407e70200', '583710161', '4', null, '好久未看书', '0', '1416525528');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091c026e5407e70200', '471871858', '5', null, '什么书啊？', '0', '1416533613');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091c026e5407e70200', '455973965', '6', null, '倚天屠龙记', '0', '1416536287');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091c026e5407e70200', '1285240518', '7', null, '飞雪连天射白鹿，笑书神侠倚碧鸳！', '0', '1416543967');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091c026e5407e70200', '58848252', '8', null, '一定是武侠小说。重头戏是打来打去。。。女人是点缀。', '0', '1416550412');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '971495613', '2', null, '同意楼上', '0', '1414452300');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, '分手了？', '0', '1414455305');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '4', null, '不怎么发动态，一发就是负面情绪啊…', '0', '1414459318');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '906670640', '5', null, '别想太多、洗洗睡吧', '0', '1414612728');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '1322634844', '6', null, '咦，喜洋洋咋了', '0', '1414644496');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095b644e54a1360200', '476504333', '1', null, '怎么了', '0', '1414424156');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095b644e54a1360200', '583710161', '2', null, '怎么了？', '0', '1414424272');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09d7ca395428270700', '410197948', '1', null, '妈蛋，你们是不是有基情，你都这样坑队友了，他还放任你不管。劳资随便一点小事就被叼飞', '0', '1413088815');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09d7ca395428270700', '642321387', '2', null, '[em]e103[/em][em]e119[/em]', '0', '1413153760');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09c779315408fc0000', '1447558231', '1', null, '?', '0', '1412651433');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096fee0e54beba0a00', '446558319', '7', null, '你大爷啊。瞎搞！[em]e110[/em]', '0', '1410276242');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096fee0e54beba0a00', '1447558231', '8', null, '看到儿时的照片好可爱吧', '0', '1410277614');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096fee0e54beba0a00', '419457609', '9', null, '为什么就我摆了手势。[em]e103[/em]', '0', '1410277790');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096fee0e54beba0a00', '823500985', '10', null, '和小时候没什么变化啊', '0', '1410438576');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096fee0e54beba0a00', '234696608', '11', null, '认得出的都是火眼金睛[em]e4008[/em]', '0', '1411571631');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b30cb0539cc70900', '345740081', '1', null, '[em2]e1000058,45,24[/em2]', '0', '1404054972');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b30cb0539cc70900', '583710161', '2', null, '我不懂你。。。。', '0', '1408336865');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0943601553f1120100', '435024179', '1', null, '要不是我表哥最近在云南犯了点事，我早就来打你了', '0', '1393911030');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099e5bee525ee60200', '404503870', '1', null, '很高级的样纸', '0', '1391353369');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099e5bee525ee60200', '435024179', '2', null, '可以拍续集，婚外情你懂的', '0', '1391359967');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099e5bee525ee60200', '1285240518', '3', null, '不明觉厉[em]e113[/em]', '0', '1391362475');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099e5bee525ee60200', '10222452', '4', null, '[em]e120[/em]', '0', '1391395729');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '435024179', '1', null, '前面加句  想想就难过  结尾加 大概这就是人生吧   ', '0', '1383988809');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '972596277', '2', null, '大款、、发红包钱给我、、[em]e102[/em]', '0', '1383991162');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '583710161', '3', null, '你为嘛这个时候买短袖？', '0', '1384665593');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fb37352353d0100', '972596277', '1', null, '那是、、学我、、心情不好就看电视跟吃、、秒转好心情哈、、', '0', '1383319272');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fb37352353d0100', '583710161', '2', null, '哈哈！', '0', '1383319628');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093fb37352353d0100', '470358556', '3', null, '本来就是呀，是太happy叻吧！', '0', '1383322486');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090e3c45523b0e0e00', '404503870', '1', null, '加油，红红', '0', '1380269259');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090e3c45523b0e0e00', '435024179', '2', null, '鹅鹅鹅曲项向天歌', '0', '1380271413');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a51f41523c200400', '435024179', '1', null, '额，秒了？', '0', '1380022587');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a51f41523c200400', '781341642', '2', null, '你就买了房了？在哪的啊？', '0', '1380084208');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090490395267e50600', '954262027', '3', null, '换地方了？', '0', '1379506841');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090490395267e50600', '435024179', '4', null, '跳槽', '0', '1379512643');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090490395267e50600', '369721690', '5', null, '顶', '0', '1379512930');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090490395267e50600', '972596277', '6', null, '赞赞赞、、', '0', '1379515800');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090490395267e50600', '10222452', '7', null, '[em]e178[/em][em]e121[/em]', '0', '1379518483');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0972b22d52a7800500', '10222452', '1', null, '哇，这哪里啊', '0', '1378726542');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0972b22d52a7800500', '1039872031', '2', null, '可惜。。。哈哈[em]e328516[/em]', '0', '1378737385');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ea9c24528e070400', '514830068', '1', null, '回家了？', '0', '1378131304');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ea9c24528e070400', '10222452', '2', null, '一定是没吃到好吃的牛肉粉[em]e120[/em]', '0', '1378133672');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095d481452c5250b00', '435024179', '1', null, '出息', '0', '1377064622');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095d481452c5250b00', '545973325', '2', null, '你没有吃过懂个么', '0', '1377074552');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095d481452c5250b00', '598487136', '3', null, '小伙伴们都惊呆了', '0', '1377075525');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b095d481452c5250b00', '337265223', '4', null, '赞。。。', '0', '1377130806');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098dd404521d290d00', '583710161', '2', null, '洛洛历险记，哈哈。', '0', '1376049514');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098dd404521d290d00', '524757273', '3', null, '弱弱的问一句，安利是干嘛的', '0', '1376049793');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098dd404521d290d00', '304699522', '4', null, '安利是传销团伙', '0', '1376050089');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098dd404521d290d00', '775099224', '5', null, '什么东东  骗子吗?', '0', '1376050153');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098dd404521d290d00', '476504333', '6', null, '你怎么又这个名片啊·', '0', '1376287514');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090b190152c5040800', '404503870', '1', null, '哟？', '0', '1375806160');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090b190152c5040800', '769436987', '2', null, '[em]e114[/em]', '0', '1407318301');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a44ffe51dd1a0900', '605972632', '1', null, '你去挑战一下啊，哈哈', '0', '1375621661');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a44ffe51dd1a0900', '545973325', '2', null, '啃爹啊，这么狠', '0', '1375621775');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a44ffe51dd1a0900', '435024179', '3', null, '多大仇啊', '0', '1375626815');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0904f7fd51c2970100', '304699522', '2', null, '你是羡慕嫉妒恨吧，亲的你心痒痒的！！！', '0', '1375599296');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0904f7fd51c2970100', '470358556', '3', null, '额...一点都不注意公共形象吧', '0', '1375599675');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0904f7fd51c2970100', '10222452', '4', null, '哈哈[em]e120[/em]', '0', '1375600999');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0904f7fd51c2970100', '404503870', '5', null, '你傲娇了', '0', '1375605258');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0904f7fd51c2970100', '244756646', '6', null, '那必须的，秀恩爱', '0', '1375614666');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098ea2e3513c1e0300', '435024179', '1', null, '回去试试', '0', '1373876158');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09674cc4515bec0200', '598487136', '1', null, '嗯啊，努力赚钱，然后接我们去玩。', '0', '1371821059');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09674cc4515bec0200', '337265223', '2', null, '到时深圳一起聚。。', '0', '1371821815');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09674cc4515bec0200', '605972632', '3', null, '你坐的是今晚哪趟车呢？', '0', '1371825725');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09674cc4515bec0200', '345201103', '4', null, '祝你掉线。', '0', '1371877882');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09bce2bf510adb0800', '810828816', '1', null, '可怜！！！', '0', '1371536950');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09bce2bf510adb0800', '476504333', '2', null, '怎么了啊·？', '0', '1371542279');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '364720722', '1', null, '……………', '0', '1371521582');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '499859287', '2', null, '烦甚？', '0', '1371525342');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '972596277', '3', null, 'OBBA,,[em]e6012[/em]..肿么啦，，', '0', '1371525713');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e64bb951a0640600', '404503870', '1', null, '[em2]e1000009,64,24[/em2]', '0', '1371112482');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097736a45154180800', '972596277', '1', null, '人品问题。。。[em]e188[/em]', '0', '1369716473');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097736a45154180800', '1208787024', '2', null, '因为有妹子想在过道时揩你油，就是这么简单', '0', '1369721895');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0909cca151387a0a00', '435024179', '1', null, '出来撸一把，涉外，速度', '0', '1369559769');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e14ba151f3a10a00', '514830068', '1', null, '[em]e142[/em] ', '0', '1369555521');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e14ba151f3a10a00', '364720722', '2', null, '我的同学们就和你一样，说神马，武汉，我回来了.......你们这些傻帽', '0', '1369816441');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0948629f51f3f40200', '405052062', '1', null, '手机拍的？像素好高呀。', '0', '1369400870');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0948629f51f3f40200', '625411780', '2', null, '跑罗湖口岸干嘛呢？', '0', '1369406642');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09135498511ae10c00', '1208787024', '1', null, '[em]e130[/em]', '0', '1368963167');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ced59051aa800800', '455973965', '1', null, '人品大爆发！快去买六合彩', '0', '1368446707');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ced59051aa800800', '476361448', '2', null, '你长得帅不', '0', '1368451056');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ced59051aa800800', '364720722', '3', null, '谁这么缺德，吃多了没事干', '0', '1368498858');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09fada7f51e45d0b00', '583710161', '1', null, '哈哈，表示基本上不看于麻麻的戏。', '0', '1367336569');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b00e7e51e7bf0000', '435024179', '1', null, '楼主一生平安', '0', '1367233139');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e5626e51513a0200', '345740081', '1', null, '[em]e144[/em]', '0', '1366190677');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e5626e51513a0200', '598487136', '2', null, '最近是t恤节。买了件衬衣，刚到货，大了。', '0', '1366191053');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e5626e51513a0200', '328242673', '3', null, 't恤衫最近超便宜，', '0', '1366203995');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09e5626e51513a0200', '471871858', '4', null, '也不错。', '0', '1366208970');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09212c6651769c0600', '471871858', '1', null, '谁演的，谁演的。？我只关心谁演的。。。', '0', '1365652340');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0905e04e51f5240d00', '598487136', '1', null, '我昨天在看cd1，有cd14。', '0', '1364173949');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098b3a4d518dc00000', '1208787024', '1', null, '自己买个锅，天天炖肥肉吃[em]e6009[/em]', '0', '1364017434');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b7054951e3c80e00', '583710161', '1', null, '表示毫不知情。', '0', '1363744147');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09bb314751cb710200', '583710161', '1', null, '为何做不到？', '0', '1363620795');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09bb314751cb710200', '598487136', '2', null, '如果能坚持下去，绝对会成为成功人士的。我可做不到，还学习，整天只想睡觉。', '0', '1363658785');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098f1f4751b6b40e00', '583710161', '1', null, '什么意思？', '0', '1363617857');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09074e3d5134d30500', '972596277', '1', null, '你自己顿悟的还是别人经典点评的、、、', '0', '1362974353');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09074e3d5134d30500', '471871858', '2', null, '耳濡目染就会了。', '0', '1362997253');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093be13251523e0900', '545973325', '1', null, '又新出了一部?', '0', '1362300295');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09d38c2d51e4020a00', '435024179', '1', null, '哎，都苦逼', '0', '1361958201');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093e0f2a5172f10e00', '405052062', '1', null, '先习惯的去孤独，习惯的一个人分享自己的节日快乐，习惯的去花钱，习惯的增加压力，习惯的迎接一次又一次无遇见的伤害。之后，习惯的成功与失败的一反一复，之后，耳可能成功了。如果逃避现实，也可能过得焦瘁与平庸了。生活就这样，强者的天下，弱者的自我伤害。————祝节日快乐！', '0', '1361712452');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090d072a5142540200', '1447558231', '1', null, '  人的一生常常会遇到一些意想不到的事，改变你的生活，你的路线，甚至于改变你的性格. 生活最无奈的一点就是你永远猜不透它行驶的方向，好像很平稳，但随时都会给你来个急刹车，让你猝不及防，遍体麟伤.所以，这个世界上永远都存在着一些无奈，学会坚强面对，祝你天天快乐！', '0', '1361754104');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0971372851f7400c00', '435024179', '1', null, '在线翻译', '0', '1361604709');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099aa01c51a1f70000', '435024179', '1', null, '一路顺风', '0', '1360831600');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099aa01c51a1f70000', '545973325', '2', null, '同感', '0', '1360853156');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096e491251b82c0e00', '583710161', '1', null, '生的？', '0', '1360155069');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096e491251b82c0e00', '476361448', '2', null, '凌乱吧', '0', '1360155567');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096e491251b82c0e00', '435024179', '3', null, '奶奶只能帮你到这里了', '0', '1360159695');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09b6941051ee720600', '284247219', '1', null, '呵呵，最近爽吧', '0', '1360057056');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09715afa50e3d80400', '499859287', '1', null, '可以这样买票的么？求解。。。。', '0', '1358584711');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09715afa50e3d80400', '954262027', '2', null, '太阳你好牛逼', '0', '1358584910');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09715afa50e3d80400', '435024179', '3', null, '很好很强大', '0', '1358586953');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09715afa50e3d80400', '345740081', '4', null, '呵呵  混进去就可以了', '0', '1358587484');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09715afa50e3d80400', '523260627', '5', null, '混', '0', '1358592259');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '435024179', '1', null, '那你只有先买张会经过衡阳的票，然后补票算了。', '0', '1358474644');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, '哈哈！我今年跑车！', '0', '1358475280');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0953eaf750c80f0700', '598487136', '1', null, '那就这几天赶紧抢！搞个刷票器嘛', '0', '1358469662');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090badf65066930c00', '337265223', '1', null, '我每天十二块的，难吃的要死，', '0', '1358348610');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090badf65066930c00', '435024179', '2', null, '呵呵，他可能会说你年轻不懂事，没家庭之类的，不知道苦。不过想想也是，都无奈。', '0', '1358352159');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090badf65066930c00', '598487136', '3', null, '我都没你吃的好还是一样的贵！明年把我们宿舍全搞过去合租算了。哈哈', '0', '1358382916');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090badf65066930c00', '547755849', '4', null, '[em]e124[/em]', '0', '1358410220');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097feff05042a20a00', '545973325', '1', null, '什么东东', '0', '1357985530');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0957d8e75095450b00', '405052062', '1', null, '办良民证没有？', '0', '1357661678');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0901cfe650a6770700', '972596277', '1', null, '鬼崽子 哪里潇洒、、有钱都不带我切赚、、', '0', '1357303794');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0901cfe650a6770700', '499859287', '2', null, 'Me too', '0', '1357304953');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ffb7e650045e0300', '419457609', '1', null, '你在哪里啊。', '0', '1357299339');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099c19e1508fcf0e00', '471871858', '1', null, '酸。。', '0', '1356929924');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aad4db503e000300', '435024179', '1', null, '尼玛 我天天吃12，比学友的还差！！！！', '0', '1356590402');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aad4db503e000300', '328242673', '2', null, '这到底是什么饭?蛋炒饭还是白米饭?', '0', '1356668439');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aad4db503e000300', '598487136', '3', null, '十二都是最便宜的，要我怎么活下去。', '0', '1356926853');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b098513cd506b0a0f00', '499859287', '1', null, 'Come on 。。。', '0', '1355620075');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096a7ecc501a030500', '583710161', '1', null, '回家。', '0', '1355580883');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096a7ecc501a030500', '717612119', '2', null, '你不是回去了吗？', '0', '1355583449');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b096a7ecc501a030500', '499859287', '3', null, 'Come on ....', '0', '1355583847');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093e55c55079e70500', '378230388', '1', null, '草泥马告诉你千万不要去厕所除尘！', '0', '1355118591');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093e55c55079e70500', '598487136', '2', null, '洗cpu怎么掉cup了。呵呵，洗cpu还要去厕所啊。', '0', '1355143836');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091ca8b85003800200', '178880154', '1', null, '..........', '0', '1354279118');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b091ca8b85003800200', '1325703628', '2', null, '哈哈，小七就那样。你懂的。', '0', '1354284212');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ed76b3503ca40700', '583710161', '1', null, '你被坑了？？？？', '0', '1353938981');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ed76b3503ca40700', '499859287', '2', null, '有坑就跳过去，努力让自己跳得更远。。。', '0', '1354017993');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09241f995023bc0600', '499859287', '1', null, '慢慢学呗……', '0', '1352213841');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09d6ed7250a97c0200', '345201103', '1', null, '谁信呢...  让我们跟随镜头走入  火之灵 扭曲的心灵深处...', '0', '1349709420');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09d6ed7250a97c0200', '499859287', '2', null, '自己弄点药擦擦啊，像你那么瘦，受伤很难好的。。。', '0', '1349742708');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0979fd665071a80700', '419457609', '1', null, '回来了？放几天假。', '0', '1348931799');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0939916650771e0c00', '435024179', '1', null, '尼玛，这部科学啊', '0', '1348901045');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0939916650771e0c00', '1325703628', '2', null, '谢套套本来就是这样，刚知道呀！', '0', '1348905179');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0939916650771e0c00', '545973325', '3', null, '难道滔滔又在算计,掐指一算就有状况', '0', '1348912791');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099f5b405079260200', '405052062', '1', null, '钥匙放在我这里，晚上来拿', '0', '1346399586');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0980743f50313e0500', '545973325', '1', null, '明天10点长沙去了', '0', '1346337216');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0980743f50313e0500', '598487136', '2', null, '带什么回长沙咯', '0', '1346374976');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09ae533750bebd0600', '1208787024', '1', null, '[em]e127[/em]', '0', '1345804313');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a0532250ab7e0700', '345740081', '1', null, '做什么的…？', '0', '1344428169');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a0532250ab7e0700', '717612119', '2', null, '额，天啊，啥事让你笑成那样了啊？', '0', '1344428630');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0977e51b5070d60700', '583710161', '1', null, '神经病发作呗！', '0', '1344007318');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a721155076e10b00', '122467913', '1', null, '0...  给力', '0', '1343569062');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09a8171050bd050900', '499859287', '1', null, '弄巧成拙的把自己的伞用502粘起来啦[em]e120[/em] ', '0', '1343261613');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0909690d5032450900', '345201103', '1', null, '多胞胎 猪饲料，专注长膘，2个月就出栏。', '0', '1343058697');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093b3b0950edd90600', '583710161', '1', null, '我们全勤奖是一百块耶！', '0', '1342784625');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093b3b0950edd90600', '569308197', '2', null, '哈哈，我这全勤100', '0', '1342826417');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09335c025034240800', '419457609', '1', null, '喜洋洋，你那里还招工不，', '0', '1342333026');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09335c025034240800', '1604766340', '2', null, '生活中要学会眼观六路耳听八方，对遇到的事或问题要想一想为什么。不要满足于现状，要树立目标，按排时间向目标前行。今天要做好准备，明天总会到来的。如果没有一个容器装下明天，明天又会流走的。学习、思考、行动。在一个方向上总会有所厚度的。', '0', '1342459108');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b094022fd4f3ee50700', '296595951', '1', null, '[em]e136[/em]', '0', '1341991547');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09230df94fcf4d0400', '1604766340', '1', null, '我还没有看到过海，海的宽广，海的力量。', '0', '1341879654');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b094659f84fc6570900', '1447558231', '1', null, '呵呵，跑得远啊，在外要好好照顾自己啊！你姑父有时候去珠海，他电话是13823546328', '0', '1341708934');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b094659f84fc6570900', '1604766340', '2', null, '好好安排，生活才会有质量。', '0', '1341880526');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '625411780', '1', null, '我都还没有看过，怎么就可以闭关了，这是想我再回次长沙吗？', '0', '1339503066');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '499859287', '2', null, '反正我也听说了，趁这次回去去看吧，哎呦妈呀，事情贼多……', '0', '1339508379');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b092180db4e42ac0a00', '1447558231', '1', null, '哈哈，怎么了？生病了吗？', '0', '1323046355');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0988585b4ef7fd0b00', '499859287', '1', null, '[em]e120[/em]', '0', '1314612581');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aeb8574e4cf70400', '435024179', '1', null, '435024179@qq.com  你懂的', '0', '1314373325');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aeb8574e4cf70400', '547755849', '2', null, '不准啊，听不到么？…', '0', '1314404136');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b09aeb8574e4cf70400', '435024179', '3', null, '猫扑很强大，那女女被人肉到了···嘻嘻', '0', '1314451060');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b093147524e3f8a0900', '547755849', '1', null, '亲爱的你十多年前用的名字是什么？', '0', '1314168777');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099370504e7de70100', '435024179', '1', null, '你输入     怎样     是怎样怀孕', '0', '1313905283');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b099370504e7de70100', '499859287', '2', null, '。。。。', '0', '1313920419');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090fe6494e06970300', '378230388', '1', null, '哈？这么厉害的？', '0', '1313466904');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090fe6494e06970300', '435024179', '2', null, '这说明我们混不下去了，开学收拾收拾打包回家吧', '0', '1313467211');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090fe6494e06970300', '312699341', '3', null, '。网页制作这么牛', '0', '1313469826');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b090fe6494e06970300', '499859287', '4', null, '哈哈', '0', '1313475180');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0998bb444e50340600', '419457609', '1', null, '一心只想往前飞…', '0', '1313138299');
INSERT INTO `ss_friend_comment` VALUES ('154894476', '8c803b0998bb444e50340600', '499859287', '2', null, '哈哈', '0', '1313160168');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1953f3075606b10200', '527219013', '1', null, '来我这里吧', '0', '1443369448');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed195c55cb55c4ad0400', '865845773', '1', null, '看到高楼林立灯火辉煌，此刻你的心里是怎么想', '0', '1439389686');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed195c55cb55c4ad0400', '286883741', '2', null, '我以为是说上面显示的B和C呢。哈哈哈哈', '0', '1439389799');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed195c55cb55c4ad0400', '455973965', '3', null, '赞赞赞！居然还在，哈哈', '0', '1439390354');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed195c55cb55c4ad0400', '527219013', '4', null, '把头仰到45度，眼泪就不会掉下来[em]e113[/em]', '0', '1439395397');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1960998255721a0000', '527219013', '1', null, '快来跟我飞', '0', '1434625895');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1960998255721a0000', '450178591', '2', null, '高大上的赶脚', '0', '1434629239');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1960998255721a0000', '1325703628', '3', null, '哇！谢总好厉害', '0', '1434644864');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1960998255721a0000', '449270404', '4', null, '高大上的项目啊，谢总', '0', '1434825988');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19141d4255bd310c00', '505139848', '1', null, '什么节奏', '0', '1430400573');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19141d4255bd310c00', '410197948', '2', null, '还能不能做个安静的美男子啊，这么不淡定', '0', '1430439705');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19141d4255bd310c00', '450178591', '3', null, '带你装逼  带你飞  带你飞进垃圾堆', '0', '1430443916');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '593297240', '2', null, '泥煤', '0', '1412988200');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '1325703628', '3', null, '哇！', '0', '1412990439');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '431725127', '4', null, '访问量+1', '0', '1413004437');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '1315389943', '5', null, '火星文？', '0', '1413004471');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '1285240518', '6', null, '我擦？，', '0', '1413082904');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19cef337549d5d0200', '1339924006', '1', null, '你与谁 ？', '0', '1412953162');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19cef337549d5d0200', '449270404', '2', null, '隔壁老王', '0', '1412958394');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19cef337549d5d0200', '410197948', '3', null, '你与二货', '0', '1412958436');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19cef337549d5d0200', '154894476', '4', null, '隔壁老王', '0', '1412983232');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19d723f753aa500800', '505139848', '1', null, '最后一句真经典', '0', '1408706102');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19d723f753aa500800', '593297240', '2', null, '我爱这么高冷的调', '0', '1408706699');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19d723f753aa500800', '1285240518', '3', null, '眼瞎，我竟然看完了[em]e103[/em]', '0', '1408708259');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19d723f753aa500800', '431725127', '4', null, '故事写的真好，看完睡觉了[em]e147[/em]', '0', '1408718761');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1963edb75344a40100', '598487136', '1', null, '那么持久还不好？', '0', '1404563582');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1963edb75344a40100', '1325703628', '2', null, '牛', '0', '1404570435');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1963edb75344a40100', '410197948', '3', null, '你说的啊，没时间，我就不去看你了', '0', '1404572645');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1963edb75344a40100', '510960614', '4', null, '[em]e4005[/em]', '0', '1404649513');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed190ac5b253de520c00', '527219013', '1', null, '我猜到了开始，却没有猜到结局～', '0', '1404227254');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed190ac5b253de520c00', '1353728291', '2', null, '其实还可以再便宜点滴', '0', '1404311955');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1957eaa653b6180200', '305968810', '1', null, '煞笔，谁输谁2', '0', '1403450838');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19fecba253059a0200', '154894476', '1', null, '法师，我方上塔需要支援!', '0', '1403178624');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19fecba253059a0200', '1325703628', '3', null, '。。。。。。', '0', '1403185792');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19fecba253059a0200', '410197948', '4', null, '草泥马，逗逼。', '0', '1403233809');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19bab46d53e2890000', '1325703628', '1', null, '家里的猪急了', '0', '1399703774');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1951d35853bd1f0100', '593297240', '1', null, '怎么不赞我[em]e104[/em]', '0', '1398330536');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1951d35853bd1f0100', '410197948', '2', null, '你怎么就不去屎呢？', '0', '1398331445');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed190adb5753db6e0600', '330995493', '1', null, '雷老板财源滚滚啊。。。', '0', '1398267327');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19b88d3d537ce30a00', '591225271', '1', null, '我那里擦 谁这么张狂  能放一点屌丝们用的起的东西么', '0', '1396583079');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1972123053c48e0100', '593297240', '1', null, '搬砖辛苦', '0', '1395659515');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1972123053c48e0100', '154894476', '2', null, '水银之靴，你值得拥有！', '0', '1395662239');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1972123053c48e0100', '505139848', '3', null, '多么痛的领悟！', '0', '1395664747');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1953431453bcd40d00', '527219013', '1', null, '做好事不留言，却写在了日记本里，我是领悟了', '0', '1393838587');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed191ec50053b2680d00', '1285240518', '1', null, '扫了会怎样[em]e141[/em]', '0', '1392560570');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed191ec50053b2680d00', '178880154', '2', null, '......', '0', '1392602997');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '455973965', '1', null, '你来东莞了？', '0', '1391963119');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '1353728291', '2', null, '搞条好路子，以后都跟你混啊', '0', '1392001128');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '410197948', '3', null, '狗逼。', '0', '1392013416');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '455973965', '4', null, '东莞是个好地方啊！风紧，都涨价了！呵呵', '0', '1392086563');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19de3ef25209680600', '505139848', '1', null, '说中文吧', '0', '1391640232');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19de3ef25209680600', '1325703628', '2', null, '麻烦说人话。', '0', '1391679561');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19de3ef25209680600', '1353728291', '3', null, '发由你着哈。色死噶啦踢！', '0', '1391687953');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed196165ef52ae680700', '583513527', '1', null, '你拜年走得远啊', '0', '1391423025');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed196165ef52ae680700', '410197948', '2', null, '你来益阳都不说下', '0', '1391423295');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed196165ef52ae680700', '431725127', '3', null, '已赞', '0', '1391427426');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19fc8e875274a40e00', '1285240518', '1', null, '这是？  你自己做的图片还是', '0', '1384937100');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed193f388252beb40c00', '1125127038', '1', null, '我觉得吧，恨世界的才去当城管', '0', '1384267936');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19a81b5c5211290400', '643974657', '1', null, '首席是谁', '0', '1382096782');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '435024179', '1', null, '貌似貌似公交站站查询输入错误，应该填 长沙公交 起点-终点[em]e4011[/em]', '0', '1381587830');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '598487136', '2', null, '微信公众平台？', '0', '1381593037');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '583513527', '3', null, '在我这里行不通', '0', '1381595475');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '410197948', '4', null, '无聊吧你？', '0', '1381620189');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1907a945524e550400', '296421914', '1', null, '屌丝的春天来了', '0', '1380297777');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1907a945524e550400', '839616641', '2', null, '屌丝', '0', '1380298026');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1907a945524e550400', '1285240518', '3', null, '你们这群货啊。。伤不起好么。', '0', '1380301352');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1907a945524e550400', '583513527', '4', null, '光听到袜子了。。。', '0', '1380347011');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed1973ba41528eca0a00', '431725127', '1', null, '贱也是一种病...', '0', '1380072913');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19f3a10852f3070700', '527219013', '1', null, '[em]e132[/em]', '0', '1376297590');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19f3a10852f3070700', '443743505', '2', null, '   哈哈，滔滔去租个。', '0', '1376299707');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed197eb40352bfb00400', '527219013', '1', null, '哎……空留一声叹息', '0', '1375974628');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed197eb40352bfb00400', '1107901899', '2', null, '抢不到一楼，二楼可以不', '0', '1375978045');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed192580f35193550c00', '2473679631', '1', null, '怎么啦？', '0', '1374983606');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '839616641', '1', null, '哪来这么多这样的照片儿', '0', '1373883860');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '306909490', '2', null, '爱好一点都没变昂、', '0', '1373886596');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '1315389943', '3', null, '人格分裂啊。。。', '0', '1373887359');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed196195da51e3030800', '527219013', '1', null, '你的女神？', '0', '1373279600');
INSERT INTO `ss_friend_comment` VALUES ('435024179', '33f1ed193febd651368c0d00', '729387532', '1', null, '回来了啊？', '0', '1373073269');

-- ----------------------------
-- Table structure for `ss_friend_gp`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_gp`;
CREATE TABLE `ss_friend_gp` (
  `qq` varchar(13) NOT NULL COMMENT 'qq',
  `gpid` int(11) DEFAULT NULL COMMENT ' 分组id',
  `gpname` varchar(13) DEFAULT NULL COMMENT '分组名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_gp
-- ----------------------------
INSERT INTO `ss_friend_gp` VALUES ('435024179', '12', '　　　Ｌｏｇｉｃ');
INSERT INTO `ss_friend_gp` VALUES ('435024179', '0', '　　　　　　　');
INSERT INTO `ss_friend_gp` VALUES ('435024179', '1', 'xss');

-- ----------------------------
-- Table structure for `ss_friend_gpqq`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_gpqq`;
CREATE TABLE `ss_friend_gpqq` (
  `qq` varchar(13) NOT NULL,
  `groupid` int(11) DEFAULT NULL,
  `uin` varchar(13) DEFAULT NULL,
  `isvip` tinyint(1) DEFAULT NULL,
  `nick` varchar(128) DEFAULT NULL,
  `remark` varchar(128) DEFAULT NULL,
  `searchField` varchar(256) NOT NULL,
  `viplevel` int(11) DEFAULT NULL,
  UNIQUE KEY `qquin` (`qq`,`uin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_gpqq
-- ----------------------------
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '255501', '0', '陈文君', '陈文君', '255501 陈文君 陈文君 chenwenjun cwj chenwenjun cwj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '9883609', '0', '嘟嘟星儿', '钢之梦易姐', '9883609 钢之梦易姐 嘟嘟星儿 gangzhimengyijie gzmyj duduxing ddx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '25023316', '1', 'myjun', '姜总', '25023316 姜总 myjun jiangzong jz  ', '7');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '29698578', '0', '§DIY§King', '肖开盛', '29698578 肖开盛 §DIY§King xiaokaisheng xks  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '44567009', '0', '色涩咖啡', '亚童陈老师', '44567009 亚童陈老师 色涩咖啡 yatongchenlaoshi ytcls sesekafei sskf', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '86987838', '0', 'Alex 国源', 'Alex 国源', '86987838 Alex 国源 Alex 国源 guoyuan gy guoyuan gy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '113160153', '1', '徐宁', '徐宁', '113160153 徐宁 徐宁 xuning xn xuning xn', '8');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '136787510', '0', '          美年达。', '          美年达。', '136787510           美年达。           美年达。 meinianda mnd meinianda mnd', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '137233811', '0', 'skyowq', 'skyowq', '137233811 skyowq skyowq    ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '154894476', '0', '火之灵', '全喜阳', '154894476 全喜阳 火之灵 quanxiyang qxy huozhiling hzl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '164483642', '0', 'Mas ', 'Mas ', '164483642 Mas  Mas     ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '178109907', '1', '阿怪。', '刘雅琴', '178109907 刘雅琴 阿怪。 liuyaqin lyq aguai ag', '8');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '178880154', '0', 'つ何苦自编自演自欺欺人 ', '周雷', '178880154 周雷 つ何苦自编自演自欺欺人  zhoulei zl hekuzibianziyanziqiqiren hkzbzyzqqr', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '184199792', '0', '末了。', '周柳', '184199792 周柳 末了。 zhouliu zl moliao ml', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '184447841', '0', '沙子', '宋老师', '184447841 宋老师 沙子 songlaoshi sls shazi sz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '191879956', '0', '下 沙', '夏莎莎', '191879956 夏莎莎 下 沙 xiashasha xss xiasha xs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '210449729', '0', '测试', '测试', '210449729 测试 测试 ceshi cs ceshi cs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '214205598', '1', '我走得很慢、但从不后退', '金小忠', '214205598 金小忠 我走得很慢、但从不后退 jinxiaozhong jxz wozoudehenmandancongbuhoutui wzdhmdcbht', '5');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '250957525', '0', '﹎χ陌玍℡▓▓▓▓▓▓▓', '王孟森', '250957525 王孟森 ﹎χ陌玍℡▓▓▓▓▓▓▓ wangmengsen wms mo m', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '261763260', '0', 'Do。', '梁婷', '261763260 梁婷 Do。 liangting lt  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '286883741', '0', 'Aries - 。', 'Aries - 。', '286883741 Aries - 。', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '296421914', '0', '坚信明天会更好', '黄永吉', '296421914 黄永吉 坚信明天会更好 huangyongji hyj jianxinmingtianhuigenghao jxmthgh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '296932349', '0', '小茴', '客服-小茴', '296932349 客服-小茴 小茴 kefuxiaohui kfxh xiaohui xh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '305752846', '0', '①首離歌丶唱卟綄憂傷/wq', '①首離歌丶唱卟綄憂傷/wq', '305752846 ①首離歌丶唱卟綄憂傷/wq ①首離歌丶唱卟綄憂傷/wq shougechangbu sgcb shougechangbu sgcb', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '305968810', '0', '                      .', '杨翔', '305968810 杨翔                       . yangxiang yx  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '306206094', '0', '没有辜负，可你欠我幸福。', '隆旋', '306206094 隆旋 没有辜负，可你欠我幸福。 longxuan lx meiyougufukeniqianwoxingfu mygfknqwxf', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '327343782', '0', '辉', '辉', '327343782 辉 辉 hui h hui h', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '330995493', '0', '♫♫', '欧家豪', '330995493 欧家豪 ♫♫ oujiahao ojh  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '335877592', '0', '左心房为你敞大大', '刘茜', '335877592 刘茜 左心房为你敞大大 liuqian lq zuoxinfangweinichangdada zxfwncdd', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '337265223', '0', 'write less, do more', '石良钰', '337265223 石良钰 write less, do more shiliangyu sly  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '344974177', '0', 'Small丶麟', '赵麟', '344974177 赵麟 Small丶麟 zhaolin zl lin l', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '363451718', '0', '********', '侠哥', '363451718 侠哥 ******** xiage xg  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '365011583', '0', '品味阳光', '品味阳光', '365011583 品味阳光 品味阳光 pinweiyangguang pwyg pinweiyangguang pwyg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '374267037', '0', '乱', '胖哥', '374267037 胖哥 乱 pangge pg luan l', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '380310592', '0', '风清羊', '刘艳琳', '380310592 刘艳琳 风清羊 liuyanlin lyl fengqingyang fqy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '382637380', '0', '        你说呢。', '刘雅琴', '382637380 刘雅琴         你说呢。 liuyaqin lyq nishuone nsn', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '395614992', '0', '魔力芒果', '魔力芒果', '395614992 魔力芒果 魔力芒果 molimangguo mlmg molimangguo mlmg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '402459014', '0', '好声音栏目组', '样哈', '402459014 样哈 好声音栏目组 yangha yh haoshengyinlanmuzu hsylmz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '404619053', '0', '涛声依旧', '殷正坤', '404619053 殷正坤 涛声依旧 yinzhengkun yzk taoshengyijiu tsyj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '405190463', '0', '绿竹苑', '员工-杨丰宁', '405190463 员工-杨丰宁 绿竹苑 yuangongyangfengning ygyfn luzhuyuan lzy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '406964108', '0', '左手の倒影', 'php-王雪兵', '406964108 php-王雪兵 左手の倒影 wangxuebing wxb zuoshoudaoying zsdy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '410038264', '0', '嘿在干嘛呢', '嘿在干嘛呢', '410038264 嘿在干嘛呢 嘿在干嘛呢 heizaiganmane hzgmn heizaiganmane hzgmn', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '410197948', '0', ' Josie ╮', '钟晴', '410197948 钟晴  Josie ╮ zhongqing zq  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '410974581', '0', '随风飘的云', '杨文', '410974581 杨文 随风飘的云 yangwen yw suifengpiaodeyun sfpdy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '425856462', '0', '╇ミ如若★初见灬 ', '孙冰华', '425856462 孙冰华 ╇ミ如若★初见灬  sunbinghua sbh ruruochujian rrcj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '431725127', '0', '    #     ', '文秘_吴盼', '431725127 文秘_吴盼     #      wenmiwupan wmwp  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '12', '435024179', '1', '#1', '#1', '435024179 #1 #1    ', '7');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '443743505', '0', '爱笑的女生运气不会差', '孙冰华', '443743505 孙冰华 爱笑的女生运气不会差 sunbinghua sbh aixiaodenushengyunqibuhuicha axdnsyqbhc', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '449270404', '0', 'Superman也会被叫骆驼祥子', '骆祥', '449270404 骆祥 Superman也会被叫骆驼祥子 luoxiang lx yehuibeijiaoluotuoxiangzi yhbjltxz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '450178591', '0', '梦影★星杰', '梦影★星杰', '450178591 梦影★星杰 梦影★星杰 mengyingxingjie myxj mengyingxingjie myxj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '452978608', '0', '蓝式＼', '徐芬', '452978608 徐芬 蓝式＼ xufen xf lanshi ls', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '455019410', '0', '泉', '程序员-张水泉', '455019410 程序员-张水泉 泉 chengxuyuanzhangshuiquan cxyzsq quan q', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '455973965', '0', '人走茶凉', '姚志酬', '455973965 姚志酬 人走茶凉 yaozhichou yzc renzouchaliang rzcl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '462195742', '0', '浅墨丶时光', '易芳', '462195742 易芳 浅墨丶时光 yifang yf qianmoshiguang qmsg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '472157735', '0', '❃Lily菇凉', '房永丽', '472157735 房永丽 ❃Lily菇凉 fangyongli fyl guliang gl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '478712565', '0', '好吃的烤地瓜', '张禄', '478712565 张禄 好吃的烤地瓜 zhanglu zl haochidekaodigua hcdkdg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '492522126', '0', '渥礻魍靥眚', '王也生', '492522126 王也生 渥礻魍靥眚 wangyesheng wys wowangyesheng wwys', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '493858571', '0', '...', '唐中意', '493858571 唐中意 ... tangzhongyi tzy  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '499504048', '0', 'Jay', '设计师-文剑', '499504048 设计师-文剑 Jay shejishiwenjian sjswj  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '505139848', '0', '爱不知所起，却一往情深', '向东', '505139848 向东 爱不知所起，却一往情深 xiangdong xd aibuzhisuoqiqueyiwangqingshen abzsqqywqs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '505816576', '0', '大油田', '大油田', '505816576 大油田 大油田 dayoutian dyt dayoutian dyt', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '506444235', '0', 'MISS-X✅官方认证', '符泽仁', '506444235 符泽仁 MISS-X✅官方认证 fuzeren fzr guanfangrenzheng gfrz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '506884901', '0', '小羊咩咩', '小羊咩咩', '506884901 小羊咩咩 小羊咩咩 xiaoyangmiemie xymm xiaoyangmiemie xymm', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '510705910', '0', '^璨Can^', '亚童新的编辑曹灿', '510705910 亚童新的编辑曹灿 ^璨Can^ yatongxindebianjicaocan ytxdbjcc can c', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '514830068', '0', 'Mr_Chen', '陈权', '514830068 陈权 Mr_Chen chenquan cq  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '517031744', '0', '            ❀', '雅ya', '517031744 雅ya             ❀ ya y  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '523684312', '0', ' Me and U', '周丹', '523684312 周丹  Me and U zhoudan zd  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '524361198', '0', 'Lov3。24lin ', '林哥', '524361198 林哥 Lov3。24lin  linge lg  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '526105738', '0', '壹↣仟↓零↘①夜', '高崽', '526105738 高崽 壹↣仟↓零↘①夜 gaozai gz yiqianlingye yqly', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '527219013', '0', '转角遇见鬼', '雷巧云', '527219013 雷巧云 转角遇见鬼 leiqiaoyun lqy zhuanjiaoyujiangui zjyjg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '530413523', '0', '　　', '谢杰', '530413523 谢杰 　　 xiejie xj  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '532280287', '0', '小胖', '石老师', '532280287 石老师 小胖 shilaoshi sls xiaopang xp', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '541191296', '0', '_y1ng./', '隆莹', '541191296 隆莹 _y1ng./ longying ly  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '545973325', '0', '卟亓亾亼', '雷亚兵', '545973325 雷亚兵 卟亓亾亼 leiyabing lyb buqi bq', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '550213556', '0', '毛豆', '毛豆', '550213556 毛豆 毛豆 maodou md maodou md', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '571697736', '0', '小样', '小样', '571697736 小样 小样 xiaoyang xy xiaoyang xy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '583513527', '0', '❤.留不住旧时光', '隆璇', '583513527 隆璇 ❤.留不住旧时光 longxuan lx liubuzhujiushiguang lbzjsg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '591225271', '0', '幸福', '苏文俊', '591225271 苏文俊 幸福 suwenjun swj xingfu xf', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '593297240', '0', 'Eunice', '李杨梅', '593297240 李杨梅 Eunice liyangmei lym  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '598487136', '0', '『Vamπre』', '黄柳', '598487136 黄柳 『Vamπre』 huangliu hl  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '604265231', '0', '罗小黑', '罗小黑', '604265231 罗小黑 罗小黑 luoxiaohei lxh luoxiaohei lxh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '610327955', '0', 'only 勾勒', '陈善鹏', '610327955 陈善鹏 only 勾勒 chenshanpeng csp goule gl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '634874351', '0', '菲菲博客', '菲菲博客', '634874351 菲菲博客 菲菲博客 feifeiboke ffbk feifeiboke ffbk', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '642321387', '0', '小七', '9527', '642321387 9527 小七   xiaoqi xq', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '643974657', '0', '羽', '羽', '643974657 羽 羽 yu y yu y', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '645871997', '1', '米米~', '何佳敏', '645871997 何佳敏 米米~ hejiamin hjm mimi mm', '6');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '671814581', '0', '感觉', '彭凌', '671814581 彭凌 感觉 pengling pl ganjue gj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '673007900', '0', 'yi yi yi', '邓烟', '673007900 邓烟 yi yi yi dengyan dy  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '694286407', '0', 'Memory', '邹青霞', '694286407 邹青霞 Memory zouqingxia zqx  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '706644379', '0', '沉默的悲剧', '猛子', '706644379 猛子 沉默的悲剧 mengzi mz chenmodebeiju cmdbj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '714664596', '0', '淡漠年华、', '小强', '714664596 小强 淡漠年华、 xiaoqiang xq danmonianhua dmnh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '717612119', '0', '我想站在海边听风的声音づ', '连花', '717612119 连花 我想站在海边听风的声音づ lianhua lh woxiangzhanzaihaibiantingfengdeshengyin wxzzhbtfdsy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '729387532', '0', 'Don*_*方', '唐方', '729387532 唐方 Don*_*方 tangfang tf fang f', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '734939191', '0', '菲素爱燕玲杏', '王杏', '734939191 王杏 菲素爱燕玲杏 wangxing wx feisuaiyanlingxing fsaylx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '751623215', '0', '朝著@太陽^微笑', '彭聪聪', '751623215 彭聪聪 朝著@太陽^微笑 pengcongcong pcc chaozhutaiweixiao cztwx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '754505295', '0', '真心', '华华', '754505295 华华 真心 huahua hh zhenxin zx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '754966116', '0', '  零碎。', '  零碎。', '754966116   零碎。   零碎。 lingsui ls lingsui ls', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '757114617', '0', 'Enigmatic', '罗惠友', '757114617 罗惠友 Enigmatic', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '762674364', '0', '夏夏o_O', '夏夏o_O', '762674364 夏夏o_O 夏夏o_O xiaxia xx xiaxia xx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '763912882', '0', '我心依然', '我心依然', '763912882 我心依然 我心依然 woxinyiran wxyr woxinyiran wxyr', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '769436987', '0', '左右徘徊', '9527', '769436987 9527 左右徘徊   zuoyoupaihuai zyph', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '781951271', '0', ' 　故步自封、', ' 　故步自封、', '781951271  　故步自封、  　故步自封、 gubuzifeng gbzf gubuzifeng gbzf', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '784681620', '1', '如果妳乜听說、', '陈麟霞', '784681620 陈麟霞 如果妳乜听說、 chenlinxia clx ruguomieting rgmt', '3');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '799105893', '0', '集智◎李清林', '集智◎李清林', '799105893 集智◎李清林 集智◎李清林 jizhiliqinglin jzlql jizhiliqinglin jzlql', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '800005998', '0', 'KC电话', 'KC电话', '800005998 KC电话 KC电话 dianhua dh dianhua dh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '800015083', '0', '美橙互联售前客服部', '美橙互联售前客服部', '800015083 美橙互联售前客服部 美橙互联售前客服部 meichenghulianshouqiankefubu mchlsqkfb meichenghulianshouqiankefubu mchlsqkfb', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '800019263', '0', '西部数码', '西部数码', '800019263 西部数码 西部数码 xibushuma xbsm xibushuma xbsm', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '800031088', '0', '800031088', '800031088', '800031088 800031088 800031088    ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '800082800', '0', '联想中国', '联想中国', '800082800 联想中国 联想中国 lianxiangzhongguo lxzg lianxiangzhongguo lxzg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '815276055', '0', '上了岸的鱼', '家啊了', '815276055 家啊了 上了岸的鱼 jiaaliao jal shangliaoandeyu slady', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '824004707', '0', ' Gimme_Ad.', '唐双', '824004707 唐双  Gimme_Ad. tangshuang ts  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '824298842', '0', '豌豆派', '豌豆派', '824298842 豌豆派 豌豆派 wandoupai wdp wandoupai wdp', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '844179924', '0', '  ●＿●', '亚童新来的设计', '844179924 亚童新来的设计   ●＿● yatongxinlaidesheji ytxldsj  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '851999490', '0', '冷月无声', '刘桂花', '851999490 刘桂花 冷月无声 liuguihua lgh lengyuewusheng lyws', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '852976341', '0', '米米网络', '米米网络', '852976341 米米网络 米米网络 mimiwangluo mmwl mimiwangluo mmwl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '865845773', '0', '从开始到现在', '唐培容', '865845773 唐培容 从开始到现在 tangpeirong tpr congkaishidaoxianzai cksdxz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '869158977', '0', '            Love oath ヾ', '徐颖', '869158977 徐颖             Love oath ヾ xuying xy  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '871845782', '0', '郭山炼2', '郭山炼2', '871845782 郭山炼2 郭山炼2 guoshanlian gsl guoshanlian gsl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '877377379', '0', '些许', '陈善鹏', '877377379 陈善鹏 些许 chenshanpeng csp xiexu xx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '891516823', '0', '逝，@', '杜凡云', '891516823 杜凡云 逝，@ dufanyun dfy shi s', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '916891862', '0', '青草百合', '谢丹', '916891862 谢丹 青草百合 xiedan xd qingcaobaihe qcbh', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '923405064', '0', '.', '.', '923405064 . .    ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '938002843', '0', '华为荣耀', '华为荣耀', '938002843 华为荣耀 华为荣耀 huaweirongyao hwry huaweirongyao hwry', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '940607643', '0', '曾彬', '曾彬', '940607643 曾彬 曾彬 zengbin zb zengbin zb', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '949942502', '0', 'up', 'up', '949942502 up up    ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1004571737', '0', '╰自个的世界、自个懂', '╰自个的世界、自个懂', '1004571737 ╰自个的世界、自个懂 ╰自个的世界、自个懂 zigedeshijiezigedong zgdsjzgd zigedeshijiezigedong zgdsjzgd', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1005064104', '0', '蝶舞', '高桥秀', '1005064104 高桥秀 蝶舞 gaoqiaoxiu gqx diewu dw', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1005771083', '0', '活力松', '松青', '1005771083 松青 活力松 songqing sq huolisong hls', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1010397235', '1', '阿朴杜勒，有点der', '杨鹰飞', '1010397235 杨鹰飞 阿朴杜勒，有点der yangyingfei yyf apuduleyoudian apdlyd', '7');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1015093866', '0', '百鲤', '何沛', '1015093866 何沛 百鲤 hepei hp baili bl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1025198095', '0', '﹌°笨蛋，呮許伱訆涐儍ゞ', '李熠辉', '1025198095 李熠辉 ﹌°笨蛋，呮許伱訆涐儍ゞ liyihui lyh bendanbimi bdbm', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1033289127', '0', 'Fang', '刘方', '1033289127 刘方 Fang liufang lf  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1107901899', '0', '琢磨先生', '湘啊了', '1107901899 湘啊了 琢磨先生 xiangaliao xal zhuomoxiansheng zmxs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1125127038', '0', '瀔瀹·瀇澪·涊瀝·', '瀔瀹·瀇澪·涊瀝·', '1125127038 瀔瀹·瀇澪·涊瀝· 瀔瀹·瀇澪·涊瀝· yuewei yw yuewei yw', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1134756239', '0', '柒月 ', '唐新田', '1134756239 唐新田 柒月 ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1144571069', '0', '季节病', '王玉函', '1144571069 王玉函 季节病 wangyuhan wyh jijiebing jjb', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1162519806', '1', '╭   . 和光同尘、救赎丶 ', '大阳', '1162519806 大阳 ╭   . 和光同尘、救赎丶  dayang dy heguangtongchenjiushu hgtcjs', '8');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1187938626', '0', 'GHY', '高槐云', '1187938626 高槐云 GHY gaohuaiyun ghy  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1208787024', '0', '小悟', '肖高旭', '1208787024 肖高旭 小悟 xiaogaoxu xgx xiaowu xw', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1228308631', '0', '向前看。。不回首', '向前看。。不回首', '1228308631 向前看。。不回首 向前看。。不回首 xiangqiankanbuhuishou xqkbhs xiangqiankanbuhuishou xqkbhs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1255771457', '0', '_ang', '周进', '1255771457 周进 _ang zhoujin zj  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1285240518', '1', '静听。如此喧世', '曾勇华', '1285240518 曾勇华 静听。如此喧世 zengyonghua zyh jingtingrucixuanshi jtrcxs', '7');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1315389943', '0', '小丑鱼', '王波', '1315389943 王波 小丑鱼 wangbo wb xiaochouyu xcy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1325703628', '0', '诚芯笔记本维修中心', '周雷', '1325703628 周雷 诚芯笔记本维修中心 zhoulei zl chengxinbijibenweixiuzhongxin cxbjbwxzx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1334690705', '0', '还有一窗明月', '罗文琴', '1334690705 罗文琴 还有一窗明月 luowenqin lwq huanyouyichuangmingyue hyycmy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1339924006', '0', 'i', '肖时花', '1339924006 肖时花 i xiaoshihua xsh  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1346754578', '0', '又拍二号', '又拍二号', '1346754578 又拍二号 又拍二号 youpaihao yph youpaihao yph', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1353728291', '0', '。聆||听-、', '样哈', '1353728291 样哈 。聆||听-、 yangha yh lingting lt', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1430941287', '0', '米米网络', '米米网络', '1430941287 米米网络 米米网络 mimiwangluo mmwl mimiwangluo mmwl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1508426697', '0', '华生', '余显', '1508426697 余显 华生 yuxian yx huasheng hs', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1564688117', '0', '怡然', '怡然', '1564688117 怡然 怡然 yiran yr yiran yr', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1572435263', '1', 'Little Xia', '小胖 ', '1572435263 小胖  Little Xia xiaopang xp  ', '7');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1632205421', '0', '航', '航', '1632205421 航 航 hang h hang h', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1658189530', '0', '伤不起2', '伤不起2', '1658189530 伤不起2 伤不起2 shangbuqi sbq shangbuqi sbq', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1840394696', '0', '匪狼', '熊波', '1840394696 熊波 匪狼 xiongbo xb feilang fl', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '1936578197', '0', '悟。。。', '欧阳', '1936578197 欧阳 悟。。。 ouyang oy wu w', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '1952187231', '0', '蓝天白云', '蓝天白云', '1952187231 蓝天白云 蓝天白云 lantianbaiyun ltby lantianbaiyun ltby', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2101701920', '0', 'Ice', '行政-王叶飞', '2101701920 行政-王叶飞 Ice xingzhengwangyefei xzwyf  ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2239535923', '0', '钢之梦钢铁', '钢之梦', '2239535923 钢之梦 钢之梦钢铁 gangzhimeng gzm gangzhimenggangtie gzmgt', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2352805800', '0', '茗', '茗', '2352805800 茗 茗 ming m ming m', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '2418270155', '0', '\"桑**梓\"', '\"桑**梓\"', '2418270155 \"桑**梓\" \"桑**梓\" sangzi sz sangzi sz', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2423481533', '0', '        离癸', '亚童网编', '2423481533 亚童网编         离癸 yatongwangbian ytwb ligui lg', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '2473679631', '0', '淡然', '姑姑', '2473679631 姑姑 淡然 gugu gg danran dr', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '2492763691', '0', '浮云', '浮云', '2492763691 浮云 浮云 fuyun fy fuyun fy', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '2508389696', '0', '                       ❤', '                       ❤', '2508389696                        ❤                        ❤    ', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2536158931', '0', '⊕↘學無止境℡', '⊕↘學無止境℡', '2536158931 ⊕↘學無止境℡ ⊕↘學無止境℡ zhijing zj zhijing zj', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '1', '2721984237', '0', '♂★学絵ぃ紾悕ぢ', '♂★学絵ぃ紾悕ぢ', '2721984237 ♂★学絵ぃ紾悕ぢ ♂★学絵ぃ紾悕ぢ xue x xue x', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '2745787624', '0', '星星', '新邵三中老师李梅加为好友方便联系', '2745787624 新邵三中老师李梅加为好友方便联系 星星 xinshaosanzhonglaoshilimeijiaweihaoyoufangbianlianxi xsszlslmjwhyfblx xingxing xx', '0');
INSERT INTO `ss_friend_gpqq` VALUES ('435024179', '0', '3217125363', '0', 'UPYUN@耿勇', 'UPYUN@耿勇', '3217125363 UPYUN@耿勇 UPYUN@耿勇 gengyong gy gengyong gy', '0');

-- ----------------------------
-- Table structure for `ss_friend_replys`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_replys`;
CREATE TABLE `ss_friend_replys` (
  `uin` varchar(13) NOT NULL COMMENT '好友qq',
  `cellid` varchar(256) NOT NULL COMMENT '说说的key 不知道是与qq唯一还是全表唯一',
  `fuin` varchar(13) NOT NULL COMMENT '评论者qq',
  `commentid` int(11) NOT NULL,
  `replypic` varchar(256) DEFAULT NULL,
  `content` text,
  `time` int(11) DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  `replyid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_replys
-- ----------------------------
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '154894476', '1', null, ' [em]e113[/em]哈哈', '1433151083', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6256c55dc600900', '583710161', '1', null, '说明我关注你[em]e106[/em]', '1433151027', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bbe51b55039b0a00', '154894476', '1', null, ' 阿姨说小妹妹们都喜欢听甜言蜜语，哈qioqio滴[em]e120[/em]', '1427893165', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fc20f55749c0a00', '154894476', '2', null, ' 下班~~~~回去', '1427099036', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fc20f55749c0a00', '154894476', '3', null, ' 哈哈，[em]e133[/em]', '1427114030', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fc20f55749c0a00', '154894476', '4', null, ' 跟你撒', '1427114628', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099862ed5485030700', '154894476', '3', null, ' 这都被你看出来了呀[em]e120[/em][em]e133[/em]', '1424844825', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099862ed5485030700', '154894476', '4', null, ' [em]e120[/em]', '1424845114', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099862ed5485030700', '154894476', '5', null, ' 嘿嘿，错过了吧[em]e113[/em]', '1424847536', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099862ed5485030700', '154894476', '6', null, ' [em]e140[/em][em]e140[/em][em]e140[/em]', '1424853642', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '154894476', '2', null, ' 祝你吃一点长一点[em]e129[/em]', '1424698021', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '583710161', '2', null, '先给我吃了再说', '1424700318', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '1098356802', '2', null, '就知道吃→_→', '1424702426', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '583710161', '2', null, '喜欢吃怎么了？', '1424706329', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '1098356802', '2', null, '吃吃更健康=_=', '1424707558', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '154894476', '4', null, ' 上班啦[em]e120[/em]', '1424824741', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '154894476', '5', null, ' 嗯嗯，都知道的', '1424824787', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '154894476', '6', null, ' 13天吧。。。你上班了没？', '1424934387', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093f1eeb5468010b00', '364720722', '6', null, ' 不错啊，挺久的。我后天回', '1425001422', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b092bb8e454f6850c00', '154894476', '3', null, 'WP好像不支持耶…见谅了，不能和你们愉快玩红包了[em]e101[/em]', '1424279828', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '2', null, '其实我妈最不能忍的是睡懒觉，其它都不急[em]e113[/em][em]e113[/em]', '1424188115', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '3', null, '根本不知道你用的什么方法？有英文文档没？', '1424188240', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '3', null, ' 静静 = new 女朋友（170,50,8）//身高体重颜值', '1424188416', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '3', null, ' 你这样？我就想问：你妈逼你结婚了没？[em]e179[/em]', '1424189285', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '3', null, ' 呵呵，我最爱的是你，么么哒。你问下你妈要多少聘礼。', '1424189666', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '3', null, ' 握了根草，没节操！麻麻说你什么都好，就不该是个程序猿…[em]e139[/em]', '1424189984', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '3', null, ' 没有程序猿，你还能发说说装逼[em]e139[/em]', '1424190028', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '4', null, '连你都看出来了，他是注孤生的节奏！', '1424188343', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '4', null, '丫，你那哪来的消息[em]e114[/em]', '1424189496', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '4', null, ' 本屌明天就去淘宝买个给你看，还是范冰冰版的。', '1424190104', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '178880154', '4', null, '好厉害啊！那么问题来了，卖范冰冰版哪个卖家强。', '1424191637', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '404503870', '4', null, '中国电商天猫忙！', '1424222012', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '398109852', '4', null, '你们好happy啊。', '1424224535', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '404503870', '4', null, '大过年的就该嗨皮一点才符合气氛', '1424226790', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '4', null, ' 气氛搞起来', '1424229892', '0', '8');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '435024179', '4', null, ' 全老板，发几个红包压压惊', '1424231701', '0', '9');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '404503870', '4', null, '我也要', '1424252442', '0', '10');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '5', null, ' 妮子~~~', '1424229872', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '154894476', '6', null, ' [em]e179[/em]你哥什么有么？', '1424229622', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09325be35442020f00', '244756646', '6', null, '没有', '1424231328', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09732cde54477c0700', '154894476', '1', null, '嗯咯', '1423888420', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09732cde54477c0700', '545973325', '1', null, '什么时候出去', '1423888823', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09732cde54477c0700', '154894476', '1', null, ' 初六就出去了，你去不去', '1423891726', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09732cde54477c0700', '545973325', '1', null, '没有车啊，去不了，', '1423898548', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09732cde54477c0700', '154894476', '2', null, '教师还是比较操心的啊！', '1423888390', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0961ccdc5464ac0e00', '154894476', '2', null, '嗯嗯[em]e113[/em]', '1423793644', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0961ccdc5464ac0e00', '583710161', '2', null, '[em]e113[/em][em]e113[/em][em]e113[/em]', '1423795459', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ca7da654f3d30c00', '154894476', '1', null, ' 偷拍也拍好点嘛。。。', '1420201024', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ca7da654f3d30c00', '154894476', '2', null, ' 活出自己', '1420210035', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ea78a5541ab10700', '154894476', '2', null, '[em]e133[/em]', '1420169173', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ea78a5541ab10700', '583710161', '2', null, '有秘密？', '1420169311', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ea78a5541ab10700', '154894476', '3', null, ' 啧什么啧，那就是这样的', '1420210087', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097cf6a354f7d70900', '154894476', '1', null, ' 当然是不好的东西啦。', '1420032428', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '154894476', '1', null, '睡了[em]e175[/em]', '1418572545', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '398109852', '1', null, '平凡之路', '1418603111', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '154894476', '2', null, ' [em]e139[/em]', '1418603776', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '583710161', '2', null, '[em]e154[/em]洛洛', '1418610616', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09c6ac8d549f680c00', '154894476', '5', null, '我倒想文艺一把，哈哈', '1419024945', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '154894476', '1', null, ' 去玩的呀~', '1418558825', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '154894476', '2', null, ' [em]e113[/em]', '1418558803', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0999d88c54d2aa0c00', '154894476', '3', null, '翅膀都不硬怎么飞。。。', '1418558792', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '1', null, ' 没怎么拉，老是这么问我。。。', '1418558874', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '2', null, ' 情况不好~~[em]e115[/em]', '1418558959', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '790131730', '2', null, ' 哈哈 不开心呢 晚上就好好睡一觉 表失眠 啥都不要想 第二天就没事鸟 我常干这事的', '1418561344', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '2', null, ' 没有啦，玩的挺开心的，只不过压抑了很久，偶尔又掉进去了。', '1418561574', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '790131730', '2', null, ' 周期忧郁[em]e113[/em][em]e113[/em][em]e113[/em]没事的 把心打开 你就会慢慢走出来的 以后就不会有啦', '1418562334', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '3', null, ' [em]e133[/em][em]e133[/em]', '1418558992', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '331531088', '3', null, '呵呵，什么时候回大衡阳啊？', '1418560014', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '3', null, ' 那必须得过年的时候呀。。。', '1418560228', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '331531088', '3', null, '噢噢！', '1418563450', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0918868c544e370e00', '154894476', '4', null, ' [em]e133[/em]', '1418619856', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '154894476', '5', null, '告诉你了，估计你就会没兴趣了，金庸的...', '1416533793', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '154894476', '8', null, ' 明明男主就是爱美人不爱江山嘛.', '1416550521', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '58848252', '8', null, ' 那都是噱头，真不爱江山的都在家做饭。', '1416550552', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '154894476', '8', null, ' 这年头没江山的男人没女人爱呀', '1416550703', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '58848252', '8', null, ' 额呵呵呵呵。。。 。。。长得帅，没江山也无所谓。。。长得丑的就只能拼命赚钱了。', '1416550920', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '154894476', '8', null, ' [em]e179[/em]赞！', '1416551020', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091c026e5407e70200', '58848252', '8', null, ' [em]e4007[/em]', '1416551057', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '2', null, ' [em]e100[/em]', '1414455798', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '3', null, ' 你又不和我们玩儿~~', '1414455836', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, ' 很快就跟你们去玩了', '1414459925', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '3', null, ' 你说每天过得这么悲催，有什么八卦的事，说出来让我们开心开心撒', '1414459994', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, ' 比如每天都做一样的事 ，说一样的话 。悲催吧', '1414460769', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '3', null, ' 什么时候？这话我可没落下。', '1414460772', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, ' 很快。。[em]e128[/em]', '1414460799', '0', '8');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '3', null, ' 我现在是希望有分身术，脚用上来都忙不赢', '1414460822', '0', '9');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, ' 那你 还在这聊天，', '1414460920', '0', '10');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '3', null, ' 懒，不想搞，回复你们花不了多长时间', '1414460957', '0', '11');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '3', null, ' me  too', '1414461099', '0', '12');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '410197948', '4', null, ' @{uin:435024179,nick:#1,who:1} 他们说你坏话', '1414459987', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '4', null, ' 打小报告，不齿你哒[em]e113[/em]', '1414460038', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '435024179', '4', null, ' 呵呵,他昨天半夜还在跟妹纸互诉心肠我会乱说', '1414460049', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '4', null, ' 你看，这才是真爱！', '1414460071', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '4', null, ' 特么你又看我手机了？', '1414460097', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '4', null, ' 手机木有密码的都是好孩子。', '1414460143', '0', '8');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '4', null, ' 不能说手机的事，会叼我的。', '1414460278', '0', '9');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '598487136', '4', null, ' 资源全被你删了？good job！@{uin:435024179,nick:#1,who:1} [em]e113[/em]', '1414460350', '0', '10');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '435024179', '4', null, ' 本屌就没看过你手机，还换密码，小人长戚戚', '1414460470', '0', '11');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '4', null, ' 中招了吧，叼我了吧。。。', '1414460574', '0', '12');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ef794e54dcf30e00', '154894476', '6', null, ' 不提了，伤心...', '1414672554', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b095b644e54a1360200', '154894476', '1', null, ' 没什么，有些事情处理不当。', '1414455583', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09d7ca395428270700', '598487136', '1', null, ' 终于还是被你发现了。我一直没说。', '1413090540', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09d7ca395428270700', '154894476', '1', null, ' 土豪求带啊！', '1413096614', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09d7ca395428270700', '154894476', '1', null, ' 什么被叼飞啊？', '1413096667', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '154894476', '7', null, ' [em]e140[/em]', '1410308713', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '154894476', '8', null, ' 觉得好有意思。', '1410308791', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '154894476', '9', null, ' 你太萌 了。。', '1410308641', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '154894476', '9', null, ' 全场笑得最开心的男子。。就是你了！', '1410308982', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '419457609', '9', null, ' 额！', '1410354266', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096fee0e54beba0a00', '154894476', '11', null, ' 你都认不出我。。。[em]e150[/em]', '1411650416', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b30cb0539cc70900', '154894476', '2', null, ' 什么呀？没点逻辑呀，亏是数学家。。。', '1408366391', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b30cb0539cc70900', '583710161', '2', null, '我不懂你的思维。。。', '1408373631', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b30cb0539cc70900', '154894476', '2', null, ' 哪有什么思维哦，[em]e127[/em]感觉我们根本没把话没对上。。', '1408408212', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b30cb0539cc70900', '583710161', '2', null, '有代沟！', '1408411556', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099e5bee525ee60200', '154894476', '1', null, ' 你这手残，还不寻找高科技过图去！', '1391392501', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099e5bee525ee60200', '404503870', '1', null, '我已经治愈了好吗！', '1391393607', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099e5bee525ee60200', '154894476', '2', null, ' 魔幻片秒变生活剧？', '1391392451', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099e5bee525ee60200', '154894476', '3', null, ' [em]e136[/em]哪个系列的电影，从小看到 大 ，主演一直木变？', '1391392606', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099e5bee525ee60200', '1285240518', '3', null, ' [em]e103[/em][em]e110[/em][em]e117[/em]好吧，你赢了', '1391404706', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '154894476', '2', null, ' 你还小是把。。', '1384057827', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '154894476', '3', null, '我们这里还穿短袖啊！', '1384675164', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09f2af7d52eeb70700', '583710161', '3', null, '我都穿冬装了。。。。', '1384675889', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '154894476', '1', null, ' 秒转，，吃货是最好“贿赂”的。。。', '1383398895', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '154894476', '2', null, ' 呵呵！', '1383398906', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '583710161', '2', null, '怎么了？', '1383398964', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '154894476', '2', null, ' 没啥，就有点恍惚而已', '1383399027', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '583710161', '2', null, '没事就好。', '1383400442', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '154894476', '2', null, ' [em]e113[/em]', '1383400514', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '583710161', '2', null, '[em]e113[/em]', '1383402914', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093fb37352353d0100', '154894476', '3', null, ' 木有啊。。。', '1383398928', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090e3c45523b0e0e00', '154894476', '1', null, ' [em]e140[/em]', '1380269461', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090e3c45523b0e0e00', '154894476', '2', null, ' 湿人？', '1380271458', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090e3c45523b0e0e00', '435024179', '2', null, ' 其实我是想说 呃呃呃 输入法智能不解释', '1380271498', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09a51f41523c200400', '154894476', '2', null, ' 啊 ？    租期呀！', '1380105245', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090490395267e50600', '154894476', '3', null, ' 是啊。。。', '1379506991', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '154894476', '1', null, ' 就茂业那里，好多好多，，，，可惜，就是颜色不同，同一的造型，表情....', '1378726671', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '10222452', '1', null, ' 好可爱[em]e113[/em]', '1378726832', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '154894476', '1', null, ' 赶紧去，，哈哈[em]e120[/em]', '1378726908', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '10222452', '1', null, ' 我都到家了[em]e113[/em]', '1378727057', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '154894476', '2', null, ' 你可惜啥，你又没去看到。[em]e110[/em]', '1378738043', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '1039872031', '2', null, ' 谁说我没有看到阿', '1378738282', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '154894476', '2', null, ' [em]e143[/em]', '1378738303', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0972b22d52a7800500', '1039872031', '2', null, ' 哈哈[em]e328516[/em]', '1378738332', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ea9c24528e070400', '154894476', '1', null, ' 带引号的。', '1378131337', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ea9c24528e070400', '154894476', '2', null, '太贵了，只能偶尔吃了。', '1378167371', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '2', null, ' [em]e128[/em]', '1376049781', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '583710161', '2', null, '[em]e120[/em][em]e120[/em][em]e120[/em]', '1376059044', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '3', null, ' 传销。', '1376049857', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '4', null, ' 正解。', '1376050115', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '5', null, ' 我看见安利就就觉得是传销。', '1376050307', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '775099224', '5', null, '噢  原来是传销哦 他吗的 传销 我日', '1376050446', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '6', null, ' 在外面吃饭，旁边不认识的给的。', '1376287589', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '476504333', '6', null, ' 以前我还差点进了完美啊··好像也是类似的吧，吓死我了', '1376287633', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098dd404521d290d00', '154894476', '6', null, ' 出门在外要注意点啊。', '1376287817', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '154894476', '2', null, '早就知道有人会这样回复，，，', '1375602610', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '154894476', '3', null, ' 我也觉得，这不是奔放。。。', '1375605675', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '154894476', '4', null, ' [em]e120[/em]丽丽姐偷笑什么。。。', '1375605702', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '10222452', '4', null, '笑你说的[em]e113[/em]', '1375606341', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '154894476', '4', null, ' 写小结了。。。悲剧啊。', '1375606484', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '10222452', '4', null, ' 我也杯具啊[em]e113[/em]', '1375606518', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0904f7fd51c2970100', '154894476', '5', null, ' 恕我语文没学好。。。', '1375605763', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09674cc4515bec0200', '154894476', '1', null, ' 一起努力哈。', '1371877259', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09674cc4515bec0200', '154894476', '2', null, '恩，必须的。', '1371877283', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09674cc4515bec0200', '154894476', '4', null, ' 独享20M光纤，你说有压力吗？', '1371880530', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '154894476', '3', null, ' [em]e110[/em] 等你毕业时，学校的那些流程。。。你就知道了 ', '1371526044', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '972596277', '3', null, '好吧，，又是一年毕业季  ，，各种心酸各种累  ，，，浪子还在你那儿吗，，', '1371526132', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '154894476', '3', null, ' 一起蜗居.', '1371526204', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '972596277', '3', null, ' 你们加油，，过2年我就奔过去投靠你们啦，，加油加油啦，，', '1371526272', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '154894476', '3', null, ' [em]e113[/em][em]e120[/em]好啊，都几年冒一起耍哒。', '1371526343', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0940b9bf51c1fd0200', '972596277', '3', null, '我是不介意平时有空就去哈，，，，，', '1371526404', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e64bb951a0640600', '154894476', '1', null, ' [em]e4009[/em] 你那表情哪里来的？', '1371112546', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e64bb951a0640600', '435024179', '1', null, ' 应该是拿钱买的', '1371116867', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e64bb951a0640600', '404503870', '1', null, '[em2]e1000010,64,24[/em2]', '1371121260', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097736a45154180800', '154894476', '1', null, '小妹，别黑我呀…嘿嘿', '1369719479', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097736a45154180800', '972596277', '1', null, '不黑你，，，难道还把你洗白啊，，，', '1369721786', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e14ba151f3a10a00', '154894476', '2', null, ' [em]e136[/em]好吧，我们是串通好的！ ', '1369816786', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0948629f51f3f40200', '154894476', '1', null, '夜拍无敌。', '1369401128', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0948629f51f3f40200', '154894476', '2', null, '你猜。', '1369413019', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ced59051aa800800', '154894476', '1', null, '还要牺牲明天中午休息时间，回来和电信的弄下。', '1368447053', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ced59051aa800800', '455973965', '1', null, ' 你就是一悲剧', '1368447102', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ced59051aa800800', '154894476', '3', null, ' [em]e127[/em]鬼晓得，中午回去和电信的看看。 ', '1368498952', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09fada7f51e45d0b00', '154894476', '1', null, ' 没办法，谁叫他改编的是金大侠的著作，只好看看咯。竟然是虐心片，次奥。', '1367336672', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09fada7f51e45d0b00', '583710161', '1', null, '哈哈，不会觉得天雷滚滚？', '1367336730', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09fada7f51e45d0b00', '154894476', '1', null, ' 其实看了前半觉得改编的还不错，后半又回到原著的方向了。整体来说真失败，可惜了东方教主。。。', '1367336907', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09fada7f51e45d0b00', '583710161', '1', null, '哈哈，表示没看，也不会去看。', '1367337380', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e5626e51513a0200', '154894476', '1', null, ' [em]e129[/em] ', '1366190715', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e5626e51513a0200', '154894476', '2', null, ' 拿去改下？', '1366191152', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e5626e51513a0200', '598487136', '2', null, ' 只能送人了。', '1366191247', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09e5626e51513a0200', '154894476', '2', null, ' [em]e103[/em] ', '1366191340', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09212c6651769c0600', '154894476', '1', null, ' 不知道，他微博上有拍的意思。。。不喜欢他拍金庸剧。', '1365652686', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0905e04e51f5240d00', '154894476', '1', null, ' 太长了，稍微快进下，都看了3个小时...', '1364174039', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098b3a4d518dc00000', '154894476', '1', null, ' Good idea!', '1364029895', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b7054951e3c80e00', '154894476', '1', null, ' [em]e162[/em]这个表情，我今天送出去好几个了，再送一个也无妨吧？ ', '1363744198', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b7054951e3c80e00', '583710161', '1', null, ' 哼，不想跟你说话叻。', '1363744224', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b7054951e3c80e00', '154894476', '1', null, ' [em]e140[/em] ', '1363744430', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b7054951e3c80e00', '583710161', '1', null, ' [em]e149[/em]', '1363744440', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b7054951e3c80e00', '154894476', '1', null, ' [em]e127[/em] ', '1363744470', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '154894476', '2', null, ' 没办法啊，高能高薪啊。。。', '1363658896', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '598487136', '2', null, ' 一、做不到七点二十起床，每天睡到八点半；二、跑步时间还是睡觉吧；三、学习还是看电影吧；四、还十点半，没到十一、二点不提睡觉的事。', '1363659035', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '154894476', '2', null, ' 看电影我只喜欢看热门的电影，所以不会天天看。要有所 改变，不然真的是得过且过。', '1363659267', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '435024179', '2', null, ' 你们都碉堡了，我每天7点醒八点起。洗漱10分钟洗去买2个包子，挤公交，然后就是一天，下午回来又是挤公交，累成狗爬去吃个晚饭果断回寝，开机。有网就玩把游戏没网就看下视频。然后洗洗睡了。', '1363660280', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '154894476', '2', null, ' 天天看到你在群里嗨，累个毛线。', '1363660370', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '598487136', '2', null, ' 冒事还发几个网址happy一下。', '1363660395', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '435024179', '2', null, ' 你特么不是一样？', '1363660397', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '154894476', '2', null, ' 对对对。大神还发发小网站。 我没说我累成狗爬啊。', '1363660536', '0', '8');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '717612119', '2', null, ' 你们喊累，我还没喊呢，嗓子都快不行了', '1363667260', '0', '9');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09bb314751cb710200', '154894476', '2', null, ' [em]e117[/em] ', '1363670020', '0', '10');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098f1f4751b6b40e00', '154894476', '1', null, ' @{uin:583710161,nick:の、舞影零乱﹌,who:1}嘿嘿、有你不知道的句子？    你猜？ ', '1363618141', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098f1f4751b6b40e00', '583710161', '1', null, ' 这话说的，我就普通青年一个，当然有我不知道的啦。猜不出来的，告诉我吧。', '1363618215', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098f1f4751b6b40e00', '154894476', '1', null, ' 典型的文艺小青年，意会把，不可言传。[em]e100[/em] ', '1363618676', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b098f1f4751b6b40e00', '583710161', '1', null, '没有的，洛洛，你就告诉我吧。', '1363618980', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09074e3d5134d30500', '154894476', '1', null, ' 固有自知之明。', '1362974407', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09074e3d5134d30500', '154894476', '2', null, ' 需要刻意花心思去改。。。', '1362997484', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09d38c2d51e4020a00', '435024179', '1', null, ' 不对  比我还苦逼', '1361958216', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e0f2a5172f10e00', '154894476', '1', null, '谢谢舅舅，你也是，节日快乐！', '1361712836', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090d072a5142540200', '154894476', '1', null, ' 嗯，有问题了就要想怎么去解决。我很好的。', '1361754404', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0971372851f7400c00', '154894476', '1', null, ' 是图片上！', '1361610618', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099aa01c51a1f70000', '154894476', '1', null, ' 东西都不想收拾，烦。', '1360833093', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096e491251b82c0e00', '154894476', '1', null, '你见过熟的？', '1360155771', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096e491251b82c0e00', '583710161', '1', null, '我会把它煮熟，哈哈。', '1360156087', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096e491251b82c0e00', '154894476', '2', null, '很彻底呀！', '1360155801', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09b6941051ee720600', '154894476', '1', null, ' 一天八小时，你懂。', '1360057415', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '1', null, '1、可以在中途上车2、直接到坐到深圳，补广州到深圳的票。有啥不可？', '1358598166', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '2', null, '唉，经过一次被秒之后，我只好先下手为强了！', '1358597988', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '3', null, '八仙过海了…', '1358598204', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '435024179', '3', null, '话说你买广州到长沙的干嘛。', '1358606801', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '3', null, '长沙到广州！我从衡阳上车，到广州不下，到时买一张广州到深圳或者补票。懂？', '1358645164', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '435024179', '3', null, ' 正好到广州不用出检票口，可以在里面直接做动车到深圳', '1358647988', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '4', null, '我可是光明正大的走进去，再找到我的位置坐下来…', '1358597691', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '345740081', '4', null, ' 牛皮人物就是不一样  嘿嘿', '1358598137', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '4', null, '扫除一切回家的障碍，哈哈。', '1358598362', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '345740081', '4', null, ' 好样的', '1358598392', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09715afa50e3d80400', '154894476', '5', null, '什么？', '1358597642', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '154894476', '1', null, ' @{uin:435024179,nick:#1,who:1}我折腾不起...买远一点的，我还不如坐高铁了。刚好贵200块钱。[em]e118[/em] ', '1358475270', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '154894476', '2', null, '好吧，铁道部涨工资了，乐了吧？你跑不跑深圳到衡阳的啊！', '1358475486', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' 京广= =！', '1358475509', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' 我有同学跑深圳', '1358475529', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' 工资涨有毛用！我还不是正式员工！', '1358475564', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '154894476', '2', null, ' 隆胸，跟你混了！！！不提我们一起长大的吧[em]e120[/em] ', '1358475631', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' [em]e114[/em] ', '1358475670', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' 你好多号回来啊', '1358475700', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' QQ聊', '1358475706', '0', '8');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '154894476', '2', null, ' 你赖也赖不掉！ 我瞪着你长大的！', '1358475722', '0', '9');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093ba3f85099ce0b00', '419457609', '2', null, ' = =!瞪着我长大！我好尴尬', '1358475772', '0', '10');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '154894476', '1', null, '我这里饭的分量不是很多...不过我能吃饱，不知道你们......', '1358383622', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '154894476', '2', null, '实际上没有，精神上已经有了。', '1358383580', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '154894476', '3', null, '刚过来，找工作的滋味可不是好受的哦。', '1358383493', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '598487136', '3', null, ' 那你赶紧找房子。', '1358383538', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '154894476', '3', null, ' 我同事租了间单间，1200一个月啊，押一付一，我可承受不起！', '1358383692', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '598487136', '3', null, ' 多住两个人就行了', '1358383748', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090badf65066930c00', '154894476', '3', null, '嗯嗯。那会好点。', '1358383899', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '154894476', '1', null, '糊口果事啊！还潇洒…简直就是流浪！', '1357304162', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '972596277', '1', null, ' 我也要糊口啊、、你现在还在广东、、那边不冷吧', '1357304666', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '154894476', '1', null, '十三四度，你广冷不。', '1357304851', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '972596277', '1', null, ' 当我冒问、、我好想在广东读书啊、、妈妈吗广你毕业哒、吓我一跳、、不要我刚进门你就出要得拜、、', '1357304963', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '154894476', '1', null, '我严格上说…实习期啦！', '1357305223', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '972596277', '1', null, ' 一样一样、、', '1357305340', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '154894476', '2', null, '开心！快乐！幸福！', '1357305521', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0901cfe650a6770700', '499859287', '2', null, '是的，一同努力，加油，开心，快乐，幸福，我们都一起！！', '1357308112', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ffb7e650045e0300', '154894476', '1', null, '深圳呐。', '1357300367', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ffb7e650045e0300', '419457609', '1', null, '你在实习了？', '1357300779', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ffb7e650045e0300', '154894476', '1', null, '是啊！你呢？', '1357300970', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ffb7e650045e0300', '419457609', '1', null, '我还没！QQ聊', '1357301064', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ffb7e650045e0300', '154894476', '1', null, '我正想说刷网页要钱呢！', '1357301165', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b099c19e1508fcf0e00', '154894476', '1', null, '不怎么酸的，好吃。', '1356951823', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '154894476', '1', null, '我这里饭店和酒店一样...就是坐满人了......大圆桌，高椅子，豪华吊灯..', '1356590541', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '435024179', '1', null, ' 爽爆了啊', '1356590608', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '154894476', '1', null, ' 我还是去吃八块的算了...两荤两素...[em]e144[/em] ', '1356590694', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '154894476', '3', null, '你那什么地方啊！', '1356951894', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '598487136', '3', null, '吃个要十三，就是土豆丝炒肉加半个盐鸭蛋。一杯海带。', '1356952220', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09aad4db503e000300', '598487136', '3', null, '一顿还要另加一元餐具费。', '1356952438', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '154894476', '1', null, '离家。', '1355584157', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '154894476', '2', null, '我又出去了呀！估计就是上学期你们那趟车…没空调的…', '1355584336', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '717612119', '2', null, '额，真悲催，又冷又累吧？', '1355622062', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '154894476', '2', null, '热得死…', '1355624162', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '154894476', '3', null, '哼哼！', '1355584258', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b096a7ecc501a030500', '499859287', '3', null, ' 看牙医。。。[em]e4005[/em]', '1355584283', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '154894476', '1', null, '[em]e103[/em]', '1355126638', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '545973325', '1', null, '拿502粘上就是·又牢固无压力', '1355148120', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '154894476', '2', null, '风扇上螺丝忘记弄下来了，结果就悲剧了.......脸都快黑了。', '1355143977', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '598487136', '2', null, '厕所没堵也算不幸中的万幸了。', '1355144053', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '154894476', '2', null, ' 啊啊啊...是螺丝掉厕所拉。肯定不会堵拉 。', '1355144187', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '598487136', '2', null, '以为cpu掉了呢。那还算幸运，打算在家那边找工作？', '1355144290', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '154894476', '2', null, ' 去广东吧，衡阳太小了。希望..希望有路，不然今年都不知道怎么过年。', '1355144523', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093e55c55079e70500', '598487136', '2', null, '我就不知道怎么办了。现在还在家。', '1355144684', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091ca8b85003800200', '154894476', '1', null, '雷倒一片众生。', '1354279198', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b091ca8b85003800200', '435024179', '1', null, '我这文学院这几个人，查水表都不知道什么意思', '1354291385', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '154894476', '1', null, '果断的。', '1353939162', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '583710161', '1', null, ' 呵呵，可怜的娃。', '1353939185', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '154894476', '1', null, '凭着我强大的信念…', '1353939380', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '583710161', '1', null, ' 干嘛？', '1353939547', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '154894476', '1', null, '在坑里睡一觉，明天起来再说，说不定坑里收获不少。嗯，就是这样的，瞄！', '1353939788', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09ed76b3503ca40700', '583710161', '1', null, ' 傻子。', '1353939858', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09d6ed7250a97c0200', '154894476', '1', null, '哈哈，知道我真名的就豆豆，可惜我也知道他。 你一用网名，谁还信你啊...', '1349709603', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0939916650771e0c00', '154894476', '2', null, '哎。。。', '1348919305', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0980743f50313e0500', '154894476', '2', null, '先回家，都两手空空。看家里有么子带。', '1346379510', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09a0532250ab7e0700', '154894476', '1', null, '做苦工。', '1344438983', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09a0532250ab7e0700', '345740081', '1', null, ' …', '1344441766', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09a0532250ab7e0700', '154894476', '2', null, '说不清滴。(*^__^*) 嘻嘻……', '1344439046', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0977e51b5070d60700', '154894476', '1', null, '你神经！', '1344074972', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0977e51b5070d60700', '583710161', '1', null, '神经说谁呢？', '1344089589', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0977e51b5070d60700', '154894476', '1', null, ' 我说神经。', '1344134807', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0909690d5032450900', '244756646', '1', null, '牛逼', '1343105882', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093b3b0950edd90600', '154894476', '1', null, '拿到再说吧，嘿嘿。', '1342796615', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093b3b0950edd90600', '583710161', '1', null, '嘿嘿，拿得到的。', '1342811070', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093b3b0950edd90600', '154894476', '2', null, '你们都是100，不会全国统一价吧！', '1342830761', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09335c025034240800', '154894476', '1', null, '不招了。你也太晚了吧！', '1342334222', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09335c025034240800', '419457609', '1', null, ' 衡阳现在找不到事了。', '1342334261', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b09335c025034240800', '154894476', '1', null, '都什么时候了，肯定不怎么招暑假工了不', '1342335047', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b094659f84fc6570900', '154894476', '1', null, '嗯嗯，我肯定能照顾好自己啦！趁着年轻，走南闯北去。', '1341721738', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '154894476', '1', null, '看你还赶得上不咯。听说18号湖南省博物馆闭馆了吧。', '1339503150', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '625411780', '1', null, ' 木有时间了，看来只能等她闭关出来了', '1339503208', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '154894476', '1', null, ' 没事。那怎么地方有挖出什么女娲遗骨，距今6200年，走，看白骨精去。。。', '1339503378', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '625411780', '1', null, ' 哪个地方这么神奇？', '1339503404', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '154894476', '1', null, ' 是在山西！', '1339503485', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '625411780', '1', null, ' 这个.....得先筹集盘缠，不然不敢轻易出发呀', '1339503543', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '154894476', '2', null, '哈哈，莫急撒', '1339508923', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b097f0ad74ffd4b0200', '499859287', '2', null, '这叫趁我年轻……', '1339511520', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b092180db4e42ac0a00', '154894476', '1', null, '恩咯。小感冒啊。。。被坑了。。', '1323065164', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093147524e3f8a0900', '154894476', '1', null, '哈哈', '1314168800', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b093147524e3f8a0900', '547755849', '1', null, '乖乖你告诉我嘛，说嘛…', '1314169226', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090fe6494e06970300', '154894476', '1', null, '呵呵，还像模像样.....', '1313485999', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090fe6494e06970300', '154894476', '2', null, '没办法了...', '1313485917', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090fe6494e06970300', '154894476', '3', null, '额~~~就是那样', '1313485901', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b090fe6494e06970300', '154894476', '4', null, '[em]e117[/em] ', '1313485887', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('154894476', '8c803b0998bb444e50340600', '154894476', '1', null, '可惜你撞壁了......', '1313138355', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed195c55cb55c4ad0400', '435024179', '1', null, ' 这逼装的可以', '1439389718', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1960998255721a0000', '435024179', '1', null, ' 人妻自重。', '1434626082', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1960998255721a0000', '527219013', '1', null, ' 不要说穿', '1434626202', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1960998255721a0000', '598487136', '3', null, ' 你们都厉害，都是大老板！', '1434674752', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '435024179', '4', null, ' 你好机智', '1413004472', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '431725127', '4', null, '哈……哈哈……哈哈哈…………', '1413004952', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '435024179', '5', null, ' 打算到哪里发展，求带', '1413004560', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed199d7c38545cd60a00', '1315389943', '5', null, '不知道。。还在这里，只是有想法而已', '1413007650', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19cef337549d5d0200', '435024179', '1', null, ' 你是不是想刨根问底？既然要刨根问底，那么问题就来了，学…', '1412953598', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19cef337549d5d0200', '1339924006', '1', null, ' 哈哈哈  哦哦哦哦哦哦哦哦哦？不知道　 你想说什么', '1412953622', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19cef337549d5d0200', '435024179', '1', null, ' 你还在长沙？', '1412954134', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19cef337549d5d0200', '1339924006', '1', null, ' 似的', '1412955343', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19cef337549d5d0200', '435024179', '1', null, ' 哦', '1412955370', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1963edb75344a40100', '435024179', '1', null, ' 首先，你得…', '1404565978', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1963edb75344a40100', '330995493', '3', null, ' 那来看我把。', '1404573210', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1963edb75344a40100', '410197948', '3', null, '你咋不来看我。', '1404573256', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1963edb75344a40100', '330995493', '3', null, ' [em]e125[/em]', '1404573392', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1963edb75344a40100', '435024179', '3', null, ' 穷寇莫追', '1404573834', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed190ac5b253de520c00', '593297240', '1', null, ' 我笑了', '1405070944', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1957eaa653b6180200', '435024179', '1', null, ' 爱用不用', '1403450894', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1957eaa653b6180200', '305968810', '1', null, '逗逼', '1403450907', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1957eaa653b6180200', '435024179', '1', null, ' 调子比天高。', '1403450934', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1957eaa653b6180200', '305968810', '1', null, '哪敢跟你耍调子', '1403451015', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1957eaa653b6180200', '435024179', '1', null, ' 这周又去哪里泡妹纸了。', '1403451069', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19fecba253059a0200', '435024179', '1', null, ' 呵呵。', '1403178691', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19fecba253059a0200', '154894476', '4', null, ' 好凶悍！', '1403233837', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19fecba253059a0200', '410197948', '4', null, '一丢丢[em]e106[/em]', '1403233860', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1951d35853bd1f0100', '435024179', '1', null, ' 赞腻了，又没有大尺度的。', '1398339082', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1951d35853bd1f0100', '593297240', '1', null, '[em]e141[/em]', '1398339136', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed190adb5753db6e0600', '435024179', '1', null, ' 欧老板带我飞吧。', '1398267902', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1972123053c48e0100', '435024179', '1', null, ' 送双套鞋给我。经典黑色版，涨洪水都不怕', '1395659626', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1972123053c48e0100', '593297240', '1', null, ' 我讨米也不容易', '1395659689', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1972123053c48e0100', '435024179', '1', null, ' 专业无痛断腿致残，包迪拜机票。', '1395659799', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1972123053c48e0100', '593297240', '1', null, ' [em]e141[/em]干嘛', '1395660002', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed191ec50053b2680d00', '435024179', '1', null, '我的微信 工作平台', '1392562311', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed191ec50053b2680d00', '435024179', '1', null, ' 公众', '1392562318', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed191ec50053b2680d00', '1285240518', '1', null, ' 直接给号码', '1392562894', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '435024179', '1', null, '@{uin:154894476,nick:全喜阳,who:1}帮忙解释下', '1391963273', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '455973965', '1', null, '我了个去', '1391963405', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '154894476', '3', null, ' 艾特我干鸟啊、', '1392013548', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed192fa6f752f2b80600', '154894476', '3', null, ' 回复错了，，，', '1392013571', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19de3ef25209680600', '435024179', '2', null, ' 你行你上，不行闭嘴。爱干干，不干滚', '1391686498', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19de3ef25209680600', '1325703628', '2', null, ' 哦，那你厉害。', '1391690653', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19de3ef25209680600', '1325703628', '2', null, ' 土豪就是不一样，说话都这么有水平。土豪我们交朋友吧！', '1391691036', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19de3ef25209680600', '435024179', '2', null, ' 算一下，现在在家应该是开始无聊起来了', '1391702556', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19de3ef25209680600', '1325703628', '2', null, ' ，，，靠，过几天就来。', '1391757705', '0', '5');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196165ef52ae680700', '435024179', '1', null, ' 这个其实是。。。话说中午是不是泡面套餐', '1391427388', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196165ef52ae680700', '583513527', '1', null, '我放假了', '1391478309', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196165ef52ae680700', '435024179', '2', null, ' 一场误会。来的话肯定会给你拜年，毕竟也能拿个红包', '1391427441', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196165ef52ae680700', '410197948', '2', null, ' 切', '1391427760', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '435024179', '2', null, ' 恩咯', '1381596736', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e45a595200ff0e00', '598487136', '2', null, '不是要有很多人关注才能创么？', '1381596867', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1907a945524e550400', '435024179', '2', null, '我们这除我之外都是高富帅。别乱说', '1380298225', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed1907a945524e550400', '839616641', '2', null, ' 你好低调，', '1380299461', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '435024179', '1', null, '要是你我肯定会直接找你麻烦的。就你回复快，你上班几分钟就刷新下空间是吧', '1376297692', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '527219013', '1', null, ' 我是无聊啊，无聊你知道吗', '1376297724', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '435024179', '1', null, '我也无聊..', '1376297995', '0', '6');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '529367774', '1', null, ' 哈哈哈哈，无聊你知道吗？', '1377272496', '0', '7');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '435024179', '2', null, ' 想多了', '1376299758', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '443743505', '2', null, ' 是么。那是我想多了。', '1376300040', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '435024179', '2', null, ' 话说你这头像挺漂亮的呀', '1376300098', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19f3a10852f3070700', '443743505', '2', null, ' 别人的 信不信。', '1376300729', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed197eb40352bfb00400', '435024179', '1', null, '回复还能再快一点', '1375974814', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed197eb40352bfb00400', '527219013', '1', null, ' 我比你速度，你总是抢不到一楼……', '1375975512', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '435024179', '1', null, '这样的不好吗，我觉得还不错', '1373884422', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '839616641', '1', null, ' 是不错', '1373884460', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '435024179', '2', null, '我不爱好这个呢，给妹纸看的', '1373887854', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '306909490', '2', null, '奇葩、读书的时侯伱不爱这些画？', '1373887892', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '435024179', '2', null, ' 已经没印象了，那都是闹着玩的吧应该', '1373887958', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '306909490', '2', null, ' 好吧，，，，', '1373887975', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '435024179', '3', null, '我对这个有不感冒，给别人看而已', '1373887886', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '1315389943', '3', null, ' 好吧。。。这个其实也还好，就是怪了点。。。', '1373887941', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '435024179', '3', null, ' 作者本来就有人格分裂', '1373887996', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed19e9b2e35162f70b00', '1315389943', '3', null, ' 说明什么呢，说明天才一般都有点病，还说我聪明一看就知道了，哈哈。。。。', '1373888042', '0', '4');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196195da51e3030800', '435024179', '1', null, '你速度倒是挺快。我的女神多得是，你也是我女神。', '1373279667', '0', '1');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196195da51e3030800', '527219013', '1', null, ' 我充其量也就是个女叼丝。。。。。', '1373279708', '0', '2');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196195da51e3030800', '435024179', '1', null, ' 要不要一秒变女神', '1373279784', '0', '3');
INSERT INTO `ss_friend_replys` VALUES ('435024179', '33f1ed196195da51e3030800', '527219013', '1', null, ' PS?', '1373290901', '0', '4');

-- ----------------------------
-- Table structure for `ss_friend_shuoshuo`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_shuoshuo`;
CREATE TABLE `ss_friend_shuoshuo` (
  `curlikekey` varchar(256) DEFAULT NULL COMMENT '貌似是说说地址',
  `cellid` varchar(256) NOT NULL COMMENT '貌似是说说的key 不知道是与qq唯一还是全表唯一',
  `operatemask` int(11) DEFAULT NULL COMMENT '貌似为说说类型，516107为原创 98315为转发',
  `time` int(11) DEFAULT NULL COMMENT '发布时间',
  `uin` varchar(13) NOT NULL COMMENT '好友qq',
  `likemans` text COMMENT '点赞狗  , 分割',
  `likenum` tinyint(4) DEFAULT NULL COMMENT '点赞数',
  `summary` text COMMENT '说说内容',
  `summary_img_url` text COMMENT '说说附带的图片地址',
  `summary_img_wh` text COMMENT '说说附带的图片地址宽高,假如为0说明没发图，但是会记录qq空间的头像',
  `timeline` varchar(24) DEFAULT NULL COMMENT '时间线  类似06/01',
  `cntnum` int(11) DEFAULT NULL COMMENT '评论数量',
  UNIQUE KEY `uinandcellid` (`cellid`(255),`uin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_shuoshuo
-- ----------------------------
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/154894476/mood/8c803b09b6256c55dc600900', '8c803b09b6256c55dc600900', '516107', '1433150902', '154894476', '545973325,364720722', '9', '心中那自由的世界，如此的清澈高远，盛开着永不凋零，蓝莲花~~~', 'http://qlogo3.store.qq.com/qzone/154894476/154894476/100', '0,0', '06/01', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1953f3075606b10200', '33f1ed1953f3075606b10200', '517131', '1443361619', '435024179', '154894476,214205598,505139848', '4', '国庆去哪里装逼', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '09/27', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed195c55cb55c4ad0400', '33f1ed195c55cb55c4ad0400', '517131', '1439389020', '435024179', '455973965,545973325,1315389943', '3', null, 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/FGHVG5decpx9ave0vnFQ9fpSPpBzkDWKSfYpREW.V.E!/b/dGIBAAAAAAAA&ek=1&kp=1&pt=0&bo=gAJVAwAAAAAFAPc!&su=049655697#sce=30-1-1&rf=-311-0', '640,853', '08/12', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1960998255721a0000', '33f1ed1960998255721a0000', '517131', '1434622303', '435024179', '545973325,604265231,671814581', '3', '我已经对公司这个项目失去信心了。', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/uBj9cYIikWtkVk0m0epQOthi2zFXTDUfPDQ8tvvkfyg!/b/dBYAAAAAAAAA&ek=1&kp=1&pt=0&bo=cgSAAkAGhAMDCBg!&su=042964689#sce=30-1-1&rf=-311-0', '1138,640', '06/18', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19f6297c554c800b00', '33f1ed19f6297c554c800b00', '517131', '1434200566', '435024179', '545973325', '1', 'Shadowsocks\nip：45.78.21.11\n端口：443\n密码：YzViNDE3YT\n加密方式：aes-256-cfb', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '06/13', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19141d4255bd310c00', '33f1ed19141d4255bd310c00', '517131', '1430396180', '435024179', '', '0', '喂，110吗，有人在这里装逼，场面已经控制不住了。', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/i90lAzPYdRl..yLaCiFBN5.bcfo*sQzMVKSn8wtMmwo!/b/dFgAAAAAAAAA&ek=1&kp=1&pt=0&bo=KwQgA0AGsAQBCNE!&su=030608305#sce=30-1-1&rf=-311-0', '1067,800', '04/30', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed196d983f55c9990700', '33f1ed196d983f55c9990700', '517131', '1430231149', '435024179', '', '0', '我这一千里', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '04/28', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed199d7c38545cd60a00', '33f1ed199d7c38545cd60a00', '517131', '1412988061', '435024179', '593297240', '1', ';̷̸̨̀͒̏̃ͦ̈́̾̀́̎͢҉̵̶͚̼͉͖̺̥͔͇̰̹̮͙͉̻̼̭̻͕̮͇ͨͬͪ͗̇̑̽͋̀̋̊͌ͧͨͭ̓̅͐ͥ̂̔̊ͧ͊҉̶̵̷̞̩̦̳̺̳̬̬̩̣̫͇̯̥͖͍͕̠̦̼̗ͯ̽͌̔ͪͯ́́͋̍ͨ̿̿̎͒ͤ̓̅̀͂ͧ͋̏ͫͣ̔͘͜͠͏̶̵̸̸̸̶̸̶̧̧̡̢̡̛̛̥̺͓̘̺͎̜̥͕͈̝̫͎̺̮̱̤̠̠͖̳̻̥̣̪͍͕͇̮͙̹̪͈̼̩̯̪͕̯̫̹̥͔͚͙̦̩͚̭̥͉̰̝̺͍̭̤̹̘̮̪͖͖͉̲̯͕̜̭̙̺̬̘͉̻͍̝̦͖̣̜͖̱͚̞̞̝̝̭̖͕͓͕͇̖̜̭̠͖̼̯̼̠̹͔̲͔̟͕̱̘̹̗͙̪̥̳͓̳͖̞̻͉͈̮̯̲̘̱̱̞̜̖̞̣̱ͮͧͫ͂͒ͤͣ̌̽ͨͪ͒̄̄̉̒̊ͩ̅͆̒̎̇̆͆ͪ̈́͛̉̍̏́̄̈́̽̔̍̎̂ͬ̆͗͌̔ͫ͆̀́͑̈́ͤ́ͯ̇ͧ̾͂̐̋̉̊ͦͥͫͧ͆ͨ̽̒̃͊̒̎͊̇̽̓̒ͬ̐̈́̀́́̍̈́̆̉ͭͪ̾ͭ̈́͛͑̽͐ͬ̈ͧͧ̍̐̑̓ͥ̔̾͐́̎̎͛ͮ͑ͤ̃̉ͦ̍͒ͩ̃̌̎͗̈́̐̉͐͐͌̄̀̓͆̉̌̎͂ͨͩͬ̾̊͋ͪ̎̑̀͘̚͘͘̚͘͘͘̕͟͟͢͟͟͟͜͝͠͞͝͝͝͝͡ͅͅͅͅ͏͏̡̡̛̙̣͉̪̬̗̳̱̤̥̪̮̮̟̥̠͚̼͉̥ͯ̓̂́͐̄̉̇ͣ́ͪ̅̈̃̚͜͟;̀͒̏̃ͦ̈́̾̀́̎͢...[更多]', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/10/11', '5');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19cef337549d5d0200', '33f1ed19cef337549d5d0200', '517131', '1412953037', '435024179', '', '0', '村上春树与诺贝尔，小李子与奥斯卡，汪峰与头条，国足与世界杯，我与＿＿', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/10/10', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19d723f753aa500800', '33f1ed19d723f753aa500800', '517131', '1408705495', '435024179', '178109907,330995493,505139848', '6', '她是城市的白领Office Lady，他是城市的搬运工人，高中毕业后，二个人划着不同的青春轨迹，可是他们依然保持着恋人的关系，仅仅是保持着，白天，她在公司里喝正宗的雀巢咖啡，下班后，她吃他买来的廉价的冰棒。中午，她品味着公司里精致的饭菜。晚上，他带她去脏兮兮的饭馆吃并不正宗的兰州拉面 她一直认为，这样的恋情与自己的生活太不协调 从开始的那一天，便仿佛注定了某一种结局！他每天去接她，然后送她到所居住的公寓电梯口轻声道了晚安便匆匆离去那天她突然想撤娇便对他说：背我上去吧！ 他看了看电梯，电梯运转良好 然后他回头，说了声好 没问任何理由，他背着她，慢慢向上爬 爬到一半他累了 问她：休息一下好不好？ 她突然来了兴致，娇嗔着说不行他就真的没有休息，一直爬到她所居住的13楼 她问他累不累？ 他说累。比搬运家具还累， 她知道他说的是真的，她有了一丝感动！ 但他们还是分手了！ 因为有时候，仅有感动，并不能够将爱情维持！ 爱情的本身，除了感动，好像还有太多的琐碎事！ 城市里并不缺一个搬运工人，所以他回到乡下 他偶尔会打电话给她，告诉她他现在种着一些农作物 赚了一点钱 她听着，淡淡的 那时她已有了新的男友...[更多]', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/08/22', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1963edb75344a40100', '33f1ed1963edb75344a40100', '517131', '1404562786', '435024179', '593297240,1325703628', '2', '时间老是不够用啊～～', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/07/05', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed190ac5b253de520c00', '33f1ed190ac5b253de520c00', '517131', '1404224778', '435024179', '505139848,593297240,865845773', '8', '黄昏，街边，小卖部。\n\n人，男人，两个男人，一老一少，隔着柜台伫立着。\n“是你？”\n“是我。”\n“你来了。”\n“我来了。”\n“你不该来。”\n“我已经来了。”\n“你毕竟还是来了。”\n“我毕竟还是来了。”\n\n沉默，良久的沉默。\n仿佛泥塑木雕的两人，对峙着，那夕阳却越发斜了。\n“你来干什么？”老者最终打破沉默。\n“打酱油。”干脆利落，一字一顿，没有半点迟疑。\n老者沉吟少顷，缓缓道：“打多少钱一斤的？”\n“一块。”依然干脆利落，不带一丝犹豫。\n那人的脸色已变了，道：“你知道我这里从不卖一块钱一斤的酱油。”\n“我只要一块钱一斤的酱油。”\n“可当真？”\n“当真！”\n卖酱油的盯着眼前的这个人，他非常年轻，但是他的眼睛，任何人看了都不会忘记，那是夜一样的宁静，海一般的深邃。\n他知道眼前的少年决非常人，但他也知道，一块钱一斤的酱油，他是决不会卖的。\n周围还是那么寂静，死一样的寂静。\n夕阳已渐渐要落下去了，他看了看远处的夕阳，觉得说不出的恐惧。\n他苦笑道：“你一定要买一块钱一斤的么？”\n“一定！”\n“若我不卖给你呢？”\n“你大可试试！”\n沉默，死一样的沉默。\n许久，他抬眼望着少年，咬牙道：“好，我就卖你一...[更多]', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/07/01', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19393cb0536fe90000', '33f1ed19393cb0536fe90000', '517131', '1404058680', '435024179', '593297240', '1', '终究是空，不虚此行。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/06/30', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1957eaa653b6180200', '33f1ed1957eaa653b6180200', '517131', '1403447894', '435024179', '1325703628', '1', '<a  href=\"http://www.urlshare.cn/umirror_url_check?srctype=touch&amp;apptype=3ghtml&amp;loginuin=435024179&amp;plateform=qzone&amp;url=http%3A%2F%2Fwww.xietaotao.cn%2Fshuoshuo%2F&amp;src_uin=435024179&amp;src_scene=311&amp;cli_scene=getApplist\">http://www.xietaotao.cn/shuoshuo/</a>', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/06/22', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19fecba253059a0200', '33f1ed19fecba253059a0200', '517131', '1403177981', '435024179', '1187938626,1325703628', '2', '每天都有一个声音在说，“下次不能这样搞了”，然后每当这时就会有另外一个声音“不要跟自己过不去”。可能你会问究竟是什么事，那我可以告诉你有很多，比如中午吃什么，晚上吃什么，今晚几点睡，等下玩不玩游戏，周末是睡觉还是干嘛，下午加不加班诸如此类。然后这个时候就会飘来一个声音“不要在意这些细节”，然后立马就会有“一屋不扫，何以扫天下”，反驳这句的就是“成大事者，不拘小节”，然后又“不积硅步何以至千里”然后又…唉。不说了，吃饭去。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/06/19', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19bab46d53e2890000', '33f1ed19bab46d53e2890000', '517131', '1399698618', '435024179', '505139848,1325703628', '2', '0.0', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/UaGFfggKDAu*cfwyGXp7iQNWyW4Pp6Dac3eADBhQz44!/b/dGXWiWbrCgAA&ek=1&kp=1&pt=0&bo=uAGhH7gBoR8BACc!&su=084736625#sce=30-1-1&rf=-311-0', '440,8097', '2014/05/10', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1951d35853bd1f0100', '33f1ed1951d35853bd1f0100', '517131', '1398330191', '435024179', '671814581,1005064104,1187938626', '3', '每天看到空间动态，就想问你们到底是从哪里转来这些乱七八糟的东西，能发点有意义的东西么？比如妹纸就应该多爆照，有沟必火。骚年就应该多发福利最好是磁力链接。不然我是不会给你们点赞的。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/04/24', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed190adb5753db6e0600', '33f1ed190adb5753db6e0600', '517131', '1398266631', '435024179', '335877592,1325703628', '2', '土豪就是土豪，我等屌丝只能膜拜', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/PQ5rVgQAPYafva*qY5URUxojIFtAFb5LuzNDATdFUDs!/b/dFa0XmW.KQAA&ek=1&kp=1&pt=0&bo=gAJVA7AEQAYBCAk!&su=0227136561#sce=30-1-1&rf=-311-0', '640,853', '2014/04/23', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19b88d3d537ce30a00', '33f1ed19b88d3d537ce30a00', '517131', '1396542901', '435024179', '449270404,505139848,506444235', '7', '土豪就是土豪，我等屌丝只能膜拜', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/CkffDUoaKXwZaSw6FCMwLMZ8UYSKRM5RD6l8pqQW8GQ!/b/dMAs7mXxDAAA&ek=1&kp=1&pt=0&bo=gAJVA8gEYAYBCFE!&su=0257883745#sce=30-1-1&rf=-311-0', '640,853', '2014/04/04', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1972123053c48e0100', '33f1ed1972123053c48e0100', '517131', '1395659376', '435024179', '593297240,1005064104,1162519806', '4', '这一下雨我就知道肯定要换袜子了，屌丝生活为何如此艰难', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/03/24', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19c03020535c3d0700', '33f1ed19c03020535c3d0700', '517131', '1394618558', '435024179', '1315389943', '1', '马来：啊，我的飞机失踪了 越南：不要着急，我来帮你找～ 越南：亲，是不是这个？ 马来：no～ 越南：这个呢？ 马来：no～ 越南：嗯，让我再仔细找找，这个呢？ 马来：no～不过我们有了飞机的新线索越南：哦！在哪里？我马上赶过去～ 马来：马六甲 越南：友尽～＂', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/03/12', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1953431453bcd40d00', '33f1ed1953431453bcd40d00', '517131', '1393836882', '435024179', '877377379', '1', '同学你懂的，QQ建议隐身，号码拉黑。不谢，请叫我雷锋。', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/c79VGrjQNMlgFNTS9FPHZKOVZy4Ya0QYKcpn01gGw8c!/b/dGW3ymSaIAAA&ek=1&kp=1&pt=0&bo=TwFHAk8BRwIBACc!&su=070928577#sce=30-1-1&rf=-311-0', '335,583', '2014/03/03', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed191ec50053b2680d00', '33f1ed191ec50053b2680d00', '517131', '1392559388', '435024179', '431725127,1187938626,1285240518', '3', '求扫', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/2Y55in4or*u8o9hEUhl1KKccWvBumnGjsSOIJ9UeNeg!/b/dP*dJmcZBAAA&ek=1&kp=1&pt=0&bo=AgECAQIBAgEBACc!&su=0149451889#sce=30-1-1&rf=-311-0', '258,258', '2014/02/16', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed192fa6f752f2b80600', '33f1ed192fa6f752f2b80600', '517131', '1391961644', '435024179', '443743505,593297240,940607643', '5', '东莞是个好地方，谢谢ccav。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/02/10', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19de3ef25209680600', '33f1ed19de3ef25209680600', '517131', '1391607515', '435024179', '593297240,1353728291', '2', 'you can you up,no can no BB .\nlove play play,no play roll.', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/02/05', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed196165ef52ae680700', '33f1ed196165ef52ae680700', '517131', '1391420768', '435024179', '410197948', '1', '人才', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2014/02/03', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed191d22a4527a9f0000', '33f1ed191d22a4527a9f0000', '517131', '1386488348', '435024179', '541191296', '1', 'ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้  ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้  ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/12/08', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19c820a452303d0900', '33f1ed19c820a452303d0900', '517131', '1386488008', '435024179', '', '0', 'ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้  ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้  ส้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้้', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', null, null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19fc8e875274a40e00', '33f1ed19fc8e875274a40e00', '517131', '1384615677', '435024179', '', '0', null, 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/ArIAKwE9GNUlNHIGUlnzIQXqmT8j8oXOv9qKv90U5ys!/b/dC1dPplbEQAA&ek=1&kp=1&pt=0&bo=9AGmAfQBpgECACQ!&su=0105693857#sce=30-1-1&rf=-311-0', '500,422', '2013/11/16', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed193f388252beb40c00', '33f1ed193f388252beb40c00', '517131', '1384265791', '435024179', '', '0', '恨一个人,就去当城管', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/11/12', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19a81b5c5211290400', '33f1ed19a81b5c5211290400', '517131', '1381768104', '435024179', '305968810', '1', '总结下遇到奇葩问题的全部解决方案。开机密码忘记了，输入法切换不了，电脑没声音，网页打不开等电脑异常一律电脑城重装系统，宽带密码忘记了，qq被盗，淘宝密码忘记，支付宝密码忘记一律客服或者换账号，其它问题请联系我们首席技术工程师@{uin:178880154,nick:周雷,who:1}@{uin:449270404,nick:骆祥,who:1}。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/10/15', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19e45a595200ff0e00', '33f1ed19e45a595200ff0e00', '517131', '1381587683', '435024179', '', '0', '最近没事就在搞这个，主要是一回来就有几个土豪看电影，那网速你懂的', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/pbRPAyiSarFrASdPr.x.GiuH1DqJ6CV.w7d1k2zPS0E!/b/dHGCMGRkFAAA&ek=1&kp=1&pt=0&bo=hwKSCYcCkgkBCC8!&su=079009649#sce=30-1-1&rf=-311-0', '647,2450', '2013/10/12', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1907a945524e550400', '33f1ed1907a945524e550400', '517131', '1380296967', '435024179', '410038264', '1', '[em]e134[/em][em]e134[/em][em]e134[/em][em]e134[/em]围观', 'http://imgcache.qq.com/ac/qzone_v5/app/photo/sysbussy.jpg', '0,0', '2013/09/27', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed1973ba41528eca0a00', '33f1ed1973ba41528eca0a00', '517131', '1380039283', '435024179', '', '0', '我需要时间思考，很多很多。我将止步于。。。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/09/25', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19f3a10852f3070700', '33f1ed19f3a10852f3070700', '517131', '1376297459', '435024179', '', '0', '妹纸，你这样让我觉得很不和谐呀。。。看到来报个道。', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/08/12', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed197eb40352bfb00400', '33f1ed197eb40352bfb00400', '517131', '1375974526', '435024179', '645871997', '1', '这短信高富帅是无法理解的，是吧，你们都是高富帅。', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/fCKA40NdZpxqFFIzaxpAglWKG4SJSbLp.kycqroyXZQ!/b/dPfwKmFRKAAA&ek=1&kp=1&pt=0&bo=4AFWAwAAAAABAJM!&su=0189008481#sce=30-1-1&rf=-311-0', '480,854', '2013/08/08', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed192580f35193550c00', '33f1ed192580f35193550c00', '517131', '1374912549', '435024179', '', '0', '貌似一个月又要到底了，但见时光流似箭，岂知天道曲如弓[em]e125[/em]', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/MQ73KOP8GqGS48CQPADEp0nwfH5BkTFZpKFNY0OjtA8!/b/dJ7k*WKeCQAA&ek=1&kp=1&pt=0&bo=hAKOAYQCjgEBACc!&su=049833809#sce=30-1-1&rf=-311-0', '644,398', '2013/07/27', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19de01ed51f6d40e00', '33f1ed19de01ed51f6d40e00', '517131', '1374487006', '435024179', '', '0', 'Dodolog：《Fairy COCO》No.4\n想要说明的是，我对这种拥有特殊压抑气氛的妹纸图没有兴趣', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/hH4kFY*N*e9fXM6ulSC43Ybopu.aNaFG5c55*ldYw9I!/b/dPYzYmLaBgAA&ek=1&kp=1&pt=0&bo=xACgD8QAoA8KCCQ!&su=048812177#sce=30-1-1&rf=-311-0', '196,4000', '2013/07/22', null);
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed19e9b2e35162f70b00', '33f1ed19e9b2e35162f70b00', '517131', '1373876969', '435024179', '690266050', '1', 'Fairy COCO No.3', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/E1SkDNIpVFeCJnYT.rih6WJVUmWiGYXj01NlObu1Hvo!/b/dIM4.WK9BQAA&ek=1&kp=1&pt=0&bo=xACgD8QAoA8KCCQ!&su=098692705#sce=30-1-1&rf=-311-0', '196,4000', '2013/07/15', '3');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed196195da51e3030800', '33f1ed196195da51e3030800', '517131', '1373279585', '435024179', '', '0', '[em]e143[/em]', 'http://m.qpic.cn/psb?/ac58416c-1961-416c-9abf-8265152cb1d7/rdvXPdgoF2YsEg.3aFZ6EvQyGXMuAH7duWs2dY942RU!/b/dARzLGHPGgAA&ek=1&kp=1&pt=0&bo=WAOAAgAAAAABAP4!&su=0249543617#sce=30-1-1&rf=-311-0', '856,640', '2013/07/08', '1');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/435024179/mood/33f1ed193febd651368c0d00', '33f1ed193febd651368c0d00', '517131', '1373039423', '435024179', '1353728291', '1', '[em]e124[/em]', 'http://qlogo3.store.qq.com/qzone/435024179/435024179/100', '0,0', '2013/07/05', '1');
