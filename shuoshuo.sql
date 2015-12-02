/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : shuoshuo

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2015-12-02 23:32:10
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
  PRIMARY KEY (`qq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_accredit
-- ----------------------------
INSERT INTO `ss_accredit` VALUES ('435024179', null, 'o0435024179', '@opjysSoWP', 'o0435024179', '4qbddbft7Z2ZHCCvJyjwbeptaKNjEmB1W6kOzX7yM*E_', 'HkEcmPLB9uRMfoSgcwyYkA__', '423759491', 'e54316f6225441ac5f7bc65902bdc9cb48baf479f8276f7b4fa413b7cd6a14a6');

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
-- Table structure for `ss_user`
-- ----------------------------
DROP TABLE IF EXISTS `ss_user`;
CREATE TABLE `ss_user` (
  `qq` varchar(13) NOT NULL COMMENT 'qq',
  `pwd` varchar(128) DEFAULT NULL COMMENT '密码',
  `age` tinyint(3) DEFAULT NULL COMMENT '年龄',
  `birthday` tinyint(2) DEFAULT NULL COMMENT '生日',
  `birthmonth` tinyint(2) DEFAULT NULL COMMENT '生日 月',
  `birthyear` tinyint(4) DEFAULT NULL COMMENT '生日 年',
  `city` varchar(32) DEFAULT NULL COMMENT '城市',
  `constellation` varchar(32) DEFAULT NULL COMMENT '星座',
  `country` varchar(32) DEFAULT NULL COMMENT '国家',
  `face` varchar(128) DEFAULT NULL COMMENT '头像',
  `nckname` varchar(128) DEFAULT NULL COMMENT '昵称',
  `province` varchar(32) DEFAULT NULL COMMENT '省',
  `vip` tinyint(4) DEFAULT NULL COMMENT 'vip类型',
  `viplevel` tinyint(4) DEFAULT NULL COMMENT 'vip等级',
  PRIMARY KEY (`qq`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ss_user
-- ----------------------------
