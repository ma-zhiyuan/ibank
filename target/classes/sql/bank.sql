/*
Navicat MySQL Data Transfer

Source Server         : Online-Mysql
Source Server Version : 50628
Source Host           : 593b6d648a234.bj.cdb.myqcloud.com:14003
Source Database       : bank

Target Server Type    : MYSQL
Target Server Version : 50628
File Encoding         : 65001

Date: 2017-06-23 20:30:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `phone` varchar(11) NOT NULL COMMENT '手机号码',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `photo` varchar(100) DEFAULT NULL COMMENT '照片',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) COMMENT '主键',
  UNIQUE KEY `admin_phone_uk` (`phone`) COMMENT '手机号码唯一',
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='管理员表';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'UpTownCat', '18309229301', '202cb962ac59075b964b07152d234b70', '123.jpg', '158668658@qq.com');
INSERT INTO `admin` VALUES ('2', 'ad', '18829897771', 'a02cc9a3fc5def5275b5ca22f0d8f414', 'bb.png', '1776777@qq.com');
INSERT INTO `admin` VALUES ('3', 'sujie', '13227031580', '9db06bcff9248837f86d1a6bcf41c9e7', 'gradle-icon-256x256.png', '');

-- ----------------------------
-- Table structure for announcement
-- ----------------------------
DROP TABLE IF EXISTS `announcement`;
CREATE TABLE `announcement` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `title` varchar(255) NOT NULL COMMENT '通知标题',
  `content` varchar(4000) NOT NULL COMMENT '通知内容',
  `picture` varchar(100) DEFAULT NULL COMMENT '通知图片内容',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `attribute` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) COMMENT 'id主键'
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='通知表';

-- ----------------------------
-- Records of announcement
-- ----------------------------
INSERT INTO `announcement` VALUES ('24', '我还是客服', '传图片', '1496987463894img-bc0ee00ad8f3e19a6140db56f3575604.jpg', '2017-06-09 13:51:04', '2017-05-14 11:18:56', '用户业务通知');
INSERT INTO `announcement` VALUES ('30', '标题党', '发dvd发给热风第五册发财的未发放东侧额外发萨达为缺乏大大我亲热的的撒的味道哇哇哇法法网', null, '2017-05-15 17:40:05', '2017-05-15 17:40:05', '用户业务通知');
INSERT INTO `announcement` VALUES ('31', '闻风丧胆', '温都水城发货医院将花费的感光度发挥好fgdhd djyuytwrw', '1496987481923img-3e5ca9d06a24d47baab013a30a88d41f.jpg', '2017-06-09 13:51:22', '2017-05-15 18:16:07', '用户通知');
INSERT INTO `announcement` VALUES ('32', '我是不是很帅', '我很', '1497355105772u=3653728378,4177080531&fm=23&gp=0.jpg', '2017-06-13 19:58:26', '2017-06-08 19:41:37', '用户通知');
INSERT INTO `announcement` VALUES ('35', '你说', '易烊千玺', '14969913744321.jpg', '2017-06-09 14:56:14', '2017-06-09 14:56:14', '用户通知');
INSERT INTO `announcement` VALUES ('36', '离骚', '易烊千玺', '14973545456811.JPG', '2017-06-13 19:49:06', '2017-06-09 14:58:20', '用户通知');
INSERT INTO `announcement` VALUES ('39', 'suibian', 'sdfghjhgfdserghn', '1497781242805u=1508971176,3387267275&fm=11&gp=0.jpg', '2017-06-18 18:20:43', '2017-06-18 18:20:43', '用户业务通知');

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank` (
  `id` int(4) NOT NULL AUTO_INCREMENT COMMENT '银行id',
  `name` varchar(25) NOT NULL COMMENT '银行卡名称',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `pic` varchar(100) NOT NULL COMMENT '照片',
  PRIMARY KEY (`id`) COMMENT 'id主键'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES ('1', '蓝桥银行', '2017-04-28 11:05:29', '2017-04-19 11:05:36', '');

-- ----------------------------
-- Table structure for card
-- ----------------------------
DROP TABLE IF EXISTS `card`;
CREATE TABLE `card` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `number` varchar(30) NOT NULL COMMENT '卡号',
  `balance` double NOT NULL COMMENT '余额',
  `bank_id` int(11) NOT NULL DEFAULT '1' COMMENT '所属银行的id',
  `user_id` int(11) DEFAULT NULL,
  `password` varchar(32) NOT NULL COMMENT '密码',
  `credit` int(11) NOT NULL DEFAULT '100',
  `is_credit_card` int(11) NOT NULL DEFAULT '0' COMMENT '0:非信用卡， 1:信用卡',
  `is_pass` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) COMMENT '主键',
  KEY `card_bank_id_fk` (`bank_id`),
  KEY `card_user_id_fk` (`user_id`),
  KEY `number` (`number`),
  CONSTRAINT `card_bank_id_fk` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`),
  CONSTRAINT `card_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COMMENT='银行卡表';

-- ----------------------------
-- Records of card
-- ----------------------------
INSERT INTO `card` VALUES ('9', '22222222222222222211', '2970.34', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '1', '1');
INSERT INTO `card` VALUES ('10', '2222222222222222228', '6000', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('12', '22222222222222222210', '1804', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('17', '22222222222222222215', '1042', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('23', '22222222222222222221', '1280', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('24', '22222222222222222222', '1', '1', '114', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('25', '2222222222222222223', '799', '1', '6', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('30', '22222222222222222123', '2345', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '0', '1');
INSERT INTO `card` VALUES ('32', '22222222222222222230', '1640', '1', '120', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('35', '2222222222222222233', '883', '1', '120', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('36', '22222222222222222234', '188', '1', '120', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('38', '22222222222222222236', '36', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('40', '22222222222222222238', '476', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('41', '22222222222222222239', '1393', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('42', '22222222222222222240', '1716', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('43', '22222222222222222241', '1769', '1', '140', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('44', '22222222222222222242', '1065', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('45', '22222222222222222243', '1076', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('46', '22222222222222222244', '1614', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('47', '22222222222222222245', '1801', '1', '6', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('48', '22222222222222222246', '1702', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('49', '22222222222222222247', '547', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('50', '22222222222222222248', '1780', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('51', '22222222222222222249', '332', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('52', '2222222222222222220', '589', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('53', '2222222222222222221', '1310', '1', '114', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('54', '2222222222222222222', '847', '1', '6', '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('55', '2222222222222222223', '1314', '1', null, '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('56', '2222222222222222224', '1709', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('57', '2222222222222222225', '540', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('58', '2222222222222222226', '557', '1', '6', '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('59', '2222222222222222227', '1030', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('60', '2222222222222222228', '558', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('61', '2222222222222222229', '1648', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('62', '22222222222222222210', '1295', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('63', '22222222222222222211', '660', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('64', '22222222222222222212', '752', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('65', '22222222222222222213', '1910', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('66', '22222222222222222214', '1355', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('67', '22222222222222222215', '657', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('68', '22222222222222222216', '29', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '1');
INSERT INTO `card` VALUES ('69', '22222222222222222217', '185', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('70', '22222222222222222218', '617', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('71', '22222222222222222219', '817', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('72', '22222222222222222220', '1744', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('73', '22222222222222222221', '1927', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('74', '22222222222222222222', '1258', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('75', '22222222222222222223', '577', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('76', '22222222222222222224', '987', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('77', '22222222222222222225', '124', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('78', '22222222222222222226', '76', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('79', '22222222222222222227', '209', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('80', '22222222222222222228', '812', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('81', '22222222222222222229', '50', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('82', '22222222222222222230', '573', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('83', '22222222222222222231', '277', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('84', '22222222222222222232', '480', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('85', '22222222222222222233', '553', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('86', '22222222222222222234', '1067', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('87', '22222222222222222235', '239', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('88', '22222222222222222236', '717', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('89', '22222222222222222237', '1032', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('90', '22222222222222222238', '216', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('91', '22222222222222222239', '32', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('92', '22222222222222222240', '1', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('93', '22222222222222222241', '1948', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('94', '22222222222222222242', '1535', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('95', '22222222222222222243', '85', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('96', '22222222222222222244', '1943', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('98', '22222222222222222246', '677', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('99', '22222222222222222247', '1182', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('100', '22222222222222222248', '192', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('101', '22222222222222222249', '914', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('102', '22222222222222222250', '11', '1', null, '202cb962ac59075b964b07152d234b70', '0', '0', '0');
INSERT INTO `card` VALUES ('103', '2017051207289368249', '100', '1', null, '123456', '0', '0', '0');
INSERT INTO `card` VALUES ('104', '2017051207289368249', '100', '1', null, '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('105', '2017051207349060585', '11', '1', null, '123456', '0', '0', '0');
INSERT INTO `card` VALUES ('106', '2017051207351810111', '0', '1', '114', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('107', '2017051207528361579', '20', '1', '114', '321456', '0', '0', '0');
INSERT INTO `card` VALUES ('108', '2017051207573784137', '100', '1', '114', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0');
INSERT INTO `card` VALUES ('109', '2017051207585719187', '0', '1', '114', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('110', '2017051208059582676', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('112', '2017051208098248759', '1111', '1', '114', 'fcea920f7412b5da7be0cf42b8c93759', '0', '0', '0');
INSERT INTO `card` VALUES ('113', '2017051208112657999', '0', '1', '114', 'd41d8cd98f00b204e9800998ecf8427e', '0', '0', '0');
INSERT INTO `card` VALUES ('114', '2017051208135872306', '0', '1', '114', 'd41d8cd98f00b204e9800998ecf8427e', '0', '0', '0');
INSERT INTO `card` VALUES ('115', '2017051208287763386', '1000', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('116', '2017051208356249276', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('117', '2017051208353114497', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('118', '2017051208373177303', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('119', '2017051208437538641', '100', '1', '114', '123456', '0', '0', '0');
INSERT INTO `card` VALUES ('120', '2017051208468562723', '0', '1', '114', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0');
INSERT INTO `card` VALUES ('121', '2017051208507080335', '600', '1', '114', '1', '0', '0', '0');
INSERT INTO `card` VALUES ('122', '2017051208524434967', '0', '1', '114', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0');
INSERT INTO `card` VALUES ('123', '2017051208555898059', '0', '1', '114', '92a35d8b542d4b11a6430f4db05c7e8d', '0', '0', '0');
INSERT INTO `card` VALUES ('124', '2017051209024033823', '10056', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '0', '0');
INSERT INTO `card` VALUES ('125', '2017051302149809561', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('126', '2017051302155781280', '0', '1', '114', '96e79218965eb72c92a549dd5a330112', '0', '0', '0');
INSERT INTO `card` VALUES ('127', '2017051302266816521', '0', '1', '114', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0');
INSERT INTO `card` VALUES ('128', '2017051305494766285', '0', '1', '114', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0');
INSERT INTO `card` VALUES ('129', '2017051410536636510', '0', '1', '16', '52c69e3a57331081823331c4e69d3f2e', '100', '1', '1');
INSERT INTO `card` VALUES ('130', '2017051405192454822', '0', '1', '16', '52c69e3a57331081823331c4e69d3f2e', '100', '1', '0');
INSERT INTO `card` VALUES ('131', '2017051511131136528', '-1000', '1', '6', '96e79218965eb72c92a549dd5a330112', '100', '1', '0');
INSERT INTO `card` VALUES ('132', '2017051511373024368', '12596', '1', '114', '96e79218965eb72c92a549dd5a330112', '5000', '1', '0');
INSERT INTO `card` VALUES ('133', '2017051612136224216', '0', '1', '114', 'ff92a240d11b05ebd392348c35f781b2', '100', '1', '0');
INSERT INTO `card` VALUES ('136', '2017052207405670677', '0', '1', '6', '9db06bcff9248837f86d1a6bcf41c9e7', '6000', '1', '0');
INSERT INTO `card` VALUES ('137', '2017052207559509556', '2345', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('139', '2017052208104018735', '0', '1', '114', 'ff92a240d11b05ebd392348c35f781b2', '100', '1', '0');
INSERT INTO `card` VALUES ('140', '2017052208116430318', '0', '1', '114', 'ff92a240d11b05ebd392348c35f781b2', '100', '1', '0');
INSERT INTO `card` VALUES ('141', '2017052208132311470', '0', '1', '114', 'ff92a240d11b05ebd392348c35f781b2', '100', '1', '0');
INSERT INTO `card` VALUES ('142', '2017052208204224634', '0', '1', '114', 'ff92a240d11b05ebd392348c35f781b2', '100', '1', '0');
INSERT INTO `card` VALUES ('143', '2017052208409641430', '0', '1', '114', '9d3dc7094d3dcb31ffe2960ad891dd04', '100', '1', '0');
INSERT INTO `card` VALUES ('144', '2017052407346086660', '0', '1', '114', 'd5961a2f50e5b5422fb6effaf0769fea', '100', '1', '0');
INSERT INTO `card` VALUES ('146', '2017060403186972106', '0', '1', '6', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('147', '2017061307554109980', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('148', '2017061709358791537', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('149', '2017061710021217340', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('150', '2017061710077943948', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('151', '2017061710072443348', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('152', '2017061710087712368', '9851', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('153', '2017061710146359285', '0', '1', '114', 'd593db4e52fa9ddca35ad15f2e5ed1bc', '100', '1', '0');
INSERT INTO `card` VALUES ('154', '2017061710159842733', '0', '1', '114', 'fd095d26223daf2eb087eb51592379e3', '100', '1', '0');
INSERT INTO `card` VALUES ('155', '2017061710151367365', '0', '1', '114', '274551fafd12cdc332254ceaa3eee5b7', '100', '1', '0');
INSERT INTO `card` VALUES ('156', '2017061710151818392', '0', '1', '114', '8947c77ff8d7a75ebef743d70aefdbb7', '100', '1', '0');
INSERT INTO `card` VALUES ('157', '2017061710198363468', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('158', '2017061710261350964', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('159', '2017061809577454103', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '100', '1', '0');
INSERT INTO `card` VALUES ('160', '2017061810168802010', '0', '1', '120', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '1', '0');
INSERT INTO `card` VALUES ('162', '2017061802449437120', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '0', '0');
INSERT INTO `card` VALUES ('163', '2017061803299334899', '200', '1', '6', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('164', '2017061804027023896', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '0', '0');
INSERT INTO `card` VALUES ('165', '2017061805465995089', '250', '1', '6', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('166', '2017061806062761159', '280', '1', '6', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('167', '2017061806355221588', '0', '1', '118', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '1', '0');
INSERT INTO `card` VALUES ('168', '2017061806535024930', '23', '1', '6', '111111', '0', '0', '0');
INSERT INTO `card` VALUES ('169', '2017061806553023073', '0', '1', '114', '9db06bcff9248837f86d1a6bcf41c9e7', '0', '0', '0');

-- ----------------------------
-- Table structure for card_rate
-- ----------------------------
DROP TABLE IF EXISTS `card_rate`;
CREATE TABLE `card_rate` (
  `id` int(11) NOT NULL,
  `rate` double NOT NULL,
  `time` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of card_rate
-- ----------------------------
INSERT INTO `card_rate` VALUES ('1', '0.05', '2017-01-01');
INSERT INTO `card_rate` VALUES ('2', '0.03', '2017-03-01');
INSERT INTO `card_rate` VALUES ('3', '0.07', '2017-08-21');

-- ----------------------------
-- Table structure for creditrepayment
-- ----------------------------
DROP TABLE IF EXISTS `creditrepayment`;
CREATE TABLE `creditrepayment` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `card_id` int(10) DEFAULT NULL,
  `repay_money` double(10,2) DEFAULT NULL,
  `loan_id` int(10) DEFAULT NULL,
  `repay_time` date DEFAULT NULL,
  `is_repay` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creditrepayment
-- ----------------------------
INSERT INTO `creditrepayment` VALUES ('4', '125', '10435.00', '24', '2017-05-26', '1');
INSERT INTO `creditrepayment` VALUES ('5', '129', '399.96', '25', '2017-06-04', '1');
INSERT INTO `creditrepayment` VALUES ('6', '129', '399.96', '25', null, '0');
INSERT INTO `creditrepayment` VALUES ('7', '129', '9287.96', '25', null, '0');
INSERT INTO `creditrepayment` VALUES ('8', '136', '2087.00', '27', '2017-06-04', '0');
INSERT INTO `creditrepayment` VALUES ('9', '133', '10435.00', '28', '2017-06-18', '0');
INSERT INTO `creditrepayment` VALUES ('10', '137', '10435.00', '29', null, '0');
INSERT INTO `creditrepayment` VALUES ('11', '133', '2000.00', '30', null, '0');
INSERT INTO `creditrepayment` VALUES ('12', '133', '500.00', '31', '2017-06-18', '1');

-- ----------------------------
-- Table structure for creditsavemoney
-- ----------------------------
DROP TABLE IF EXISTS `creditsavemoney`;
CREATE TABLE `creditsavemoney` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `taketime` date DEFAULT NULL COMMENT '存款时间',
  `card_id` int(10) DEFAULT NULL COMMENT '哪张卡',
  `money` double(10,2) NOT NULL COMMENT '存款金额',
  `credit` int(10) DEFAULT NULL COMMENT '获得积分',
  `is_save_money` int(1) DEFAULT NULL COMMENT '1 是存款 0 是取款',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of creditsavemoney
-- ----------------------------
INSERT INTO `creditsavemoney` VALUES ('1', '2017-05-21', '1', '2100.00', '21', '0');
INSERT INTO `creditsavemoney` VALUES ('2', '2017-05-21', '132', '100.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('3', '2017-05-22', '9', '30.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('4', '2017-05-22', '132', '400.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('5', '2017-05-22', '115', '1000.00', '10', '1');
INSERT INTO `creditsavemoney` VALUES ('6', '2017-05-22', '132', '1000.00', '10', '1');
INSERT INTO `creditsavemoney` VALUES ('7', '2017-05-22', '132', '800.00', '8', '1');
INSERT INTO `creditsavemoney` VALUES ('8', '2017-06-04', '132', '1466.00', '14', '1');
INSERT INTO `creditsavemoney` VALUES ('9', '2017-06-04', '132', '14.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('10', '2017-06-04', '132', '14.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('11', '2017-06-04', '9', '2000.00', '20', '1');
INSERT INTO `creditsavemoney` VALUES ('12', '2017-06-07', '132', '2.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('13', '2017-06-07', '132', '900.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('14', '2017-06-18', '152', '100.00', '1', '1');
INSERT INTO `creditsavemoney` VALUES ('15', '2017-06-18', '152', '160.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('16', '2017-06-18', '152', '20.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('17', '2017-06-18', '152', '89.00', '0', '0');
INSERT INTO `creditsavemoney` VALUES ('18', '2017-06-18', '152', '20.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('19', '2017-06-18', '152', '30.00', '0', '1');
INSERT INTO `creditsavemoney` VALUES ('20', '2017-06-18', '152', '70.00', '0', '0');

-- ----------------------------
-- Table structure for customerreplay
-- ----------------------------
DROP TABLE IF EXISTS `customerreplay`;
CREATE TABLE `customerreplay` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '客服编号',
  `content` varchar(4000) NOT NULL COMMENT '回复内容',
  `userconsult_id` int(11) NOT NULL COMMENT '回复咨询的编号',
  `replaytime` date NOT NULL COMMENT '回复时间',
  PRIMARY KEY (`id`) COMMENT 'id主键',
  KEY `customerreplay_userconsultid_FK` (`userconsult_id`),
  CONSTRAINT `customerreplay_userconsultid_FK` FOREIGN KEY (`userconsult_id`) REFERENCES `userconsultation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='客服回复表';

-- ----------------------------
-- Records of customerreplay
-- ----------------------------
INSERT INTO `customerreplay` VALUES ('4', '53', '大家都很烦', '1', '2017-05-14');
INSERT INTO `customerreplay` VALUES ('8', '53', '你问的是什么啊 ？', '2', '2017-05-14');
INSERT INTO `customerreplay` VALUES ('9', '53', '你问的是什么啊 ？', '12', '2017-05-15');
INSERT INTO `customerreplay` VALUES ('10', '53', '你问的是什么啊 ？', '12', '2017-05-15');
INSERT INTO `customerreplay` VALUES ('11', '53', '你问的是什么啊 ？', '6', '2017-05-15');
INSERT INTO `customerreplay` VALUES ('12', '53', '你问的是什么啊 ？', '16', '2017-05-17');
INSERT INTO `customerreplay` VALUES ('13', '5', '哼哼哈嘿', '18', '2017-05-18');
INSERT INTO `customerreplay` VALUES ('14', '53', 'asdfasf', '7', '2017-05-21');
INSERT INTO `customerreplay` VALUES ('15', '53', '你问的是什么啊 ？', '13', '2017-05-21');
INSERT INTO `customerreplay` VALUES ('16', '5', 'good', '8', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('17', '5', 'good', '8', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('18', '5', '1', '9', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('19', '5', '66', '10', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('20', '5', 'rr', '11', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('21', '53', '你问的是什么啊 ？', '14', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('22', '53', '你问的是什么啊 ？', '15', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('23', '5', 'ok', '17', '2017-05-22');
INSERT INTO `customerreplay` VALUES ('24', '5', 'ok', '19', '2017-05-30');
INSERT INTO `customerreplay` VALUES ('25', '5', 'fghfh', '23', '2017-06-04');
INSERT INTO `customerreplay` VALUES ('26', '5', '111', '20', '2017-06-04');
INSERT INTO `customerreplay` VALUES ('27', '5', '541523', '21', '2017-06-04');
INSERT INTO `customerreplay` VALUES ('28', '5', '8520', '22', '2017-06-04');
INSERT INTO `customerreplay` VALUES ('29', '5', '8520', '24', '2017-06-04');
INSERT INTO `customerreplay` VALUES ('30', '5', 'ha', '25', '2017-06-06');
INSERT INTO `customerreplay` VALUES ('31', '5', '过', '26', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('32', '5', '过', '28', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('33', '5', 'aa', '27', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('34', '5', 'sss', '29', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('35', '5', 'qqq', '45', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('36', '5', '121', '30', '2017-06-08');
INSERT INTO `customerreplay` VALUES ('37', '53', '你问的是什么啊 ？', '49', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('38', '53', '啥子菲达环保', '31', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('39', '53', '你问的是什么啊 ？', '32', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('40', '53', '你问的是什么啊 ？', '34', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('41', '53', '我就是不回答，你咬我', '34', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('42', '5', '655', '33', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('43', '53', '你问的是什么啊 ？', '37', '2017-06-18');
INSERT INTO `customerreplay` VALUES ('44', '5', 'good', '39', '2017-06-18');

-- ----------------------------
-- Table structure for customerServices
-- ----------------------------
DROP TABLE IF EXISTS `customerServices`;
CREATE TABLE `customerServices` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL COMMENT '姓名',
  `age` int(11) NOT NULL COMMENT '年龄',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别： 0： 男 ， 1： 女',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `phone` varchar(11) NOT NULL COMMENT '电话',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `photo` varchar(100) DEFAULT NULL COMMENT '照片',
  `state` int(1) NOT NULL COMMENT '状态',
  `code` varchar(64) NOT NULL COMMENT '激活码',
  PRIMARY KEY (`no`) COMMENT 'no主键',
  UNIQUE KEY `customerServices_phone_uk` (`phone`) COMMENT '手机号码唯一'
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='客服表';

-- ----------------------------
-- Records of customerServices
-- ----------------------------
INSERT INTO `customerServices` VALUES ('5', 'sujie', '25', '1', '1234523423@qq.com', '18823457777', '9db06bcff9248837f86d1a6bcf41c9e7', '1497781170530u=317315833,2643315619&fm=23&gp=0.jpg', '0', '');
INSERT INTO `customerServices` VALUES ('65', 'adsvasdv', '20', '0', 'sxzqmf@163.com', '15129657132', '737207bfff986b451956db85a7c8d380', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/admin/1494065729839$TZ_1]]{D%4B(I0P_MP)0RD.jpg', '1', '8b71f4ebba724d6ab8720afdf18a712a99ac5f8c6ecc4fc9a45233eb227809f7');
INSERT INTO `customerServices` VALUES ('66', '孙新召', '23', '1', 'sxzqmf@163.com', '15129558270', '737207bfff986b451956db85a7c8d380', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/admin/1494123855716$TZ_1]]{D%4B(I0P_MP)0RD.jpg', '0', '8ad84fec367641f1a82bbe181771c16bef08cfc9c23f4711b984165276a2da74');
INSERT INTO `customerServices` VALUES ('68', '什么啊', '23', '1', 'sxzqmf@163.com', '15129654579', '737207bfff986b451956db85a7c8d380', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/admin/1494124008746$TZ_1]]{D%4B(I0P_MP)0RD.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('69', 'sujie', '22', '1', '1511749834@qq.com', '13227031580', '0b180078d994cb2b5ed89d7ce8e7eea2', 'G:\\apache-tomcat-7.0.70\\webapps\\lanqiaobank\\upload/customer/1494126773231a.png', '0', '1cb4cd5cdcb745bbb4885f3195f8b0b02fbb6bccfc9f4a5ab66c0d515294c5b8');
INSERT INTO `customerServices` VALUES ('70', 'sunxinzha', '23', '1', 'sxzqmf@163.com', '15129658271', '737207bfff986b451956db85a7c8d380', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/admin/1494129119103$TZ_1]]{D%4B(I0P_MP)0RD.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('77', '111', '11', '1', '111@qq.com', '111', '9db06bcff9248837f86d1a6bcf41c9e7', 's', '0', '212');
INSERT INTO `customerServices` VALUES ('90', 'asfdsvasdv', '23', '1', 'sxzqmf@163.com', '15129658266', 'd0521106f6ba7f9ac0a7370fb28d0ec6', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/customer/1497759179778qrcode_for_gh_0491aaae930a_430.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('92', 'asfdsvasdv', '23', '1', 'sxzqmf@163.com', '15129658265', 'd0521106f6ba7f9ac0a7370fb28d0ec6', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/customer/1497759257351qrcode_for_gh_0491aaae930a_430.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('95', 'sunxinzhao', '23', '1', 'sxzqmf@163.com', '15129658269', 'd0521106f6ba7f9ac0a7370fb28d0ec6', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/customer/1497765735161qrcode_for_gh_0491aaae930a_430.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('96', 'sunxinzhao', '23', '1', 'sxzqmf@163.com', '18829898743', 'd0521106f6ba7f9ac0a7370fb28d0ec6', 'D:\\tomcat7.0.73\\webapps\\lanqiaobank\\upload/customer/1497768619402qrcode_for_gh_0491aaae930a_430.jpg', '1', '');
INSERT INTO `customerServices` VALUES ('97', 'sunxinzhao', '23', '1', 'sxzqmf@163.com', '13227031589', 'd0521106f6ba7f9ac0a7370fb28d0ec6', '/usr/bin/java/apache-tomcat-8.5.15/webapps/lanqiaobank/upload/customer/1497770069319timg (1).jpg', '0', 'e80346b1a3e24337becb1a8cfb33223cf24e4df5f3404f408d9f4eabb44171c0');
INSERT INTO `customerServices` VALUES ('98', 'sunxinzhao', '23', '1', 'sxzqmf@163.com', '18829895742', 'd0521106f6ba7f9ac0a7370fb28d0ec6', '/usr/bin/java/apache-tomcat-8.5.15/webapps/lanqiaobank/upload/customer/1497770458815timg (1).jpg', '0', '92396cf97ab04f1fbfc10f93373d84e837e3521e6a124bbd94650c3135250a33');
INSERT INTO `customerServices` VALUES ('99', 'sunxinzhao', '23', '1', 'sxzqmf@163.com', '18824498743', 'd0521106f6ba7f9ac0a7370fb28d0ec6', '/usr/bin/java/apache-tomcat-8.5.15/webapps/lanqiaobank/upload/customer/1497770988493timg (1).jpg', '1', '');
INSERT INTO `customerServices` VALUES ('100', 'admina', '22', '1', 'sxzqmf@163.com', '13227031586', 'd0521106f6ba7f9ac0a7370fb28d0ec6', '/usr/bin/java/apache-tomcat-8.5.15/webapps/lanqiaobank/upload/customer/1497782287100a.jpg', '1', '');

-- ----------------------------
-- Table structure for deposit
-- ----------------------------
DROP TABLE IF EXISTS `deposit`;
CREATE TABLE `deposit` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `money` double NOT NULL COMMENT '金额',
  `is_take_out` int(11) NOT NULL DEFAULT '0' COMMENT '是否取出',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `card_id` int(11) NOT NULL COMMENT '银行卡id',
  `interest_id` int(11) NOT NULL COMMENT '利率id',
  PRIMARY KEY (`id`),
  KEY `deposit_user_id_fk` (`user_id`),
  KEY `deposit_card_id_fk` (`card_id`),
  KEY `deposit_interest_id_fk` (`interest_id`),
  CONSTRAINT `deposit_card_id_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `deposit_interest_id_fk` FOREIGN KEY (`interest_id`) REFERENCES `interest` (`id`),
  CONSTRAINT `deposit_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 COMMENT='存款数据表';

-- ----------------------------
-- Records of deposit
-- ----------------------------
INSERT INTO `deposit` VALUES ('33', '2017-05-24 20:43:17', '2017-05-24 20:43:17', '121', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('34', '2017-05-24 20:49:35', '2017-05-24 20:49:35', '300', '1', '120', '35', '8');
INSERT INTO `deposit` VALUES ('35', '2017-05-24 20:52:36', '2017-05-24 20:52:36', '200', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('36', '2017-05-24 20:54:33', '2017-05-24 20:54:33', '200', '1', '120', '35', '2');
INSERT INTO `deposit` VALUES ('37', '2017-05-25 09:07:48', '2017-05-25 09:07:48', '333', '1', '120', '35', '2');
INSERT INTO `deposit` VALUES ('38', '2017-05-26 17:44:57', '2017-05-26 17:44:57', '123', '1', '120', '35', '2');
INSERT INTO `deposit` VALUES ('39', '2017-05-26 18:07:18', '2017-05-26 18:07:18', '200', '1', '120', '35', '4');
INSERT INTO `deposit` VALUES ('40', '2017-05-26 20:34:04', '2017-05-26 20:34:04', '2', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('41', '2017-05-31 18:19:59', '2017-05-31 18:19:59', '1200', '1', '120', '35', '4');
INSERT INTO `deposit` VALUES ('42', '2017-05-31 20:45:09', '2017-05-31 20:45:13', '1798', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('43', '2017-05-31 20:46:48', '2017-05-31 20:46:52', '1234', '1', '140', '9', '1');
INSERT INTO `deposit` VALUES ('44', '2017-06-01 10:56:11', '2017-06-01 10:56:14', '1456', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('45', '2017-06-01 10:56:34', '2017-06-01 10:56:37', '1356', '1', '140', '9', '1');
INSERT INTO `deposit` VALUES ('46', '2017-06-01 10:57:01', '2017-06-01 10:57:04', '987', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('47', '2017-06-01 11:00:08', '2017-06-01 11:00:12', '886', '1', '140', '9', '1');
INSERT INTO `deposit` VALUES ('48', '2017-06-01 11:01:06', '2017-06-01 11:01:09', '566', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('49', '2017-06-01 11:01:24', '2017-06-01 11:01:28', '354', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('50', '2017-06-01 11:01:51', '2017-06-01 11:01:53', '546', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('51', '2017-06-01 11:02:11', '2017-06-01 11:02:14', '1234', '1', '140', '9', '1');
INSERT INTO `deposit` VALUES ('52', '2017-06-01 11:02:33', '2017-06-01 11:02:37', '13456', '1', '140', '9', '1');
INSERT INTO `deposit` VALUES ('53', '2017-06-01 11:20:16', '2017-06-01 11:20:19', '567', '0', '140', '9', '1');
INSERT INTO `deposit` VALUES ('54', '2017-06-08 20:24:22', '2017-06-08 20:24:22', '1000', '1', '120', '132', '1');
INSERT INTO `deposit` VALUES ('55', '2017-06-08 20:25:44', '2017-06-08 20:25:44', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('56', '2017-06-08 20:32:05', '2017-06-08 20:32:05', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('57', '2017-06-08 20:33:23', '2017-06-08 20:33:23', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('58', '2017-06-08 20:34:49', '2017-06-08 20:34:49', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('59', '2017-06-08 20:35:21', '2017-06-08 20:35:21', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('60', '2017-06-08 20:36:05', '2017-06-08 20:36:05', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('61', '2017-06-08 20:36:35', '2017-06-08 20:36:35', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('62', '2017-06-08 20:37:00', '2017-06-08 20:37:00', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('63', '2017-06-08 20:37:43', '2017-06-08 20:37:43', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('64', '2017-06-08 20:38:35', '2017-06-08 20:38:35', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('65', '2017-06-08 20:38:58', '2017-06-08 20:38:58', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('66', '2017-06-08 20:39:19', '2017-06-08 20:39:19', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('67', '2017-06-08 20:40:02', '2017-06-08 20:40:02', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('68', '2017-06-08 20:40:21', '2017-06-08 20:40:21', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('69', '2017-06-08 20:40:32', '2017-06-08 20:40:32', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('70', '2017-06-08 20:41:00', '2017-06-08 20:41:00', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('71', '2017-06-08 20:42:01', '2017-06-08 20:42:01', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('72', '2017-06-08 20:42:20', '2017-06-08 20:42:20', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('73', '2017-06-08 20:42:58', '2017-06-08 20:42:58', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('74', '2017-06-08 20:43:13', '2017-06-08 20:43:13', '100', '0', '120', '132', '8');
INSERT INTO `deposit` VALUES ('75', '2017-06-18 09:03:16', '2017-06-18 09:03:16', '1001', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('76', '2017-06-18 09:09:25', '2017-06-18 09:09:25', '1000', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('77', '2017-06-18 09:18:50', '2017-06-18 09:18:50', '100', '0', '120', '35', '1');
INSERT INTO `deposit` VALUES ('78', '2017-06-18 10:36:15', '2017-06-18 10:36:15', '300', '0', '120', '35', '1');
INSERT INTO `deposit` VALUES ('79', '2017-06-18 15:46:11', '2017-06-18 15:46:11', '50', '1', '120', '35', '1');
INSERT INTO `deposit` VALUES ('80', '2017-06-18 16:09:08', '2017-06-18 16:09:08', '22', '0', '120', '35', '45');
INSERT INTO `deposit` VALUES ('81', '2017-06-18 16:12:20', '2017-06-18 16:12:20', '21', '0', '120', '35', '3');
INSERT INTO `deposit` VALUES ('82', '2017-06-18 17:54:33', '2017-06-18 17:54:33', '300', '1', '120', '35', '2');

-- ----------------------------
-- Table structure for enterprise_regist
-- ----------------------------
DROP TABLE IF EXISTS `enterprise_regist`;
CREATE TABLE `enterprise_regist` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `token` varchar(32) NOT NULL COMMENT '令牌',
  `name` varchar(30) NOT NULL COMMENT '名字',
  `person_name` varchar(30) DEFAULT NULL COMMENT '法人名字',
  `location` varchar(30) DEFAULT NULL COMMENT '地址',
  `email` varchar(30) DEFAULT NULL COMMENT '邮箱',
  `password` varchar(32) NOT NULL,
  `card_id` int(11) DEFAULT NULL COMMENT '银行卡id',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `enterprise_regist_card_id_fk` (`card_id`),
  CONSTRAINT `enterprise_regist_card_id_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='企业注册数据表';

-- ----------------------------
-- Records of enterprise_regist
-- ----------------------------
INSERT INTO `enterprise_regist` VALUES ('14', '47d1a915a3a6555655bd1d4793fccb40', '苏杰盛世', 'yoyowr', '陕西省西安市未央区', '111111111111@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '25', '2017-06-15 17:54:21');
INSERT INTO `enterprise_regist` VALUES ('15', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:35');
INSERT INTO `enterprise_regist` VALUES ('16', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:38');
INSERT INTO `enterprise_regist` VALUES ('17', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:38');
INSERT INTO `enterprise_regist` VALUES ('18', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:37');
INSERT INTO `enterprise_regist` VALUES ('19', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:38');
INSERT INTO `enterprise_regist` VALUES ('20', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:38');
INSERT INTO `enterprise_regist` VALUES ('21', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:40');
INSERT INTO `enterprise_regist` VALUES ('22', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:40');
INSERT INTO `enterprise_regist` VALUES ('23', '440108d0b3dee5e1086407fc465fe49b', 'xiangongye', 'sujie', 'xiangoongye', '1511749834@qq.com', '9db06bcff9248837f86d1a6bcf41c9e7', '30', '2017-06-18 08:47:40');

-- ----------------------------
-- Table structure for interest
-- ----------------------------
DROP TABLE IF EXISTS `interest`;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rate` double NOT NULL COMMENT '利息',
  `duration` int(11) NOT NULL DEFAULT '1' COMMENT '贷款时长（单位天）',
  `bank_id` int(11) NOT NULL COMMENT '银行id',
  `is_deposit` int(11) NOT NULL DEFAULT '1' COMMENT '是否为存款： 1是， 0 否',
  PRIMARY KEY (`id`),
  KEY `loan_interest_bank_id_fk` (`bank_id`),
  CONSTRAINT `loan_interest_bank_id_fk` FOREIGN KEY (`bank_id`) REFERENCES `bank` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='利率数据表';

-- ----------------------------
-- Records of interest
-- ----------------------------
INSERT INTO `interest` VALUES ('1', '0.5', '365', '1', '1');
INSERT INTO `interest` VALUES ('2', '0.3', '730', '1', '1');
INSERT INTO `interest` VALUES ('3', '1', '90', '1', '1');
INSERT INTO `interest` VALUES ('4', '0.1', '180', '1', '1');
INSERT INTO `interest` VALUES ('5', '0.1', '180', '1', '1');
INSERT INTO `interest` VALUES ('6', '1.2', '180', '1', '1');
INSERT INTO `interest` VALUES ('7', '1.2', '180', '1', '1');
INSERT INTO `interest` VALUES ('8', '1.3', '365', '1', '1');
INSERT INTO `interest` VALUES ('16', '1.09', '30', '1', '0');
INSERT INTO `interest` VALUES ('17', '1.09', '100', '1', '0');
INSERT INTO `interest` VALUES ('18', '1.09', '100', '1', '0');
INSERT INTO `interest` VALUES ('19', '1.09', '108', '1', '0');
INSERT INTO `interest` VALUES ('20', '1.05', '30', '1', '0');
INSERT INTO `interest` VALUES ('21', '1.05', '30', '1', '0');
INSERT INTO `interest` VALUES ('22', '1.05', '30', '1', '0');
INSERT INTO `interest` VALUES ('23', '1.2', '365', '1', '0');
INSERT INTO `interest` VALUES ('24', '1.09', '90', '1', '0');
INSERT INTO `interest` VALUES ('25', '0.3', '730', '1', '1');
INSERT INTO `interest` VALUES ('26', '0.1', '1000', '1', '1');
INSERT INTO `interest` VALUES ('27', '0.1', '1000', '1', '1');
INSERT INTO `interest` VALUES ('28', '1.4', '1', '1', '0');
INSERT INTO `interest` VALUES ('29', '1.9', '3', '1', '0');
INSERT INTO `interest` VALUES ('43', '0.0435', '1', '1', '0');
INSERT INTO `interest` VALUES ('44', '0.045', '3', '1', '0');
INSERT INTO `interest` VALUES ('45', '10000', '-8888', '1', '0');
INSERT INTO `interest` VALUES ('46', '0.0435', '1', '1', '0');
INSERT INTO `interest` VALUES ('47', '0.0435', '1', '1', '0');
INSERT INTO `interest` VALUES ('48', '0.0435', '1', '1', '0');
INSERT INTO `interest` VALUES ('49', '0.0435', '1', '1', '0');
INSERT INTO `interest` VALUES ('50', '0.1', '2222', '1', '1');

-- ----------------------------
-- Table structure for loan
-- ----------------------------
DROP TABLE IF EXISTS `loan`;
CREATE TABLE `loan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  `money` double NOT NULL COMMENT '金额',
  `is_pay_back` int(11) NOT NULL DEFAULT '0' COMMENT '是否归还',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `card_id` int(11) NOT NULL COMMENT '银行卡id',
  `interest_id` int(11) NOT NULL COMMENT '利率id',
  PRIMARY KEY (`id`),
  KEY `loan_user_id_fk` (`user_id`),
  KEY `loan_card_id_fk` (`card_id`),
  KEY `loan_interest_id_fk` (`interest_id`),
  CONSTRAINT `loan_card_id_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `loan_interest_id_fk` FOREIGN KEY (`interest_id`) REFERENCES `interest` (`id`),
  CONSTRAINT `loan_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='贷款数据表';

-- ----------------------------
-- Records of loan
-- ----------------------------
INSERT INTO `loan` VALUES ('1', '2017-05-21 09:51:35', '2017-05-22 09:51:40', '5000', '0', '114', '30', '1');
INSERT INTO `loan` VALUES ('6', '2017-05-24 17:58:27', '2017-05-24 17:58:27', '10000', '0', '140', '9', '22');
INSERT INTO `loan` VALUES ('7', '2017-05-24 18:14:29', '2017-05-24 18:14:29', '20000', '0', '6', '131', '23');
INSERT INTO `loan` VALUES ('9', '2017-05-26 18:00:08', '2017-05-26 18:00:08', '10000', '0', '114', '142', '28');
INSERT INTO `loan` VALUES ('10', '2017-05-26 18:22:44', '2017-05-26 18:22:44', '10000', '0', '114', '139', '29');
INSERT INTO `loan` VALUES ('24', '2017-05-26 20:19:57', '2017-05-26 20:19:57', '10000', '0', '114', '125', '43');
INSERT INTO `loan` VALUES ('25', '2017-05-26 20:41:55', '2017-05-26 20:41:55', '8888', '0', '16', '129', '44');
INSERT INTO `loan` VALUES ('26', '2017-05-31 18:38:18', '2017-05-31 18:38:18', '11', '0', '120', '35', '45');
INSERT INTO `loan` VALUES ('27', '2017-06-01 18:24:18', '2017-06-01 18:24:18', '2000', '0', '6', '136', '46');
INSERT INTO `loan` VALUES ('28', '2017-06-04 14:46:07', '2017-06-04 14:46:07', '10000', '0', '114', '133', '48');
INSERT INTO `loan` VALUES ('29', '2017-06-09 11:35:55', '2017-06-09 11:35:55', '10000', '0', '114', '137', '49');

-- ----------------------------
-- Table structure for loan_info
-- ----------------------------
DROP TABLE IF EXISTS `loan_info`;
CREATE TABLE `loan_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '利率',
  `create_time` date DEFAULT NULL COMMENT '贷款时的时间',
  `loan_time` varchar(255) DEFAULT NULL COMMENT '贷款年限（时间）',
  `propping_material` varchar(255) DEFAULT '' COMMENT '贷款的材料',
  `loan_money` int(11) DEFAULT NULL COMMENT '贷款金额',
  `user_id` int(11) DEFAULT NULL COMMENT '用户id',
  `card_id` int(255) DEFAULT NULL COMMENT '银行卡号',
  `repayment_mode` int(255) DEFAULT NULL COMMENT '还款方式',
  `rate_id` int(11) DEFAULT NULL COMMENT '利率',
  PRIMARY KEY (`id`),
  KEY `card_loal_card` (`card_id`),
  KEY `card_loal_user` (`user_id`),
  KEY `card_loal_rate` (`rate_id`),
  CONSTRAINT `card_loal_card` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `card_loal_rate` FOREIGN KEY (`rate_id`) REFERENCES `card_rate` (`id`),
  CONSTRAINT `card_loal_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of loan_info
-- ----------------------------
INSERT INTO `loan_info` VALUES ('7', '2017-05-31', '1', '', '5000', '114', '106', '2', '2');
INSERT INTO `loan_info` VALUES ('8', '2017-05-10', '1', '', '10000', '6', '47', '2', '1');
INSERT INTO `loan_info` VALUES ('9', '2017-05-01', '1', '', '123456', '6', '136', '1', '1');
INSERT INTO `loan_info` VALUES ('10', '2017-05-11', '1', '', '5000', '114', '108', '1', '1');
INSERT INTO `loan_info` VALUES ('21', '2017-06-02', '1', '', '0', '114', '24', '2', '1');
INSERT INTO `loan_info` VALUES ('22', '2017-06-03', '1', '2.jpg', '11111', '114', '24', '1', '1');
INSERT INTO `loan_info` VALUES ('26', '2017-06-03', '1', '2.jpg', '99999', '114', '24', '1', '1');
INSERT INTO `loan_info` VALUES ('27', '2017-06-02', '1', '2.jpg', '0', '114', '24', '2', '2');
INSERT INTO `loan_info` VALUES ('28', '2017-06-04', '1', '2.jpg', '20000', '114', '24', '1', '3');
INSERT INTO `loan_info` VALUES ('29', '2017-06-04', '1', '', '5000', '114', '106', '1', '2');
INSERT INTO `loan_info` VALUES ('30', '2017-06-04', '1', '2.jpg', '10000', '114', '24', '1', '1');
INSERT INTO `loan_info` VALUES ('31', '2017-06-04', '5', '2.jpg', '70000', '6', '146', '1', '3');
INSERT INTO `loan_info` VALUES ('32', '2017-06-04', '5', '2.jpg', '11111', '114', '117', '1', '2');
INSERT INTO `loan_info` VALUES ('33', '2017-06-04', '8', '2.jpg', '90000', '6', '146', '1', '3');
INSERT INTO `loan_info` VALUES ('34', '2017-06-04', '8', '2.jpg', '70000', '114', '24', '1', '3');
INSERT INTO `loan_info` VALUES ('35', '2017-06-04', '1', '0.png', '35000', '114', '24', '2', '1');
INSERT INTO `loan_info` VALUES ('36', '2017-06-04', '2', '{@7RKR3FA$8_6[3$3TKHN_6.png', '10000', '114', '107', '2', '2');
INSERT INTO `loan_info` VALUES ('37', '2017-06-08', '1', '0.png', '10000', '114', '115', '1', '1');
INSERT INTO `loan_info` VALUES ('38', '2017-06-09', '1', 'img-3e5ca9d06a24d47baab013a30a88d41f.jpg', '99000', '114', '112', '2', '1');
INSERT INTO `loan_info` VALUES ('39', '2017-06-17', '1', '捕获.JPG', '10000', '114', '133', '2', '1');
INSERT INTO `loan_info` VALUES ('40', '2017-06-18', '1', '捕获.JPG', '10000', '114', '24', '2', '1');
INSERT INTO `loan_info` VALUES ('41', '2017-06-18', '1', '捕获.JPG', '10000', '114', '24', '2', '1');
INSERT INTO `loan_info` VALUES ('42', '2017-06-18', '2', '1.jpg', '10000', '114', '107', '1', '2');
INSERT INTO `loan_info` VALUES ('43', '2017-06-18', '3', '2.jpg', '10000', '6', '136', '2', '2');
INSERT INTO `loan_info` VALUES ('44', '2017-06-18', '1', 'bb.png', '10000', '6', '136', '1', '1');
INSERT INTO `loan_info` VALUES ('45', '2017-06-18', '1', 'bb.png', '10000', '114', '152', '1', '1');
INSERT INTO `loan_info` VALUES ('46', '2017-06-18', '3', 'bb.png', '10000', '114', '109', '1', '2');
INSERT INTO `loan_info` VALUES ('47', '2017-06-18', '3', 'bb.png', '10000', '114', '109', '2', '2');

-- ----------------------------
-- Table structure for repayment
-- ----------------------------
DROP TABLE IF EXISTS `repayment`;
CREATE TABLE `repayment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create_time` date NOT NULL,
  `money` double(11,1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_id` int(11) NOT NULL,
  `loan_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `repayment_user_id_fk` (`user_id`),
  KEY `repayment_card_id_fk` (`card_id`),
  KEY `repayment_loan_id_fk` (`loan_id`),
  CONSTRAINT `repayment_card_id_fk` FOREIGN KEY (`card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `repayment_loan_id_fk` FOREIGN KEY (`loan_id`) REFERENCES `loan_info` (`id`),
  CONSTRAINT `repayment_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of repayment
-- ----------------------------
INSERT INTO `repayment` VALUES ('125', '2017-06-06', '1916.7', '114', '106', '7');
INSERT INTO `repayment` VALUES ('126', '2017-06-06', '418.7', '114', '108', '10');
INSERT INTO `repayment` VALUES ('128', '2017-06-06', '5833.3', '114', '24', '21');
INSERT INTO `repayment` VALUES ('129', '2017-06-06', '35416.7', '114', '24', '21');
INSERT INTO `repayment` VALUES ('130', '2017-06-06', '1250.0', '114', '24', '21');
INSERT INTO `repayment` VALUES ('131', '2017-06-06', '29499.6', '114', '24', '27');
INSERT INTO `repayment` VALUES ('132', '2017-06-06', '418.7', '114', '108', '10');
INSERT INTO `repayment` VALUES ('133', '2017-06-07', '22222.0', '6', '47', '8');
INSERT INTO `repayment` VALUES ('134', '2017-06-08', '930.5', '114', '24', '22');
INSERT INTO `repayment` VALUES ('135', '2017-06-18', '11.0', '114', '106', '7');
INSERT INTO `repayment` VALUES ('136', '2017-06-18', '11111.0', '6', '47', '8');
INSERT INTO `repayment` VALUES ('137', '2017-06-18', '11250.0', '6', '47', '8');
INSERT INTO `repayment` VALUES ('138', '2017-06-18', '1111.0', '6', '47', '8');
INSERT INTO `repayment` VALUES ('139', '2017-06-18', '12121.0', '6', '136', '9');
INSERT INTO `repayment` VALUES ('140', '2017-06-18', '2343.0', '6', '136', '9');

-- ----------------------------
-- Table structure for sfsfsd
-- ----------------------------
DROP TABLE IF EXISTS `sfsfsd`;
CREATE TABLE `sfsfsd` (
  `id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sfsfsd
-- ----------------------------

-- ----------------------------
-- Table structure for status_indentify
-- ----------------------------
DROP TABLE IF EXISTS `status_indentify`;
CREATE TABLE `status_indentify` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identify_code` varchar(32) NOT NULL COMMENT '识别码',
  `card_number` varchar(32) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='身份认证数据表';

-- ----------------------------
-- Records of status_indentify
-- ----------------------------
INSERT INTO `status_indentify` VALUES ('3', 'e5c93bfcf3b033da1c888cf61246d4e5', '22222222222222222211', '2017-06-06 11:27:02');
INSERT INTO `status_indentify` VALUES ('4', 'e5c93bfcf3b033da1c888cf61246d4e5', '22222222222222222211', '2017-06-06 18:51:09');
INSERT INTO `status_indentify` VALUES ('5', 'e5c93bfcf3b033da1c888cf61246d4e5', '22222222222222222211', '2017-06-06 18:51:39');
INSERT INTO `status_indentify` VALUES ('6', 'e5c93bfcf3b033da1c888cf61246d4e5', '22222222222222222211', '2017-06-06 18:52:05');
INSERT INTO `status_indentify` VALUES ('7', 'e5c93bfcf3b033da1c888cf61246d4e5', '22222222222222222211', '2017-06-06 18:57:04');

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` int(11) NOT NULL COMMENT '转账用户Id',
  `from_card_id` int(11) NOT NULL COMMENT '转出卡的id',
  `to_card_id` int(11) NOT NULL COMMENT '接收卡的id',
  `money` double NOT NULL COMMENT '金额',
  `message` varchar(100) DEFAULT NULL COMMENT '附加信息',
  `create_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`) COMMENT '主键',
  KEY `transfer_user_id_fk` (`user_id`),
  KEY `transfer_from_card_id_fk` (`from_card_id`),
  KEY `transfer_to_card_fk` (`to_card_id`),
  CONSTRAINT `transfer_from_card_id_fk` FOREIGN KEY (`from_card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `transfer_to_card_fk` FOREIGN KEY (`to_card_id`) REFERENCES `card` (`id`),
  CONSTRAINT `transfer_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='转账表';

-- ----------------------------
-- Records of transfer
-- ----------------------------
INSERT INTO `transfer` VALUES ('5', '6', '10', '25', '325', '', '2017-04-30 18:40:50');
INSERT INTO `transfer` VALUES ('6', '6', '10', '25', '325', '', '2017-04-30 18:41:09');
INSERT INTO `transfer` VALUES ('7', '6', '10', '25', '325', '还钱', '2017-04-30 18:42:08');
INSERT INTO `transfer` VALUES ('12', '120', '35', '10', '3', 'hello', '2017-05-07 09:07:24');
INSERT INTO `transfer` VALUES ('13', '120', '35', '10', '3', 'hello', '2017-05-14 14:16:19');
INSERT INTO `transfer` VALUES ('14', '120', '35', '10', '3', 'hello', '2017-05-14 14:18:56');
INSERT INTO `transfer` VALUES ('15', '6', '9', '10', '3', 'hello', '2017-05-14 14:24:42');
INSERT INTO `transfer` VALUES ('16', '6', '9', '10', '3', 'hello', '2017-05-14 14:30:30');
INSERT INTO `transfer` VALUES ('17', '6', '9', '10', '3', 'hello', '2017-05-14 14:36:12');
INSERT INTO `transfer` VALUES ('18', '6', '9', '10', '3', 'hello', '2017-05-14 14:41:28');
INSERT INTO `transfer` VALUES ('19', '6', '9', '10', '3', 'hello', '2017-05-14 14:47:10');
INSERT INTO `transfer` VALUES ('20', '6', '9', '10', '3', 'hello', '2017-05-14 14:52:40');
INSERT INTO `transfer` VALUES ('21', '6', '9', '10', '3', 'hello', '2017-05-14 14:56:46');
INSERT INTO `transfer` VALUES ('23', '6', '54', '54', '32', '222', '2017-06-18 09:50:56');
INSERT INTO `transfer` VALUES ('24', '6', '25', '54', '15', '33', '2017-06-18 09:51:17');
INSERT INTO `transfer` VALUES ('25', '6', '58', '54', '250', '333', '2017-06-18 14:32:32');
INSERT INTO `transfer` VALUES ('26', '6', '54', '54', '33', '22', '2017-06-18 14:32:55');
INSERT INTO `transfer` VALUES ('27', '6', '25', '54', '22', '11', '2017-06-18 14:35:35');
INSERT INTO `transfer` VALUES ('28', '6', '25', '54', '78', '3', '2017-06-18 14:46:26');
INSERT INTO `transfer` VALUES ('29', '6', '25', '54', '100', '', '2017-06-18 14:46:56');
INSERT INTO `transfer` VALUES ('30', '6', '25', '54', '100', '', '2017-06-18 14:50:08');
INSERT INTO `transfer` VALUES ('31', '6', '25', '54', '22', '22', '2017-06-18 14:55:13');
INSERT INTO `transfer` VALUES ('32', '6', '25', '54', '22', '22', '2017-06-18 15:05:45');
INSERT INTO `transfer` VALUES ('33', '6', '25', '54', '11', '2', '2017-06-18 15:09:37');
INSERT INTO `transfer` VALUES ('34', '6', '25', '54', '45', '1', '2017-06-18 15:20:11');
INSERT INTO `transfer` VALUES ('35', '6', '25', '54', '22', '1212', '2017-06-18 15:25:31');
INSERT INTO `transfer` VALUES ('36', '6', '25', '54', '11', '11', '2017-06-18 15:26:44');
INSERT INTO `transfer` VALUES ('37', '6', '25', '54', '67', '222', '2017-06-18 17:44:48');
INSERT INTO `transfer` VALUES ('38', '6', '25', '54', '1', '111', '2017-06-23 19:40:42');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '姓名',
  `age` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `gender` tinyint(4) DEFAULT NULL COMMENT '性别： 0： 男 ， 1： 女',
  `address` varchar(100) DEFAULT NULL COMMENT '地址',
  `phone` varchar(11) NOT NULL COMMENT '手机号码',
  `birthplace` varchar(20) DEFAULT NULL COMMENT '出生地（籍贯）',
  `birthday` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '出生日期',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `photo` varchar(100) DEFAULT NULL COMMENT '照片',
  `nickname` varchar(50) DEFAULT NULL COMMENT '昵称',
  `email` varchar(30) NOT NULL COMMENT '邮箱',
  `validataCode` varchar(255) DEFAULT NULL,
  `registerDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `state` int(1) NOT NULL DEFAULT '1' COMMENT '用户状态',
  PRIMARY KEY (`id`) COMMENT '主键',
  UNIQUE KEY `user_phone_uk` (`phone`) COMMENT '手机号码唯一',
  UNIQUE KEY `email` (`email`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=172 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('6', 'yoyowr', '45', null, '西安未央', '18323232341', null, '2017-06-08 20:17:41', '9db06bcff9248837f86d1a6bcf41c9e7', null, '苏苏', '111111111111@qq.com', '264397', '2017-06-18 14:55:10', '0');
INSERT INTO `user` VALUES ('7', 'uptowncat', null, '0', '西安未央', '1830942201', 'month', '2013-09-09 00:00:00', '202cb962ac59075b964b07152d234b70', '123.jpg', 'dog', '15386638658@qq.com122', '', '2017-06-06 21:01:16', '0');
INSERT INTO `user` VALUES ('10', 'uptowncat', '100', '0', '西安未央', '1830942204', 'earth', '2017-04-23 16:58:32', '0c0b3da4ac402bd86191d959be081114', '123.jpg', 'cat', '15386638658@qq.com422', null, '2017-05-08 12:36:43', '0');
INSERT INTO `user` VALUES ('13', 'uptowncat', '100', '0', '西安未央', '1830942207', 'earth', '2017-04-23 16:58:32', '202cb962ac59075b964b07152d234b70', '123.jpg', 'cat', '15386638658@qq.com722', null, '2017-05-07 17:31:34', '1');
INSERT INTO `user` VALUES ('14', 'uptowncat', '100', '0', '西安未央', '1830942208', 'earth', '2017-04-23 16:58:32', '202cb962ac59075b964b07152d234b70', '123.jpg', 'cat', '15386638658@qq.com822', null, '2017-06-17 22:49:18', '0');
INSERT INTO `user` VALUES ('15', 'uptowncat', null, '0', '西安未央', '1830942209', 'earth', '2017-04-23 16:58:33', '68053af2923e00204c3ca7c6a3150cf7', '123.jpg', 'cat', '15386638658@qq.com922', '895549', '2017-05-07 17:31:34', '1');
INSERT INTO `user` VALUES ('16', 'uptowncat99', '99', null, '西安未央', '18309422010', null, '2017-05-14 20:28:29', '1cc39ffd758234422e1f75beadfc5fb2', '123.jpg', 'cat', '15386638658@qq.com1022', null, '2017-06-08 20:44:50', '0');
INSERT INTO `user` VALUES ('18', 'uptowncat', '100', '0', '西安未央', '18309422012', 'earth', '2017-04-23 16:58:33', '202cb962ac59075b964b07152d234b70', '123.jpg', 'cat', '15386638658@qq.com1222', null, '2017-05-07 17:31:34', '1');
INSERT INTO `user` VALUES ('19', 'uptowncat', '100', '0', '西安未央', '18309422013', 'earth', '2017-04-23 16:58:33', '202cb962ac59075b964b07152d234b70', '123', 'cat', '15386638658@qq.com1322', null, '2017-05-15 18:26:52', '1');
INSERT INTO `user` VALUES ('20', 'uptowncat', '100', '0', '西安未央', '18309422014', 'earth', '2017-04-23 16:58:33', '14e1b600b1fd579f47433b88e8d85291', '123.jpg', 'cat', '15386638658@qq.com1422', null, '2017-06-18 09:45:30', '0');
INSERT INTO `user` VALUES ('107', 'WAFS', '20', '0', 'SFSFSFSD', '1212121212', 'SFSFSFS', '2017-04-13 00:00:00', 'f3c042cb52d1ea290d48aedecf1169ea', 'E:\\apache-tomcat-7.0.70\\webapps\\lanqiaobank\\upload/user/1493032621348timg.jpg', 'SFS', 'DFSFDFSDFDSFS', null, '2017-05-07 17:31:34', '1');
INSERT INTO `user` VALUES ('114', 'sujie', '66', '1', '镇安县', '13227031580', 'earth', '2017-06-18 18:56:15', '9db06bcff9248837f86d1a6bcf41c9e7', 'bb.png', 'hanghang', '151174983@qq.com', null, '2017-06-18 18:56:15', '1');
INSERT INTO `user` VALUES ('115', 'wsad', '10', '0', 'aaaa', '18309221176', 'aa', '2017-05-09 00:00:00', '9db06bcff9248837f86d1a6bcf41c9e7', 'D:\\tomcat7.0\\apache-tomcat-7.0.77\\webapps\\lanqiaobank\\upload/user/14939740553661-130303001936.jpg', 'aa', '1836278216@qq.com', null, '2017-05-15 23:46:56', '1');
INSERT INTO `user` VALUES ('118', '刘晓莉', '4', '1', '乌鲁木齐', '18829898743', '新疆', '2017-05-10 00:00:00', '9db06bcff9248837f86d1a6bcf41c9e7', 'D:\\Lanqiao\\apache-tomcat-7.0.70\\webapps\\lanqiaobank\\upload/user/14940432764770.jpg', '大幅度', '1445243270@qq.com', null, '2017-05-15 21:01:29', '1');
INSERT INTO `user` VALUES ('120', 'Sumimng', null, '1', '陕西西安', '18629610721', 'ff', '2017-05-09 00:00:00', 'b537a06cf3bcb33206237d7149c27bc3', null, 'parris', '997498474@qq.com', '', '2017-06-18 17:51:13', '0');
INSERT INTO `user` VALUES ('135', 'wang', null, '0', 'sfsfsfsd', '18309221622', 'sfsfsfs', '2017-05-09 00:00:00', 'd9b1d7db4cd6e70935368a1efb10e377', null, '2sf', '10738444@qq.com', '603635', '2017-05-21 15:19:28', '1');
INSERT INTO `user` VALUES ('137', 'weibai', '18', '0', '', '18829897928', '', '2017-05-14 17:29:19', '14e1b600b1fd579f47433b88e8d85291', null, '', '1215317617@qq.com', null, null, '1');
INSERT INTO `user` VALUES ('138', 'ef', '21', '0', 'we', '18302929281', 'we', '2017-05-01 00:00:00', '14e1b600b1fd579f47433b88e8d85291', 'kebiao.png', 'er', '23123@qq.com', null, null, '1');
INSERT INTO `user` VALUES ('140', 'wa', null, '0', 'sfsfsf', '18309221630', 'sfsfs', '2017-05-16 00:00:00', 'd9b1d7db4cd6e70935368a1efb10e377', null, 'sfs', '1073844487@qq.com', '449545', '2017-06-18 14:37:51', '0');
INSERT INTO `user` VALUES ('144', '苏杰', '22', '0', '镇安县', '13227031581', '陕西省商洛市', '2017-06-12 00:00:00', 'd593db4e52fa9ddca35ad15f2e5ed1bc', 'a.jpg', '苏杰', '1511747834@qq.com', null, '2017-06-18 11:58:48', '1');
INSERT INTO `user` VALUES ('160', 'sfdfg', '20', '0', 'xvxvxv', '18309221633', 'vxvxvx', '2017-06-13 00:00:00', '3049a1f0f1c808cdaa4fbed0e01649b1', 'timg.jpg', 'xvx', '107384449@qq.com', null, '2017-06-18 14:38:18', '1');
INSERT INTO `user` VALUES ('164', '苏杰', '22', '0', '镇安县', '13227031589', '陕西省商洛市', '2017-06-14 00:00:00', 'e59ae25d3900684bb468d542858fd041', 'a.jpg', 'sujie', '1511749830@qq.com', null, '2017-06-18 11:56:59', '1');
INSERT INTO `user` VALUES ('167', 'sujie666', '22', '0', '镇安县', '18829897777', '陕西省商洛市', '2017-05-29 00:00:00', '0fe791ff08c6ee6f0695d311d0c94334', 'a.jpg', 'su', '1511749834@qq.com', '579288', '2017-06-18 17:17:33', '1');
INSERT INTO `user` VALUES ('168', 'wwwwwwww', '5', '0', 'asdasdadas', '18309221640', 'adadadas', '2017-06-15 00:00:00', 'd9b1d7db4cd6e70935368a1efb10e377', 'timg.jpg', 'afa', '1073844495@qq.com', null, null, '1');
INSERT INTO `user` VALUES ('169', '张文龙', null, '0', '西安工业', '18717265382', '陕西西藏', '2017-06-18 00:00:00', '9db06bcff9248837f86d1a6bcf41c9e7', 'IMG_5073.JPG', '', '983187857@qq.com', null, null, '1');
INSERT INTO `user` VALUES ('170', '', null, '0', '', '18309112345', '', '2017-06-18 18:43:24', '14e1b600b1fd579f47433b88e8d85291', null, '', '', null, null, '1');

-- ----------------------------
-- Table structure for userconsultation
-- ----------------------------
DROP TABLE IF EXISTS `userconsultation`;
CREATE TABLE `userconsultation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户咨询ID',
  `user_id` int(11) NOT NULL COMMENT '咨询用户人Id',
  `comment` varchar(4000) NOT NULL COMMENT '咨询内容',
  `consultationtime` date NOT NULL COMMENT '咨询日期',
  `replaystate` int(11) NOT NULL COMMENT '是否已回复',
  PRIMARY KEY (`id`) COMMENT '主键'
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='用户咨询表';

-- ----------------------------
-- Records of userconsultation
-- ----------------------------
INSERT INTO `userconsultation` VALUES ('1', '10', 'ss', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('2', '11', '效果怎么样', '2017-05-09', '1');
INSERT INTO `userconsultation` VALUES ('3', '13', '哈哈哈', '2017-05-08', '1');
INSERT INTO `userconsultation` VALUES ('5', '11', '是的发送到干', '2017-05-12', '1');
INSERT INTO `userconsultation` VALUES ('6', '15', 'sadfasdf', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('7', '14', 'dsfgfhsd', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('8', '10', '0这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('9', '10', '1这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('10', '10', '0这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('11', '16', 'sdjtyrkyu', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('12', '10', '0这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('13', '10', '1这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('14', '10', '0这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('15', '10', '1这是什么？', '2017-05-14', '1');
INSERT INTO `userconsultation` VALUES ('16', '6', '这个', '2017-05-03', '1');
INSERT INTO `userconsultation` VALUES ('17', '6', '的', '2017-05-04', '1');
INSERT INTO `userconsultation` VALUES ('18', '6', '的点点滴滴多多多', '2017-05-02', '1');
INSERT INTO `userconsultation` VALUES ('19', '6', '顶顶顶顶', '2017-05-03', '1');
INSERT INTO `userconsultation` VALUES ('20', '6', '对对对', '2017-05-02', '1');
INSERT INTO `userconsultation` VALUES ('21', '6', '鹅鹅鹅鹅鹅鹅', '2017-05-02', '1');
INSERT INTO `userconsultation` VALUES ('22', '6', 'QQ', '2017-05-09', '1');
INSERT INTO `userconsultation` VALUES ('23', '6', '我问问', '2017-05-01', '1');
INSERT INTO `userconsultation` VALUES ('24', '6', '呜呜呜呜', '2017-05-05', '1');
INSERT INTO `userconsultation` VALUES ('25', '6', '是是是', '2017-05-02', '1');
INSERT INTO `userconsultation` VALUES ('26', '6', '灌灌灌灌灌过', '2017-05-04', '1');
INSERT INTO `userconsultation` VALUES ('27', '6', '反反复复付', '2017-05-06', '1');
INSERT INTO `userconsultation` VALUES ('28', '6', '坎坎坷坷', '2017-05-03', '1');
INSERT INTO `userconsultation` VALUES ('29', '6', '嘻嘻嘻', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('30', '6', '啦啦啦啦', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('31', '6', '啦啦啦啦啦', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('32', '6', '啦啦啦', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('33', '6', '啦啦啦啦', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('34', '6', '重中之重', '2017-05-17', '1');
INSERT INTO `userconsultation` VALUES ('35', '6', '来来来', '2017-05-17', '0');
INSERT INTO `userconsultation` VALUES ('36', '6', 'ssss', '2017-05-22', '0');
INSERT INTO `userconsultation` VALUES ('37', '6', 'ssss', '2017-05-22', '1');
INSERT INTO `userconsultation` VALUES ('38', '6', 'hahah', '2017-05-22', '0');
INSERT INTO `userconsultation` VALUES ('39', '6', 'sssssssssssss', '2017-05-28', '1');
INSERT INTO `userconsultation` VALUES ('40', '6', 'sssssssssssss', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('41', '6', 'sssssssssssss', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('42', '6', 'sssssssssssss', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('43', '6', 'sssssssssssss', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('44', '6', 'sssssssssssss', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('45', '6', '', '2017-05-28', '1');
INSERT INTO `userconsultation` VALUES ('46', '6', 'heiheihei', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('47', '6', 'ppppp', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('48', '6', '啦啦啦啦啦绿绿', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('49', '6', 'vvvvvvvvv', '2017-05-28', '1');
INSERT INTO `userconsultation` VALUES ('50', '6', 'gggggggg', '2017-05-28', '0');
INSERT INTO `userconsultation` VALUES ('51', '6', 'shenmmmm', '2017-05-29', '0');
INSERT INTO `userconsultation` VALUES ('52', '6', '11111111111111111111111', '2017-05-31', '0');
INSERT INTO `userconsultation` VALUES ('53', '6', '434', '2017-05-31', '0');
INSERT INTO `userconsultation` VALUES ('54', '6', '4343', '2017-05-31', '0');
INSERT INTO `userconsultation` VALUES ('55', '6', '呃呃呃', '2017-05-31', '0');
INSERT INTO `userconsultation` VALUES ('56', '114', '你问的是什么啊 ？', '2017-06-06', '0');
INSERT INTO `userconsultation` VALUES ('57', '114', '啥子菲达环保', '2017-06-06', '0');
INSERT INTO `userconsultation` VALUES ('58', '114', '啥子菲达环保', '2017-06-06', '0');
INSERT INTO `userconsultation` VALUES ('59', '114', 'ceshi', '2017-06-07', '0');
INSERT INTO `userconsultation` VALUES ('60', '6', '234234', '2017-06-18', '0');
