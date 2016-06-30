/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : shuoshuo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-06-30 21:03:48
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
INSERT INTO `ss_accredit` VALUES ('435024179', null, 'o0435024179', '@sWazHCMe5', 'o0435024179', 'C0m1CEFBEZ8MKVjolV9Gbk5u5zhcWkcht1JmRxxt-qM_', '63vkCYmJpgMrN2x0cfnSolGLbYJfAiNuifMPVeQMHZw_', '591109052', 'f1b85fd576e713747e81360aec4e1daab7014ced655ea51517f8044ec8f40744', '1959053152');

-- ----------------------------
-- Table structure for `ss_friend_comment`
-- ----------------------------
DROP TABLE IF EXISTS `ss_friend_comment`;
CREATE TABLE `ss_friend_comment` (
  `uin` varchar(13) NOT NULL COMMENT '好友qq',
  `cellid` varchar(256) NOT NULL COMMENT '说说的key 不知道是与qq唯一还是全表唯一',
  `fuin` varchar(13) NOT NULL COMMENT '评论者qq',
  `commentid` int(11) NOT NULL COMMENT '评论id',
  `commentpic` varchar(256) DEFAULT NULL COMMENT '评论图片',
  `content` text COMMENT '内容',
  `referid` int(11) DEFAULT NULL COMMENT '来源id',
  `time` int(11) DEFAULT NULL,
  `replynum` int(11) DEFAULT NULL COMMENT '回复数量',
  KEY `cellidfuin` (`cellid`(255),`fuin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_comment
-- ----------------------------
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627085edc0f56fdde0600', '1040333054', '1', null, '钟秀泰说他不服[em]e328514[/em][em]e328514[/em][em]e328514[/em]', '0', '1443880498', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627085edc0f56fdde0600', '1904157220', '2', null, '也是我的最爱', '0', '1443881746', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '1904804598', '13', null, '美女近来在哪啊', '0', '1432779399', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '277479725', '14', null, '姐们儿！迟来的生日快乐', '0', '1432780504', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '29306912', '15', null, '妹妹生日快乐！', '0', '1432792599', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '568845995', '16', null, '妹妹生日快乐！', '0', '1432795133', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '386637979', '17', null, '生日快乐！！', '0', '1432817300', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '1791929056', '18', null, '生日快乐！', '0', '1432822065', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '358248940', '19', null, '迟到了，生日快乐乐乐。。～～[em]e163[/em]', '0', '1432921648', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '3277660657', '20', null, 's笑 , 對 於 尓 、俄 無 視 於 睹 。', '0', '1433513933', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '2064536881', '21', null, 't9我有一只小毛驴、我从来也不骑。', '0', '1434363028', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '3636270860ea6555b2b60c00', '2091223326', '22', null, '[em]e112[/em][em]e7238[/em][em]e7358[/em]你是相信我爱你 还是相信世界上有鬼。', '0', '1435128290', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '871645621', '11', null, '一切都成为将就', '0', '1421887858', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '272019065', '12', null, '这句话好经典，', '0', '1421889014', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '1791929056', '13', null, '这话说的好', '0', '1421892171', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '281529535', '14', null, '这背影是你吗？', '0', '1421892851', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '505665920', '15', null, '表情错噶冒一点，应该最特别的那个[em]e7116[/em]', '0', '1421894813', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '827914563', '16', null, '要是我那时打拳皇有个妹纸陪我我现在也不会那么菜了', '0', '1421900940', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '553417593', '17', null, '[em]e120[/em][em]e120[/em]', '0', '1421914166', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '423090175', '18', null, '亲，背个书包去打电动你就是最特别的，干的漂亮.为你点赞！', '0', '1421941211', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '626461752', '19', null, '好地方呀，我也老喜欢玩的', '0', '1421992597', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708ccb5bf5410930800', '545606420', '20', null, '干嘛呢？天下就没有了吗？', '0', '1422093095', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '423090175', '3', null, '哈哈哈，代表月亮消灭你', '0', '1409489211', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '344712192', '4', null, '强行美少女', '0', '1409490501', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '443810062', '5', null, '赞[em]e328077[/em]', '0', '1409492005', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '1195498607', '6', null, '偷偷摸摸出去浪了圈呀。', '0', '1409492100', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '854537856', '7', null, '都快要不认得你里[em]e110[/em]', '0', '1409495276', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '1066933552', '8', null, '[em]e112[/em]都好萌', '0', '1409496202', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '754966116', '9', null, '是我的小不点', '0', '1409501603', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '365456409', '10', null, '单眼皮[em]e128[/em][em]e128[/em][em]e128[/em][em]e128[/em][em]e128[/em]', '0', '1409540138', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '125544635', '11', null, '晒黑了', '0', '1409562056', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708b9170354aba50100', '1329997407', '12', null, '这个说说写的好，平淡中显示出不凡的文学功底，可谓是字字珠玑，句句经典，是我辈应当学习之典范。就小说艺术的角度而言，这段说说可能不算太成功，但它的实验意义却远远大于成功本身。正所谓：“一马奔腾，射雕引弓，天地都在我心中！”真不愧为无厘界新一代的开山怪！逐 句地看完你的这个说说以后，我的心久久不能平静，震撼啊！为什么会有如此好的说说！我纵横QQ空间多年，自以为再也不会有任何说说能打动我， 没想到今天看到了如此精妙绝伦的这样一段说说。是你让我深深地理解了‘人外有人，天外有天’这句话。谢谢你！在看完这说说以后，这说说以后，我没有立即回复，因为我生怕我庸俗不堪的回复会玷污了这空间少有的说说。但是我还是回复了， 因为我觉得如果不能在如此精彩的说说后面留下自己的足迹，那我死也不会瞑目的！能够在如此精彩的说说后面留下自己的足迹是多么骄傲的一件事啊！请原谅我的自私！ 我知道无论用多么华丽的辞藻来形容楼主您说说的精彩程度都是不够的，都是虚伪的，所以我只想说一句：您的说说太好了！我愿意一辈子的看下去！这段说说构思新颖，题材独具匠心，段落清晰，情节诡异，跌宕起伏，主线分明，引人入胜啊……', '0', '1410266349', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '1223821118', '7', null, '学姐，在云南呢[em]e102[/em]', '0', '1407940371', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '1511614401', '8', null, '大理。好地方啊。', '0', '1407940977', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '365456409', '9', null, '原来在云南玩[em]e141[/em]', '0', '1407941255', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '871645621', '10', null, '那一年，我在洱海倾听自己，这一年自己再出发，还记得牛背山国际青年旅社，我在墙壁上留下了一首诗，当时还好像和你分享，这样的时光真好', '0', '1407944133', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '281529535', '11', null, '好漂亮呀！', '0', '1407945710', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '754966116', '12', null, '采霞好漂亮，看到好的多发些让我们分享', '0', '1407946175', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '1107450107', '13', null, '好美', '0', '1407972501', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '409153477', '14', null, '多么令人陶醉的景色，不仅让人泛起童年的回忆。', '0', '1407985934', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '985856339', '15', null, '真的好美呀', '0', '1407995943', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708f870eb53a4120f00', '2331742353', '17', null, '是[em]e166[/em]e', '0', '1415166052', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '1223821118', '19', null, '学姐，生日快乐[em]e113[/em]', '0', '1401288440', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '871645621', '20', null, '一年一年，守望过去，拥抱未来。时光会把你变的很美好', '0', '1401288490', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '281529535', '21', null, '年轻真好！', '0', '1401288947', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '562150797', '22', null, '生日快乐', '0', '1401291149', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '952328399', '23', null, '[em]e177[/em]', '0', '1401291371', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '416191091', '24', null, '生日快乐[em]e177[/em][em]e177[/em][em]e177[/em]', '0', '1401293205', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '530511727', '25', null, '原来你一直叫南瓜', '0', '1401300508', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '593376217', '26', null, '生日快乐', '0', '1401321449', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '851726353', '27', null, '生日快乐', '0', '1401329557', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708e8dd855347820500', '75709277', '28', null, '生日快乐[em]e177[/em]', '0', '1401330946', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708df8a6f5371440e00', '754966116', '1', null, '有你我就是最幸福。', '0', '1399821580', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708df8a6f5371440e00', '125544635', '2', null, ' 你回家去了。', '0', '1399858750', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708df8a6f5371440e00', '1697982841', '3', null, '有点像哈', '0', '1399859036', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '36362708df8a6f5371440e00', '810526156', '4', null, '母女两真像，特别是眉毛。', '0', '1399893312', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '827914563', '2', null, '我来保护你', '0', '1397188283', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '1040145213', '3', null, '？？', '0', '1397188870', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '446734139', '4', null, '加油～！[em]e178[/em]', '0', '1397191335', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '467526636', '5', null, '加油怎么了', '0', '1397192710', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '125544635', '7', null, '[em]e132[/em]怎么回事 小姑娘', '0', '1397193188', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '365456409', '8', null, '杂了阿？', '0', '1397193383', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '784881489', '9', null, '[em]e178[/em][em]e178[/em][em]e178[/em]', '0', '1397200216', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '307645563', '10', null, '我记住你了 ', '0', '1397217000', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '455752400', '11', null, '咋了', '0', '1397229684', null);
INSERT INTO `ss_friend_comment` VALUES ('136787510', '363627087164475339500600', '915903499', '12', null, '加油美女', '0', '1397277701', null);

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
  `commentid` int(11) NOT NULL COMMENT '说说评论id',
  `replypic` varchar(256) DEFAULT NULL,
  `content` text,
  `time` int(11) DEFAULT NULL,
  `referid` int(11) DEFAULT NULL,
  `replyid` int(11) DEFAULT NULL COMMENT ' 回复id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_replys
-- ----------------------------

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
  `cmtnum` int(11) DEFAULT NULL COMMENT '评论数量',
  UNIQUE KEY `uinandcellid` (`cellid`(255),`uin`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_friend_shuoshuo
-- ----------------------------
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/363627085edc0f56fdde0600', '363627085edc0f56fdde0600', '516107', '1443880030', '136787510', '435024179,29306912,123919272,348564808,429672974,505186179,582032581', '19', '那些年，我们上课偷偷玩过的4399[嘘][嘘]。 配图我的最爱。 哈哈哈。 ', 'a:1:{i:0;s:130:\"http://b373.photo.store.qq.com/psb?/V138sfdV3DeTzW/du2NQzpj0wS.EiqEA5ssFpmi*O9U0mPLN7h8Xe3RU3U!/b/dHUBAAAAAAAA&bo=gAKAAgAAAAAFACM!\";}', 'a:1:{i:0;s:7:\"640,640\";}', '10-03 21:47', '2');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/3636270860ea6555b2b60c00', '3636270860ea6555b2b60c00', '516107', '1432742496', '136787510', '29306912,97623125,229780020,292608210,296405166,344712192', '42', '今天最后一句生日快乐。 对自己说。 [em]e258388[/em]', 'a:1:{i:0;s:129:\"http://b37.photo.store.qq.com/psb?/V138sfdV3DeTzW/zG.YIPr7MFB1yvSdnRRdNGX9wixt8.Orzuca5VubMCA!/b/dCUAAAAAAAAA&bo=gAJwBAAAAAABANE!\";}', 'a:1:{i:0;s:8:\"640,1136\";}', '05-28 00:01', '22');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/36362708ccb5bf5410930800', '36362708ccb5bf5410930800', '516107', '1421850060', '136787510', '78934017,86552055,125544635,173511370,229145223,272019065', '41', ' 如果不能把我当成最特别的那个[em]e328584[/em]，我宁愿和自己谈恋爱[em]e328542[/em]。 ', 'a:1:{i:0;s:130:\"http://b198.photo.store.qq.com/psb?/V138sfdV3DeTzW/C0ZM5ZpeEb18NVJK9K1AOzZISgRUm2*U3SILxM6HYkE!/b/dCGnDXaAKwAA&bo=VAIwAgAAAAABAEM!\";}', 'a:1:{i:0;s:7:\"596,560\";}', '01-21 22:21', '20');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/36362708b9170354aba50100', '36362708b9170354aba50100', '516107', '1409488825', '136787510', '754966116,29306912,39623692,125544635,229145223,229780020', '53', ' 坏脾气的小小美少女战士要回归啦。 结束了27天的旅行，拥抱生活，继续奋斗。 [em]e328513[/em][em]e328513[/em][em]e328513[/em]', 'a:3:{i:0;s:130:\"http://b193.photo.store.qq.com/psb?/V138sfdV3DeTzW/iD83aD.1hPjclEIEm7lO1xz70B*c67OwvV4pnsYrEuY!/b/dL07EXNrBQAA&bo=gAJ.AwAAAAABANg!\";i:1;s:130:\"http://b192.photo.store.qq.com/psb?/V138sfdV3DeTzW/3GDhpe**zDs7TEsNGyPjw8PcO8Jgh8KuW2HYxmXwNUk!/b/dNU9gHLnCAAA&bo=QAHUAAAAAAABALI!\";i:2;s:130:\"http://b193.photo.store.qq.com/psb?/V138sfdV3DeTzW/EwESAj858bliHD5oNMrYUBSHOIexGSYIv5kXn*6Qf48!/b/dHEnEXNqBQAA&bo=gAJUAwAAAAABAPI!\";}', 'a:3:{i:0;s:7:\"640,894\";i:1;s:7:\"320,212\";i:2;s:7:\"640,852\";}', '08-31 20:40', '12');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/36362708f870eb53a4120f00', '36362708f870eb53a4120f00', '516107', '1407938808', '136787510', '754966116,33034358,75709277,125544635,229145223,275081853', '38', ' 只想活得坦然。 在每一个夕阳夕下的日子里，想起那片晚霞，都觉得温暖依旧。 （7年前写给自己的话）', 'a:5:{i:0;s:130:\"http://b141.photo.store.qq.com/psb?/V138sfdV3DeTzW/aKGQK79MrBDNyftfixy2mZ23I4nARJaJMaCo3J0FmjA!/b/dF8.GlQQIgAA&bo=WgOAAgAAAAABAPw!\";i:1;s:130:\"http://b141.photo.store.qq.com/psb?/V138sfdV3DeTzW/EPDo.U5fhsf3vvxzvBHauLD5FRNJV0GC2PihU8FjB7Y!/b/dD2ID1QIIgAA&bo=WgOAAgAAAAABAPw!\";i:2;s:130:\"http://b143.photo.store.qq.com/psb?/V138sfdV3DeTzW/UKsY31GEdK.iTixWq2t**BwLkybl9KeR7gGMAmgT.Ps!/b/dO7eSVUrFgAA&bo=WgOAAgAAAAABAPw!\";i:3;s:130:\"http://b141.photo.store.qq.com/psb?/V138sfdV3DeTzW/q2CZ96UsBwJo9ZtlFXnz7T9wESmEr2wYwshJ8EYVpzI!/b/dF3GGFQHIgAA&bo=VAOAAgAAAAABAPI!\";i:4;s:130:\"http://b139.photo.store.qq.com/psb?/V138sfdV3DeTzW/Yp36bo9rrahceE7zhlbSr47h4F3dU8O5C0KUVt*hnUA!/b/dBQi6VLELQAA&bo=VgOAAgAAAAABAPA!\";}', 'a:5:{i:0;s:7:\"858,640\";i:1;s:7:\"858,640\";i:2;s:7:\"858,640\";i:3;s:7:\"852,640\";i:4;s:7:\"854,640\";}', '08-13 22:06', '16');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/36362708e8dd855347820500', '36362708e8dd855347820500', '516107', '1401282024', '136787510', '29306912,123919272,125544635,173511370,191423463,229145223', '62', ' 5月27日之前，一直以为走过二十岁这个美好的年纪，铭记在心、不舍的太多，会让我步伐沉重。过了这一天，却发现能坦然接受成长的洗礼，充满快乐和力量。原来是因为有你们啊。谢谢你们～ [em]e328123[/em][em]e328123[/em][em]e328123[/em] ', 'a:3:{i:0;s:130:\"http://b279.photo.store.qq.com/psb?/V138sfdV3DeTzW/ix1gwbaLSu2O1eVnIaAE3H.6nZHVL6sr5vcC8TWdBwU!/b/dHLGU6ZaGAAA&bo=gAJ.AwAAAAABANg!\";i:1;s:130:\"http://b278.photo.store.qq.com/psb?/V138sfdV3DeTzW/B29COn7ykJhtGTeg9*yS0sPHbSUXbLqAj.1NRYkB6lc!/b/dKOYvKU8GAAA&bo=gAJ.AwAAAAABANg!\";i:2;s:130:\"http://b279.photo.store.qq.com/psb?/V138sfdV3DeTzW/7b6WGUGqhMN0StpCWDBXh3sAaF8qwK5e3Sh4wGYNuIk!/b/dH03VaZVGAAA&bo=gAJ.AwAAAAABANg!\";}', 'a:3:{i:0;s:7:\"640,894\";i:1;s:7:\"640,894\";i:2;s:7:\"640,894\";}', '05-28 21:00', '28');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/36362708df8a6f5371440e00', '36362708df8a6f5371440e00', '516107', '1399818975', '136787510', '754966116,29306912,39623692,229145223,229780020,281529535', '46', '你是我的光芒。心存感激被照耀着～ 祝福你，亲爱的妈妈。@{uin:754966116,nick:  零碎。,who:1} [em]e327880[/em]', 'a:1:{i:0;s:130:\"http://b279.photo.store.qq.com/psb?/V138sfdV3DeTzW/kZaoRq96uszzTdgObWISrKlHFyc4PM221GIf77iIoR8!/b/dMfkWabiDwAA&bo=gAJ.AwAAAAABANg!\";}', 'a:1:{i:0;s:7:\"640,894\";}', '05-11 22:36', '4');
INSERT INTO `ss_friend_shuoshuo` VALUES ('http://user.qzone.qq.com/136787510/mood/363627087164475339500600', '363627087164475339500600', '516107', '1397187697', '136787510', '386637979,419205743,446171196,578715951,593376217,594387159', '11', ' 第一次因为无助而哭泣。太没用，没保护好你们，希望你们好好的。这是需要被记住的。', null, null, '04-11 11:41', '11');

-- ----------------------------
-- Table structure for `ss_user`
-- ----------------------------
DROP TABLE IF EXISTS `ss_user`;
CREATE TABLE `ss_user` (
  `qq` varchar(13) NOT NULL COMMENT 'qq',
  `age` tinyint(3) DEFAULT NULL COMMENT '年龄',
  `birthday` tinyint(2) DEFAULT NULL COMMENT '生日',
  `birthmonth` tinyint(2) DEFAULT NULL COMMENT '生日 月',
  `birthyear` tinyint(4) DEFAULT NULL COMMENT '生日 年',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `constellation` varchar(32) DEFAULT NULL COMMENT '星座',
  `country` varchar(32) DEFAULT NULL COMMENT '国家',
  `avatarUrl` varchar(128) DEFAULT NULL COMMENT '头像',
  `nickname` varchar(128) DEFAULT NULL COMMENT '昵称',
  `province` varchar(32) DEFAULT NULL COMMENT '省',
  `qqvip` tinyint(4) unsigned DEFAULT NULL COMMENT 'vip等级',
  `gender` tinyint(1) DEFAULT NULL COMMENT '性别 1=男 0=女',
  `from` varchar(32) DEFAULT NULL COMMENT '来自',
  `realname` varchar(128) DEFAULT NULL COMMENT '备注',
  `signature` varchar(256) DEFAULT NULL COMMENT '签名',
  PRIMARY KEY (`qq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_user
-- ----------------------------
INSERT INTO `ss_user` VALUES ('1016068574', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/1016068574/1016068574/100?1321961016', '首席吊丝', null, null, '1', '杭州', '', null);
INSERT INTO `ss_user` VALUES ('1040145213', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1040333054', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/1040333054/1040333054/100?1402221236', '不乱于心…', null, null, '1', null, '', null);
INSERT INTO `ss_user` VALUES ('1046300698', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/1046300698/1046300698/100?1411056637', 'hyz', null, null, '2', null, '', null);
INSERT INTO `ss_user` VALUES ('1048333852', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1048753879', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1066933552', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1107140933', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1107450107', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1120377108', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1173849969', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1195498607', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('121861986', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1223821118', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('123099485', '0', '0', '0', '0', '', '-1', '', 'http://qlogo2.store.qq.com/qzone/123099485/123099485/100?1417184777', 'sand.', '', null, null, null, '付心月', '当你不再期待什么东西的时候，你会得到一切 ');
INSERT INTO `ss_user` VALUES ('123919272', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('125544635', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1290989772', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/1290989772/1290989772/100?1332757005', '染指间″无梦无你', null, null, '1', '杭州', '', null);
INSERT INTO `ss_user` VALUES ('1325703628', '23', '13', '13', '127', '长沙', '4', '中国', 'http://qlogo1.store.qq.com/qzone/1325703628/1325703628/100?1355131183', '诚芯笔记本维修中心', '湖南', null, '1', '长沙', '周雷', '');
INSERT INTO `ss_user` VALUES ('1329997407', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1334837517', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1355051530', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('136648490', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('136787510', '0', '0', '0', '0', '', '-1', '', 'http://qlogo3.store.qq.com/qzone/136787510/136787510/100?1291965444', '          美年达。', '', null, null, null, '', '');
INSERT INTO `ss_user` VALUES ('1397639321', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1422077603', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1427543184', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1430668072', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1511614401', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('154894476', '0', '0', '0', '0', '深圳', '2', '中国', 'http://qlogo1.store.qq.com/qzone/154894476/154894476/100?1408114155', '火之灵', '广东', '7', '1', '深圳', '全喜阳', '');
INSERT INTO `ss_user` VALUES ('1565499735', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1601367174', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1608606186', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1614186493', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('164483642', '0', '0', '0', '0', '', '-1', '', 'http://qlogo3.store.qq.com/qzone/164483642/164483642/100?1442214114', 'Mas ', '', null, null, null, '', '[url=http://user.qzone.qq.com/164483642][img]http://r.qzone.qq.com/cgi-bin/cgi_get_user_pic?openid=0000000000000000000000001B3E19B2&pic=1.jpg&key=e561d462af8a2ad73d9df21826e31605[/img][/url]');
INSERT INTO `ss_user` VALUES ('1650695091', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1697982841', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1743980874', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1791929056', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/1791929056/1791929056/100?1388668344', 'ぁ Simple', null, null, '2', '杭州', '', null);
INSERT INTO `ss_user` VALUES ('1904157220', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/1904157220/1904157220/100?1393681078', '染指阳光、向日葵永不落泪', null, null, '2', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('1904804598', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/1904804598/1904804598/100?1386945973', '似水流年', null, null, null, '长沙', '', null);
INSERT INTO `ss_user` VALUES ('1957466871', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1982027863', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('1984107864', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2064536881', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/2064536881/2064536881/100?1445100024', '啊丁', null, null, '1', '沙坪坝', '', null);
INSERT INTO `ss_user` VALUES ('2073965129', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2091223326', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/2091223326/2091223326/100?1438015684', '会呼吸的痛', null, null, null, '赣州', '', null);
INSERT INTO `ss_user` VALUES ('214014524', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2197591332', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/2197591332/2197591332/100?1437670207', '水', null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2287229406', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2331742353', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2363420915', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('236471398', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2402191463', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2421073698', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('243184724', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('243200716', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/243200716/243200716/100?1359471108', '☔️_下雨天', null, null, '2', '长沙', '曾丽', null);
INSERT INTO `ss_user` VALUES ('243520835', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2448741913', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('245315885', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('245463663', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/245463663/245463663/100?1289046098', '╰半夏微凉°', null, null, '2', '深圳', '', null);
INSERT INTO `ss_user` VALUES ('250547620', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('253247943', '24', '17', '17', '127', '长沙', '6', '中国', 'http://qlogo4.store.qq.com/qzone/253247943/253247943/100?1374674541', '井王爷丶', '湖南', null, '1', '长沙', '刘俊刚', '');
INSERT INTO `ss_user` VALUES ('2540285973', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('260477212', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('272019065', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/272019065/272019065/100?1393643073', '淡定', null, null, '1', '阿德拉尔', '', null);
INSERT INTO `ss_user` VALUES ('274583122', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('274675641', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('276969052', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/276969052/276969052/100?1446099026', '       ❤.筱青', null, null, '2', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('277252945', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/277252945/277252945/100?1451220702', '縴縴', null, '4', '2', null, '', null);
INSERT INTO `ss_user` VALUES ('277479725', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/277479725/277479725/100?1407169221', '心哥哥好哇塞', null, '6', '1', '青浦', '', null);
INSERT INTO `ss_user` VALUES ('278042527', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2782902700', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('279282136', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('280388061', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('281529535', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/281529535/281529535/100?0', '鹰', null, null, '1', '杭州', '', null);
INSERT INTO `ss_user` VALUES ('2818964423', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('282206914', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('282864085', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('2837352486', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('287919508', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('289990997', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('290178050', '0', '15', '15', '0', '海口', '-1', '中国', 'http://qlogo3.store.qq.com/qzone/290178050/290178050/100?1349560794', '好大一朵包菜', '海南', null, '2', '海口', '殷倚琴', '');
INSERT INTO `ss_user` VALUES ('2927687319', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('29306912', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/29306912/29306912/100?1434688224', '：仅此而已′', null, null, '2', '青岛', '', null);
INSERT INTO `ss_user` VALUES ('295555281', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('3033138245', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('305193262', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('306750733', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('307404118', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/307404118/307404118/100?1284554772', '        有时唱歌 *', null, null, '1', null, '', null);
INSERT INTO `ss_user` VALUES ('307645563', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('309729727', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('312126756', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('3139229145', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('3210830086', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('3277660657', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/3277660657/3277660657/100?1436465315', '如意', null, null, '1', '温州', '', null);
INSERT INTO `ss_user` VALUES ('3284965335', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('331303384', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('331973124', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('332163552', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('337265223', '25', '1', '1', '127', '深圳', '9', '中国', 'http://qlogo4.store.qq.com/qzone/337265223/337265223/100?1410400117', 'write less, do more', '广东', null, '1', '深圳', '石良钰', '[M][url=http://www.didaoy.cn][img]http://stat.wauee.com/ystext/images/df/ys_600_360.gif[/img][/url][/M]');
INSERT INTO `ss_user` VALUES ('342806204', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('344712192', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('345015642', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('345653801', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('3465591', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('347680765', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('358248940', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/358248940/358248940/100?1436002450', '空城', null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('359279089', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('359930269', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('361184533', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('363868136', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('365456409', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('369454864', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('371879874', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('375695540', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('379868559', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('383371806', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('383466723', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('383495451', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('385829824', '0', '0', '0', '0', '', '-1', '', 'http://qlogo1.store.qq.com/qzone/385829824/385829824/100?1416882687', 'ღ', '', '7', null, null, '程梓粮', '埋葬过去の悲哀, \n                                             隐藏蕞深de告白。');
INSERT INTO `ss_user` VALUES ('386637979', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/386637979/386637979/100?1367832792', '   我不吃苹果的。', null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('401754564', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('402041002', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('406441103', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/406441103/406441103/100?0', '☆心➹殇※', null, null, '2', '东莞', '', null);
INSERT INTO `ss_user` VALUES ('406536547', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('406827564', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('406966703', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('407987356', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('409153477', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('410197948', '23', '21', '21', '127', '益阳', '0', '中国', 'http://qlogo1.store.qq.com/qzone/410197948/410197948/100?1393242404', ' Josie ╮', '湖南', null, '2', '益阳', '钟晴', '           沒囿理甴ノ');
INSERT INTO `ss_user` VALUES ('411013948', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('416191091', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('419205743', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('423090175', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/423090175/423090175/100?1277525810', '爽歪歪', null, null, '1', null, '', null);
INSERT INTO `ss_user` VALUES ('425809975', '22', '8', '8', '127', '', '10', '中国', 'http://qlogo4.store.qq.com/qzone/425809975/425809975/100?1414665216', '蜜逗兔', '', null, '2', null, '王小霜', '[ffg,#FF0000,#FFFFFF]동방신기[/ft]');
INSERT INTO `ss_user` VALUES ('429672974', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('435024179', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/435024179/435024179/100?1334551307', '#1', null, '6', '1', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('4400420', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('441842119', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('443609325', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('443810062', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('446425462', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('446535047', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('446734139', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('449270404', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/449270404/449270404/100?1369215749', 'Superman也会被叫骆驼祥子', null, null, '1', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('451561740', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('452284075', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('452710869', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('455752400', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('457943839', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('461279854', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/461279854/461279854/100?1419397224', '_  lovely', null, null, '2', '北京', '', null);
INSERT INTO `ss_user` VALUES ('461500971', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/461500971/461500971/100?1452750390', '多好那该', null, null, '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('461510923', '23', '16', '16', '127', '长沙', '0', '中国', 'http://qlogo4.store.qq.com/qzone/461510923/461510923/100?1264255287', ' 尐 佩', '湖南', null, '2', '长沙', '贺佩君', '[M][url=http://ppt.cc/~Jzp][img]http://im.yku18268.ysportss.mobi:16918/img/jf2.gif?镁[/img][/url]vRㄣ[/M]');
INSERT INTO `ss_user` VALUES ('467526636', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('469862574', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('471772562', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('474825786', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('475821745', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('492942313', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('493195090', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('493362468', '23', '18', '18', '127', '深圳', '2', '中国', 'http://qlogo1.store.qq.com/qzone/493362468/493362468/100?1408009238', 'Waiting==', '广东', null, '2', '深圳', '曾思', '【人生】一半是现实，一半是梦想；【爱情】一半是激情，一半是执着；【幸福】一半是金钱，一半是满足；【工作】一半是马屁，一半是能力；【友谊】一半是牵挂，一半是提醒；【家庭】一半是依恋，一半是责任。');
INSERT INTO `ss_user` VALUES ('494539485', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('494803029', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('495952809', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('496953100', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('497592921', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/497592921/497592921/100?1364634656', '世无麒麟 ಥ_ಥ', null, null, '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('498541467', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('498948306', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('503302202', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('503341806', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('504528278', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('505186179', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('505665920', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/505665920/505665920/100?1425110908', '加多宝๑', null, '6', '1', null, '', null);
INSERT INTO `ss_user` VALUES ('510836996', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('512784523', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/512784523/512784523/100?1404826695', '装“不在乎', null, null, '2', '深圳', '', null);
INSERT INTO `ss_user` VALUES ('522036695', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('522088564', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('522579358', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('524505078', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('524917571', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('526413944', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('527223439', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('530511727', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('530855844', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('53345123', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/53345123/53345123/100?1266919170', 'о°Emperor。', null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('534291175', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('535768668', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/535768668/535768668/100?1439982744', '        Monkey.', null, '7', '1', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('540029342', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('545606420', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/545606420/545606420/100?1246194649', '永不服输的我', null, null, '1', '宁波', '', null);
INSERT INTO `ss_user` VALUES ('549301813', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('553417593', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/553417593/553417593/100?1346029872', '╭ι．渲蒅ゝ', null, null, '1', null, '', null);
INSERT INTO `ss_user` VALUES ('553433610', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('553591583', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/553591583/553591583/100?1406370039', 'Stubborn', null, null, '1', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('562150797', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('564336539', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('568845995', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/568845995/568845995/100?1321010557', '     D    ', null, null, '1', null, '', null);
INSERT INTO `ss_user` VALUES ('569403369', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/569403369/569403369/100?1339860592', 'Y.@窑蓝@.Y', null, null, '2', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('569797852', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('571487991', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('573726155', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('578871230', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('583520875', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('583710161', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/583710161/583710161/100?1370017260', 'の、舞影零乱﹌', null, null, '2', '衡阳', '', null);
INSERT INTO `ss_user` VALUES ('584100628', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('584399879', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('584507842', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('593376217', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('594387159', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/594387159/594387159/100?1319353460', '【愿。', null, null, '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('596774131', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('598487136', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/598487136/598487136/100?1444374617', '『Vamπre』', null, null, '1', null, '黄柳', null);
INSERT INTO `ss_user` VALUES ('602268282', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/602268282/602268282/100?1450017124', '╭小金羊咩咩', null, '6', '2', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('602981798', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('605362713', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('609236637', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('609652284', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('610503439', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('615354681', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('619470152', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/619470152/619470152/100?1351491618', ':P冷色系°', null, '5', '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('625014597', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('625555094', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/625555094/625555094/100?1389610896', '时光无声@，', null, null, '2', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('626461752', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/626461752/626461752/100?1436683703', '花落ヽ莫相离', null, null, '1', '嘉兴', '', null);
INSERT INTO `ss_user` VALUES ('627410070', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('629779784', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('630149803', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/630149803/630149803/100?1333527406', '╰☆侒嘫洎諾☆╮', null, null, '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('641601712', null, null, null, null, null, null, null, 'http://qlogo1.store.qq.com/qzone/641601712/641601712/100?1417003619', '放牧de太阳', null, null, '2', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('642019567', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/642019567/642019567/100?1333529675', 'unreachable', null, '5', '1', null, '', null);
INSERT INTO `ss_user` VALUES ('644389759', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('645278487', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('648079950', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/648079950/648079950/100?1400581223', '27', null, null, '2', null, '', null);
INSERT INTO `ss_user` VALUES ('649357119', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('657184717', null, null, null, null, null, null, null, 'http://qlogo2.store.qq.com/qzone/657184717/657184717/100?1433685535', '小朱正品韩妆代购', null, null, '1', '株洲', '', null);
INSERT INTO `ss_user` VALUES ('670537664', '24', '12', '12', '127', '株洲', '7', '中国', 'http://qlogo1.store.qq.com/qzone/670537664/670537664/100?1367328504', '♬小小個の夢想ぢ', '湖南', '6', '2', '株洲', '肖瑶', '');
INSERT INTO `ss_user` VALUES ('673129280', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('675268746', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('694662248', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('694778979', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('694891906', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('707158256', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('714779188', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('739246222', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('751193043', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/751193043/751193043/100?1427902553', '么', null, null, '2', '长沙', '苏珊玲', null);
INSERT INTO `ss_user` VALUES ('752350545', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('753603622', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('754966116', '0', '0', '0', '0', '', '8', '', 'http://qlogo1.store.qq.com/qzone/754966116/754966116/100?1233484718', '  零碎。', '', null, '2', null, '', '');
INSERT INTO `ss_user` VALUES ('756299489', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('75709277', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('757114617', '24', '0', '0', '127', '', '4', '中国', 'http://qlogo2.store.qq.com/qzone/757114617/757114617/100?1446299941', 'Enigmatic', '湖南', null, '2', '湖南', '罗惠友', '[ft=,6,][ft=#52f807,,隶书]当我安慰不了你，或你不再关心我。请记住，十二只白鹭飞过的青天。[/ft][/ft]');
INSERT INTO `ss_user` VALUES ('76269560', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('763800398', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('765658508', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('770310365', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('774584860', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('784881489', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('785634160', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('791874074', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('793912940', '24', '28', '28', '127', '', '2', '', 'http://qlogo1.store.qq.com/qzone/793912940/793912940/100?1361866662', ' ~', '', null, '2', null, '钟何丽', '');
INSERT INTO `ss_user` VALUES ('805830343', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('810526156', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('810942120', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('812000250', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('815419035', '24', '6', '6', '127', '株洲', '3', '中国', 'http://qlogo4.store.qq.com/qzone/815419035/815419035/100?1364568570', 'Happy纯…', '湖南', null, '2', '株洲', '钟纯', 'Love.....');
INSERT INTO `ss_user` VALUES ('827914563', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('843582784', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('843700548', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('851726353', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('854537856', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('859144916', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('86552055', null, null, null, null, null, null, null, 'http://qlogo4.store.qq.com/qzone/86552055/86552055/100?1373308948', '贴地滑行  ye.', null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('869773312', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('870310846', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('871645621', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('873619879', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('915259386', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/915259386/915259386/100?1385972062', '暴走“青蛙”', null, null, '1', '深圳', '', null);
INSERT INTO `ss_user` VALUES ('915903499', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('925365266', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('929556361', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('944080240', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('952328399', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('956674958', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('958391099', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('958697189', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('969307679', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('974361442', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('97623125', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('976601806', null, null, null, null, null, null, null, 'http://qlogo3.store.qq.com/qzone/976601806/976601806/100?1345380343', '   七年是你.·*', null, null, '2', '长沙', '', null);
INSERT INTO `ss_user` VALUES ('981743523', '24', '8', '8', '127', '株洲', '3', '中国', 'http://qlogo4.store.qq.com/qzone/981743523/981743523/100?1438260564', '唯爱', '湖南', null, '2', '株洲', '刘雨晴', '越是在乎的人  越是 猜不透.......');
INSERT INTO `ss_user` VALUES ('981954797', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('985856339', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
INSERT INTO `ss_user` VALUES ('987470919', null, null, null, null, null, null, null, null, null, null, null, null, null, '', null);
