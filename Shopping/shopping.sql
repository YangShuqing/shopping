/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50546
Source Host           : localhost:3306
Source Database       : shopping

Target Server Type    : MYSQL
Target Server Version : 50546
File Encoding         : 65001

Date: 2016-01-07 16:21:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tbl_goods`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods`;
CREATE TABLE `tbl_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goodsname` varchar(255) DEFAULT NULL,
  `goodstype` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `goodspic` varchar(255) DEFAULT NULL,
  `goodspic1` varchar(255) DEFAULT NULL,
  `goodspic2` varchar(255) DEFAULT NULL,
  `goodspic3` varchar(255) DEFAULT NULL,
  `goodstitle` varchar(255) DEFAULT NULL,
  `goodsdesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods
-- ----------------------------
INSERT INTO `tbl_goods` VALUES ('1', '小霸王学习机', '1', '99', '89', 'upload/51.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '小霸王学习机，其乐无穷！', '<img src=\"upload/bubugao8.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('2', '文曲星学习机', '1', '9', '199', 'upload/53.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/xiaomi2.jpg', '文曲星下凡,内置多款游戏', '<img src=\"upload/bubugao8.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('3', 'iPhone6S', '1', '77', '5999', 'upload/50.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', 'iPhone6S,一代神机', '<img src=\"upload/bubugao8.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('4', 'surface pro4', '1', '99', '9999', 'upload/52.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '充值你的信仰', '<img src=\"upload/bubugao8.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('5', '小米手环', '1', '233', '69', 'upload/5.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/xiaomi3.jpg', '小米为发烧而生！', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('6', '立白洗衣液', '2', '2222', '29', 'upload/45.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '李白洗衣液，我是歌手！', null);
INSERT INTO `tbl_goods` VALUES ('7', '心相印纸巾', '2', '1999', '5', 'upload/5.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '心心相印！', null);
INSERT INTO `tbl_goods` VALUES ('8', '某保温杯', '2', '666', '33', 'upload/12.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '用过的都知道！', null);
INSERT INTO `tbl_goods` VALUES ('9', '飞科剃须刀', '2', '111', '99', 'upload/5.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '飞科剃须刀，飞一般的..。', null);
INSERT INTO `tbl_goods` VALUES ('10', '景德镇瓷碗', '2', '9', '9', 'upload/5.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '10块钱！你买不了吃亏', null);
INSERT INTO `tbl_goods` VALUES ('11', '大疆无人机', '1', '10', '9999', 'upload/9.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '无人能敌！', '<img src=\"upload/dajiang.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('12', '三体全集', '4', '300', '99', 'upload/15.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '重要事情说三遍！', null);
INSERT INTO `tbl_goods` VALUES ('13', '芈月传', '4', '599', '49', 'upload/16.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '自带光环的女人！', null);
INSERT INTO `tbl_goods` VALUES ('14', 'Google重新定义公司', '4', '299', '39', 'upload/17.jpg', 'upload/xiaomi1.jpg', 'upload/shu1.jpg', 'upload/shu1.jpg', '改变世界！', null);
INSERT INTO `tbl_goods` VALUES ('15', 'openstack', '4', '299', '39', 'upload/18.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '然而，不会用', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('16', '秘密花园', '4', '199', '39', 'upload/19.jpg', 'upload/pingguo1.jpg', 'upload/weiruan1.jpg', 'upload/shu1.jpg', '涂鸦手册', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('17', '算法基础', '4', '199', '29', 'upload/20.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', 'upload/shu1.jpg', '基础', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('18', '生命不息，奋斗不止', '4', '599', '29', 'upload/21.jpg', 'upload/xiaomi1.jpg', 'upload/xiaomi2.jpg', 'upload/shu2.jpg', '知名相声演员！', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('19', '农夫山泉矿泉水', '3', '1999', '19', 'upload/40.jpg', 'upload/pingguo1.jpg', 'upload/shu2.jpg', 'upload/shu1.jpg', '大自然的搬运工', '<img src=\"public/picture/pro-goodsdesc.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('20', '海天黄豆酱', '2', '1999', '5', 'upload/41.jpg', 'upload/pingguo1.jpg', 'upload/weiruan1.jpg', 'upload/shu2.jpg', '海天！黄豆酱', null);
INSERT INTO `tbl_goods` VALUES ('21', '金龙鱼', '2', '299', '59', 'upload/43.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '5S压榨花生油！', null);
INSERT INTO `tbl_goods` VALUES ('22', 'MacBook', '1', '9', '12999', 'upload/30.jpg', 'upload/xiaomi1.jpg', 'upload/weiruan1.jpg', 'upload/shu2.jpg', '教主出品！', '<img src=\"upload/macbook1.jpg\" />');
INSERT INTO `tbl_goods` VALUES ('23', '万万没想到', '5', '20000', '19', 'upload/53.jpg', 'upload/pingguo1.jpg', 'upload/weiruan1.jpg', 'upload/xiaomi2.jpg', '啦啦啦啦啦！', null);
INSERT INTO `tbl_goods` VALUES ('24', '寻龙诀', '5', '20000', '19', 'upload/53.jpg', 'upload/9.jpg', 'upload/xiaomi2.jpg', 'upload/shu2.jpg', '鬼吹灯啦！', null);
INSERT INTO `tbl_goods` VALUES ('25', '核桃', '3', '200', '29', 'upload/13.jpg', 'upload/9.jpg', 'upload/weiruan1.jpg', 'upload/shu1.jpg', '6个核桃', null);
INSERT INTO `tbl_goods` VALUES ('26', '123', '1', '12312', '12312', 'upload/20.jpg', 'upload/53.jpg', 'upload/xiaomi2.jpg', 'upload/shu1.jpg', '啦啦啦啦啦！', '12323');
INSERT INTO `tbl_goods` VALUES ('27', '老炮儿', '5', '122', '25', 'upload/17.jpg', 'upload/pingguo1.jpg', 'upload/xiaomi2.jpg', 'upload/weiruan1.jpg', '冯小刚力作', '冯小刚力作');
INSERT INTO `tbl_goods` VALUES ('28', '测试22', '5', '222', '22', 'upload/17.jpg', 'upload/pingguo1.jpg', 'upload/shu1.jpg', 'upload/shu2.jpg', '冯小刚力作111', '<p>非常不错的产品<img src=\"upload/image/201601/20160107007835.jpg\" title=\"20160107007835.jpg\" alt=\"macbook1.jpg\"/></p>');
INSERT INTO `tbl_goods` VALUES ('29', '暴走大事件', '5', '111', '2222', 'upload/15.jpg', 'upload/pingguo1.jpg', 'upload/shu2.jpg', 'upload/shu1.jpg', '小孩子不要看暴漫！', '<p><img src=\"upload/image/201601/20160107017315.jpg\" title=\"20160107017315.jpg\" alt=\"dajiang.jpg\"/></p>');
INSERT INTO `tbl_goods` VALUES ('31', '测试商品111', '1', '111', '2222', 'upload/image/201601/20160107052882.jpg', 'upload/image/201601/20160107091849.jpg', 'upload/image/201601/20160107078750.jpg', 'upload/image/201601/20160107069077.jpg', '冯小刚力作233', '<p><img src=\"upload/image/201601/20160107081425.jpg\" title=\"20160107081425.jpg\" alt=\"bubugao8.jpg\"/></p>');
INSERT INTO `tbl_goods` VALUES ('32', 'aaaaa', '1', '111', '2222', 'upload/image/201601/20160107063268.jpg', 'upload/image/201601/20160107023986.jpg', 'upload/image/201601/20160107080440.jpg', 'upload/image/201601/20160107083209.jpg', '2222', '<p><img src=\"upload/image/201601/20160107094234.jpg\" title=\"20160107094234.jpg\" alt=\"macbook1.jpg\"/></p>');

-- ----------------------------
-- Table structure for `tbl_goods_car`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_car`;
CREATE TABLE `tbl_goods_car` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `goodspic` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `buytotal` int(11) DEFAULT NULL,
  `buytime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_car
-- ----------------------------

-- ----------------------------
-- Table structure for `tbl_goods_type`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_goods_type`;
CREATE TABLE `tbl_goods_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_goods_type
-- ----------------------------
INSERT INTO `tbl_goods_type` VALUES ('1', '0', '电子产品');
INSERT INTO `tbl_goods_type` VALUES ('2', '0', '生活用品');
INSERT INTO `tbl_goods_type` VALUES ('3', '0', '食品');
INSERT INTO `tbl_goods_type` VALUES ('4', '0', '图书');
INSERT INTO `tbl_goods_type` VALUES ('5', '0', '娱乐');
INSERT INTO `tbl_goods_type` VALUES ('6', '1', '品牌电脑');
INSERT INTO `tbl_goods_type` VALUES ('7', '1', '智能手机');
INSERT INTO `tbl_goods_type` VALUES ('8', '1', '智能硬件');
INSERT INTO `tbl_goods_type` VALUES ('9', '1', '配件');
INSERT INTO `tbl_goods_type` VALUES ('10', '3', '水果生鲜');
INSERT INTO `tbl_goods_type` VALUES ('11', '3', '休闲零食');
INSERT INTO `tbl_goods_type` VALUES ('12', '3', '牛奶饮料');
INSERT INTO `tbl_goods_type` VALUES ('13', '3', '粮油调味');
INSERT INTO `tbl_goods_type` VALUES ('14', '1', '1222');
INSERT INTO `tbl_goods_type` VALUES ('15', '6', '123123');
INSERT INTO `tbl_goods_type` VALUES ('16', '1', '123123');
INSERT INTO `tbl_goods_type` VALUES ('17', '0', '测试分类111');
INSERT INTO `tbl_goods_type` VALUES ('18', '0', 'aaaaabbb');
INSERT INTO `tbl_goods_type` VALUES ('19', '1', '12323');
INSERT INTO `tbl_goods_type` VALUES ('20', '6', '1222');

-- ----------------------------
-- Table structure for `tbl_order`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `ordernum` varchar(110) DEFAULT NULL,
  `buytime` varchar(255) DEFAULT NULL,
  `total` float(20,0) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_order
-- ----------------------------
INSERT INTO `tbl_order` VALUES ('31', '1', '1', '1601051009361', '2016-01-05 22:09:36', '1000', '1');
INSERT INTO `tbl_order` VALUES ('32', '1', '1', '1601070122501', '2016-01-07 13:22:50', '1000', '1');
INSERT INTO `tbl_order` VALUES ('33', '1', '1', '1601070220151', '2016-01-07 14:20:15', '1000', '0');
INSERT INTO `tbl_order` VALUES ('34', '1', '1', '1601070228211', '2016-01-07 14:28:21', '1000', '1');
INSERT INTO `tbl_order` VALUES ('36', '1', '1', '1601070407441', '2016-01-07 16:07:44', '1000', '1');

-- ----------------------------
-- Table structure for `tbl_orderdetail`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orderdetail`;
CREATE TABLE `tbl_orderdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` int(20) DEFAULT NULL,
  `ordernum` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `gname` varchar(255) DEFAULT NULL,
  `gpic` varchar(255) DEFAULT NULL,
  `gprice` float DEFAULT NULL,
  `gtotal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_orderdetail
-- ----------------------------
INSERT INTO `tbl_orderdetail` VALUES ('71', '31', '1601051009361', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('72', '31', '1601051009361', '11', '大疆无人机', 'upload/9.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('73', '31', '1601051009361', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('74', '32', '1601070122501', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('75', '32', '1601070122501', '11', '大疆无人机', 'upload/9.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('76', '32', '1601070122501', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('77', '32', '1601070122501', '2', '文曲星学习机', 'upload/53.jpg', '199', '1');
INSERT INTO `tbl_orderdetail` VALUES ('78', '32', '1601070122501', '27', '老炮儿', 'upload/17.jpg', '9.9', '1');
INSERT INTO `tbl_orderdetail` VALUES ('79', '33', '1601070220151', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('80', '33', '1601070220151', '11', '大疆无人机', 'upload/9.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('81', '33', '1601070220151', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('82', '33', '1601070220151', '2', '文曲星学习机', 'upload/53.jpg', '199', '1');
INSERT INTO `tbl_orderdetail` VALUES ('83', '33', '1601070220151', '27', '老炮儿', 'upload/17.jpg', '9.9', '1');
INSERT INTO `tbl_orderdetail` VALUES ('84', '34', '1601070228211', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('85', '34', '1601070228211', '11', '大疆无人机', 'upload/9.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('86', '34', '1601070228211', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('87', '34', '1601070228211', '2', '文曲星学习机', 'upload/53.jpg', '199', '1');
INSERT INTO `tbl_orderdetail` VALUES ('88', '34', '1601070228211', '27', '老炮儿', 'upload/17.jpg', '9.9', '1');
INSERT INTO `tbl_orderdetail` VALUES ('89', '35', '1601070237091', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('90', '35', '1601070237091', '11', '大疆无人机', 'upload/9.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('91', '35', '1601070237091', '4', 'surface pro4', 'upload/52.jpg', '9999', '1');
INSERT INTO `tbl_orderdetail` VALUES ('92', '35', '1601070237091', '2', '文曲星学习机', 'upload/53.jpg', '199', '1');
INSERT INTO `tbl_orderdetail` VALUES ('93', '35', '1601070237091', '27', '老炮儿', 'upload/17.jpg', '9.9', '1');
INSERT INTO `tbl_orderdetail` VALUES ('94', '36', '1601070407441', '3', 'iPhone6S', 'upload/50.jpg', '5999', '1');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  `realname` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES ('1', 'admin', '123', '1', '杨书清', '123456', null, '东海大道88号');
INSERT INTO `tbl_user` VALUES ('2', 'aaa', 'aaa', '2', '123', '123', null, '123');
INSERT INTO `tbl_user` VALUES ('3', 'ysq', '123', '3', '杨书清', '2223333', null, '江苏南通科教城');
INSERT INTO `tbl_user` VALUES ('4', 'bbb', 'bbb', '2', '123', '123', null, '123123');
INSERT INTO `tbl_user` VALUES ('5', '12312', '12312', '3', null, null, null, null);

-- ----------------------------
-- Table structure for `tbl_user_role`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user_role`;
CREATE TABLE `tbl_user_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user_role
-- ----------------------------
INSERT INTO `tbl_user_role` VALUES ('1', '管理员');
INSERT INTO `tbl_user_role` VALUES ('2', '普通用户');
INSERT INTO `tbl_user_role` VALUES ('3', '金牌会员');
