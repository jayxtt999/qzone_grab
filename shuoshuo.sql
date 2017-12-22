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
