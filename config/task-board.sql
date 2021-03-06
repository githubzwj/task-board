/*
Navicat MySQL Data Transfer

Source Server         : http://kanban.ishuwo.com
Source Server Version : 50621
Source Host           : 120.24.76.190:3306
Source Database       : kanban

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2015-07-23 10:01:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `content` varchar(255) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES ('1', '我是一个评论', '1');
INSERT INTO `comment` VALUES ('2', '我是第二个评论', '1');

-- ----------------------------
-- Table structure for csv
-- ----------------------------
DROP TABLE IF EXISTS `csv`;
CREATE TABLE `csv` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `md5` char(32) NOT NULL DEFAULT '' COMMENT 'md5值',
  `size` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '大小',
  `mime` varchar(140) NOT NULL DEFAULT '' COMMENT 'mime值',
  `name` varchar(140) NOT NULL DEFAULT '' COMMENT '文件名',
  `originalname` varchar(140) NOT NULL DEFAULT '' COMMENT '原名字',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for iteration
-- ----------------------------
DROP TABLE IF EXISTS `iteration`;
CREATE TABLE `iteration` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `version_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属版本',
  `name` char(6) NOT NULL DEFAULT '' COMMENT '迭代名称',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '截止时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_vn` (`version_id`,`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8 COMMENT='迭代计划';

-- ----------------------------
-- Records of iteration
-- ----------------------------
INSERT INTO `iteration` VALUES ('1', '2', '第一迭代', '1', '2', '99', '1425463281');
INSERT INTO `iteration` VALUES ('2', '1', '第二迭代', '1', '2', '99', '1425463294');
INSERT INTO `iteration` VALUES ('4', '3', '第三迭代', '1426599261', '1426699261', '99', '1425527348');
INSERT INTO `iteration` VALUES ('5', '2', '第二迭代', '1425139200', '1425571200', '99', '1425607568');
INSERT INTO `iteration` VALUES ('9', '7', '第8地阿呆', '1425630884', '1425630884', '99', '1425630923');
INSERT INTO `iteration` VALUES ('10', '3', '第一迭代', '1426399253', '2', '99', '1425961751');
INSERT INTO `iteration` VALUES ('11', '3', '第二迭代', '1426499260', '1426599260', '99', '1425961756');
INSERT INTO `iteration` VALUES ('13', '8', '第一迭代', '1425978912', '1426670112', '99', '1425978880');
INSERT INTO `iteration` VALUES ('14', '9', '第一迭代', '1425978951', '1426842951', '99', '1425978908');
INSERT INTO `iteration` VALUES ('15', '9', '第二迭代', '1426842971', '1427706971', '99', '1425978931');
INSERT INTO `iteration` VALUES ('16', '11', '第一迭代', '1425866179', '1426989379', '1', '1426038950');
INSERT INTO `iteration` VALUES ('17', '11', '第二迭代', '1427075808', '1428026208', '1', '1426038976');
INSERT INTO `iteration` VALUES ('18', '12', '第一迭代', '1426044175', '1426389775', '1', '1426044107');
INSERT INTO `iteration` VALUES ('19', '13', '第一迭代', '1428905778', '1429251378', '1', '1428905673');
INSERT INTO `iteration` VALUES ('20', '14', '第一迭代', '1428921219', '1429439619', '1', '1428921069');
INSERT INTO `iteration` VALUES ('21', '14', '第二迭代', '1429526077', '1430044477', '1', '1428921099');
INSERT INTO `iteration` VALUES ('22', '15', '第一迭代', '1425881247', '1429250847', '1', '1428991698');
INSERT INTO `iteration` VALUES ('23', '15', '第二迭代', '1429513114', '1431673114', '1', '1428994812');
INSERT INTO `iteration` VALUES ('24', '15', '第三迭代', '1431932461', '1432882861', '1', '1428994936');
INSERT INTO `iteration` VALUES ('25', '15', '第四迭代', '1433142129', '1434092529', '1', '1428994984');
INSERT INTO `iteration` VALUES ('26', '15', '第五迭代', '1434351777', '1438239777', '0', '1428995062');
INSERT INTO `iteration` VALUES ('27', '16', '第一迭代', '1429145706', '1430355306', '0', '1429145552');
INSERT INTO `iteration` VALUES ('28', '16', '第二迭代', '1430441739', '1433033739', '0', '1429145586');
INSERT INTO `iteration` VALUES ('29', '18', '第一迭代', '1429087571', '1431765971', '1', '1429173904');
INSERT INTO `iteration` VALUES ('30', '19', '第一迭代', '1428922139', '1429872539', '1', '1429181381');
INSERT INTO `iteration` VALUES ('31', '19', '第二迭代', '1430131832', '1431082232', '1', '1429181461');
INSERT INTO `iteration` VALUES ('32', '19', '第三迭代', '1430131876', '1430391076', '1', '1429181492');
INSERT INTO `iteration` VALUES ('33', '13', '第二迭代', '1429508851', '1429854451', '1', '1429249687');
INSERT INTO `iteration` VALUES ('34', '13', '测试', '1430114194', '1431064594', '1', '1429250335');
INSERT INTO `iteration` VALUES ('35', '14', '第三迭代', '1430121149', '1430639549', '1', '1429516191');
INSERT INTO `iteration` VALUES ('36', '18', '第二迭代', '1429516626', '1429862226', '1', '1429516634');
INSERT INTO `iteration` VALUES ('37', '11', '第四迭代', '1429518075', '1429863675', '1', '1429518087');
INSERT INTO `iteration` VALUES ('38', '11', '第三迭代', '1428913305', '1429258905', '1', '1429518121');
INSERT INTO `iteration` VALUES ('39', '20', '第一迭代', '1429519965', '1429865565', '1', '1429520050');
INSERT INTO `iteration` VALUES ('40', '21', '第一迭代', '1429520807', '1429866407', '1', '1429520821');
INSERT INTO `iteration` VALUES ('41', '22', '第一迭代', '1429584348', '1431657948', '1', '1429584417');
INSERT INTO `iteration` VALUES ('42', '22', '第二迭代', '1431917185', '1435632385', '1', '1429584499');
INSERT INTO `iteration` VALUES ('43', '19', '第四迭代', '1430708043', '1431053643', '1', '1430101148');
INSERT INTO `iteration` VALUES ('44', '21', '第二迭代', '1430103836', '1430363036', '1', '1430103476');
INSERT INTO `iteration` VALUES ('45', '20', '第二迭代', '1430114081', '1430373281', '1', '1430105948');
INSERT INTO `iteration` VALUES ('46', '21', '第三迭代', '1430703907', '1431049507', '1', '1430679752');
INSERT INTO `iteration` VALUES ('47', '20', '第三迭代', '1430704959', '1431050559', '1', '1430679752');
INSERT INTO `iteration` VALUES ('48', '23', '第一迭代', '1430705374', '1431655774', '1', '1430679752');
INSERT INTO `iteration` VALUES ('49', '20', '第四迭代', '1431311431', '1431657031', '1', '1431079510');
INSERT INTO `iteration` VALUES ('50', '19', '第五迭代', '1431311844', '1431657444', '1', '1431079510');
INSERT INTO `iteration` VALUES ('51', '24', '第一迭代', '1222290432', '1999890432', '1', '1431079510');
INSERT INTO `iteration` VALUES ('52', '25', '第一迭代', '1431915586', '1432261186', '0', '1431651988');
INSERT INTO `iteration` VALUES ('53', '20', '第五迭代', '1431915651', '1432261251', '1', '1431651988');
INSERT INTO `iteration` VALUES ('54', '27', '第一迭代', '1431310821', '1432261221', '0', '1431651988');
INSERT INTO `iteration` VALUES ('55', '19', '第六迭代', '1432536345', '1432881945', '1', '1431651988');
INSERT INTO `iteration` VALUES ('56', '28', '第一迭代', '1432003520', '1432262720', '1', '1431651988');
INSERT INTO `iteration` VALUES ('57', '20', '第六迭代', '1432546252', '1432891852', '1', '1431651988');
INSERT INTO `iteration` VALUES ('58', '29', '第一迭代', '1431931893', '1432882293', '1', '1431651988');
INSERT INTO `iteration` VALUES ('59', '29', '第二迭代', '1433143650', '1433489250', '0', '1431651988');
INSERT INTO `iteration` VALUES ('60', '30', '第一迭代', '1432709769', '1432882569', '0', '1431651988');
INSERT INTO `iteration` VALUES ('61', '19', '第七迭代', '1433143857', '1433489457', '1', '1431651988');
INSERT INTO `iteration` VALUES ('62', '20', '第七迭代', '1433144092', '1433489692', '1', '1431651988');
INSERT INTO `iteration` VALUES ('63', '31', '第一迭代', '1433158271', '1433849471', '1', '1431651988');
INSERT INTO `iteration` VALUES ('64', '31', '第二迭代', '1433935901', '1434108701', '1', '1431651988');
INSERT INTO `iteration` VALUES ('65', '32', '第一迭代', '1433174400', '1433779200', '99', '1431651988');
INSERT INTO `iteration` VALUES ('66', '32', '第二迭代', '1433865600', '1434038400', '99', '1431651988');
INSERT INTO `iteration` VALUES ('67', '33', '第一迭代', '1434360230', '1434705830', '1', '1433323449');
INSERT INTO `iteration` VALUES ('68', '34', '第一迭代', '1434442912', '1435306912', '1', '1433323449');
INSERT INTO `iteration` VALUES ('69', '34', '第二迭代', '1435566166', '1435911766', '0', '1433323449');
INSERT INTO `iteration` VALUES ('70', '36', '产品问题', '1435293814', '1440564214', '0', '1433323449');
INSERT INTO `iteration` VALUES ('71', '36', '服务流程问题', '1435293841', '1440564241', '0', '1433323449');
INSERT INTO `iteration` VALUES ('72', '37', '第一迭代', '1435652021', '1435997621', '0', '1435299366');
INSERT INTO `iteration` VALUES ('73', '36', '产品BUG', '1435296959', '1440567359', '0', '1435299366');
INSERT INTO `iteration` VALUES ('74', '38', '7月份建议', '1435741702', '1438333702', '1', '1435299366');

-- ----------------------------
-- Table structure for msg91u
-- ----------------------------
DROP TABLE IF EXISTS `msg91u`;
CREATE TABLE `msg91u` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) NOT NULL DEFAULT '' COMMENT '内容',
  `receiver` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '接受者',
  `is_readed` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否已读',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `is_deleted` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1766 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of msg91u
-- ----------------------------
INSERT INTO `msg91u` VALUES ('1', '任务[Cordova请求组件的js脚本学习并编写]小刘已完成。作为故事负责人，你会收到此消息', '48', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('2', '任务[Cordova请求组件的js脚本学习并编写]大大已完成。作为同一故事下的相关人员，你会收到此消息', '58', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('3', '任务[Cordova请求组件的js脚本学习并编写]小刘已完成。作为同一故事下的相关人员，你会收到此消息', '48', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('4', '任务[【swift】协议和扩展]大大已完成。作为故事负责人，你会收到此消息', '58', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('5', '任务[【swift】协议和扩展]大大已完成。作为同一故事下的相关人员，你会收到此消息', '58', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('6', '任务[统计报表框架]陈宏已完成。作为故事负责人，你会收到此消息', '55', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('7', '任务[统计报表框架]阿妹已完成。作为同一故事下的相关人员，你会收到此消息', '44', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('8', '任务[统计报表框架]陈宏已完成。作为同一故事下的相关人员，你会收到此消息', '55', '0', '1431079510', '0');
INSERT INTO `msg91u` VALUES ('9', '任务[统计报表框架]水木已完成。作为同一故事下的相关人员，你会收到此消息', '64', '0', '1431079510', '0');


-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '' COMMENT '标题',
  `content` text NOT NULL COMMENT '内容',
  `create_time` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of post
-- ----------------------------
INSERT INTO `post` VALUES ('1', 'hello', 'world', '0');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leader` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '项目负责人',
  `name` varchar(12) DEFAULT '' COMMENT '项目名称',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_nl` (`name`,`leader`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='项目';

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('44', '62', '手机APP开发', '0', '1425993583');
INSERT INTO `project` VALUES ('45', '44', '看板BUG收集', '0', '1426044007');
INSERT INTO `project` VALUES ('46', '46', '安卓端共通化改造', '0', '1427351152');
INSERT INTO `project` VALUES ('47', '59', 'IOS共通化改造', '0', '1427351164');
INSERT INTO `project` VALUES ('48', '61', 'WEB端共通化改造', '0', '1427351183');
INSERT INTO `project` VALUES ('49', '55', '服务端共通化改造', '0', '1427351203');
INSERT INTO `project` VALUES ('50', '59', '手机APP商家开发', '0', '1428905545');
INSERT INTO `project` VALUES ('51', '44', '看板开发', '0', '1429173834');
INSERT INTO `project` VALUES ('52', '46', '持续集成', '0', '1429511752');
INSERT INTO `project` VALUES ('53', '45', '支付体系', '0', '1429584087');
INSERT INTO `project` VALUES ('54', '46', '看板意见收集', '0', '1431079510');
INSERT INTO `project` VALUES ('55', '46', '团购平台', '99', '1431651988');
INSERT INTO `project` VALUES ('56', '59', '手机APP建议收集', '99', '1435299366');
INSERT INTO `project` VALUES ('57', '46', 'ewewe', '0', '1436792689');
INSERT INTO `project` VALUES ('58', '49', 'we', '0', '1436792689');

-- ----------------------------
-- Table structure for story
-- ----------------------------
DROP TABLE IF EXISTS `story`;
CREATE TABLE `story` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL DEFAULT '' COMMENT '故事title',
  `leader` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '故事负责人',
  `iteration_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '所属迭代计划ID；废弃的字段',
  `version_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '版本ID',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '优先级',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '记录时间',
  PRIMARY KEY (`id`),
  KEY `uniq_vt` (`version_id`,`title`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of story
-- ----------------------------
INSERT INTO `story` VALUES ('12', '供应商管理模块开发', '44', '14', '9', '0', '0', '1425979033');
INSERT INTO `story` VALUES ('13', '出入库核心模块开发 (主要基于UI开发，不提交QA）', '44', '14', '9', '0', '0', '1425979042');
INSERT INTO `story` VALUES ('14', '账户+权限', '49', '16', '11', '0', '99', '1426040456');
INSERT INTO `story` VALUES ('15', '配置', '47', '16', '11', '0', '99', '1426040472');
INSERT INTO `story` VALUES ('16', '微信', '47', '16', '11', '0', '99', '1426040488');
INSERT INTO `story` VALUES ('17', '支付', '48', '16', '11', '0', '99', '1426040500');
INSERT INTO `story` VALUES ('18', '订单', '46', '16', '11', '0', '99', '1426040514');
INSERT INTO `story` VALUES ('19', '合同', '49', '16', '11', '0', '99', '1426040526');
INSERT INTO `story` VALUES ('20', '项目', '49', '16', '11', '0', '99', '1426040537');
INSERT INTO `story` VALUES ('21', '商户', '48', '16', '11', '0', '99', '1426040550');
INSERT INTO `story` VALUES ('22', '会员', '46', '16', '11', '0', '99', '1426040561');
INSERT INTO `story` VALUES ('23', '报表', '49', '16', '11', '0', '99', '1426040574');
INSERT INTO `story` VALUES ('24', '售后', '49', '16', '11', '0', '99', '1426040584');
INSERT INTO `story` VALUES ('25', '活动', '49', '16', '11', '0', '99', '1426040600');
INSERT INTO `story` VALUES ('26', 'bug收集', '53', '18', '12', '0', '0', '1426044151');
INSERT INTO `story` VALUES ('27', '建议优化', '46', '18', '12', '0', '0', '1426044162');
INSERT INTO `story` VALUES ('29', '会员', '46', '17', '11', '0', '0', '1426830525');
INSERT INTO `story` VALUES ('30', '合同', '49', '17', '11', '0', '0', '1426830535');
INSERT INTO `story` VALUES ('31', '售后', '49', '17', '11', '0', '0', '1426830548');
INSERT INTO `story` VALUES ('32', '商户', '48', '17', '11', '0', '0', '1426830561');
INSERT INTO `story` VALUES ('33', '微信', '47', '17', '11', '0', '0', '1426830573');
INSERT INTO `story` VALUES ('34', '报表', '49', '17', '11', '0', '0', '1426830592');
INSERT INTO `story` VALUES ('35', '支付', '48', '17', '11', '0', '0', '1426830603');
INSERT INTO `story` VALUES ('36', '活动', '49', '17', '11', '0', '0', '1426830617');
INSERT INTO `story` VALUES ('37', '订单', '46', '17', '11', '0', '0', '1426830631');
INSERT INTO `story` VALUES ('38', '账户+权限', '49', '17', '11', '0', '0', '1426830643');
INSERT INTO `story` VALUES ('39', '配置', '47', '17', '11', '0', '0', '1426830655');
INSERT INTO `story` VALUES ('40', '项目', '49', '17', '11', '0', '0', '1426830664');
INSERT INTO `story` VALUES ('41', '其他', '46', '17', '11', '0', '0', '1426831686');
INSERT INTO `story` VALUES ('42', '共通化', '55', '21', '14', '0', '99', '1428972911');
INSERT INTO `story` VALUES ('43', '共通化', '55', '20', '14', '0', '0', '1428972959');
INSERT INTO `story` VALUES ('44', '数据持久层-http通讯模块', '59', '22', '15', '3', '0', '1428992418');
INSERT INTO `story` VALUES ('45', '数据持久层-基于json的数据层', '59', '22', '15', '3', '0', '1428992505');
INSERT INTO `story` VALUES ('46', '数据持久层-序列化模块', '59', '22', '15', '3', '0', '1428992580');
INSERT INTO `story` VALUES ('47', '数据持久层-数据格式化', '59', '22', '15', '3', '0', '1428992615');
INSERT INTO `story` VALUES ('48', '信息系统层-主机管理', '59', '22', '15', '3', '0', '1428992699');
INSERT INTO `story` VALUES ('49', '数据持久层-数据安全模块', '59', '22', '15', '3', '0', '1428992752');
INSERT INTO `story` VALUES ('50', '数据持久层-设备管理', '59', '22', '15', '3', '0', '1428992794');
INSERT INTO `story` VALUES ('51', '数据持久层-日志管理', '59', '22', '15', '3', '0', '1428992824');
INSERT INTO `story` VALUES ('52', '业务逻辑层-闪退日志服务', '59', '22', '15', '3', '0', '1428992925');
INSERT INTO `story` VALUES ('53', '业务逻辑层-图片服务', '59', '22', '15', '3', '0', '1428992965');
INSERT INTO `story` VALUES ('54', '业务逻辑层-信息统计服务', '59', '22', '15', '3', '0', '1428993005');
INSERT INTO `story` VALUES ('55', '业务逻辑层-第三方应用服务', '59', '22', '15', '3', '0', '1428993103');
INSERT INTO `story` VALUES ('56', '业务逻辑层-账号登陆服务', '59', '22', '15', '3', '0', '1428993139');
INSERT INTO `story` VALUES ('57', '业务逻辑层-版本管理服务', '59', '22', '15', '3', '0', '1428993178');
INSERT INTO `story` VALUES ('58', '表示层-web页面控制器', '59', '22', '15', '3', '0', '1428993310');
INSERT INTO `story` VALUES ('59', '表示层-通知', '59', '22', '15', '3', '0', '1428993404');
INSERT INTO `story` VALUES ('60', '表示层-进度条', '59', '22', '15', '3', '0', '1428993420');
INSERT INTO `story` VALUES ('61', 'Hybrid服务接口', '48', '23', '15', '0', '99', '1429000201');
INSERT INTO `story` VALUES ('62', 'Hybrid服务接口', '48', '23', '15', '0', '99', '1429000201');
INSERT INTO `story` VALUES ('63', 'Hybrid-服务接口API', '48', '23', '15', '3', '0', '1429000201');
INSERT INTO `story` VALUES ('64', 'Hybrid-Android原型', '48', '23', '15', '3', '0', '1429000239');
INSERT INTO `story` VALUES ('65', 'Hybrid-iOS原型', '48', '23', '15', '3', '0', '1429000248');
INSERT INTO `story` VALUES ('66', 'Hybrid-iOS自动化打包', '48', '24', '15', '3', '0', '1429000286');
INSERT INTO `story` VALUES ('67', 'Hybrid-插件开发', '48', '24', '15', '3', '0', '1429000314');
INSERT INTO `story` VALUES ('68', 'H5原型开发', '48', '24', '15', '0', '99', '1429000326');
INSERT INTO `story` VALUES ('69', 'Hybrid-H5原型开发', '48', '23', '15', '3', '0', '1429000340');
INSERT INTO `story` VALUES ('70', 'Hybrid-性能优化', '48', '25', '15', '3', '0', '1429064640');
INSERT INTO `story` VALUES ('71', 'Hybrid-Android端开发', '48', '25', '15', '3', '0', '1429064658');
INSERT INTO `story` VALUES ('72', 'Hybrid-H5模块开发', '48', '25', '15', '3', '0', '1429064675');
INSERT INTO `story` VALUES ('73', 'Hybrid-iOS端开发', '48', '25', '15', '3', '0', '1429064684');
INSERT INTO `story` VALUES ('74', '规范文档整理', '61', '27', '16', '0', '0', '1429145814');
INSERT INTO `story` VALUES ('75', '通用组件整理', '61', '27', '16', '0', '0', '1429145826');
INSERT INTO `story` VALUES ('76', '方案设计', '52', '19', '13', '0', '0', '1429173570');
INSERT INTO `story` VALUES ('77', '查询优化', '52', '19', '13', '0', '0', '1429173593');
INSERT INTO `story` VALUES ('78', '异步优化', '52', '33', '13', '0', '0', '1429173610');
INSERT INTO `story` VALUES ('79', '接口请求优化', '52', '33', '13', '0', '0', '1429173638');
INSERT INTO `story` VALUES ('80', '定向优化', '52', '33', '13', '0', '0', '1429173650');
INSERT INTO `story` VALUES ('81', '服务端开发', '44', '29', '18', '0', '0', '1429173938');
INSERT INTO `story` VALUES ('82', '基于网络请求的交互体验优化', '59', '33', '13', '0', '0', '1429249812');
INSERT INTO `story` VALUES ('83', '新建任务的优化', '53', '36', '18', '0', '0', '1429516698');
INSERT INTO `story` VALUES ('84', '增加我的任务', '53', '36', '18', '0', '0', '1429516717');
INSERT INTO `story` VALUES ('85', '新增任务必填信息', '53', '36', '18', '0', '0', '1429516747');
INSERT INTO `story` VALUES ('86', '刷新时记住上次信息', '53', '36', '18', '0', '0', '1429516774');
INSERT INTO `story` VALUES ('87', '增加任务优先级排序', '53', '36', '18', '0', '0', '1429516805');
INSERT INTO `story` VALUES ('88', '看板中按照故事筛选任务', '53', '36', '18', '0', '0', '1429516832');
INSERT INTO `story` VALUES ('89', '泳道中增加下拉，方便拖动', '53', '36', '18', '0', '0', '1429516897');
INSERT INTO `story` VALUES ('90', '新增前置任务完成后的99U消息推送', '44', '36', '18', '0', '0', '1429516915');
INSERT INTO `story` VALUES ('91', '增加迭代的关闭功能，在我的任务中不能选择', '53', '36', '18', '0', '0', '1429516929');
INSERT INTO `story` VALUES ('92', '模块和优先级是事先订好的话，有个统一设定的地方就行了', '53', '36', '18', '0', '0', '1429516944');
INSERT INTO `story` VALUES ('93', '故事可以调整到未关闭的迭代中', '53', '36', '18', '0', '0', '1429516974');
INSERT INTO `story` VALUES ('94', '【BUG】没有前置任务的任务有的也有箭头功能', '53', '36', '18', '0', '0', '1429516994');
INSERT INTO `story` VALUES ('95', '拖动他人故事时要提示', '53', '36', '18', '0', '0', '1429517011');
INSERT INTO `story` VALUES ('96', '显示前置任务时隐藏其他任务', '53', '36', '18', '0', '0', '1429517029');
INSERT INTO `story` VALUES ('97', '任务状态改变时，可以查阅各个状态下停留的时间', '44', '36', '18', '0', '0', '1429517063');
INSERT INTO `story` VALUES ('98', '增加截止时间', '44', '36', '18', '0', '0', '1429517079');
INSERT INTO `story` VALUES ('99', '发布与Dump迁移联调', '46', '37', '11', '0', '0', '1429518149');
INSERT INTO `story` VALUES ('100', '新版UI替换', '46', '38', '11', '0', '0', '1429518262');
INSERT INTO `story` VALUES ('101', '新环境Jenkins环境搭建', '46', '39', '20', '0', '0', '1429520151');
INSERT INTO `story` VALUES ('102', '通用方法设计', '54', '30', '19', '0', '0', '1429520381');
INSERT INTO `story` VALUES ('103', 'UI组件DEMO', '56', '30', '19', '0', '0', '1429520398');
INSERT INTO `story` VALUES ('104', '反馈模块设计', '57', '30', '19', '0', '0', '1429520414');
INSERT INTO `story` VALUES ('105', '通用方法开发', '54', '31', '19', '0', '0', '1429520438');
INSERT INTO `story` VALUES ('106', '反馈模块开发', '57', '31', '19', '0', '0', '1429520540');
INSERT INTO `story` VALUES ('107', '下载模块设计', '46', '31', '19', '0', '0', '1429520550');
INSERT INTO `story` VALUES ('108', '梳理静态代码检查标准', '46', '31', '19', '0', '0', '1429520604');
INSERT INTO `story` VALUES ('109', '导入导出功能', '44', '40', '21', '0', '0', '1429520854');
INSERT INTO `story` VALUES ('110', '通过SVN流转', '44', '40', '21', '0', '0', '1429520877');
INSERT INTO `story` VALUES ('111', '关注任务功能', '44', '40', '21', '0', '0', '1429520894');
INSERT INTO `story` VALUES ('112', '通知中心功能', '44', '40', '21', '0', '0', '1429520917');
INSERT INTO `story` VALUES ('113', '文档', '48', '41', '22', '3', '0', '1429584521');
INSERT INTO `story` VALUES ('114', '沟通交流', '48', '41', '22', '0', '99', '1429584535');
INSERT INTO `story` VALUES ('115', '接口对接', '48', '42', '22', '3', '0', '1429584553');
INSERT INTO `story` VALUES ('116', '文档编写', '48', '42', '22', '3', '0', '1429584561');
INSERT INTO `story` VALUES ('117', '沟通交流', '48', '42', '22', '3', '0', '1429584570');
INSERT INTO `story` VALUES ('118', '表现层共通化', '62', '24', '15', '0', '99', '1429843862');
INSERT INTO `story` VALUES ('119', '表现层共通化', '62', '23', '15', '0', '99', '1429843869');
INSERT INTO `story` VALUES ('120', '表现层共通化', '62', '25', '15', '0', '99', '1429843879');
INSERT INTO `story` VALUES ('121', '表现层共通化 - 基础控件库', '62', '26', '15', '3', '0', '1429843887');
INSERT INTO `story` VALUES ('122', '1.1版本优化', '46', '0', '21', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('123', 'swift-基本语法特性整理', '58', '0', '15', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('124', '表现层共通化 - 拓展控件库', '62', '0', '15', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('125', '表现层共通化 - 业务控件库', '62', '0', '15', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('126', '版本和迭代可关闭', '46', '0', '21', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('127', 'swift-基础控件使用', '58', '0', '15', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('128', 'swift-流行控件使用', '58', '0', '15', '3', '0', '1430101148');
INSERT INTO `story` VALUES ('129', '前置任务可多选', '46', '0', '21', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('130', '新增任务优化', '46', '0', '21', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('131', 'swift-Demo项目', '58', '0', '15', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('132', '版本中的日期建议做成日历点选', '46', '0', '21', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('133', 'swift-共通化改造探索', '58', '0', '15', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('134', 'swift-分享', '58', '0', '15', '3', '0', '1430103476');
INSERT INTO `story` VALUES ('135', '静态代码检查及报告集成', '46', '0', '20', '1', '0', '1430105948');
INSERT INTO `story` VALUES ('136', '通用方法单元测试', '46', '0', '19', '1', '0', '1430105948');
INSERT INTO `story` VALUES ('137', '静态代码检查修改', '46', '0', '19', '1', '0', '1430105948');
INSERT INTO `story` VALUES ('138', '代码走查CheckList', '46', '0', '19', '3', '0', '1430105948');
INSERT INTO `story` VALUES ('139', '第三方库选型', '46', '0', '19', '3', '0', '1430105948');
INSERT INTO `story` VALUES ('140', '工时统计功能扩展', '46', '0', '21', '3', '99', '1430679752');
INSERT INTO `story` VALUES ('141', '增加任务备注功能', '46', '0', '21', '3', '99', '1430679752');
INSERT INTO `story` VALUES ('142', '通知中心', '46', '0', '21', '3', '99', '1430679752');
INSERT INTO `story` VALUES ('143', '迭代维护树形展开', '46', '0', '21', '3', '99', '1430679752');
INSERT INTO `story` VALUES ('144', '燃尽图功能', '46', '0', '21', '3', '99', '1430679752');
INSERT INTO `story` VALUES ('145', '随机自动化测试工具', '46', '0', '20', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('146', '燃尽图功能', '46', '0', '23', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('147', '迭代维护树形展开', '46', '0', '23', '1', '0', '1430679752');
INSERT INTO `story` VALUES ('148', '通知中心', '46', '0', '23', '1', '0', '1430679752');
INSERT INTO `story` VALUES ('149', '增加任务备注功能', '46', '0', '23', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('150', '工时统计功能扩展', '46', '0', '23', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('151', '照相模块预研', '46', '0', '19', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('152', '二维码模块预研', '46', '0', '19', '0', '99', '1430679752');
INSERT INTO `story` VALUES ('153', '二维码扫描模块预研', '46', '0', '19', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('154', '共通化框架优化', '46', '0', '19', '3', '0', '1430679752');
INSERT INTO `story` VALUES ('155', '前置任务可多选', '53', '0', '23', '0', '0', '1430734641');
INSERT INTO `story` VALUES ('156', '新增任务优化', '53', '0', '23', '0', '0', '1430734641');
INSERT INTO `story` VALUES ('157', 'Hybrid-宣导沟通', '48', '0', '15', '3', '0', '1430792315');
INSERT INTO `story` VALUES ('158', '任务完成后的通知', '46', '0', '23', '5', '0', '1430792315');
INSERT INTO `story` VALUES ('159', '增加截止日期功能', '46', '0', '23', '1', '0', '1430792315');
INSERT INTO `story` VALUES ('160', '单元测试集成', '46', '0', '20', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('161', '自动化测试用例集成', '46', '0', '20', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('162', '代码分析集成', '46', '0', '20', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('163', '微信支付模块', '46', '0', '23', '3', '99', '1431079510');
INSERT INTO `story` VALUES ('164', '声波功能预研', '46', '0', '23', '3', '99', '1431079510');
INSERT INTO `story` VALUES ('165', '微信支付模块', '46', '0', '19', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('166', '声波功能预研', '46', '0', '19', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('167', '商户端集成共通模块', '46', '0', '19', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('168', '测试故事', '46', '0', '24', '3', '0', '1431079510');
INSERT INTO `story` VALUES ('169', '报表性能优化', '64', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('170', '门店营业记录等模块优化', '52', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('171', '解决web app白屏问题', '61', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('172', '统一金额输入控制', '59', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('173', 'webapp性能优化', '61', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('174', '微信服务化', '63', '0', '27', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('175', '报表服务化', '64', '0', '27', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('176', '日志分析', '55', '0', '27', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('177', '导购和B端融合设计', '47', '0', '27', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('178', '其他硬件模块预研', '46', '0', '19', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('179', '导购APP需求调整', '46', '0', '28', '5', '0', '1431651988');
INSERT INTO `story` VALUES ('180', 'Bug修复', '48', '0', '28', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('181', 'iOS-基于共通化应用的重构', '59', '0', '25', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('182', '流程集成', '46', '0', '20', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('183', '持续构建', '46', '0', '20', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('184', '常用方法封装', '46', '0', '19', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('185', 'ID防刷', '59', '0', '29', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('186', '客户端二维码显示', '59', '0', '30', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('187', '测试', '46', '0', '31', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('188', '提交订单', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('189', '支付成功页面调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('190', '支付完成流程调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('191', '订单列表', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('192', '订单详情页面调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('193', '过期修改预约功能', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('194', '调整评价功能', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('195', '短信提示调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('196', '分享功能', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('197', '服务保障展示', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('198', '美天客服调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('199', '新订单提醒功能', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('200', '昨日收益', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('201', '门店结算报表', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('202', '订单列表修改', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('203', '项目统计定义修改', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('204', 'crm-会员关系', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('205', '系统设置', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('206', '提交订单', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('207', '支付成功页面调整', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('208', '支付完成流程调整', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('209', '订单列表', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('210', '订单详情页面调整', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('211', '过期修改预约功能', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('212', '调整评价功能', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('213', '短信提示调整', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('214', '分享功能', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('215', '服务保障展示', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('216', '美天客服调整', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('217', '新订单提醒功能', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('218', '昨日收益', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('219', '门店结算报表', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('220', '订单列表修改', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('221', '项目统计定义修改', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('222', 'crm-会员关系', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('223', '系统设置', '46', '0', '32', '3', '99', '1431651988');
INSERT INTO `story` VALUES ('224', '微信菜单调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('225', '信息绑定逻辑调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('226', '微信推送内容可维护', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('227', '新增文章功能', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('228', '美丽蜕变调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('229', '增加商品详情内容', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('230', '商户详情页功能调整', '46', '0', '31', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('231', '调整项目场次排期', '46', '0', '31', '4', '0', '1431651988');
INSERT INTO `story` VALUES ('232', '扫描二维码，插入会员', '64', '0', '30', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('233', '关于界面改造', '61', '0', '30', '3', '0', '1431651988');
INSERT INTO `story` VALUES ('234', '客户端ID类型改造', '59', '0', '29', '3', '0', '1433298383');
INSERT INTO `story` VALUES ('235', '平台化改造', '48', '0', '15', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('236', '【Server】设计及打桩', '52', '0', '34', '5', '0', '1433323449');
INSERT INTO `story` VALUES ('237', '【B端】系统设置-》赠送金设置', '52', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('238', '【B端】会员信息', '54', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('239', '【B端】会员卡', '59', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('240', '【B端】交易', '59', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('241', '营业记录', '59', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('242', '赠送金通知', '44', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('243', '【公共服务】图片接口改造', '44', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('244', '报表', '64', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('245', '店面设置-》产品', '54', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('246', '会员卡', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('247', '交易', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('248', '【PCWeb】营业记录', '45', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('249', '【C端】会员卡', '45', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('250', '消费记录', '45', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('251', '消息中心', '62', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('252', '会员卡', '53', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('253', '消费记录', '49', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('254', '菜单', '47', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('255', '【PCWeb】提成', '55', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('256', '【PCWeb】报表', '64', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('257', '【手机端】新手引导', '62', '0', '35', '2', '0', '1433323449');
INSERT INTO `story` VALUES ('258', '【PCWeb】菜单改造', '61', '0', '35', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('259', '我要预约', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('260', '【微信】预约记录', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('261', '【PCWeb】多版本兼容', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('262', '【实施】实施', '47', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('263', '【实施】数据导入', '61', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('264', '【统计埋点】', '55', '0', '35', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('265', '表现层共通化文档梳理', '62', '0', '15', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('266', '【手机端】新手引导', '62', '0', '34', '3', '0', '1433323449');
INSERT INTO `story` VALUES ('267', '运营平台', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('268', '商户平台', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('269', '微信服务号', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('270', '手机短信', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('271', '微信后台', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('272', '顾客售前售后', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('273', '测试故事', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('274', '门店服务问题', '60', '0', '36', '0', '0', '1433323449');
INSERT INTO `story` VALUES ('275', '【手机端】店内版本管理', '52', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('276', '【PCWeb】【交易管理】开单', '61', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('277', '【PCWeb】店面设置', '61', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('278', '【PCWeb】【交易管理】未结账记录', '61', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('279', '【PCWeb】库存管理', '61', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('280', '注册功能', '46', '0', '37', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('281', '通知功能', '46', '0', '37', '5', '0', '1435299366');
INSERT INTO `story` VALUES ('282', '【PCWeb】会员搜索', '49', '0', '34', '3', '0', '1435299366');
INSERT INTO `story` VALUES ('283', '产品建议', '59', '0', '38', '3', '99', '1435299366');

-- ----------------------------
-- Table structure for task
-- ----------------------------
DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属项目ID',
  `version_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属版本ID',
  `iteration_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属迭代ID',
  `story_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属故事ID',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '指定人员',
  `desc` varchar(1000) NOT NULL DEFAULT '' COMMENT '故事描述',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `is_new` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否新建',
  `is_challenging` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否挑战',
  `priority` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '优先级',
  `estimated_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '估时(秒数)',
  `status_id` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '备注',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '起始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '结束时间',
  `deadline` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '截止线时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `deadline` (`deadline`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `story_id` (`story_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1424 DEFAULT CHARSET=utf8 COMMENT='我的任务';

-- ----------------------------
-- Records of task
-- ----------------------------
INSERT INTO `task` VALUES ('51', '43', '9', '14', '12', '44', '供应商管理接口-打桩', '0', '1', '0', '1', '6', '50', '', '1426044132', '1430115728', '0', '1425979857');
INSERT INTO `task` VALUES ('52', '43', '9', '14', '12', '44', '供应商管理接口-增加、删除、修改', '0', '1', '0', '3', '6', '50', '', '1426044133', '1430115730', '0', '1425979887');
INSERT INTO `task` VALUES ('53', '43', '9', '14', '12', '44', '供应商管理接口-详情', '0', '1', '1', '6', '2', '50', '', '1426044134', '1430115959', '0', '1425979909');
INSERT INTO `task` VALUES ('54', '43', '9', '14', '13', '45', '供应商管理接口-列表及搜索', '0', '0', '1', '8', '10', '20', '', '1426044136', '1426044136', '0', '1425979928');
INSERT INTO `task` VALUES ('57', '43', '9', '14', '12', '46', '客户端联调', '0', '0', '0', '5', '6', '50', '', '1426044137', '1430101776', '0', '1426038058');
INSERT INTO `task` VALUES ('60', '45', '12', '18', '27', '52', '任务描述的框太小了', '0', '0', '0', '10', '8', '10', '', '0', '0', '0', '1426044211');
INSERT INTO `task` VALUES ('61', '45', '12', '18', '27', '52', '能不能加个上传附件的功能', '0', '0', '0', '3', '10', '10', '', '0', '0', '0', '1426044252');
INSERT INTO `task` VALUES ('62', '44', '11', '16', '38', '56', '登录+验证码', '0', '0', '0', '10', '8', '50', '', '1426584654', '1426584654', '0', '1426044296');
INSERT INTO `task` VALUES ('63', '45', '12', '18', '27', '52', '能不能加个通知中心，任务状态的变更应该有个通知记录', '0', '0', '0', '4', '8', '10', '', '0', '0', '0', '1426044313');
INSERT INTO `task` VALUES ('64', '44', '11', '16', '29', '56', '会员资料设置', '0', '0', '0', '2', '4', '50', '', '1427349975', '1427349975', '0', '1426044356');
INSERT INTO `task` VALUES ('65', '45', '12', '18', '27', '52', '应该有个单个任务进度显示 条，进度为0显示在待开发，进度为100进入已完成', '0', '0', '0', '6', '10', '10', '', '1426045500', '1426045500', '0', '1426044421');
INSERT INTO `task` VALUES ('66', '45', '12', '18', '27', '52', '能不能有个任务关注，可以对其他人的任务关注，状态变更可以通知', '0', '0', '0', '3', '10', '10', '', '0', '0', '0', '1426044498');
INSERT INTO `task` VALUES ('67', '44', '11', '16', '18', '56', '我的丽人券', '0', '0', '0', '5', '7', '50', '', '1427349976', '1427349976', '0', '1426044498');
INSERT INTO `task` VALUES ('68', '44', '11', '16', '18', '56', '我的订单', '0', '0', '0', '5', '12', '50', '', '1427349968', '1427349968', '0', '1426044530');
INSERT INTO `task` VALUES ('69', '44', '11', '16', '18', '56', '丽人券详情', '0', '0', '0', '5', '10', '50', '', '1427349974', '1427349974', '0', '1426044560');
INSERT INTO `task` VALUES ('70', '44', '11', '16', '31', '56', '申请退款+投诉+申请', '0', '0', '0', '3', '10', '50', '', '1427349972', '1427349972', '0', '1426044619');
INSERT INTO `task` VALUES ('71', '45', '12', '18', '27', '52', '权限这玩意，别人还没提  占位', '0', '0', '0', '3', '10', '10', '', '1426044820', '1426044820', '0', '1426044633');
INSERT INTO `task` VALUES ('72', '44', '11', '16', '31', '56', '我要评价', '0', '0', '0', '3', '7', '50', '', '1427349973', '1427349973', '0', '1426044666');
INSERT INTO `task` VALUES ('73', '45', '12', '18', '27', '52', '应该记录下当前选择的项目 迭代', '0', '0', '0', '6', '10', '10', '', '0', '0', '0', '1426044675');
INSERT INTO `task` VALUES ('74', '45', '12', '18', '27', '45', '关键字做个提示：人员姓名，任务名称。。', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1426044690');
INSERT INTO `task` VALUES ('75', '44', '11', '16', '35', '46', '客户端支付对接', '0', '0', '0', '4', '16', '50', '', '1427352262', '1427352262', '0', '1426044715');
INSERT INTO `task` VALUES ('76', '45', '12', '18', '27', '45', '本人进来的时候，最好排在最前面', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1426044741');
INSERT INTO `task` VALUES ('77', '45', '12', '18', '27', '52', '看板中心和我的看板，理论上应该还是区分开来，免的信息过多', '0', '0', '0', '4', '10', '10', '', '0', '0', '0', '1426044745');
INSERT INTO `task` VALUES ('78', '44', '11', '17', '40', '46', '定位开发', '0', '0', '0', '7', '7', '50', '', '1427352264', '1427352264', '0', '1426044802');
INSERT INTO `task` VALUES ('80', '45', '12', '18', '27', '54', '完善资料、新增任务时，可以添加一个必填内容提示', '0', '0', '0', '5', '8', '10', '', '0', '0', '0', '1426044840');
INSERT INTO `task` VALUES ('82', '44', '11', '17', '40', '46', '首页置顶特效开发', '0', '0', '0', '7', '10', '50', '', '1426240508', '1426240508', '0', '1426044864');
INSERT INTO `task` VALUES ('83', '45', '12', '18', '27', '47', '选中任务，自动高亮前置任务', '0', '0', '0', '6', '8', '10', '', '0', '0', '0', '1426044881');
INSERT INTO `task` VALUES ('84', '45', '12', '18', '27', '47', '任务缩略图，参考navicat', '0', '0', '0', '6', '8', '10', '', '0', '0', '0', '1426044952');
INSERT INTO `task` VALUES ('85', '45', '12', '18', '26', '57', '点击宽口外的部分，窗口不能消失，除非关闭', '0', '0', '0', '10', '10', '10', '', '0', '0', '0', '1426044964');
INSERT INTO `task` VALUES ('86', '45', '12', '18', '27', '52', '增加检查点，可以用于自己任务完成状态检查，比如我写个任务“完成店面搜索”，我可以增加几个检查点 1.提供店面列表接口2.增加缓存支持', '0', '0', '0', '4', '10', '10', '', '1426045250', '1426045250', '0', '1426045035');
INSERT INTO `task` VALUES ('87', '45', '12', '18', '27', '58', '前置任务红色框框建议可以反选取消', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1426045039');
INSERT INTO `task` VALUES ('88', '44', '11', '16', '40', '57', '项目详情', '0', '0', '0', '7', '9', '50', '', '1427363292', '1427363292', '0', '1426045091');
INSERT INTO `task` VALUES ('89', '45', '12', '18', '26', '54', '自己的任务不会排在最前面', '0', '0', '0', '5', '2', '10', '', '0', '0', '0', '1426045130');
INSERT INTO `task` VALUES ('90', '45', '12', '18', '26', '49', '可以隐藏非关注状态列以放大单个状态显示区域', '0', '0', '0', '5', '1', '10', '', '1426055549', '1426055549', '0', '1426045132');
INSERT INTO `task` VALUES ('91', '45', '12', '18', '27', '56', '开发人员自动填充', '0', '0', '0', '5', '3', '10', '', '0', '0', '0', '1426045137');
INSERT INTO `task` VALUES ('92', '45', '12', '18', '26', '52', '没有前置任务的任务有的也有箭头功能', '0', '0', '0', '4', '10', '10', '', '0', '0', '0', '1426045147');
INSERT INTO `task` VALUES ('93', '45', '12', '18', '27', '51', '将便签上的“挑战”改成图标吧，挑个网游PK的图标就好了', '0', '0', '0', '6', '1', '10', '', '0', '0', '0', '1426045148');
INSERT INTO `task` VALUES ('94', '44', '11', '16', '33', '57', '分享', '0', '0', '0', '9', '6', '50', '', '1427176969', '1427176969', '0', '1426045166');
INSERT INTO `task` VALUES ('95', '45', '12', '18', '27', '56', '模块和优先级是事先订好的话，有个统一设定的地方就行了', '0', '0', '0', '9', '3', '10', '', '1426045729', '1426045729', '0', '1426045182');
INSERT INTO `task` VALUES ('96', '45', '12', '18', '27', '47', '记住个人偏好（包括，记住登录，任务排序，默认选中等）。', '0', '0', '0', '5', '8', '10', '', '0', '0', '0', '1426045214');
INSERT INTO `task` VALUES ('97', '44', '11', '16', '31', '57', '评论', '0', '0', '0', '3', '7', '50', '', '1428391920', '1428391920', '0', '1426045221');
INSERT INTO `task` VALUES ('98', '45', '12', '18', '27', '58', '刷新页面要能记忆', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1426045226');
INSERT INTO `task` VALUES ('99', '45', '12', '18', '27', '52', '不能够清晰明了的看出前置任务的完成情况，还需要一个个点才能知道我的一堆任务里的哪个前置任务已经完成', '0', '0', '0', '4', '10', '10', '', '0', '0', '0', '1426045229');
INSERT INTO `task` VALUES ('100', '44', '11', '16', '40', '57', '人员时间选择', '0', '0', '0', '7', '12', '50', '', '1428391918', '1428391918', '0', '1426045273');
INSERT INTO `task` VALUES ('101', '44', '11', '16', '18', '57', '订单详情', '0', '0', '0', '5', '8', '50', '', '1428391921', '1428391921', '0', '1426045323');
INSERT INTO `task` VALUES ('102', '45', '12', '18', '27', '56', '拖过去不是很敏感，在相应位置松手就可以放在那一块了', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1426045330');
INSERT INTO `task` VALUES ('103', '45', '12', '18', '27', '52', '筛选是不是可以支持按照故事筛选', '0', '0', '0', '4', '8', '10', '', '0', '0', '0', '1426045362');
INSERT INTO `task` VALUES ('104', '45', '12', '18', '27', '56', '按照优先级排序，或者添加上排序方式的选择', '0', '0', '0', '2', '3', '10', '', '0', '0', '0', '1426045369');
INSERT INTO `task` VALUES ('105', '45', '12', '18', '27', '58', '移动任务可以增加弹窗确认', '0', '0', '0', '2', '8', '10', '', '1426045628', '1426045628', '0', '1426045370');
INSERT INTO `task` VALUES ('106', '45', '12', '18', '27', '54', '点击welcome 姓名，时可进入个人资料并编辑', '0', '0', '0', '5', '3', '10', '', '0', '0', '0', '1426045409');
INSERT INTO `task` VALUES ('107', '45', '12', '18', '27', '52', '任务描述字数过多时，应该在显示时增加省略号，鼠标搁上去最好能看到完整信息', '0', '0', '0', '6', '11', '10', '', '0', '0', '0', '1426045423');
INSERT INTO `task` VALUES ('108', '44', '11', '16', '39', '57', '设置', '0', '0', '0', '10', '8', '50', '', '1428391917', '1428391917', '0', '1426045451');
INSERT INTO `task` VALUES ('109', '45', '12', '18', '27', '46', '任务多起来时原来每行3个就变成2个了', '0', '0', '0', '5', '10', '50', '', '0', '1430101755', '0', '1426045466');
INSERT INTO `task` VALUES ('110', '44', '11', '16', '32', '57', '消息中心', '0', '0', '0', '8', '4', '50', '', '1428391919', '1428391919', '0', '1426045497');
INSERT INTO `task` VALUES ('111', '45', '12', '18', '26', '52', '现在鼠标点到弹出窗口外面时，窗口会关闭，这样有时候会导致辛苦编辑的内容丢失，应该禁用这个关闭的功能', '0', '0', '0', '10', '8', '50', '', '1426491089', '1426491089', '0', '1426045520');
INSERT INTO `task` VALUES ('112', '45', '12', '18', '27', '57', '前置任务不明显，无法明确', '0', '0', '0', '9', '8', '10', '', '0', '0', '0', '1426045640');
INSERT INTO `task` VALUES ('113', '45', '12', '18', '27', '51', '新增编辑任务界面上的下拉框能否换成标签云的形式。用下拉的方式每个变量要做两次操作,过程有点长。ps:下拉框里面也咩有默认项...', '0', '0', '0', '5', '8', '10', '', '0', '0', '0', '1426045675');
INSERT INTO `task` VALUES ('114', '45', '12', '18', '27', '56', '任务状态改变时，可以查阅各个状态下停留的时间', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1426045684');
INSERT INTO `task` VALUES ('115', '43', '9', '14', '12', '53', 'xxxx', '99', '0', '0', '8', '6', '10', '', '0', '0', '0', '1426045744');
INSERT INTO `task` VALUES ('116', '44', '11', '16', '40', '54', '首页推荐', '0', '0', '0', '5', '12', '50', '', '1427681143', '1427681143', '0', '1426045922');
INSERT INTO `task` VALUES ('118', '45', '12', '18', '27', '57', '应该几个标签，可以按需排序，或是按时长或是按任务优先级', '0', '0', '0', '7', '10', '10', '', '0', '0', '0', '1426045927');
INSERT INTO `task` VALUES ('119', '45', '12', '18', '27', '51', '页面刷新时不能保留“版本”和“迭代”信息啊，现在界面一刷新就到第一个“版本”去了', '0', '0', '0', '6', '2', '10', '', '0', '0', '0', '1426045927');
INSERT INTO `task` VALUES ('120', '45', '12', '18', '26', '57', '有时候保存不了，建议优化~', '0', '0', '0', '10', '10', '50', '', '1426055712', '1426055712', '0', '1426045963');
INSERT INTO `task` VALUES ('121', '44', '11', '16', '29', '54', '抽屉', '0', '0', '0', '5', '4', '50', '', '1427681162', '1427681162', '0', '1426045964');
INSERT INTO `task` VALUES ('122', '45', '12', '18', '27', '58', '前置任务选择按照拼音排序便于查找', '0', '0', '0', '1', '10', '10', '', '0', '0', '0', '1426045981');
INSERT INTO `task` VALUES ('123', '44', '11', '16', '29', '54', '我的等级', '0', '0', '0', '5', '8', '50', '', '1427681146', '1427681146', '0', '1426045990');
INSERT INTO `task` VALUES ('124', '45', '12', '18', '27', '51', '现在还不能支持选中任务功能(分颜色显示前后置任务)，鼠标点击后为修改任务界面', '0', '0', '0', '5', '2', '10', '', '0', '0', '0', '1426046074');
INSERT INTO `task` VALUES ('125', '45', '12', '18', '27', '54', '待开发个数超过18个，由原来的3列变成2列', '0', '0', '0', '5', '3', '10', '', '0', '0', '0', '1426046085');
INSERT INTO `task` VALUES ('126', '43', '9', '14', '12', '45', 'test', '0', '0', '0', '3', '6', '50', '', '1426052555', '1426052555', '0', '1426046114');
INSERT INTO `task` VALUES ('127', '45', '12', '18', '27', '56', '添加根据开发人员/用户故事等条件的筛选', '0', '0', '0', '2', '3', '10', '', '0', '0', '0', '1426046121');
INSERT INTO `task` VALUES ('128', '45', '12', '18', '27', '54', '体现任务优先级', '0', '0', '0', '5', '3', '10', '', '0', '0', '0', '1426046123');
INSERT INTO `task` VALUES ('129', '45', '12', '18', '27', '51', '鼠标hover的时候希望能够高亮标签，并显示详情', '0', '0', '0', '6', '2', '10', '', '0', '0', '0', '1426046178');
INSERT INTO `task` VALUES ('130', '45', '12', '18', '27', '57', '可以根据是否有难度予以任务不同的颜色的背景框，便于区分', '0', '0', '0', '10', '10', '10', '', '0', '0', '0', '1426046186');
INSERT INTO `task` VALUES ('131', '44', '11', '16', '29', '54', '我的钱包+积分+代金券', '0', '0', '0', '5', '10', '50', '', '1427681148', '1427681148', '0', '1426046186');
INSERT INTO `task` VALUES ('132', '45', '12', '18', '27', '56', '前置任务按照用户故事分类显示', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1426046263');
INSERT INTO `task` VALUES ('133', '43', '9', '14', '12', '45', 'sssss', '0', '0', '0', '3', '6', '50', '', '1426052585', '1426052585', '0', '1426046389');
INSERT INTO `task` VALUES ('134', '45', '12', '18', '27', '51', '拖拽便签到新的尚无内容的状态列时，不容易拖进去', '0', '0', '0', '6', '1', '10', '', '0', '0', '0', '1426048871');
INSERT INTO `task` VALUES ('135', '45', '12', '18', '27', '51', '每个任务列能否居中对齐,目前是左侧对齐', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1426049146');
INSERT INTO `task` VALUES ('136', '45', '12', '18', '27', '51', 'svn的标准提交模板尚未定义，靠svn commit自动流转的功能也尚未实现', '0', '0', '0', '10', '8', '10', '', '0', '0', '0', '1426049233');
INSERT INTO `task` VALUES ('138', '45', '12', '18', '27', '51', '导入导出功能尚未增加', '0', '0', '0', '9', '1', '10', '', '1426139267', '1426139267', '0', '1426049271');
INSERT INTO `task` VALUES ('139', '43', '9', '15', '28', '44', 'xxxxxx', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1426049304');
INSERT INTO `task` VALUES ('140', '45', '12', '18', '27', '51', '新增任务时建议增加一个“保存并继续新增”的按钮', '0', '0', '0', '6', '1', '10', '', '0', '0', '0', '1426049343');
INSERT INTO `task` VALUES ('141', '43', '9', '15', '28', '45', 'aaaa', '0', '0', '0', '1', '4', '10', '', '0', '0', '0', '1426049822');
INSERT INTO `task` VALUES ('142', '43', '9', '15', '28', '44', 'xxxxxx', '99', '0', '0', '2', '4', '10', '', '0', '0', '0', '1426049849');
INSERT INTO `task` VALUES ('146', '43', '9', '15', '28', '44', 'ccc', '99', '0', '0', '3', '4', '10', '', '0', '0', '0', '1426050696');
INSERT INTO `task` VALUES ('147', '45', '12', '18', '26', '59', '平台不稳定，经常挂掉', '0', '0', '0', '10', '1', '50', '', '1426057932', '1426057932', '0', '1426052051');
INSERT INTO `task` VALUES ('148', '45', '12', '18', '26', '59', '‘我的任务’应该只显示自己的任务', '0', '0', '0', '10', '1', '10', '', '0', '0', '0', '1426052106');
INSERT INTO `task` VALUES ('149', '44', '11', '16', '40', '54', '项目+商家列表', '0', '0', '0', '5', '8', '50', '', '1427681165', '1427681165', '0', '1426052141');
INSERT INTO `task` VALUES ('150', '45', '12', '18', '27', '45', '可以按名字拼音搜索', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1426052180');
INSERT INTO `task` VALUES ('151', '44', '11', '16', '32', '54', '商家详情', '0', '0', '0', '5', '6', '50', '', '1427681154', '1427681154', '0', '1426052186');
INSERT INTO `task` VALUES ('152', '44', '11', '16', '29', '54', '我的收藏', '0', '0', '0', '5', '5', '50', '', '1427681158', '1427681158', '0', '1426052224');
INSERT INTO `task` VALUES ('153', '45', '12', '18', '27', '58', '可以给任务加个编号，点击显示前置任务时按钮展开显示编号，便于查找，不然任务过多的时候找不到红色的前置任务', '0', '0', '0', '1', '2', '10', '', '0', '0', '0', '1426052781');
INSERT INTO `task` VALUES ('154', '44', '11', '16', '30', '52', '【运营平台】合同列表', '0', '0', '0', '5', '2', '50', '', '1427349045', '1427349045', '0', '1426054696');
INSERT INTO `task` VALUES ('155', '44', '11', '16', '30', '52', '【运营平台】合同详情', '0', '0', '0', '5', '2', '50', '', '1427349045', '1427349045', '0', '1426054729');
INSERT INTO `task` VALUES ('156', '44', '11', '16', '30', '52', '【运营平台】新增合同', '0', '0', '0', '5', '4', '50', '', '1427349046', '1427349046', '0', '1426054768');
INSERT INTO `task` VALUES ('157', '44', '11', '16', '30', '52', '【运营平台】编辑合同', '0', '0', '0', '5', '2', '50', '', '1427349047', '1427349047', '0', '1426055644');
INSERT INTO `task` VALUES ('158', '44', '11', '16', '30', '52', '【运营平台】项目详情', '0', '0', '0', '5', '2', '50', '', '1427162256', '1427162256', '0', '1426055673');
INSERT INTO `task` VALUES ('159', '44', '11', '16', '30', '52', '【运营平台】项目新增', '0', '0', '0', '5', '4', '50', '', '1427162240', '1427162240', '0', '1426055693');
INSERT INTO `task` VALUES ('160', '44', '11', '16', '30', '52', '【运营平台】项目编辑', '0', '0', '0', '5', '2', '50', '', '1427162249', '1427162249', '0', '1426055707');
INSERT INTO `task` VALUES ('161', '44', '11', '16', '30', '52', '【运营平台】员工排班生成', '0', '0', '0', '5', '8', '50', '', '1427162251', '1427162251', '0', '1426055725');
INSERT INTO `task` VALUES ('162', '44', '11', '16', '40', '52', '【运营平台】项目列表', '0', '0', '0', '5', '2', '50', '', '1427162241', '1427162241', '0', '1426055903');
INSERT INTO `task` VALUES ('163', '44', '11', '16', '40', '52', '【运营平台】项目详情', '0', '0', '0', '5', '2', '50', '', '1427162254', '1427162254', '0', '1426055948');
INSERT INTO `task` VALUES ('164', '44', '11', '16', '40', '55', '【运营平台】项目统计', '0', '0', '0', '5', '2', '50', '', '1428566720', '1428566720', '0', '1426055981');
INSERT INTO `task` VALUES ('165', '44', '11', '16', '40', '52', '【运营平台】员工列表', '0', '0', '0', '5', '2', '50', '', '1427162240', '1427162240', '0', '1426056042');
INSERT INTO `task` VALUES ('166', '44', '11', '16', '40', '52', '【运营平台】员工新增', '0', '0', '0', '5', '4', '50', '', '1427162249', '1427162249', '0', '1426056060');
INSERT INTO `task` VALUES ('167', '44', '11', '16', '40', '52', '【运营平台】员工编辑', '0', '0', '0', '5', '2', '50', '', '1427162257', '1427162257', '0', '1426056075');
INSERT INTO `task` VALUES ('168', '44', '11', '16', '40', '52', '【运营平台】员工删除', '0', '0', '0', '5', '2', '50', '', '1427162254', '1427162254', '0', '1426056101');
INSERT INTO `task` VALUES ('169', '44', '11', '16', '32', '52', '【C端】丽人搜索', '0', '0', '0', '5', '4', '50', '', '1427162255', '1427162255', '0', '1426056154');
INSERT INTO `task` VALUES ('170', '44', '11', '16', '32', '52', '【C端】丽人推荐', '0', '0', '0', '5', '2', '50', '', '1427162258', '1427162258', '0', '1426056181');
INSERT INTO `task` VALUES ('171', '44', '11', '16', '32', '52', '【C端】丽人附近', '0', '0', '0', '5', '2', '50', '', '1427162242', '1427162242', '0', '1426056205');
INSERT INTO `task` VALUES ('172', '44', '11', '16', '32', '52', '【C端】丽人美容', '0', '0', '0', '5', '2', '50', '', '1427162251', '1427162251', '0', '1426056258');
INSERT INTO `task` VALUES ('173', '44', '11', '16', '32', '52', '【C端】商户搜索', '0', '0', '0', '5', '2', '50', '', '1427162252', '1427162252', '0', '1426056294');
INSERT INTO `task` VALUES ('174', '44', '11', '16', '32', '52', '【C端】商户列表', '0', '0', '0', '5', '2', '50', '', '1427162248', '1427162248', '0', '1426056334');
INSERT INTO `task` VALUES ('175', '44', '11', '16', '32', '52', '【C端】商户推荐', '0', '0', '0', '5', '2', '50', '', '1427162255', '1427162255', '0', '1426056351');
INSERT INTO `task` VALUES ('178', '44', '11', '16', '32', '52', '【运营平台】商户列表', '0', '0', '0', '5', '2', '50', '', '1427162239', '1427162239', '0', '1426056513');
INSERT INTO `task` VALUES ('179', '44', '11', '16', '32', '52', '【运营平台】商户新增', '0', '0', '0', '5', '4', '50', '', '1427162246', '1427162246', '0', '1426056530');
INSERT INTO `task` VALUES ('180', '44', '11', '16', '40', '58', '项目详情', '0', '0', '0', '4', '12', '50', '', '1427380226', '1427380226', '0', '1426056544');
INSERT INTO `task` VALUES ('181', '44', '11', '16', '32', '52', '【运营平台】商户编辑', '0', '0', '0', '5', '2', '50', '', '1427162253', '1427162253', '0', '1426056565');
INSERT INTO `task` VALUES ('182', '44', '11', '16', '32', '52', '【运营平台】商户帐号', '0', '0', '0', '5', '4', '50', '', '1427162250', '1427162250', '0', '1426056589');
INSERT INTO `task` VALUES ('183', '44', '11', '16', '32', '52', '【运营平台】商户银行', '0', '0', '0', '5', '4', '50', '', '1427162256', '1427162256', '0', '1426056606');
INSERT INTO `task` VALUES ('184', '44', '11', '16', '32', '52', '【运营平台】商户合同列表', '0', '0', '0', '5', '2', '50', '', '1427349048', '1427349048', '0', '1426056629');
INSERT INTO `task` VALUES ('185', '44', '11', '16', '32', '52', '【运营平台】商户项目列表', '0', '0', '0', '5', '2', '50', '', '1427162247', '1427162247', '0', '1426056652');
INSERT INTO `task` VALUES ('186', '44', '11', '16', '31', '58', '全部评论', '0', '0', '0', '3', '8', '50', '', '1427427912', '1427427912', '0', '1426056690');
INSERT INTO `task` VALUES ('187', '44', '11', '16', '18', '58', '订单详情', '0', '0', '0', '5', '12', '50', '', '1427379235', '1427379235', '0', '1426056763');
INSERT INTO `task` VALUES ('188', '44', '11', '16', '29', '58', '消息中心', '0', '0', '0', '3', '4', '50', '', '1427438458', '1427438458', '0', '1426056849');
INSERT INTO `task` VALUES ('189', '44', '11', '16', '39', '58', '设置', '0', '0', '0', '2', '8', '50', '', '1428546737', '1428546737', '0', '1426056897');
INSERT INTO `task` VALUES ('190', '45', '12', '18', '27', '58', '我的任务一栏可以固定在顶部，只滚动任务列表，类似pms一样', '0', '0', '0', '1', '3', '10', '', '0', '0', '0', '1426057013');
INSERT INTO `task` VALUES ('191', '44', '11', '16', '31', '44', '商户平台 - 评价查询 - 列表', '0', '0', '0', '3', '4', '50', '', '1427422766', '1427422766', '0', '1426057623');
INSERT INTO `task` VALUES ('192', '44', '11', '16', '31', '44', '商户平台 - 结算收益查询 - 评价详情', '0', '0', '0', '5', '2', '50', '', '1427422770', '1427422770', '0', '1426057661');
INSERT INTO `task` VALUES ('193', '44', '11', '16', '31', '44', '商户平台 - 评价查询 - 首页', '0', '0', '0', '4', '10', '50', '', '1427687651', '1427687651', '0', '1426057842');
INSERT INTO `task` VALUES ('194', '45', '12', '18', '27', '60', '版本中的日期建议做成日历点选', '0', '0', '0', '3', '6', '10', '', '0', '0', '0', '1426062429');
INSERT INTO `task` VALUES ('195', '45', '12', '18', '26', '60', '有些任务，优先级没有显示；另外建议，任务排序加入按优先级从高到低排的规则', '0', '0', '0', '4', '10', '10', '', '0', '0', '0', '1426062675');
INSERT INTO `task` VALUES ('197', '44', '11', '16', '32', '53', '【运营平台】商户项目列表-前端页面', '0', '0', '0', '3', '12', '50', '', '1427076961', '1427076961', '0', '1426068285');
INSERT INTO `task` VALUES ('198', '44', '11', '16', '32', '45', '【运营平台】员工列表', '0', '0', '0', '2', '6', '50', '', '1426835728', '1426835728', '0', '1426068371');
INSERT INTO `task` VALUES ('199', '44', '11', '16', '32', '45', '【运营平台】员工新增', '0', '0', '0', '3', '6', '50', '', '1426835674', '1426835674', '0', '1426068390');
INSERT INTO `task` VALUES ('200', '44', '11', '16', '32', '45', '【运营平台】员工编辑', '0', '0', '0', '3', '3', '50', '', '1426835679', '1426835679', '0', '1426068404');
INSERT INTO `task` VALUES ('201', '44', '11', '16', '32', '45', '【运营平台】员工删除', '0', '0', '0', '3', '3', '50', '', '1426835669', '1426835669', '0', '1426068418');
INSERT INTO `task` VALUES ('202', '44', '11', '16', '30', '45', '【运营平台】合同列表页面', '0', '0', '0', '3', '6', '50', '', '1427076063', '1427076063', '0', '1426068434');
INSERT INTO `task` VALUES ('203', '44', '11', '16', '30', '45', '【运营平台】合同详情接口联调', '0', '0', '0', '3', '3', '50', '', '1427350217', '1427350217', '0', '1426068453');
INSERT INTO `task` VALUES ('204', '44', '11', '16', '30', '45', '【运营平台】合同新增页面', '0', '0', '0', '3', '6', '50', '', '1427076099', '1427076099', '0', '1426068479');
INSERT INTO `task` VALUES ('205', '44', '11', '16', '30', '45', '【运营平台】合同编辑页面', '0', '0', '0', '3', '3', '50', '', '1427076142', '1427076142', '0', '1426068495');
INSERT INTO `task` VALUES ('206', '44', '11', '16', '30', '45', '【运营平台】合同列表接口联调', '0', '0', '0', '3', '3', '50', '', '1427196765', '1427196765', '0', '1426068518');
INSERT INTO `task` VALUES ('207', '44', '11', '16', '32', '53', '【运营平台】商户新增-前端页面开发', '0', '0', '0', '3', '24', '50', '', '1427350332', '1427350332', '0', '1426068547');
INSERT INTO `task` VALUES ('208', '44', '11', '16', '32', '53', '【运营平台】商户编辑-前端页面开发', '0', '0', '0', '3', '3', '50', '', '1428480326', '1428480326', '0', '1426068716');
INSERT INTO `task` VALUES ('209', '44', '11', '16', '32', '53', '【运营平台】商户帐号-前端页面开发', '0', '0', '0', '3', '6', '50', '', '1427076034', '1427076034', '0', '1426069616');
INSERT INTO `task` VALUES ('210', '44', '11', '16', '32', '53', '【运营平台】商户银行-前端页面开发', '0', '0', '0', '2', '6', '50', '', '1427076038', '1427076038', '0', '1426069677');
INSERT INTO `task` VALUES ('212', '44', '11', '16', '40', '53', '【运营平台】项目统计-前端页面开发', '0', '0', '0', '1', '6', '50', '', '1427076014', '1427076014', '0', '1426069877');
INSERT INTO `task` VALUES ('213', '44', '11', '16', '30', '61', '项目新增-界面制作', '0', '0', '0', '1', '16', '50', '', '1426834041', '1426834041', '0', '1426070173');
INSERT INTO `task` VALUES ('214', '44', '11', '16', '30', '61', '项目详情-界面制作', '0', '0', '0', '1', '2', '50', '', '1426834049', '1426834049', '0', '1426070212');
INSERT INTO `task` VALUES ('215', '44', '11', '16', '30', '61', '项目编辑-界面制作', '0', '0', '0', '1', '3', '50', '', '1426834025', '1426834025', '0', '1426070234');
INSERT INTO `task` VALUES ('216', '44', '11', '16', '30', '61', '员工排班生成-界面制作', '0', '0', '0', '1', '8', '50', '', '1426834066', '1426834066', '0', '1426070262');
INSERT INTO `task` VALUES ('217', '44', '11', '16', '40', '61', '项目列表-界面制作', '0', '0', '0', '1', '3', '50', '', '1426834053', '1426834053', '0', '1426070336');
INSERT INTO `task` VALUES ('218', '44', '11', '16', '40', '61', '详情/编辑-界面制作', '0', '0', '0', '1', '6', '50', '', '1426834039', '1426834039', '0', '1426070364');
INSERT INTO `task` VALUES ('219', '44', '11', '16', '40', '62', '【iOS】首页推荐功能开发', '0', '0', '0', '1', '12', '50', '', '1427267873', '1427267873', '0', '1426072191');
INSERT INTO `task` VALUES ('220', '44', '11', '16', '40', '48', '【iOS】主界面框架显示，抽屉效果迁移', '0', '0', '0', '1', '4', '50', '', '1426072537', '1426072537', '0', '1426072253');
INSERT INTO `task` VALUES ('221', '44', '11', '16', '29', '48', '【iOS】我的等级', '0', '0', '0', '1', '8', '50', '', '1427349793', '1427349793', '0', '1426072285');
INSERT INTO `task` VALUES ('223', '44', '11', '16', '32', '58', '【iOS】项目+商家列表', '0', '0', '0', '1', '8', '50', '', '1427350109', '1427350109', '0', '1426072358');
INSERT INTO `task` VALUES ('224', '44', '11', '16', '32', '58', '【iOS】商家详情', '0', '0', '0', '1', '8', '50', '', '1427267934', '1427267934', '0', '1426072389');
INSERT INTO `task` VALUES ('225', '44', '11', '16', '35', '48', '【iOS】支付宝支付功能', '0', '0', '0', '1', '8', '50', '', '1427349792', '1427349792', '0', '1426072427');
INSERT INTO `task` VALUES ('226', '44', '11', '16', '29', '48', '【iOS】会员登录相关界面迁移', '0', '0', '0', '1', '8', '50', '', '1426072544', '1426072544', '0', '1426072488');
INSERT INTO `task` VALUES ('227', '44', '11', '16', '29', '58', '【iOS】会员登录相关界面UI调整', '0', '0', '0', '1', '8', '50', '', '1427454378', '1427454378', '0', '1426072503');
INSERT INTO `task` VALUES ('228', '44', '11', '16', '39', '47', '字典->商家分类', '0', '0', '0', '5', '4', '50', '', '1426073461', '1426073461', '0', '1426072674');
INSERT INTO `task` VALUES ('229', '44', '11', '16', '39', '47', '字典->项目分类', '0', '0', '0', '5', '4', '50', '', '1426073486', '1426073486', '0', '1426072717');
INSERT INTO `task` VALUES ('230', '44', '11', '16', '39', '47', '字典->开通城市', '0', '0', '0', '5', '4', '50', '', '1426073511', '1426073511', '0', '1426072743');
INSERT INTO `task` VALUES ('231', '44', '11', '16', '39', '47', '字典->商圈', '0', '0', '0', '5', '4', '50', '', '1426073457', '1426073457', '0', '1426072770');
INSERT INTO `task` VALUES ('232', '44', '11', '16', '39', '47', '字典->会员组', '0', '0', '0', '5', '4', '50', '', '1426073453', '1426073453', '0', '1426072793');
INSERT INTO `task` VALUES ('235', '44', '11', '16', '35', '47', '支付+订单创建', '0', '0', '0', '2', '8', '50', '', '1427176608', '1427176608', '0', '1426072942');
INSERT INTO `task` VALUES ('236', '44', '11', '16', '18', '47', '我的->我的丽人券', '0', '0', '0', '3', '4', '50', '', '1427176617', '1427176617', '0', '1426073053');
INSERT INTO `task` VALUES ('237', '44', '11', '16', '18', '47', '我的->丽人券详情', '0', '0', '0', '3', '4', '50', '', '1427176612', '1427176612', '0', '1426073080');
INSERT INTO `task` VALUES ('238', '44', '11', '16', '18', '47', '我的->我的订单', '0', '0', '0', '3', '4', '50', '', '1427176603', '1427176603', '0', '1426073106');
INSERT INTO `task` VALUES ('239', '44', '11', '16', '18', '47', '结算收益查询->订单列表', '0', '0', '0', '3', '4', '50', '', '1427176606', '1427176606', '0', '1426073186');
INSERT INTO `task` VALUES ('240', '44', '11', '16', '18', '47', '订单预约查询->首页', '0', '0', '0', '3', '4', '50', '', '1427176610', '1427176610', '0', '1426073218');
INSERT INTO `task` VALUES ('241', '44', '11', '16', '18', '47', '订单预约查询->订单信息', '0', '0', '0', '3', '4', '50', '', '1427176631', '1427176631', '0', '1426073369');
INSERT INTO `task` VALUES ('242', '44', '11', '16', '18', '47', '订单预约查询->核销（验证码验证）', '0', '0', '0', '3', '4', '50', '', '1427176620', '1427176620', '0', '1426073390');
INSERT INTO `task` VALUES ('243', '44', '11', '16', '18', '47', '订单查询->订单列表', '0', '0', '0', '3', '4', '50', '', '1427176627', '1427176627', '0', '1426073417');
INSERT INTO `task` VALUES ('244', '44', '11', '16', '18', '47', '订单查询->详情', '0', '0', '0', '3', '4', '50', '', '1427176635', '1427176635', '0', '1426073440');
INSERT INTO `task` VALUES ('245', '44', '11', '16', '18', '47', '订单->短信通知', '0', '0', '0', '3', '4', '50', '', '1427176613', '1427176613', '0', '1426073536');
INSERT INTO `task` VALUES ('246', '44', '11', '16', '18', '47', '订单->已付款', '0', '0', '0', '3', '4', '50', '', '1427176623', '1427176623', '0', '1426073561');
INSERT INTO `task` VALUES ('248', '44', '11', '16', '31', '44', '运营平台 - 评论 - 列表', '0', '0', '0', '3', '4', '50', '', '1426563836', '1426563836', '0', '1426073604');
INSERT INTO `task` VALUES ('249', '44', '11', '16', '18', '47', '订单->消息中心', '0', '0', '0', '3', '4', '50', '', '1427176621', '1427176621', '0', '1426073625');
INSERT INTO `task` VALUES ('250', '44', '11', '16', '18', '47', '订单->定时关闭', '0', '0', '0', '3', '4', '50', '', '1427176629', '1427176629', '0', '1426073645');
INSERT INTO `task` VALUES ('251', '44', '11', '16', '38', '49', '【运营平台】登录', '0', '0', '0', '5', '12', '50', '', '1426648098', '1426648098', '0', '1426074783');
INSERT INTO `task` VALUES ('252', '44', '11', '16', '18', '49', '【运营平台】订单-待付款', '0', '0', '0', '5', '24', '50', '', '1427349411', '1427349411', '0', '1426074852');
INSERT INTO `task` VALUES ('253', '44', '11', '16', '18', '49', '【运营平台】订单详情', '0', '0', '0', '5', '24', '50', '', '1427349413', '1427349413', '0', '1426074885');
INSERT INTO `task` VALUES ('254', '44', '11', '16', '18', '49', '【运营平台】订单-已付款', '0', '0', '0', '5', '3', '50', '', '1427349404', '1427349404', '0', '1426074917');
INSERT INTO `task` VALUES ('255', '44', '11', '16', '18', '49', '【运营平台】订单-已消费', '0', '0', '0', '5', '3', '50', '', '1427349415', '1427349415', '0', '1426074962');
INSERT INTO `task` VALUES ('256', '44', '11', '16', '18', '49', '【运营平台】订单-已取消', '0', '0', '0', '5', '3', '50', '', '1427349403', '1427349403', '0', '1426074984');
INSERT INTO `task` VALUES ('257', '44', '11', '16', '29', '59', '【iOS】后台消息推送处理', '0', '0', '0', '1', '8', '50', '', '1428025777', '1428025777', '0', '1426075567');
INSERT INTO `task` VALUES ('258', '44', '11', '16', '29', '62', '我的收藏', '0', '0', '0', '3', '5', '50', '', '1427267872', '1427267872', '0', '1426075631');
INSERT INTO `task` VALUES ('259', '44', '11', '16', '29', '62', '我的丽人券', '0', '0', '0', '3', '7', '50', '', '1427188624', '1427188624', '0', '1426075653');
INSERT INTO `task` VALUES ('260', '44', '11', '16', '18', '62', '我的订单', '0', '0', '0', '3', '12', '50', '', '1427188621', '1427188621', '0', '1426075675');
INSERT INTO `task` VALUES ('261', '44', '11', '16', '40', '62', '丽人券详情', '0', '0', '0', '3', '10', '50', '', '1427267871', '1427267871', '0', '1426075706');
INSERT INTO `task` VALUES ('262', '44', '11', '16', '18', '62', '申请退款', '0', '0', '0', '3', '6', '50', '', '1427188625', '1427188625', '0', '1426075727');
INSERT INTO `task` VALUES ('263', '44', '11', '16', '29', '62', '我要评价', '0', '0', '0', '3', '7', '50', '', '1427267868', '1427267868', '0', '1426075753');
INSERT INTO `task` VALUES ('264', '44', '11', '16', '32', '48', '人员时间选择', '0', '0', '0', '3', '8', '50', '', '1428544111', '1428544111', '0', '1426076096');
INSERT INTO `task` VALUES ('265', '44', '11', '16', '29', '62', '定位', '0', '0', '0', '3', '4', '50', '', '1427265996', '1427265996', '0', '1426076123');
INSERT INTO `task` VALUES ('267', '44', '11', '16', '29', '55', '会员新增', '0', '0', '0', '5', '4', '50', '', '1428920806', '1428920806', '0', '1426078402');
INSERT INTO `task` VALUES ('269', '45', '12', '18', '27', '55', '添加导入导出功能', '0', '0', '0', '5', '8', '10', '', '0', '0', '0', '1426078711');
INSERT INTO `task` VALUES ('270', '45', '12', '18', '26', '55', '信息没填写没有提示', '0', '0', '0', '1', '5', '10', '', '0', '0', '0', '1426078745');
INSERT INTO `task` VALUES ('271', '45', '12', '18', '27', '55', '建议支持ie6', '0', '0', '0', '5', '5', '10', '', '0', '0', '0', '1426078768');
INSERT INTO `task` VALUES ('272', '45', '12', '18', '27', '55', '添加过滤和搜索功能', '0', '0', '0', '3', '4', '10', '', '0', '0', '0', '1426078927');
INSERT INTO `task` VALUES ('273', '45', '12', '18', '27', '55', '建议能按史诗故事分类展示', '0', '0', '0', '3', '4', '10', '', '0', '0', '0', '1426078975');
INSERT INTO `task` VALUES ('275', '44', '11', '16', '31', '44', '运营平台 - 评论 - 详情', '0', '0', '0', '3', '2', '50', '', '1426563838', '1426563838', '0', '1426079057');
INSERT INTO `task` VALUES ('282', '44', '11', '16', '29', '55', '我的门店收藏', '0', '0', '0', '5', '8', '50', '', '1426831213', '1426831213', '0', '1426079201');
INSERT INTO `task` VALUES ('283', '44', '11', '16', '29', '55', '消息中心', '0', '0', '0', '5', '2', '50', '', '1426640398', '1426640398', '0', '1426079225');
INSERT INTO `task` VALUES ('286', '44', '11', '16', '29', '64', '结算收益查询	首页/月', '0', '0', '0', '4', '4', '50', '', '1427680773', '1427680773', '0', '1426079322');
INSERT INTO `task` VALUES ('287', '44', '11', '16', '29', '64', '结算收益查询	日', '0', '0', '0', '2', '4', '50', '', '1427680774', '1427680774', '0', '1426079340');
INSERT INTO `task` VALUES ('289', '44', '11', '16', '34', '64', '详情', '0', '0', '0', '4', '4', '50', '', '1427337458', '1427337458', '0', '1426079388');
INSERT INTO `task` VALUES ('290', '45', '12', '18', '27', '55', '开发人员默认填写登录者', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1426079435');
INSERT INTO `task` VALUES ('291', '45', '12', '18', '27', '55', '新增的时候有默认值的尽量填写默认值', '0', '0', '0', '4', '2', '10', '', '0', '0', '0', '1426079471');
INSERT INTO `task` VALUES ('292', '44', '11', '16', '29', '48', '【iOS】推荐有礼', '0', '0', '0', '2', '4', '50', '', '1427349794', '1427349794', '0', '1426080318');
INSERT INTO `task` VALUES ('293', '44', '11', '16', '29', '54', '推荐有礼', '0', '0', '0', '5', '5', '50', '', '1428559038', '1428559038', '0', '1426080402');
INSERT INTO `task` VALUES ('294', '44', '11', '16', '39', '57', '城市选择', '0', '0', '0', '5', '6', '50', '', '1427176984', '1427176984', '0', '1426080413');
INSERT INTO `task` VALUES ('295', '44', '11', '16', '32', '54', '搜索+搜索结果', '0', '0', '0', '5', '8', '50', '', '1427681151', '1427681151', '0', '1426080448');
INSERT INTO `task` VALUES ('296', '44', '11', '16', '40', '62', '【iOS】主页特效处理', '0', '0', '0', '3', '10', '50', '', '1427188598', '1427188598', '0', '1426080493');
INSERT INTO `task` VALUES ('297', '44', '11', '16', '31', '56', '退款详情+投诉详情', '0', '0', '0', '3', '6', '50', '', '1427349973', '1427349973', '0', '1426083913');
INSERT INTO `task` VALUES ('298', '45', '12', '18', '27', '58', '任务从某一列拖入另一列时，是否可以在空白处释放就完成移动，否则如果某一列过长则要把任务往上拖很久才能移动', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1426125268');
INSERT INTO `task` VALUES ('299', '45', '12', '18', '26', '61', '建议只允许拖动自己的故事', '0', '0', '0', '2', '8', '10', '', '0', '0', '0', '1426138652');
INSERT INTO `task` VALUES ('300', '45', '12', '18', '27', '51', '为方便便签能够一屏显示，鼠标滚轮缩放到最小后，希望仍能看到关键的人名，鼠标hover后能看到详情', '0', '0', '0', '2', '2', '10', '', '0', '0', '0', '1426138677');
INSERT INTO `task` VALUES ('301', '45', '12', '18', '26', '61', '建议看板中默认只显示与自己相关的故事，或者自己的故事置顶', '0', '0', '0', '2', '8', '10', '', '0', '0', '0', '1426138709');
INSERT INTO `task` VALUES ('302', '45', '12', '18', '26', '61', '建议三个看板可折叠', '0', '0', '0', '2', '8', '10', '', '0', '0', '0', '1426139234');
INSERT INTO `task` VALUES ('303', '45', '12', '18', '26', '61', '已完成的看板故事不允许拖动', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1426139342');
INSERT INTO `task` VALUES ('304', '45', '12', '18', '26', '61', '新增任务表单必填项需要用红*标注', '0', '0', '0', '2', '5', '10', '', '0', '0', '0', '1426139380');
INSERT INTO `task` VALUES ('305', '45', '12', '18', '26', '61', '新增任务表单需要增加字段校验功能', '0', '0', '0', '2', '8', '10', '', '0', '0', '0', '1426139446');
INSERT INTO `task` VALUES ('306', '45', '12', '18', '26', '61', '建议前置任务下拉框支持搜索', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1426139509');
INSERT INTO `task` VALUES ('307', '45', '12', '18', '26', '61', '建议已完成任务中显示开始时间和结束时间', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1426139635');
INSERT INTO `task` VALUES ('308', '45', '12', '18', '26', '61', '建议已完成任务中增加备注框，用于描述任务完成的一些备注信息。', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1426139690');
INSERT INTO `task` VALUES ('309', '45', '12', '18', '26', '61', '建议开发中看板可以编辑开发历史，反映每天的开发进展', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1426139970');
INSERT INTO `task` VALUES ('310', '44', '11', '16', '39', '46', '页面关系整理', '0', '0', '0', '5', '4', '50', '', '1426163298', '1426163298', '0', '1426150668');
INSERT INTO `task` VALUES ('311', '44', '11', '16', '40', '48', '【iOS】搜索+搜索结果', '0', '0', '0', '3', '8', '50', '', '1427349791', '1427349791', '0', '1426151346');
INSERT INTO `task` VALUES ('312', '44', '11', '16', '38', '63', '运营平台登录', '0', '0', '0', '5', '4', '50', '', '1426317820', '1426317820', '0', '1426167541');
INSERT INTO `task` VALUES ('313', '44', '11', '16', '38', '63', '商会平台登录', '0', '0', '0', '5', '4', '50', '', '1426317817', '1426317817', '0', '1426167567');
INSERT INTO `task` VALUES ('314', '44', '11', '16', '38', '63', '修改密码', '0', '0', '0', '5', '2', '50', '', '1426298608', '1426298608', '0', '1426167590');
INSERT INTO `task` VALUES ('315', '44', '11', '16', '38', '63', '注册+登录', '0', '0', '0', '5', '4', '50', '', '1426317814', '1426317814', '0', '1426167633');
INSERT INTO `task` VALUES ('316', '44', '11', '16', '38', '63', '用户设置', '0', '0', '0', '5', '4', '50', '', '1426298742', '1426298742', '0', '1426167650');
INSERT INTO `task` VALUES ('317', '44', '11', '16', '38', '63', '管理员列表', '0', '0', '0', '4', '6', '50', '', '1426317826', '1426317826', '0', '1426167704');
INSERT INTO `task` VALUES ('318', '44', '11', '16', '38', '63', '管理员新增', '0', '0', '0', '4', '4', '50', '', '1426317818', '1426317818', '0', '1426167724');
INSERT INTO `task` VALUES ('319', '44', '11', '16', '38', '63', '管理员编辑', '0', '0', '0', '4', '4', '50', '', '1426317837', '1426317837', '0', '1426167745');
INSERT INTO `task` VALUES ('320', '44', '11', '16', '38', '63', '权限+菜单', '0', '0', '0', '2', '16', '50', '', '1427266098', '1427266098', '0', '1426167769');
INSERT INTO `task` VALUES ('321', '44', '11', '16', '36', '63', '运营活动', '0', '0', '0', '3', '24', '50', '', '1426845874', '1426845874', '0', '1426167811');
INSERT INTO `task` VALUES ('322', '45', '12', '18', '27', '63', '没有滚动条', '0', '0', '0', '2', '1', '50', '', '0', '1430103119', '0', '1426217651');
INSERT INTO `task` VALUES ('323', '45', '12', '18', '26', '62', '选择前置任务后无法取消', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1426225831');
INSERT INTO `task` VALUES ('324', '45', '12', '18', '27', '62', '最好能新增直接查看开发人员是自己的界面', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1426225948');
INSERT INTO `task` VALUES ('325', '45', '12', '18', '27', '58', '待开发，开发中，已完成三个区域的宽度应该可以调节，这样有的项过多就可以宽一点显示更多列，有的只要一列就好了', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1426244393');
INSERT INTO `task` VALUES ('326', '45', '12', '18', '27', '51', '在hover或选中的时候，同一个用户故事用同一种颜色或式样划分', '0', '0', '0', '4', '2', '10', '', '0', '0', '0', '1426329740');
INSERT INTO `task` VALUES ('327', '44', '11', '16', '31', '55', 'C端 - 首页 - 意见反馈', '0', '0', '0', '5', '4', '50', '', '1426564465', '1426564465', '0', '1426469469');
INSERT INTO `task` VALUES ('328', '44', '11', '16', '31', '55', '运营平台 - 意见 - 列表', '0', '0', '0', '5', '6', '50', '', '1426564008', '1426564008', '0', '1426469531');
INSERT INTO `task` VALUES ('329', '44', '11', '16', '31', '55', '运营平台 - 意见 - 详情/回复', '0', '0', '0', '5', '4', '50', '', '1426564005', '1426564005', '0', '1426469605');
INSERT INTO `task` VALUES ('330', '44', '11', '16', '31', '44', '运营平台 - 退款 - 列表', '0', '0', '0', '5', '6', '50', '', '1426844363', '1426844363', '0', '1426469644');
INSERT INTO `task` VALUES ('331', '44', '11', '16', '31', '44', '运营平台 - 退款 - 详情/处理', '0', '0', '0', '5', '4', '50', '', '1426844358', '1426844358', '0', '1426469677');
INSERT INTO `task` VALUES ('332', '44', '11', '16', '31', '44', '运营平台 - 投诉 - 列表', '0', '0', '0', '5', '4', '50', '', '1426675218', '1426675218', '0', '1426469715');
INSERT INTO `task` VALUES ('333', '44', '11', '16', '31', '44', '运营平台 - 投诉 - 详情/处理', '0', '0', '0', '5', '4', '50', '', '1426675215', '1426675215', '0', '1426469737');
INSERT INTO `task` VALUES ('334', '44', '11', '16', '31', '44', 'C端 - 订单 - 退款详情', '0', '0', '0', '3', '4', '50', '', '1426844360', '1426844360', '0', '1426470846');
INSERT INTO `task` VALUES ('335', '44', '11', '16', '31', '44', 'C端 - 订单 - 退款', '0', '0', '0', '3', '8', '50', '', '1426675256', '1426675256', '0', '1426470880');
INSERT INTO `task` VALUES ('336', '44', '11', '16', '31', '61', '意见列表-界面制作', '0', '0', '0', '2', '8', '50', '', '1426834015', '1426834015', '0', '1426490023');
INSERT INTO `task` VALUES ('337', '44', '11', '16', '31', '61', '详情/回复--界面制作', '0', '0', '0', '2', '8', '50', '', '1426834023', '1426834023', '0', '1426490048');
INSERT INTO `task` VALUES ('339', '44', '11', '16', '29', '45', '会员列表-界面制作', '0', '0', '0', '2', '6', '50', '', '1426835700', '1426835700', '0', '1426490163');
INSERT INTO `task` VALUES ('340', '44', '11', '16', '29', '45', '基础资料详情-界面制作', '0', '0', '0', '2', '2', '50', '', '1426835739', '1426835739', '0', '1426490189');
INSERT INTO `task` VALUES ('341', '44', '11', '16', '29', '61', '编辑余额积分-界面制作', '0', '0', '0', '2', '1', '50', '', '1429145301', '1429145301', '0', '1426490239');
INSERT INTO `task` VALUES ('342', '44', '11', '16', '29', '61', '详情-积分-界面制作', '0', '0', '0', '2', '2', '50', '', '1429145302', '1429145302', '0', '1426490265');
INSERT INTO `task` VALUES ('343', '44', '11', '16', '36', '61', '积分管理--界面制作', '0', '0', '0', '2', '4', '50', '', '1429145304', '1429145304', '0', '1426490290');
INSERT INTO `task` VALUES ('344', '44', '11', '16', '36', '61', '积分消费活动-界面制作', '0', '0', '0', '2', '4', '50', '', '1429145303', '1429145303', '0', '1426490315');
INSERT INTO `task` VALUES ('346', '44', '11', '16', '31', '45', '【运营平台】评论列表', '0', '0', '0', '2', '12', '50', '', '1426835784', '1426835784', '0', '1426511129');
INSERT INTO `task` VALUES ('348', '44', '11', '16', '31', '45', '【运营平台】评论详情页面', '0', '0', '0', '2', '6', '50', '', '1427076292', '1427076292', '0', '1426511180');
INSERT INTO `task` VALUES ('349', '44', '11', '16', '31', '44', 'C端 - 评论 - 新建', '0', '0', '0', '5', '4', '50', '', '1426564362', '1426564362', '0', '1426564359');
INSERT INTO `task` VALUES ('350', '44', '11', '16', '31', '44', 'C端 - 评论 - 详情', '0', '0', '0', '5', '4', '50', '', '1426564432', '1426564432', '0', '1426564429');
INSERT INTO `task` VALUES ('351', '44', '11', '16', '31', '44', 'C端 - 评论 - 查询评论标签', '0', '0', '0', '5', '2', '50', '', '1426564587', '1426564587', '0', '1426564463');
INSERT INTO `task` VALUES ('352', '44', '11', '16', '32', '49', '【运营平台】整体外观与体验一致性调整', '0', '0', '0', '5', '8', '50', '', '1427349405', '1427349405', '0', '1426648164');
INSERT INTO `task` VALUES ('355', '44', '11', '16', '31', '44', 'C端 - 评价 - 项目详情中呈现评价列表', '0', '1', '0', '5', '8', '50', '', '1427175409', '1427175409', '0', '1426749605');
INSERT INTO `task` VALUES ('356', '44', '11', '16', '31', '44', '运营平台 - 项目详情 - 增加评论', '0', '1', '0', '3', '4', '50', '', '1426844354', '1426844354', '0', '1426751275');
INSERT INTO `task` VALUES ('357', '44', '11', '17', '29', '48', '【iOS】登录整合公共的接口', '0', '0', '0', '3', '6', '50', '', '1427186159', '1427186159', '0', '1426830930');
INSERT INTO `task` VALUES ('358', '44', '11', '17', '29', '48', '【iOS】会员信息、编辑、等级界面UI匹配', '0', '0', '0', '3', '8', '50', '', '1427932534', '1427932534', '0', '1426831040');
INSERT INTO `task` VALUES ('359', '44', '11', '17', '29', '48', '【iOS】会员编辑与等级接口联调', '0', '0', '0', '3', '4', '50', '', '1427932527', '1427932527', '0', '1426831075');
INSERT INTO `task` VALUES ('360', '44', '11', '16', '29', '55', '我的项目收藏', '0', '0', '0', '3', '8', '50', '', '1426831241', '1426831241', '0', '1426831206');
INSERT INTO `task` VALUES ('361', '44', '11', '16', '29', '55', '我的项目收藏', '0', '0', '0', '3', '8', '50', '', '1428566708', '1428566708', '0', '1426831206');
INSERT INTO `task` VALUES ('362', '44', '11', '17', '40', '48', '【iOS】搜索+搜索结果UI匹配', '0', '0', '0', '3', '4', '50', '', '1427932528', '1427932528', '0', '1426831210');
INSERT INTO `task` VALUES ('363', '44', '11', '17', '40', '48', '【iOS】搜索接口联调与验证测试', '0', '0', '0', '3', '4', '50', '', '1427188255', '1427188255', '0', '1426831246');
INSERT INTO `task` VALUES ('364', '44', '11', '17', '29', '48', '【iOS】推荐有礼界面效果处理', '0', '0', '0', '3', '4', '50', '', '1427932554', '1427932554', '0', '1426831298');
INSERT INTO `task` VALUES ('365', '44', '11', '17', '37', '48', '【iOS】支付宝接口验证与联调', '0', '0', '0', '3', '8', '50', '', '1427157465', '1427157465', '0', '1426831334');
INSERT INTO `task` VALUES ('366', '44', '11', '16', '30', '55', '合同--项目统计', '0', '0', '0', '3', '8', '50', '', '1427244454', '1427244454', '0', '1426831347');
INSERT INTO `task` VALUES ('367', '44', '11', '17', '37', '48', '【iOS】人员时间选择UI处理', '0', '0', '0', '3', '12', '50', '', '1427932531', '1427932531', '0', '1426831372');
INSERT INTO `task` VALUES ('368', '44', '11', '17', '29', '46', '【Android】定位接口联调', '0', '0', '0', '3', '3', '50', '', '1427337253', '1427337253', '0', '1426831394');
INSERT INTO `task` VALUES ('369', '44', '11', '17', '37', '48', '【iOS】人员时间选择接口联调', '0', '0', '0', '3', '6', '50', '', '1427349683', '1427349683', '0', '1426831399');
INSERT INTO `task` VALUES ('370', '44', '11', '17', '35', '46', '【Android】支付接口联调', '0', '0', '0', '3', '5', '50', '', '1427175693', '1427175693', '0', '1426831453');
INSERT INTO `task` VALUES ('371', '44', '11', '17', '29', '48', '【iOS】友盟分享组件集成验证', '0', '0', '0', '3', '8', '50', '', '1427932517', '1427932517', '0', '1426831500');
INSERT INTO `task` VALUES ('372', '44', '11', '17', '35', '46', '【Android】支付结果UI集成', '0', '0', '0', '3', '3', '50', '', '1427175688', '1427175688', '0', '1426831533');
INSERT INTO `task` VALUES ('373', '44', '11', '17', '41', '46', '【Android】页面集成调整', '0', '0', '0', '3', '10', '50', '', '1427680913', '1427680913', '0', '1426831655');
INSERT INTO `task` VALUES ('374', '44', '11', '17', '40', '48', '【iOS】友盟统计点增加', '0', '0', '0', '2', '2', '50', '', '1427349815', '1427349815', '0', '1426831659');
INSERT INTO `task` VALUES ('375', '44', '11', '17', '41', '46', '【Android】升级和崩溃集成测试', '0', '0', '0', '3', '5', '50', '', '1427680915', '1427680915', '0', '1426831741');
INSERT INTO `task` VALUES ('376', '44', '11', '16', '32', '61', '评价界面模板-界面制作', '0', '0', '0', '2', '4', '50', '', '1429145312', '1429145312', '0', '1426833027');
INSERT INTO `task` VALUES ('377', '44', '11', '16', '32', '61', '评价店面总评-界面制作', '0', '0', '0', '1', '2', '50', '', '1429145325', '1429145325', '0', '1426833049');
INSERT INTO `task` VALUES ('378', '44', '11', '16', '32', '61', '用户评价-界面制作', '0', '0', '0', '1', '2', '50', '', '1429145331', '1429145331', '0', '1426833072');
INSERT INTO `task` VALUES ('379', '44', '11', '16', '29', '64', '[运营平台]会员列表', '0', '0', '0', '1', '8', '50', '', '1427178045', '1427178045', '0', '1426833160');
INSERT INTO `task` VALUES ('380', '44', '11', '16', '29', '64', '[运营平台]废除禁用会员', '0', '0', '0', '1', '4', '50', '', '1427178049', '1427178049', '0', '1426833235');
INSERT INTO `task` VALUES ('381', '44', '11', '16', '31', '61', '意见列表-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145342', '1429145342', '0', '1426833239');
INSERT INTO `task` VALUES ('382', '44', '11', '16', '31', '61', '详情/回复-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145339', '1429145339', '0', '1426833295');
INSERT INTO `task` VALUES ('383', '44', '11', '16', '30', '61', '项目编辑-接口联调', '0', '0', '0', '1', '3', '50', '', '1429145326', '1429145326', '0', '1426833347');
INSERT INTO `task` VALUES ('384', '44', '11', '16', '30', '61', '员工排班生成-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145314', '1429145314', '0', '1426833387');
INSERT INTO `task` VALUES ('385', '44', '11', '16', '29', '64', '[运营平台]会员详情（消费记录、积分流）', '0', '0', '0', '5', '8', '50', '', '1427178041', '1427178041', '0', '1426833409');
INSERT INTO `task` VALUES ('386', '44', '11', '16', '29', '64', '[运营平台]编辑会员积分', '0', '0', '0', '5', '4', '50', '', '1427178047', '1427178047', '0', '1426833446');
INSERT INTO `task` VALUES ('387', '44', '11', '16', '40', '61', '项目列表-接口联调', '0', '0', '0', '1', '3', '50', '', '1429145340', '1429145340', '0', '1426833478');
INSERT INTO `task` VALUES ('388', '44', '11', '16', '29', '64', '[c端]我的等级', '0', '0', '0', '5', '4', '50', '', '1427178036', '1427178036', '0', '1426833485');
INSERT INTO `task` VALUES ('389', '44', '11', '17', '40', '57', '【Android】项目详情UI集成', '0', '0', '0', '3', '2', '50', '', '1427178187', '1427178187', '0', '1426833518');
INSERT INTO `task` VALUES ('390', '44', '11', '16', '40', '61', '详情/编辑-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145327', '1429145327', '0', '1426833520');
INSERT INTO `task` VALUES ('391', '44', '11', '16', '29', '64', '[c端]我的钱包', '0', '0', '0', '5', '4', '50', '', '1427178043', '1427178043', '0', '1426833544');
INSERT INTO `task` VALUES ('392', '44', '11', '16', '29', '64', '[c端]我的积分', '0', '0', '0', '5', '4', '50', '', '1427178059', '1427178059', '0', '1426833563');
INSERT INTO `task` VALUES ('393', '44', '11', '16', '30', '61', '项目新增-接口联调', '0', '0', '0', '1', '8', '50', '', '1429145332', '1429145332', '0', '1426833583');
INSERT INTO `task` VALUES ('394', '44', '11', '16', '29', '64', '[c端]我的现金券', '0', '0', '0', '5', '4', '50', '', '1427178063', '1427178063', '0', '1426833597');
INSERT INTO `task` VALUES ('395', '44', '11', '16', '29', '64', '[c端]消息中心', '0', '0', '0', '5', '4', '50', '', '1427178056', '1427178056', '0', '1426833631');
INSERT INTO `task` VALUES ('396', '44', '11', '17', '31', '57', '【Android】评论UI集成', '0', '0', '0', '3', '2', '50', '', '1427178191', '1427178191', '0', '1426833638');
INSERT INTO `task` VALUES ('397', '44', '11', '16', '30', '61', '项目详情-接口联调', '0', '0', '0', '1', '1', '50', '', '1429145328', '1429145328', '0', '1426833659');
INSERT INTO `task` VALUES ('398', '44', '11', '17', '35', '57', '【Android】人员时间选择UI集成', '0', '0', '0', '3', '2', '50', '', '1429580803', '1429580803', '0', '1426833676');
INSERT INTO `task` VALUES ('399', '44', '11', '16', '32', '61', '评价界面模板-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145324', '1429145324', '0', '1426833707');
INSERT INTO `task` VALUES ('400', '44', '11', '17', '37', '57', '【Android】订单详情UI集成', '0', '0', '0', '3', '3', '50', '', '1427178184', '1427178184', '0', '1426833716');
INSERT INTO `task` VALUES ('401', '44', '11', '16', '29', '61', '基础资料详情-接口联调', '0', '0', '0', '1', '2', '50', '', '1429145334', '1429145334', '0', '1426833745');
INSERT INTO `task` VALUES ('402', '44', '11', '17', '41', '57', '【Android】设置UI集成', '0', '0', '0', '3', '2', '50', '', '1427178209', '1427178209', '0', '1426833756');
INSERT INTO `task` VALUES ('403', '44', '11', '16', '29', '61', '编辑余额积分-接口联调', '0', '0', '0', '1', '1', '50', '', '1429145338', '1429145338', '0', '1426833777');
INSERT INTO `task` VALUES ('404', '44', '11', '17', '36', '57', '【Android】分享UI集成', '0', '0', '0', '3', '3', '50', '', '1429580818', '1429580818', '0', '1426833799');
INSERT INTO `task` VALUES ('405', '44', '11', '16', '29', '61', '会员列表-接口联调', '0', '0', '0', '1', '6', '50', '', '1429145336', '1429145336', '0', '1426833808');
INSERT INTO `task` VALUES ('406', '44', '11', '16', '36', '61', '积分消费活动-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145324', '1429145324', '0', '1426833844');
INSERT INTO `task` VALUES ('407', '44', '11', '16', '29', '61', '详情-积分-接口联调', '0', '0', '0', '1', '2', '50', '', '1429145329', '1429145329', '0', '1426833883');
INSERT INTO `task` VALUES ('408', '44', '11', '17', '41', '57', '【Android】消息中心UI集成', '0', '0', '0', '3', '2', '50', '', '1427178197', '1427178197', '0', '1426833902');
INSERT INTO `task` VALUES ('409', '44', '11', '16', '32', '61', '用户评价-接口联调', '0', '0', '0', '1', '2', '50', '', '1429145333', '1429145333', '0', '1426833924');
INSERT INTO `task` VALUES ('410', '44', '11', '17', '40', '57', '【Android】项目详情接口联调', '0', '0', '0', '3', '2', '50', '', '1427419748', '1427419748', '0', '1426833942');
INSERT INTO `task` VALUES ('411', '44', '11', '16', '32', '61', '评价店面总评-接口联调', '0', '0', '0', '1', '2', '50', '', '1429145335', '1429145335', '0', '1426833971');
INSERT INTO `task` VALUES ('412', '44', '11', '17', '31', '57', '【Android】评论接口联调', '0', '0', '0', '3', '4', '50', '', '1427419747', '1427419747', '0', '1426833983');
INSERT INTO `task` VALUES ('413', '44', '11', '16', '34', '64', '[运营平台]门店结算报表', '0', '0', '0', '5', '8', '50', '', '1427178054', '1427178054', '0', '1426833990');
INSERT INTO `task` VALUES ('414', '44', '11', '17', '35', '57', '【Android】人员时间选择接口联调', '0', '0', '0', '3', '4', '50', '', '1427419755', '1427419755', '0', '1426834019');
INSERT INTO `task` VALUES ('415', '44', '11', '17', '37', '57', '【Android】订单详情接口联调', '0', '0', '0', '3', '3', '50', '', '1427419743', '1427419743', '0', '1426834048');
INSERT INTO `task` VALUES ('416', '44', '11', '17', '41', '57', '【Android】设置接口联调', '0', '0', '0', '3', '1', '50', '', '1429580812', '1429580812', '0', '1426834073');
INSERT INTO `task` VALUES ('417', '44', '11', '17', '41', '57', '【Android】消息中心接口联调', '0', '0', '0', '3', '4', '50', '', '1427178232', '1427178232', '0', '1426834096');
INSERT INTO `task` VALUES ('418', '44', '11', '16', '36', '61', '积分管理-接口联调', '0', '0', '0', '1', '4', '50', '', '1429145343', '1429145343', '0', '1426834158');
INSERT INTO `task` VALUES ('419', '44', '11', '17', '41', '54', '【Android】首页推荐UI集成', '0', '0', '0', '3', '2', '50', '', '1427340503', '1427340503', '0', '1426834286');
INSERT INTO `task` VALUES ('420', '44', '11', '17', '41', '54', '【Android】首页推荐接口联调', '0', '0', '0', '3', '4', '50', '', '1427340521', '1427340521', '0', '1426834306');
INSERT INTO `task` VALUES ('421', '44', '11', '17', '41', '54', '【Android】抽屉界面UI调整', '0', '0', '0', '3', '1', '50', '', '1427426955', '1427426955', '0', '1426834339');
INSERT INTO `task` VALUES ('422', '44', '11', '17', '41', '54', '【Android】抽屉界面接口联调', '0', '0', '0', '3', '2', '50', '', '1427426937', '1427426937', '0', '1426834358');
INSERT INTO `task` VALUES ('423', '44', '11', '17', '29', '54', '【Android】我的等级UI集成', '0', '0', '0', '3', '2', '50', '', '1428559051', '1428559051', '0', '1426834389');
INSERT INTO `task` VALUES ('424', '44', '11', '17', '29', '54', '【Android】我的等级接口联调', '0', '0', '0', '3', '3', '50', '', '1428559053', '1428559053', '0', '1426834412');
INSERT INTO `task` VALUES ('425', '44', '11', '17', '29', '54', '【Android】我的钱包接口联调', '0', '0', '0', '3', '1', '50', '', '1427176039', '1427176039', '0', '1426834456');
INSERT INTO `task` VALUES ('426', '44', '11', '17', '29', '54', '【Android】我的积分UI集成', '0', '0', '0', '3', '1', '50', '', '1427348511', '1427348511', '0', '1426834477');
INSERT INTO `task` VALUES ('427', '44', '11', '17', '29', '54', '【Android】我的积分接口联调', '0', '0', '0', '3', '2', '50', '', '1427348516', '1427348516', '0', '1426834497');
INSERT INTO `task` VALUES ('428', '44', '11', '17', '29', '54', '【Android】我的代金券UI集成', '0', '0', '0', '3', '1', '50', '', '1427175917', '1427175917', '0', '1426834532');
INSERT INTO `task` VALUES ('429', '44', '11', '17', '29', '54', '【Android】我的代金券接口联调', '0', '0', '0', '3', '1', '50', '', '1427175956', '1427175956', '0', '1426834553');
INSERT INTO `task` VALUES ('430', '44', '11', '17', '32', '54', '【Android】商家详情UI集成', '0', '0', '0', '3', '2', '50', '', '1427332544', '1427332544', '0', '1426834578');
INSERT INTO `task` VALUES ('431', '44', '11', '17', '32', '54', '【Android】商家详情接口联调', '0', '0', '0', '3', '3', '50', '', '1427332541', '1427332541', '0', '1426834604');
INSERT INTO `task` VALUES ('432', '44', '11', '17', '29', '54', '【Android】我的收藏UI集成', '0', '0', '0', '3', '2', '50', '', '1427247173', '1427247173', '0', '1426834634');
INSERT INTO `task` VALUES ('433', '44', '11', '17', '29', '54', '【Android】我的收藏接口联调', '0', '0', '0', '3', '2', '50', '', '1427247179', '1427247179', '0', '1426834660');
INSERT INTO `task` VALUES ('434', '44', '11', '17', '29', '54', '【Android】推荐有礼UI集成', '0', '0', '0', '3', '1', '50', '', '1428559046', '1428559046', '0', '1426834691');
INSERT INTO `task` VALUES ('435', '44', '11', '17', '36', '54', '【Android】推荐有礼接口联调', '0', '0', '0', '3', '2', '50', '', '1428559044', '1428559044', '0', '1426834719');
INSERT INTO `task` VALUES ('436', '44', '11', '17', '41', '54', '【Android】搜索UI集成', '0', '0', '0', '3', '2', '50', '', '1427349161', '1427349161', '0', '1426834747');
INSERT INTO `task` VALUES ('437', '44', '11', '17', '41', '54', '【Android】搜索接口联调', '0', '0', '0', '3', '2', '50', '', '1427426950', '1427426950', '0', '1426834765');
INSERT INTO `task` VALUES ('438', '44', '11', '17', '41', '54', '【Android】搜索结果UI集成', '0', '0', '0', '3', '2', '50', '', '1427426931', '1427426931', '0', '1426834798');
INSERT INTO `task` VALUES ('439', '44', '11', '17', '41', '54', '【Android】搜索结果接口联调', '0', '0', '0', '3', '2', '50', '', '1427426927', '1427426927', '0', '1426834824');
INSERT INTO `task` VALUES ('440', '44', '11', '17', '37', '56', '【Android】丽人券详情+我的丽人券UI集成', '0', '0', '0', '3', '5', '50', '', '1427178239', '1427178239', '0', '1426834958');
INSERT INTO `task` VALUES ('441', '44', '11', '17', '31', '56', '【Android】评价相关＋个人资料+登录相关UI集成', '0', '0', '0', '3', '5', '50', '', '1427202031', '1427202031', '0', '1426834990');
INSERT INTO `task` VALUES ('442', '44', '11', '17', '31', '56', '【Android】投诉流程相关（选择退款订单+服务选择+申请退款/投诉+退款详情）UI集成', '0', '0', '0', '3', '6', '50', '', '1427549867', '1427549867', '0', '1426835021');
INSERT INTO `task` VALUES ('443', '44', '11', '17', '37', '56', '【Android】我的订单UI集成', '0', '0', '0', '3', '5', '50', '', '1427193611', '1427193611', '0', '1426835051');
INSERT INTO `task` VALUES ('444', '44', '11', '17', '38', '56', '【Android】登录+验证码+个人资料设置接口联调', '0', '0', '0', '3', '2', '50', '', '1427269421', '1427269421', '0', '1426835086');
INSERT INTO `task` VALUES ('445', '44', '11', '17', '37', '56', '【Android】我的丽人券接口联调', '0', '0', '0', '3', '2', '50', '', '1427549882', '1427549882', '0', '1426835197');
INSERT INTO `task` VALUES ('446', '44', '11', '17', '37', '56', '【Android】我的订单接口联调', '0', '0', '0', '3', '5', '50', '', '1427549824', '1427549824', '0', '1426835224');
INSERT INTO `task` VALUES ('447', '44', '11', '17', '37', '56', '【Android】丽人券详情接口联调', '0', '0', '0', '3', '2', '50', '', '1427422192', '1427422192', '0', '1426835254');
INSERT INTO `task` VALUES ('448', '44', '11', '17', '31', '56', '【Android】退款流程相关接口联调', '0', '0', '0', '3', '5', '50', '', '1427719744', '1427719744', '0', '1426835286');
INSERT INTO `task` VALUES ('449', '44', '11', '17', '31', '56', '【Android】我要评价接口联调', '0', '0', '0', '3', '2', '50', '', '1427549505', '1427549505', '0', '1426835328');
INSERT INTO `task` VALUES ('450', '44', '11', '17', '41', '57', '【Android】升级与崩溃UI和接口联调', '0', '0', '0', '3', '6', '50', '', '1429580811', '1429580811', '0', '1426835566');
INSERT INTO `task` VALUES ('451', '44', '11', '17', '40', '54', '【Android】项目商家列表接口联调', '0', '0', '0', '3', '1', '50', '', '1427247143', '1427247143', '0', '1426836116');
INSERT INTO `task` VALUES ('452', '44', '11', '17', '40', '58', '【iOS】项目列表接口联调', '0', '0', '0', '3', '2', '50', '', '1427380365', '1427380365', '0', '1426837477');
INSERT INTO `task` VALUES ('453', '44', '11', '17', '40', '58', '【iOS】项目详情接口联调', '0', '0', '0', '3', '2', '50', '', '1427380369', '1427380369', '0', '1426837648');
INSERT INTO `task` VALUES ('454', '44', '11', '17', '31', '58', '【iOS】评论列表接口联调', '0', '0', '0', '3', '2', '50', '', '1427427927', '1427427927', '0', '1426837775');
INSERT INTO `task` VALUES ('455', '44', '11', '17', '31', '58', '【iOS】评论列表UI集成', '0', '0', '0', '3', '2', '50', '', '1427427932', '1427427932', '0', '1426837807');
INSERT INTO `task` VALUES ('456', '44', '11', '17', '41', '58', '【iOS】设置接口联调', '0', '0', '0', '4', '1', '50', '', '1428546744', '1428546744', '0', '1426837853');
INSERT INTO `task` VALUES ('457', '44', '11', '17', '41', '58', '【iOS】设置UI集成', '0', '0', '0', '4', '1', '50', '', '1427428406', '1427428406', '0', '1426837889');
INSERT INTO `task` VALUES ('458', '44', '11', '17', '37', '58', '【iOS】订单详情接口联调', '0', '0', '0', '3', '3', '50', '', '1427427941', '1427427941', '0', '1426837960');
INSERT INTO `task` VALUES ('459', '44', '11', '17', '37', '58', '【iOS】订单详情UI集成', '0', '0', '0', '3', '1', '50', '', '1427428192', '1427428192', '0', '1426837989');
INSERT INTO `task` VALUES ('460', '44', '11', '17', '32', '58', '【iOS】商家详情接口联调', '0', '0', '0', '3', '3', '50', '', '1427337532', '1427337532', '0', '1426838202');
INSERT INTO `task` VALUES ('461', '44', '11', '17', '32', '58', '【iOS】商家详情UI集成', '0', '0', '0', '3', '1', '50', '', '1427337687', '1427337687', '0', '1426838256');
INSERT INTO `task` VALUES ('462', '44', '11', '17', '41', '58', '【iOS】消息中心UI集成', '0', '0', '0', '4', '1', '50', '', '1427436784', '1427436784', '0', '1426838315');
INSERT INTO `task` VALUES ('463', '44', '11', '17', '41', '58', '消息中心接口联调', '0', '0', '0', '3', '4', '50', '', '1427438448', '1427438448', '0', '1426838334');
INSERT INTO `task` VALUES ('464', '44', '11', '16', '40', '63', '客户端统计接口', '0', '1', '0', '2', '4', '50', '', '1427162175', '1427162175', '0', '1426845970');
INSERT INTO `task` VALUES ('465', '44', '11', '16', '30', '45', '【运营平台】合同列表接口联调', '0', '0', '0', '2', '6', '50', '', '1427196772', '1427196772', '0', '1427076060');
INSERT INTO `task` VALUES ('466', '44', '11', '16', '30', '45', '【运营平台】合同新增接口联调', '0', '0', '0', '2', '6', '50', '', '1427350216', '1427350216', '0', '1427076119');
INSERT INTO `task` VALUES ('467', '44', '11', '16', '30', '45', '【运营平台】合同编辑接口联调', '0', '0', '0', '2', '3', '50', '', '1427350219', '1427350219', '0', '1427076157');
INSERT INTO `task` VALUES ('468', '44', '11', '16', '30', '45', '【运营平台】合同列表页面', '0', '0', '0', '2', '3', '50', '', '1427076258', '1427076258', '0', '1427076243');
INSERT INTO `task` VALUES ('469', '44', '11', '16', '30', '45', '【运营平台】评论详情接口完成数据联调', '0', '0', '0', '1', '6', '50', '', '1427349077', '1427349077', '0', '1427076288');
INSERT INTO `task` VALUES ('470', '44', '11', '17', '34', '45', '【运营平台】门店结算列表页面', '0', '0', '0', '2', '6', '50', '', '1427076357', '1427076357', '0', '1427076351');
INSERT INTO `task` VALUES ('471', '44', '11', '17', '34', '45', '【运营平台】门店结算详情页面', '0', '0', '0', '2', '3', '50', '', '1427076389', '1427076389', '0', '1427076383');
INSERT INTO `task` VALUES ('472', '44', '11', '17', '34', '45', '【运营平台】门店结算页面接口联调', '0', '0', '0', '2', '6', '50', '', '1427104956', '1427104956', '0', '1427076425');
INSERT INTO `task` VALUES ('473', '44', '11', '17', '34', '45', '【运营平台】门店结算详情接口联调', '0', '0', '0', '2', '3', '50', '', '1428462976', '1428462976', '0', '1427076448');
INSERT INTO `task` VALUES ('474', '44', '11', '17', '32', '45', '【商户平台】日收益页面', '0', '0', '0', '2', '8', '50', '', '1428462979', '1428462979', '0', '1427076769');
INSERT INTO `task` VALUES ('475', '44', '11', '17', '32', '45', '【商户平台】日收益接口联调', '0', '0', '0', '2', '8', '50', '', '1428462975', '1428462975', '0', '1427076799');
INSERT INTO `task` VALUES ('476', '44', '11', '17', '32', '45', '【商户平台】月收益页面', '0', '0', '0', '2', '8', '50', '', '1428462980', '1428462980', '0', '1427076823');
INSERT INTO `task` VALUES ('477', '44', '11', '17', '32', '45', '【商户平台】月收益接口联调', '0', '0', '0', '2', '8', '50', '', '1428462974', '1428462974', '0', '1427076843');
INSERT INTO `task` VALUES ('478', '44', '11', '17', '32', '45', '【商户平台】订单详情', '0', '0', '0', '2', '4', '50', '', '1428462972', '1428462972', '0', '1427076868');
INSERT INTO `task` VALUES ('485', '44', '11', '17', '32', '49', '【商户平台】登录', '0', '0', '0', '5', '8', '50', '', '1427266666', '1427266666', '0', '1427089228');
INSERT INTO `task` VALUES ('486', '44', '11', '17', '32', '49', '【商户平台】预约（主界面与整体风格编写制作）', '0', '0', '0', '4', '12', '50', '', '1427939025', '1427939025', '0', '1427089288');
INSERT INTO `task` VALUES ('487', '44', '11', '17', '32', '49', '【商户平台】预约接口联调', '0', '0', '0', '5', '4', '50', '', '1427983998', '1427983998', '0', '1427089328');
INSERT INTO `task` VALUES ('488', '44', '11', '17', '32', '49', '【商户平台】消单', '0', '0', '0', '5', '4', '50', '', '1427983996', '1427983996', '0', '1427089370');
INSERT INTO `task` VALUES ('489', '44', '11', '17', '32', '49', '【商户平台】预约详情-界面制作', '0', '0', '0', '5', '4', '50', '', '1427983997', '1427983997', '0', '1427089426');
INSERT INTO `task` VALUES ('490', '44', '11', '17', '32', '49', '【商户平台】预约详情接口联调', '0', '0', '0', '5', '4', '50', '', '1427983998', '1427983998', '0', '1427089599');
INSERT INTO `task` VALUES ('491', '44', '11', '17', '36', '49', '【运维平台】活动-现金劵管理 界面制作', '0', '0', '0', '5', '4', '50', '', '1428396110', '1428396110', '0', '1427089677');
INSERT INTO `task` VALUES ('492', '44', '11', '17', '36', '49', '【运维平台】活动-现金卷管理 接口联调', '0', '0', '0', '5', '4', '50', '', '1428396111', '1428396111', '0', '1427089762');
INSERT INTO `task` VALUES ('493', '44', '11', '17', '36', '49', '【运维平台】活动-现金劵活动 界面制作', '0', '0', '0', '5', '12', '50', '', '1428396111', '1428396111', '0', '1427089828');
INSERT INTO `task` VALUES ('494', '44', '11', '17', '36', '49', '【运维平台】活动-现金活动 接口联调', '0', '0', '0', '5', '4', '50', '', '1428396112', '1428396112', '0', '1427089893');
INSERT INTO `task` VALUES ('495', '44', '11', '17', '36', '49', '【运维平台】活动-劵设置 界面制作', '0', '0', '0', '5', '4', '50', '', '1428396108', '1428396108', '0', '1427090132');
INSERT INTO `task` VALUES ('496', '44', '11', '17', '36', '49', '【运维平台】活动-劵设置 接口联调', '0', '0', '0', '5', '4', '50', '', '1428396109', '1428396109', '0', '1427090168');
INSERT INTO `task` VALUES ('497', '44', '11', '17', '31', '49', '【运维平台】售后-退款列表', '0', '0', '0', '5', '4', '50', '', '1427338680', '1427338680', '0', '1427090230');
INSERT INTO `task` VALUES ('498', '44', '11', '17', '31', '49', '【运维平台】售后-退款详情', '0', '0', '0', '5', '4', '50', '', '1427434331', '1427434331', '0', '1427090262');
INSERT INTO `task` VALUES ('499', '45', '12', '18', '26', '61', '第二迭代的故事写成第一迭代，没办法改成第二迭代', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1427090616');
INSERT INTO `task` VALUES ('500', '44', '11', '17', '31', '49', '【运营平台】售后-投诉详情/处理', '0', '0', '0', '3', '12', '50', '', '1427434333', '1427434333', '0', '1427090923');
INSERT INTO `task` VALUES ('501', '44', '11', '17', '38', '53', '【运营平台】【pcweb】管理员列表', '0', '0', '0', '3', '3', '50', '', '1427092335', '1427092335', '0', '1427091037');
INSERT INTO `task` VALUES ('502', '44', '11', '17', '38', '53', '【运营平台】【pcweb】管理员新增', '0', '0', '0', '3', '3', '50', '', '1427162156', '1427162156', '0', '1427091172');
INSERT INTO `task` VALUES ('503', '44', '11', '17', '38', '53', '【运营平台】【pcweb】-管理员编辑', '0', '0', '0', '3', '3', '50', '', '1427162154', '1427162154', '0', '1427091253');
INSERT INTO `task` VALUES ('504', '44', '11', '17', '40', '62', '【首页】调整 接口接入', '0', '0', '0', '3', '6', '50', '', '1427273010', '1427273010', '0', '1427091937');
INSERT INTO `task` VALUES ('505', '44', '11', '17', '37', '62', '【我的订单】调整 接口接入', '0', '0', '0', '3', '6', '50', '', '1428546626', '1428546626', '0', '1427091970');
INSERT INTO `task` VALUES ('506', '44', '11', '17', '37', '62', '【我的丽人券】调整 接口接入', '0', '0', '0', '3', '6', '50', '', '1427681596', '1427681596', '0', '1427092009');
INSERT INTO `task` VALUES ('507', '44', '11', '17', '37', '62', '【丽人券详情】调整 接口接入', '0', '0', '0', '3', '6', '50', '', '1427681589', '1427681589', '0', '1427092058');
INSERT INTO `task` VALUES ('508', '44', '11', '17', '37', '62', '【申请退款】', '0', '0', '0', '3', '6', '50', '', '1427681598', '1427681598', '0', '1427092087');
INSERT INTO `task` VALUES ('509', '44', '11', '17', '37', '62', '【评价】调整 接口接入', '0', '0', '0', '3', '6', '50', '', '1427681594', '1427681594', '0', '1427092106');
INSERT INTO `task` VALUES ('510', '44', '11', '17', '41', '62', '【定位】调整 接口接入', '0', '0', '0', '4', '6', '50', '', '1427273002', '1427273002', '0', '1427092137');
INSERT INTO `task` VALUES ('511', '44', '11', '17', '31', '49', '【运营平台】售后-投诉列表', '0', '0', '0', '3', '12', '50', '', '1427351852', '1427351852', '0', '1427092650');
INSERT INTO `task` VALUES ('512', '44', '11', '17', '38', '53', '【运营平台】【pcweb】-管理员权限', '0', '0', '0', '3', '8', '50', '', '1427850901', '1427850901', '0', '1427092928');
INSERT INTO `task` VALUES ('513', '44', '11', '17', '32', '53', '【商户平台】【pcweb】-订单管理主界面模板', '0', '0', '0', '3', '12', '50', '', '1428381411', '1428381411', '0', '1427093031');
INSERT INTO `task` VALUES ('514', '44', '11', '17', '32', '53', '【商户平台】【pcweb】-订单管理-未消费', '0', '0', '0', '3', '4', '50', '', '1428381410', '1428381410', '0', '1427093116');
INSERT INTO `task` VALUES ('515', '44', '11', '17', '32', '53', '【商户平台】【pcweb】-订单管理-已消费', '0', '0', '0', '3', '4', '50', '', '1428381415', '1428381415', '0', '1427093217');
INSERT INTO `task` VALUES ('516', '44', '11', '17', '32', '61', '评价界面模板-界面制作', '0', '0', '0', '1', '4', '50', '', '1427769673', '1427769673', '0', '1427093242');
INSERT INTO `task` VALUES ('517', '44', '11', '17', '32', '61', '用户评价-界面制作', '0', '0', '0', '1', '2', '50', '', '1427769692', '1427769692', '0', '1427093265');
INSERT INTO `task` VALUES ('518', '44', '11', '17', '29', '61', '会员列表-接口联调', '0', '0', '0', '1', '6', '50', '', '1427452471', '1427452471', '0', '1427093287');
INSERT INTO `task` VALUES ('519', '44', '11', '17', '31', '61', '详情/回复-接口联调', '0', '0', '0', '1', '4', '50', '', '1427342223', '1427342223', '0', '1427093306');
INSERT INTO `task` VALUES ('520', '44', '11', '17', '36', '61', '积分消费活动-接口联调', '0', '0', '0', '1', '4', '50', '', '1427179650', '1427179650', '0', '1427093329');
INSERT INTO `task` VALUES ('521', '44', '11', '17', '30', '61', '项目编辑-接口联调', '0', '0', '0', '1', '3', '50', '', '1427336870', '1427336870', '0', '1427093367');
INSERT INTO `task` VALUES ('522', '44', '11', '17', '32', '61', '评价店面总评-界面制作', '0', '0', '0', '1', '2', '50', '', '1427939133', '1427939133', '0', '1427093388');
INSERT INTO `task` VALUES ('523', '44', '11', '17', '40', '61', '详情/编辑-接口联调', '0', '0', '0', '1', '4', '50', '', '1427359824', '1427359824', '0', '1427093491');
INSERT INTO `task` VALUES ('524', '44', '11', '17', '30', '61', '项目详情-接口联调', '0', '0', '0', '1', '1', '50', '', '1427336859', '1427336859', '0', '1427093517');
INSERT INTO `task` VALUES ('525', '44', '11', '17', '29', '61', '详情-积分-接口联调', '0', '0', '0', '1', '2', '50', '', '1427452466', '1427452466', '0', '1427093536');
INSERT INTO `task` VALUES ('526', '44', '11', '17', '36', '61', '积分管理-接口联调', '0', '0', '0', '1', '4', '50', '', '1427179647', '1427179647', '0', '1427093566');
INSERT INTO `task` VALUES ('527', '44', '11', '17', '30', '61', '员工排班生成-接口联调', '0', '0', '0', '1', '4', '50', '', '1427265965', '1427265965', '0', '1427093588');
INSERT INTO `task` VALUES ('528', '44', '11', '17', '32', '53', '【商户平台】【pcweb】-订单管理-在售项目', '0', '0', '0', '3', '4', '50', '', '1428381414', '1428381414', '0', '1427093607');
INSERT INTO `task` VALUES ('529', '44', '11', '17', '32', '61', '评价界面模板-接口联调', '0', '0', '0', '1', '4', '50', '', '1427769684', '1427769684', '0', '1427093617');
INSERT INTO `task` VALUES ('530', '44', '11', '17', '32', '61', '用户评价-接口联调', '0', '0', '0', '1', '2', '50', '', '1427769695', '1427769695', '0', '1427093638');
INSERT INTO `task` VALUES ('531', '44', '11', '17', '29', '61', '基础资料详情-接口联调', '0', '0', '0', '1', '2', '50', '', '1427853713', '1427853713', '0', '1427093655');
INSERT INTO `task` VALUES ('532', '44', '11', '17', '32', '61', '评价店面总评-接口联调', '0', '0', '0', '1', '2', '50', '', '1427939135', '1427939135', '0', '1427093677');
INSERT INTO `task` VALUES ('533', '44', '11', '17', '30', '61', '项目新增-接口联调', '0', '0', '0', '1', '8', '50', '', '1427265949', '1427265949', '0', '1427093698');
INSERT INTO `task` VALUES ('534', '44', '11', '17', '29', '61', '编辑余额积分-接口联调', '0', '0', '0', '1', '1', '50', '', '1427452455', '1427452455', '0', '1427093717');
INSERT INTO `task` VALUES ('535', '44', '11', '17', '31', '61', '意见列表-接口联调', '0', '0', '0', '1', '4', '50', '', '1427342219', '1427342219', '0', '1427093735');
INSERT INTO `task` VALUES ('536', '44', '11', '17', '40', '61', '项目列表-接口联调', '0', '0', '0', '1', '3', '50', '', '1427336863', '1427336863', '0', '1427093757');
INSERT INTO `task` VALUES ('537', '44', '11', '17', '35', '47', '支付联调', '0', '0', '0', '5', '8', '50', '', '1427177103', '1427177103', '0', '1427177099');
INSERT INTO `task` VALUES ('538', '44', '11', '17', '37', '47', '自动关闭', '0', '0', '0', '3', '4', '50', '', '1427681104', '1427681104', '0', '1427177130');
INSERT INTO `task` VALUES ('539', '44', '11', '17', '37', '47', '自动评价', '0', '0', '0', '3', '4', '50', '', '1427681101', '1427681101', '0', '1427177155');
INSERT INTO `task` VALUES ('540', '44', '11', '17', '37', '47', '自动过期', '0', '0', '0', '3', '4', '50', '', '1427681098', '1427681098', '0', '1427177171');
INSERT INTO `task` VALUES ('541', '44', '11', '17', '37', '47', '退款更新', '0', '0', '0', '3', '4', '50', '', '1427681099', '1427681099', '0', '1427177229');
INSERT INTO `task` VALUES ('542', '44', '11', '17', '33', '47', '微信分享', '0', '0', '0', '3', '4', '50', '', '1427681112', '1427681112', '0', '1427177286');
INSERT INTO `task` VALUES ('543', '44', '11', '17', '37', '47', '接口联调', '0', '0', '0', '5', '16', '20', '', '1427681108', '1427681108', '0', '1427177335');
INSERT INTO `task` VALUES ('544', '44', '11', '16', '29', '64', '推荐有礼', '0', '0', '0', '5', '8', '50', '', '1427332980', '1427332980', '0', '1427178199');
INSERT INTO `task` VALUES ('545', '45', '12', '18', '27', '49', '记录最后一次选中的项目，迭代计划，关键字。不用重新选择', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1427250414');
INSERT INTO `task` VALUES ('546', '44', '11', '17', '41', '46', '【Android】崩溃系统迁移', '0', '0', '0', '3', '6', '50', '', '1427337263', '1427337263', '0', '1427265961');
INSERT INTO `task` VALUES ('547', '44', '11', '17', '33', '45', '【微信】分享页面', '0', '0', '0', '2', '8', '50', '', '1428462978', '1428462978', '0', '1427266097');
INSERT INTO `task` VALUES ('548', '44', '11', '17', '29', '48', '【iOS】我的钱包+积分+代金券', '0', '0', '0', '3', '16', '50', '', '1427932538', '1427932538', '0', '1427267828');
INSERT INTO `task` VALUES ('549', '44', '11', '17', '32', '58', '【iOS】商家列表接口联调', '0', '0', '0', '3', '2', '50', '', '1427284352', '1427284352', '0', '1427268224');
INSERT INTO `task` VALUES ('550', '44', '11', '17', '34', '49', '【运维平台】门店结算报表详情', '0', '0', '0', '5', '4', '50', '', '1427434807', '1427434807', '0', '1427268885');
INSERT INTO `task` VALUES ('551', '44', '11', '16', '34', '49', '【运营平台】报表详情页面', '0', '0', '0', '5', '3', '50', '', '1427349659', '1427349659', '0', '1427349657');
INSERT INTO `task` VALUES ('552', '44', '11', '16', '40', '48', '【iOS】需求确认及资源跟踪', '0', '0', '0', '3', '16', '50', '', '1427350385', '1427350385', '0', '1427350383');
INSERT INTO `task` VALUES ('553', '44', '11', '17', '41', '63', '文件相关接口迁移', '0', '1', '0', '2', '16', '50', '', '1428893138', '1428893138', '0', '1427350471');
INSERT INTO `task` VALUES ('554', '44', '11', '17', '41', '63', '用户接口迁移', '0', '1', '0', '2', '16', '50', '', '1428893125', '1428893125', '0', '1427350491');
INSERT INTO `task` VALUES ('555', '44', '11', '17', '41', '63', '异步worker脚本开发', '0', '1', '0', '2', '8', '50', '', '1428893130', '1428893130', '0', '1427350532');
INSERT INTO `task` VALUES ('556', '44', '11', '17', '30', '52', '开发：【运营平台】获取合同列表', '0', '0', '0', '5', '2', '50', '', '1427355597', '1427355597', '0', '1427355119');
INSERT INTO `task` VALUES ('557', '44', '11', '17', '30', '52', '开发：【运营平台】新增合同', '0', '0', '0', '4', '2', '50', '', '1427355594', '1427355594', '0', '1427355411');
INSERT INTO `task` VALUES ('558', '44', '11', '17', '30', '52', '开发：【运营平台】删除合同', '0', '0', '0', '3', '1', '50', '', '1427355596', '1427355596', '0', '1427355466');
INSERT INTO `task` VALUES ('559', '44', '11', '17', '30', '52', '开发：【运营平台】修改合同', '0', '0', '0', '4', '2', '50', '', '1427355595', '1427355595', '0', '1427355481');
INSERT INTO `task` VALUES ('560', '44', '11', '17', '30', '52', '开发：【运营平台】批量修改合同状态', '0', '0', '0', '5', '1', '50', '', '1427355590', '1427355590', '0', '1427355502');
INSERT INTO `task` VALUES ('561', '44', '11', '17', '40', '52', '开发：【C端】判断员工是否已经服务过', '0', '0', '0', '5', '2', '50', '', '1427355591', '1427355591', '0', '1427355518');
INSERT INTO `task` VALUES ('562', '44', '11', '17', '41', '52', '地图服务', '0', '0', '0', '5', '6', '50', '', '1427355593', '1427355593', '0', '1427355547');
INSERT INTO `task` VALUES ('563', '44', '11', '17', '40', '52', '开发：【运营平台】项目修改历史接口', '0', '0', '0', '5', '4', '50', '', '1427355592', '1427355592', '0', '1427355565');
INSERT INTO `task` VALUES ('564', '44', '11', '17', '30', '52', '开发：【运营平台】获取合同修改历史', '0', '0', '0', '5', '4', '50', '', '1427355589', '1427355589', '0', '1427355581');
INSERT INTO `task` VALUES ('565', '44', '11', '17', '32', '52', '获取推荐商户列表', '0', '0', '0', '5', '1', '50', '', '1427355619', '1427355619', '0', '1427355617');
INSERT INTO `task` VALUES ('566', '44', '11', '17', '41', '52', '基础服务框架构建', '0', '0', '0', '5', '4', '50', '', '1428905261', '1428905261', '0', '1427355652');
INSERT INTO `task` VALUES ('567', '44', '11', '17', '41', '52', '基础服务迁移', '0', '0', '0', '5', '8', '50', '', '1428905262', '1428905262', '0', '1427355689');
INSERT INTO `task` VALUES ('568', '44', '11', '17', '41', '52', '版本发布新流程整理', '0', '0', '0', '5', '8', '50', '', '1428905261', '1428905261', '0', '1427355711');
INSERT INTO `task` VALUES ('569', '44', '11', '17', '34', '64', '结算收益查询	首页/月', '0', '0', '0', '4', '4', '50', '', '1427680781', '1427680781', '0', '1427419043');
INSERT INTO `task` VALUES ('570', '44', '11', '17', '34', '64', '结算收益查询	首页/日', '0', '0', '0', '4', '8', '50', '', '1427680783', '1427680783', '0', '1427419060');
INSERT INTO `task` VALUES ('571', '44', '11', '17', '41', '64', '微信分享', '0', '0', '0', '3', '16', '50', '', '1427680787', '1427680787', '0', '1427419101');
INSERT INTO `task` VALUES ('572', '44', '11', '17', '41', '64', '服务器定时器脚本设计', '0', '0', '0', '3', '4', '50', '', '1427680785', '1427680785', '0', '1427419145');
INSERT INTO `task` VALUES ('573', '44', '11', '17', '41', '44', '【B端】新增文件上传接口', '0', '0', '0', '5', '8', '50', '', '1427687665', '1427687665', '0', '1427422614');
INSERT INTO `task` VALUES ('574', '44', '11', '17', '41', '44', '【基础服务】文件上传', '0', '0', '0', '5', '16', '50', '', '1428456721', '1428456721', '0', '1427422645');
INSERT INTO `task` VALUES ('575', '44', '11', '17', '41', '44', '【基础服务】图片上传，图片下载', '0', '0', '0', '5', '16', '50', '', '1428456720', '1428456720', '0', '1427422671');
INSERT INTO `task` VALUES ('576', '44', '11', '17', '31', '44', '【C端】C端接口联调', '0', '0', '0', '5', '8', '50', '', '1428456717', '1428456717', '0', '1427422724');
INSERT INTO `task` VALUES ('577', '44', '11', '17', '31', '44', '【运营平台】接口联调', '0', '0', '0', '5', '8', '50', '', '1427422944', '1430115972', '0', '1427422753');
INSERT INTO `task` VALUES ('578', '45', '12', '18', '27', '56', '建议支持工作人员首字母检索', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1427449137');
INSERT INTO `task` VALUES ('579', '44', '11', '17', '41', '64', '基础服务搜索(elasticsearch)迁移', '0', '0', '0', '3', '8', '50', '', '1427946879', '1427946879', '0', '1427946874');
INSERT INTO `task` VALUES ('580', '44', '11', '17', '41', '64', '各端接口联调', '0', '0', '0', '5', '16', '50', '', '1428381412', '1428381412', '0', '1427954983');
INSERT INTO `task` VALUES ('581', '44', '11', '17', '41', '44', '灰度升级', '0', '1', '0', '5', '16', '50', '', '1428456779', '1430115726', '0', '1428456776');
INSERT INTO `task` VALUES ('582', '44', '11', '17', '38', '63', '微信平台绑定账号，获取access_token', '0', '0', '0', '2', '4', '50', '', '0', '1430103117', '0', '1428905200');
INSERT INTO `task` VALUES ('583', '49', '14', '20', '43', '44', '文件上传', '0', '0', '0', '5', '16', '50', '', '1428973029', '1428973029', '0', '1428972976');
INSERT INTO `task` VALUES ('584', '49', '14', '20', '43', '44', '图片上传', '0', '0', '0', '5', '8', '50', '', '1431482131', '1431482132', '0', '1428972994');
INSERT INTO `task` VALUES ('585', '49', '14', '20', '43', '44', '推送', '0', '0', '0', '4', '16', '50', '', '1428973038', '1428973038', '0', '1428973007');
INSERT INTO `task` VALUES ('586', '49', '14', '20', '43', '44', '灰度管理', '0', '0', '0', '3', '24', '50', '', '1429173432', '1429173432', '0', '1428973025');
INSERT INTO `task` VALUES ('587', '49', '14', '20', '43', '63', '日志规范 + 日志监控', '0', '0', '0', '3', '8', '50', '', '1428973389', '1428973389', '0', '1428973387');
INSERT INTO `task` VALUES ('588', '49', '14', '20', '43', '63', '用户系统迁移', '0', '0', '0', '1', '24', '50', '', '1428973437', '1428973437', '0', '1428973435');
INSERT INTO `task` VALUES ('589', '49', '14', '20', '43', '63', '异步守护进程开发', '0', '0', '0', '2', '8', '50', '', '1428973469', '1428973469', '0', '1428973466');
INSERT INTO `task` VALUES ('590', '49', '14', '20', '43', '63', '服务调用规范框架开发', '99', '0', '0', '2', '8', '50', '', '1428973522', '1428973522', '0', '1428973520');
INSERT INTO `task` VALUES ('591', '47', '15', '22', '48', '59', '主机管理配置', '0', '0', '0', '3', '8', '50', '', '1428993947', '1428993947', '0', '1428993938');
INSERT INTO `task` VALUES ('592', '47', '15', '22', '44', '59', 'http通讯模块', '0', '0', '0', '3', '32', '50', '', '1428994674', '1428994674', '0', '1428994038');
INSERT INTO `task` VALUES ('593', '47', '15', '22', '45', '59', '基于json的数据层', '0', '0', '0', '3', '8', '50', '', '1428994678', '1428994678', '0', '1428994066');
INSERT INTO `task` VALUES ('594', '47', '15', '22', '46', '59', '本地序列化', '0', '0', '0', '3', '12', '50', '', '1428994665', '1428994665', '0', '1428994112');
INSERT INTO `task` VALUES ('595', '47', '15', '22', '49', '59', '数据安全加密', '0', '0', '0', '3', '8', '50', '', '1428994664', '1428994664', '0', '1428994158');
INSERT INTO `task` VALUES ('596', '47', '15', '22', '47', '59', '各种常见数据格式对象', '0', '0', '0', '3', '16', '50', '', '1428994681', '1428994681', '0', '1428994223');
INSERT INTO `task` VALUES ('597', '47', '15', '22', '51', '59', '日志管理', '0', '0', '0', '3', '4', '50', '', '1428994684', '1428994684', '0', '1428994248');
INSERT INTO `task` VALUES ('598', '47', '15', '22', '50', '59', '设备管理', '0', '0', '0', '3', '4', '50', '', '1428994675', '1428994675', '0', '1428994268');
INSERT INTO `task` VALUES ('599', '47', '15', '22', '54', '59', '信息统计服务', '0', '0', '0', '3', '4', '50', '', '1428994679', '1428994679', '0', '1428994374');
INSERT INTO `task` VALUES ('600', '47', '15', '22', '53', '59', '图片服务', '0', '0', '0', '3', '12', '50', '', '1428994660', '1428994660', '0', '1428994401');
INSERT INTO `task` VALUES ('601', '47', '15', '22', '57', '59', '版本管理服务', '0', '0', '0', '3', '12', '50', '', '1429249626', '1429249626', '0', '1428994444');
INSERT INTO `task` VALUES ('602', '47', '15', '22', '55', '59', '第三方应用服务', '0', '0', '0', '3', '4', '50', '', '1428994683', '1428994683', '0', '1428994475');
INSERT INTO `task` VALUES ('603', '47', '15', '22', '56', '59', '账号登陆服务', '0', '0', '0', '3', '4', '50', '', '1429087415', '1429087415', '0', '1428994529');
INSERT INTO `task` VALUES ('604', '47', '15', '22', '52', '59', '闪退日志服务', '0', '0', '0', '3', '12', '50', '', '1428994676', '1428994676', '0', '1428994574');
INSERT INTO `task` VALUES ('605', '47', '15', '22', '58', '59', 'web页面控制器', '0', '0', '0', '3', '8', '50', '', '1428994672', '1428994672', '0', '1428994598');
INSERT INTO `task` VALUES ('606', '47', '15', '22', '60', '59', '进度条', '0', '0', '0', '3', '8', '50', '', '1428994658', '1428994658', '0', '1428994620');
INSERT INTO `task` VALUES ('607', '47', '15', '22', '59', '59', '通知视图', '0', '0', '0', '3', '8', '50', '', '1428994680', '1428994680', '0', '1428994649');
INSERT INTO `task` VALUES ('608', '47', '15', '23', '63', '48', '【API】服务端环境部署', '0', '0', '0', '3', '8', '50', '', '1429002021', '1430182366', '0', '1429000616');
INSERT INTO `task` VALUES ('609', '47', '15', '23', '65', '48', '【iOS】组件代码更新与环境部署', '0', '0', '0', '3', '8', '50', '', '1429002027', '1430384247', '0', '1429000674');
INSERT INTO `task` VALUES ('610', '47', '15', '23', '65', '48', '【iOS】H5调试机制支持', '0', '0', '0', '3', '16', '50', '', '1430187359', '1430274699', '0', '1429000948');
INSERT INTO `task` VALUES ('611', '47', '15', '23', '69', '48', '【iOS】第二第三迭代看板维护与任务分解更新', '0', '0', '0', '3', '4', '50', '', '1429751683', '1429751683', '0', '1429002013');
INSERT INTO `task` VALUES ('612', '47', '15', '26', '69', '45', '【H5】原型功能开发规则熟悉（配合导购微信版本效果）', '0', '0', '0', '3', '10', '10', '', '0', '0', '0', '1429002110');
INSERT INTO `task` VALUES ('615', '47', '15', '25', '66', '48', '【iOS】确认打包方案及各种方案的验证，交接给WWS', '0', '0', '0', '3', '2', '50', '', '1433729892', '1434099188', '0', '1429058134');
INSERT INTO `task` VALUES ('616', '47', '15', '25', '66', '48', '【iOS】打包方案与Jenkins集成，交接给WWS', '0', '0', '0', '3', '1', '50', '', '1432709694', '1433729871', '0', '1429063266');
INSERT INTO `task` VALUES ('617', '47', '15', '26', '66', '48', '【iOS】打包资源格式确认与调整验证', '99', '0', '0', '3', '16', '10', '', '1432634770', '0', '0', '1429063305');
INSERT INTO `task` VALUES ('618', '47', '15', '25', '66', '48', '【iOS】打包命名规则实现与验证，完成wiki记录实现转到WWS', '0', '0', '0', '3', '1', '50', '', '1434099355', '1434099358', '0', '1429063339');
INSERT INTO `task` VALUES ('619', '47', '15', '24', '69', '53', '【H5】H5更新包制作与上传规则', '0', '0', '0', '3', '16', '50', '', '1433382733', '1433382736', '0', '1429064437');
INSERT INTO `task` VALUES ('620', '47', '15', '26', '69', '48', '【iOS】集成验证与测试', '99', '0', '0', '3', '16', '10', '', '1432634794', '0', '0', '1429064467');
INSERT INTO `task` VALUES ('621', '47', '15', '26', '69', '45', '【H5】调试机制验证与文档编写', '0', '0', '0', '3', '16', '10', '', '0', '0', '0', '1429064580');
INSERT INTO `task` VALUES ('622', '47', '15', '26', '71', '56', '【Android】集成验证', '0', '0', '0', '1', '16', '10', '', '0', '0', '0', '1429064754');
INSERT INTO `task` VALUES ('623', '47', '15', '25', '71', '48', '【Android】代码分析与集成方案讨论', '0', '0', '0', '3', '16', '50', '', '1434099313', '1434099319', '0', '1429064792');
INSERT INTO `task` VALUES ('624', '47', '15', '26', '70', '48', '【iOS】性能指数分析与测试', '0', '0', '0', '3', '16', '10', '', '1434099546', '0', '0', '1429064819');
INSERT INTO `task` VALUES ('625', '47', '15', '26', '71', '56', '【Android】性能指标与兼容性问题讨论解决', '0', '0', '0', '1', '16', '10', '', '0', '0', '0', '1429064854');
INSERT INTO `task` VALUES ('626', '47', '15', '23', '65', '48', '【iOS】模块自动升级机制实现（默认模式）', '0', '0', '0', '3', '16', '50', '', '1430384249', '1431316449', '0', '1429064927');
INSERT INTO `task` VALUES ('627', '47', '15', '26', '69', '45', '【H5】项目列表界面改造与实现', '0', '0', '0', '3', '16', '10', '', '0', '0', '0', '1429079048');
INSERT INTO `task` VALUES ('628', '47', '15', '26', '69', '45', '【H5】项目详情界面改造与实现', '0', '0', '0', '3', '16', '10', '', '0', '0', '0', '1429079075');
INSERT INTO `task` VALUES ('629', '47', '15', '24', '66', '48', '【iOS】规范文档编写与维护', '0', '0', '0', '3', '16', '50', '', '1432634758', '1432634779', '0', '1429079343');
INSERT INTO `task` VALUES ('630', '47', '15', '25', '70', '48', '【文档】规范文档与注意事项FAQ', '0', '0', '0', '4', '8', '50', '', '1433122622', '1434099269', '0', '1429079378');
INSERT INTO `task` VALUES ('631', '48', '16', '27', '74', '61', 'native与web通信规范', '0', '0', '0', '1', '8', '50', '', '1431309542', '1432710255', '0', '1429145902');
INSERT INTO `task` VALUES ('632', '48', '16', '27', '74', '49', '设计风格', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1429146090');
INSERT INTO `task` VALUES ('633', '48', '16', '27', '74', '49', '设计指南', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1429146114');
INSERT INTO `task` VALUES ('634', '48', '16', '27', '74', '53', '流程约束', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1429146141');
INSERT INTO `task` VALUES ('635', '48', '16', '27', '74', '45', '常用控件', '0', '0', '0', '1', '8', '50', '', '0', '1432710060', '0', '1429146178');
INSERT INTO `task` VALUES ('636', '48', '16', '27', '75', '61', '通用组件整理', '0', '0', '0', '1', '8', '50', '', '1431309546', '1431668418', '0', '1429146223');
INSERT INTO `task` VALUES ('637', '48', '16', '27', '75', '49', '通用组件整理', '0', '0', '0', '1', '8', '50', '', '0', '1433492293', '0', '1429146246');
INSERT INTO `task` VALUES ('638', '48', '16', '27', '75', '53', '通用组件整理', '0', '0', '0', '1', '8', '50', '', '1433293596', '1433293622', '0', '1429146264');
INSERT INTO `task` VALUES ('639', '48', '16', '27', '75', '45', '通用组件整理', '0', '0', '0', '1', '8', '50', '', '0', '1432709986', '0', '1429146298');
INSERT INTO `task` VALUES ('640', '50', '13', '19', '76', '52', '设计具体的优化方案', '0', '0', '0', '5', '8', '50', '', '1429173718', '1429173718', '0', '1429173716');
INSERT INTO `task` VALUES ('641', '50', '13', '19', '77', '52', '改造关联模块服务端的查询代码', '0', '0', '0', '4', '32', '50', '', '1429519111', '1429519111', '0', '1429173770');
INSERT INTO `task` VALUES ('642', '50', '13', '33', '79', '52', '分析客户端请求，找出最优资源请求格式', '0', '0', '0', '4', '8', '50', '', '1429519914', '1430102402', '0', '1429173818');
INSERT INTO `task` VALUES ('643', '50', '13', '33', '78', '52', '优化所有事件模块代码', '0', '0', '0', '5', '16', '50', '', '1430988000', '1430988003', '0', '1429173880');
INSERT INTO `task` VALUES ('644', '50', '13', '33', '80', '52', '找出按照之前优化方案处理后还需要优化的模块', '0', '0', '0', '5', '16', '50', '', '1430988011', '1430988013', '0', '1429173929');
INSERT INTO `task` VALUES ('645', '51', '18', '29', '81', '44', '引入新的DB模块，并进行与之对应的代码重构', '0', '0', '0', '5', '16', '50', '', '1429176764', '1429176764', '0', '1429174007');
INSERT INTO `task` VALUES ('646', '51', '18', '29', '81', '44', '迭代引入关闭功能', '0', '0', '0', '4', '4', '50', '', '1429520323', '1429520323', '0', '1429174040');
INSERT INTO `task` VALUES ('647', '51', '18', '29', '81', '44', '任务可以迁移功能', '0', '0', '0', '4', '4', '50', '', '1429520315', '1429520315', '0', '1429174075');
INSERT INTO `task` VALUES ('648', '51', '18', '29', '81', '44', '预设优先值', '0', '0', '0', '3', '8', '50', '', '1429520320', '1429520320', '0', '1429174101');
INSERT INTO `task` VALUES ('649', '51', '18', '29', '81', '44', '前置任务完成后，进行99U推送功能', '0', '0', '0', '3', '6', '50', '', '1429520322', '1429520322', '0', '1429174121');
INSERT INTO `task` VALUES ('650', '47', '15', '26', '124', '58', '【iOS】点击查看大图控件', '0', '0', '0', '3', '16', '50', '', '1429605427', '1434710662', '0', '1429238590');
INSERT INTO `task` VALUES ('655', '50', '13', '33', '82', '59', 'iOS端优化', '0', '0', '0', '3', '24', '50', '', '1429519120', '1430102334', '0', '1429249997');
INSERT INTO `task` VALUES ('656', '50', '13', '33', '82', '54', 'Android端优化', '0', '0', '0', '3', '24', '50', '', '1430097724', '1430097724', '0', '1429250036');
INSERT INTO `task` VALUES ('657', '50', '13', '33', '79', '59', 'iOS端接口改造', '0', '0', '0', '3', '16', '50', '', '1429519150', '1430102332', '0', '1429250498');
INSERT INTO `task` VALUES ('658', '50', '13', '33', '79', '54', 'Android端接口改造', '0', '0', '0', '3', '16', '50', '', '1430988041', '1430988042', '0', '1429250541');
INSERT INTO `task` VALUES ('659', '49', '14', '21', '43', '63', '支付通用化改造', '0', '0', '0', '3', '40', '50', '', '1430988103', '1430988109', '0', '1429256773');
INSERT INTO `task` VALUES ('660', '47', '15', '23', '123', '58', '【swift】基本数据类型和运算符', '0', '0', '0', '1', '4', '50', '', '1429605416', '1430125908', '0', '1429269429');
INSERT INTO `task` VALUES ('661', '47', '15', '23', '127', '58', '【swift】新项目搭建', '0', '0', '0', '3', '2', '50', '', '1430383169', '1430383357', '0', '1429269572');
INSERT INTO `task` VALUES ('662', '47', '15', '23', '65', '58', '【iOS】swift主流控件的使用', '99', '0', '0', '3', '8', '10', '', '0', '0', '0', '1429269770');
INSERT INTO `task` VALUES ('663', '49', '14', '20', '43', '55', '日志分析', '0', '0', '0', '3', '8', '50', '', '1429515794', '1429515794', '0', '1429515791');
INSERT INTO `task` VALUES ('664', '49', '14', '21', '43', '55', '日志分析_nginx', '0', '0', '0', '3', '24', '50', '', '1430988118', '1430988120', '0', '1429515836');
INSERT INTO `task` VALUES ('665', '49', '14', '21', '43', '64', '统计报表框架', '0', '0', '0', '3', '24', '50', '', '1430988137', '1431308452', '0', '1429515956');
INSERT INTO `task` VALUES ('666', '49', '14', '21', '43', '55', 'finereport部署', '0', '0', '0', '3', '4', '50', '', '1429784108', '1429784108', '0', '1429515989');
INSERT INTO `task` VALUES ('667', '51', '18', '36', '83', '53', '新建任务的优化', '0', '0', '0', '5', '2', '50', '', '1429784312', '1429784312', '0', '1429517187');
INSERT INTO `task` VALUES ('668', '51', '18', '36', '84', '44', '【服务端】增加我的任务', '0', '0', '0', '5', '8', '50', '', '1429596183', '1429596183', '0', '1429517234');
INSERT INTO `task` VALUES ('669', '51', '18', '36', '84', '53', '【WEB端】增加我的任务', '0', '0', '0', '5', '4', '50', '', '1429865980', '1429865980', '0', '1429517255');
INSERT INTO `task` VALUES ('670', '51', '18', '36', '85', '53', '新增任务必填信息', '0', '0', '0', '5', '2', '50', '', '1429848641', '1429848641', '0', '1429517326');
INSERT INTO `task` VALUES ('671', '51', '18', '36', '86', '53', '刷新时记住上次信息', '0', '0', '0', '5', '2', '50', '', '1429597172', '1429597172', '0', '1429517362');
INSERT INTO `task` VALUES ('672', '51', '18', '36', '87', '53', '增加任务优先级排序', '0', '0', '0', '4', '2', '50', '', '1429602676', '1429602676', '0', '1429517405');
INSERT INTO `task` VALUES ('673', '51', '18', '36', '88', '53', '看板中按照故事筛选任务', '0', '0', '0', '4', '2', '50', '', '1430097419', '1430097419', '0', '1429517442');
INSERT INTO `task` VALUES ('674', '51', '18', '36', '89', '53', '泳道中增加滚动，方便任务拖拽', '0', '0', '0', '4', '2', '10', '', '0', '0', '0', '1429517498');
INSERT INTO `task` VALUES ('676', '44', '11', '37', '99', '57', '【Android】发布与Dump迁移联调', '0', '0', '0', '5', '8', '50', '', '1429696188', '1429696188', '0', '1429518191');
INSERT INTO `task` VALUES ('677', '44', '11', '37', '99', '59', '【IOS】Dump迁移联调', '0', '0', '0', '5', '4', '10', '', '0', '0', '0', '1429518220');
INSERT INTO `task` VALUES ('678', '44', '11', '38', '100', '57', '【Android】新版UI替换', '0', '0', '0', '4', '3', '50', '', '1429518814', '1429518814', '0', '1429518633');
INSERT INTO `task` VALUES ('679', '44', '11', '38', '100', '54', '【Android】新版UI替换', '0', '0', '0', '4', '3', '50', '', '1429518818', '1429518818', '0', '1429518669');
INSERT INTO `task` VALUES ('680', '44', '11', '38', '100', '56', '【Android】UI替换', '0', '0', '0', '4', '3', '50', '', '1429518815', '1429518815', '0', '1429518713');
INSERT INTO `task` VALUES ('681', '44', '11', '38', '100', '48', '【iOS】左边菜单界面新版本更新', '0', '0', '0', '3', '5', '20', '', '1429518862', '1429518862', '0', '1429518857');
INSERT INTO `task` VALUES ('682', '44', '11', '38', '100', '48', '【iOS】公共资源替换与整理', '0', '0', '0', '3', '2', '50', '', '1429518892', '1429518892', '0', '1429518889');
INSERT INTO `task` VALUES ('683', '51', '18', '36', '91', '53', '【WEB端】可以关闭版本和迭代，在列表中也增加筛选', '0', '0', '0', '3', '4', '50', '', '1429623790', '1429623790', '0', '1429518925');
INSERT INTO `task` VALUES ('684', '44', '11', '38', '100', '58', '【iOS】界面元素及颜色使用新版本替换', '0', '0', '0', '3', '3', '50', '', '1429519072', '1429519072', '0', '1429518930');
INSERT INTO `task` VALUES ('685', '44', '11', '38', '100', '62', '【iOS】界面与颜色使用新版本风格', '0', '0', '0', '3', '3', '50', '', '1429518970', '1429518970', '0', '1429518964');
INSERT INTO `task` VALUES ('686', '51', '18', '36', '92', '53', '模块和优先级是事先订好的话，有个统一设定的地方就行了', '0', '0', '0', '3', '2', '50', '', '1429784296', '1429784296', '0', '1429518985');
INSERT INTO `task` VALUES ('687', '51', '18', '36', '93', '53', '任务可以调整到未关闭的迭代中', '0', '0', '0', '3', '2', '50', '', '1429693494', '1429693494', '0', '1429519049');
INSERT INTO `task` VALUES ('688', '51', '18', '36', '94', '53', '【BUG】没有前置任务的任务有的也有箭头功能', '0', '0', '0', '3', '1', '50', '', '1429848643', '1429848643', '0', '1429519123');
INSERT INTO `task` VALUES ('689', '51', '18', '36', '95', '53', '拖动他人故事时要提示', '0', '0', '0', '2', '1', '10', '', '0', '0', '0', '1429519159');
INSERT INTO `task` VALUES ('690', '51', '18', '36', '96', '53', '显示前置任务时隐藏其他任务', '0', '0', '0', '2', '1', '10', '', '0', '0', '0', '1429519194');
INSERT INTO `task` VALUES ('691', '51', '18', '36', '97', '44', '任务状态改变时，可以查阅各个状态下停留的时间', '0', '0', '0', '2', '12', '50', '', '1429685883', '1429685883', '0', '1429519243');
INSERT INTO `task` VALUES ('692', '51', '18', '36', '98', '44', '【服务端】增加截止时间', '0', '0', '0', '1', '2', '50', '', '1429596671', '1429596671', '0', '1429519288');
INSERT INTO `task` VALUES ('693', '51', '18', '36', '98', '53', '【服务端】增加截止时间维护和看板显示', '0', '0', '0', '1', '1', '10', '', '0', '0', '0', '1429519314');
INSERT INTO `task` VALUES ('694', '51', '18', '36', '91', '44', '【服务端】可以关闭版本和迭代，在列表中也增加筛选', '0', '0', '0', '3', '4', '50', '', '1429594391', '1429594391', '0', '1429519758');
INSERT INTO `task` VALUES ('695', '52', '20', '39', '101', '46', '【Android】新环境Jenkins环境搭建', '0', '0', '0', '5', '12', '50', '', '1429770438', '1429770438', '0', '1429520209');
INSERT INTO `task` VALUES ('696', '52', '20', '39', '101', '61', '【WEB端】新环境Jenkins环境搭建', '0', '0', '0', '5', '1', '50', '', '0', '1430102077', '0', '1429520235');
INSERT INTO `task` VALUES ('697', '52', '20', '39', '101', '55', '【服务端】新环境Jenkins环境搭建', '0', '0', '0', '5', '1', '50', '', '0', '1430101919', '0', '1429520253');
INSERT INTO `task` VALUES ('698', '46', '19', '30', '103', '56', 'UI组件DEMO', '0', '0', '0', '3', '32', '50', '', '1429520716', '1429520716', '0', '1429520665');
INSERT INTO `task` VALUES ('699', '46', '19', '30', '102', '54', '通用方法设计', '0', '0', '0', '3', '32', '50', '', '1429520714', '1429520714', '0', '1429520689');
INSERT INTO `task` VALUES ('700', '46', '19', '30', '104', '57', '反馈模块设计', '0', '0', '0', '3', '32', '50', '', '1429520718', '1429520718', '0', '1429520710');
INSERT INTO `task` VALUES ('701', '51', '21', '40', '111', '44', '关注任务功能', '0', '0', '0', '5', '6', '50', '', '1429684239', '1429684239', '0', '1429520942');
INSERT INTO `task` VALUES ('702', '51', '21', '44', '109', '44', '导入导出功能', '0', '0', '0', '5', '16', '50', '', '1429684241', '1430208107', '0', '1429520966');
INSERT INTO `task` VALUES ('703', '51', '21', '40', '112', '44', '通知中心功能', '0', '0', '0', '5', '8', '50', '', '1430103307', '1430103321', '0', '1429520989');
INSERT INTO `task` VALUES ('704', '51', '21', '44', '110', '44', '通过SVN流转', '0', '0', '0', '5', '8', '50', '', '1430704516', '1430704789', '0', '1429521009');
INSERT INTO `task` VALUES ('705', '46', '19', '31', '107', '46', '下载模块设计开发', '0', '0', '0', '3', '8', '50', '', '1429666075', '1429666075', '0', '1429534679');
INSERT INTO `task` VALUES ('706', '46', '19', '31', '106', '57', '反馈模块开发', '0', '0', '0', '3', '8', '20', '', '1429696145', '1429696145', '0', '1429534713');
INSERT INTO `task` VALUES ('707', '46', '19', '31', '108', '46', '梳理静态代码检查标准', '0', '0', '0', '3', '12', '50', '', '1429770391', '1429770391', '0', '1429534739');
INSERT INTO `task` VALUES ('708', '46', '19', '31', '105', '57', '通用方法：文本', '0', '0', '0', '3', '2', '50', '', '1429696128', '1429696128', '0', '1429534776');
INSERT INTO `task` VALUES ('709', '46', '19', '31', '105', '57', '通用方法：数字', '0', '0', '0', '3', '2', '50', '', '1429696130', '1429696130', '0', '1429534796');
INSERT INTO `task` VALUES ('710', '46', '19', '31', '105', '57', '通用方法：验证', '0', '0', '0', '3', '3', '50', '', '1429696124', '1429696124', '0', '1429534818');
INSERT INTO `task` VALUES ('711', '46', '19', '31', '105', '57', '通用方法：集合', '0', '0', '0', '3', '1', '50', '', '1429696121', '1429696121', '0', '1429534838');
INSERT INTO `task` VALUES ('712', '46', '19', '31', '105', '57', '通用方法：图片', '0', '0', '0', '3', '6', '50', '', '1429698284', '1429698284', '0', '1429534864');
INSERT INTO `task` VALUES ('713', '46', '19', '31', '105', '57', '通用方法：包操作', '0', '0', '0', '3', '4', '50', '', '1429696127', '1429696127', '0', '1429534898');
INSERT INTO `task` VALUES ('714', '46', '19', '31', '105', '56', '通用方法：时间操作', '0', '0', '0', '3', '2', '50', '', '1429583748', '1429583748', '0', '1429534953');
INSERT INTO `task` VALUES ('715', '46', '19', '31', '105', '56', '通用方法：文件', '0', '0', '0', '3', '4', '50', '', '1429754335', '1429754335', '0', '1429534973');
INSERT INTO `task` VALUES ('716', '46', '19', '31', '105', '56', '通用方法：随机', '0', '0', '0', '3', '5', '50', '', '1429682288', '1429682288', '0', '1429534992');
INSERT INTO `task` VALUES ('717', '46', '19', '31', '105', '56', '通用方法：目录', '0', '0', '0', '3', '3', '50', '', '1429695798', '1429695798', '0', '1429535012');
INSERT INTO `task` VALUES ('718', '46', '19', '31', '105', '56', '通用方法：Json操作', '0', '0', '0', '3', '3', '50', '', '1429599731', '1429599731', '0', '1429535032');
INSERT INTO `task` VALUES ('719', '46', '19', '31', '105', '56', '通用方法：加密', '0', '0', '0', '3', '8', '50', '', '1430097556', '1430097556', '0', '1429535049');
INSERT INTO `task` VALUES ('720', '46', '19', '31', '105', '56', '通用方法：系统', '0', '0', '0', '3', '4', '50', '', '1429666445', '1429666445', '0', '1429535067');
INSERT INTO `task` VALUES ('721', '46', '19', '31', '105', '56', '通用方法：异步图片', '0', '0', '0', '3', '4', '50', '', '1429754339', '1429754339', '0', '1429535093');
INSERT INTO `task` VALUES ('722', '47', '15', '24', '131', '58', '【swift】Playground demo编写:基本语法，UI控件', '0', '0', '0', '3', '12', '50', '', '1432624740', '1432803547', '0', '1429582078');
INSERT INTO `task` VALUES ('723', '47', '15', '25', '133', '58', '【swift】美天app代码试改造：项目列表', '0', '0', '0', '3', '8', '50', '', '1433747317', '1433849547', '0', '1429582135');
INSERT INTO `task` VALUES ('724', '53', '22', '41', '113', '48', '编写项目资金管理流程需求', '0', '0', '0', '3', '16', '50', '', '1429780042', '1429780042', '0', '1429584619');
INSERT INTO `task` VALUES ('725', '53', '22', '41', '117', '48', '家居上线版本功能验证与沟通', '0', '0', '0', '3', '8', '50', '', '1429688773', '1429688773', '0', '1429584642');
INSERT INTO `task` VALUES ('726', '53', '22', '41', '113', '48', '看板维护与计划安排', '0', '0', '0', '3', '3', '50', '', '1429751990', '1429751990', '0', '1429584741');
INSERT INTO `task` VALUES ('727', '53', '22', '41', '117', '48', '支付流程内部沟通确认', '0', '0', '0', '3', '5', '50', '', '1429774405', '1430104395', '0', '1429688798');
INSERT INTO `task` VALUES ('728', '53', '22', '41', '113', '48', '支付业务流程图梳理', '0', '0', '0', '3', '5', '50', '', '1429774382', '1429774382', '0', '1429688835');
INSERT INTO `task` VALUES ('729', '53', '22', '42', '117', '48', '与现有家居平台沟通对接', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1429688890');
INSERT INTO `task` VALUES ('730', '53', '22', '42', '117', '48', '开发工作计划排定', '0', '0', '0', '3', '5', '10', '', '0', '0', '0', '1429688908');
INSERT INTO `task` VALUES ('731', '53', '22', '42', '115', '48', '接口规则讨论确认', '0', '0', '0', '3', '3', '10', '', '0', '0', '0', '1429688943');
INSERT INTO `task` VALUES ('732', '53', '22', '42', '115', '48', '接口规则编写与讨论', '0', '0', '0', '3', '5', '10', '', '0', '0', '0', '1429688957');
INSERT INTO `task` VALUES ('733', '53', '22', '42', '116', '48', '开发相关文档编写', '0', '0', '0', '3', '16', '10', '', '0', '0', '0', '1429688988');
INSERT INTO `task` VALUES ('734', '53', '22', '42', '117', '48', '项目后端对接人员安排与沟通', '0', '0', '0', '3', '4', '10', '', '0', '0', '0', '1429689018');
INSERT INTO `task` VALUES ('735', '53', '22', '42', '115', '47', '接口功能开发（人员另行安排）', '99', '0', '0', '4', '16', '10', '', '0', '0', '0', '1429689045');
INSERT INTO `task` VALUES ('736', '53', '22', '42', '115', '47', '接口联调与验证（人员另行安排）', '99', '0', '0', '3', '16', '10', '', '0', '0', '0', '1429689102');
INSERT INTO `task` VALUES ('737', '47', '15', '23', '121', '62', '【基础控件库】UI工具类', '0', '0', '0', '1', '24', '50', '', '1429770424', '1431659136', '0', '1429770414');
INSERT INTO `task` VALUES ('738', '53', '22', '41', '113', '48', '支付宝商家付款产品了解及确认', '0', '0', '0', '3', '2', '50', '', '1429774368', '1429774368', '0', '1429774338');
INSERT INTO `task` VALUES ('739', '53', '22', '41', '113', '48', '微信支付付款产品了解及确认', '0', '0', '0', '3', '4', '50', '', '1429778053', '1429778053', '0', '1429774366');
INSERT INTO `task` VALUES ('740', '53', '22', '41', '117', '48', '支付流程小组讨论确认', '0', '0', '0', '3', '2', '50', '', '0', '1430104382', '0', '1429774425');
INSERT INTO `task` VALUES ('741', '53', '22', '41', '117', '48', '支付流程外部沟通及进度跟踪', '0', '0', '0', '3', '4', '50', '', '0', '1430103184', '0', '1429774451');
INSERT INTO `task` VALUES ('742', '53', '22', '41', '117', '48', '外部资源整合与跟踪', '0', '0', '0', '3', '3', '50', '', '1430104439', '1431568166', '0', '1429774469');
INSERT INTO `task` VALUES ('743', '47', '15', '25', '121', '62', '【基础控件库】自增长UITableViewCell单元格', '0', '0', '0', '2', '24', '50', '', '1433828727', '1433991691', '0', '1429774654');
INSERT INTO `task` VALUES ('744', '47', '15', '23', '124', '62', '【拓展控件库】上拉更多 下拉刷新 控件', '0', '0', '0', '2', '12', '50', '', '1431080536', '1431324428', '0', '1429779963');
INSERT INTO `task` VALUES ('745', '47', '15', '23', '124', '62', '【拓展控件库】UISegmentControl自定义', '0', '0', '0', '3', '12', '50', '', '1430894488', '1430894508', '0', '1429780057');
INSERT INTO `task` VALUES ('746', '47', '15', '23', '124', '58', '【拓展控件库】UITextView 自定义（placeholder 、 字数限制、剩余字数）', '0', '0', '0', '3', '12', '50', '', '1431310666', '1432114073', '0', '1429780098');
INSERT INTO `task` VALUES ('747', '47', '15', '23', '124', '62', '【拓展控件库】uipickerview 单列、双列不联动 快速开发', '0', '0', '0', '3', '12', '50', '', '1431324564', '1431426616', '0', '1429843647');
INSERT INTO `task` VALUES ('748', '47', '15', '23', '124', '62', '【拓展控件库】UIImagePickerController 图片选取器共通化', '0', '0', '0', '4', '12', '50', '', '1431489887', '1431582607', '0', '1429843701');
INSERT INTO `task` VALUES ('749', '47', '15', '23', '124', '62', '【拓展控件库】-uitextfield 自定义带符号标识、限制金额输入', '0', '0', '0', '3', '12', '50', '', '1430894580', '1431077322', '0', '1429843756');
INSERT INTO `task` VALUES ('750', '47', '15', '24', '125', '62', '【拓展控件库】图片选择上传', '0', '0', '0', '4', '8', '50', '', '1432695927', '1433124897', '0', '1429843972');
INSERT INTO `task` VALUES ('751', '47', '15', '25', '125', '62', '【业务控件库】登录模块化、标准化、可自定义化', '0', '0', '0', '4', '8', '50', '', '1433390424', '1433492369', '0', '1429844015');
INSERT INTO `task` VALUES ('752', '47', '15', '24', '125', '62', '【业务控件库】城市选择界面共通化', '0', '0', '0', '4', '8', '50', '', '1433147875', '1433383948', '0', '1429844044');
INSERT INTO `task` VALUES ('753', '47', '15', '25', '125', '62', '【业务控件库】PathButton : 点击button展开更多button 用于点击', '0', '0', '0', '4', '8', '50', '', '1433407417', '1433492366', '0', '1429844074');
INSERT INTO `task` VALUES ('754', '51', '21', '44', '122', '44', '关闭版本时关闭版本下的所有迭代，打开版本时不需要打开所有迭代', '0', '0', '0', '3', '1', '50', '', '1430112987', '1430115965', '0', '1430102315');
INSERT INTO `task` VALUES ('755', '51', '21', '44', '122', '53', '我的任务中的任务显示“项目和版本”信息', '0', '0', '0', '3', '2', '50', '', '0', '1430302668', '0', '1430102404');
INSERT INTO `task` VALUES ('756', '46', '19', '32', '102', '57', '通用方法代码走查', '0', '0', '0', '5', '4', '50', '', '0', '1430138239', '0', '1430102468');
INSERT INTO `task` VALUES ('757', '46', '19', '32', '102', '56', '通用方法代码走查', '0', '0', '0', '5', '4', '50', '', '0', '1430120106', '0', '1430102478');
INSERT INTO `task` VALUES ('758', '46', '19', '32', '102', '54', '通用方法代码走查', '0', '0', '0', '3', '4', '50', '', '1430115835', '1430187302', '0', '1430102491');
INSERT INTO `task` VALUES ('759', '46', '19', '32', '102', '46', '通用方法代码走查', '0', '0', '0', '3', '4', '50', '', '1430116757', '1430362998', '0', '1430102499');
INSERT INTO `task` VALUES ('760', '50', '13', '34', '82', '46', '爱仕达发生的', '99', '0', '0', '3', '1', '20', '', '1430102985', '1430102964', '0', '1430102917');
INSERT INTO `task` VALUES ('761', '50', '13', '34', '82', '46', '时代发生的', '99', '0', '0', '3', '1', '50', '', '0', '1430102987', '0', '1430102929');
INSERT INTO `task` VALUES ('762', '48', '16', '27', '75', '44', '测试91u推送', '99', '0', '0', '4', '1', '50', '', '1430103595', '1430103597', '0', '1430103383');
INSERT INTO `task` VALUES ('763', '51', '21', '40', '126', '44', '版本迭代可关闭', '0', '0', '0', '3', '1', '50', '', '1430112984', '1430112986', '0', '1430103655');
INSERT INTO `task` VALUES ('764', '51', '21', '44', '126', '53', '版本迭代可关闭', '0', '0', '0', '3', '1', '50', '', '1430116763', '1430116825', '0', '1430103662');
INSERT INTO `task` VALUES ('765', '51', '21', '40', '111', '53', '关注任务功能', '99', '0', '0', '5', '6', '10', '', '0', '0', '0', '1430103688');
INSERT INTO `task` VALUES ('766', '51', '21', '44', '122', '53', '选择前置任务时显示“人员->任务名称”，为了避免同样命名的任务无法分辨', '0', '0', '0', '3', '1', '50', '', '0', '1430359581', '0', '1430104082');
INSERT INTO `task` VALUES ('767', '47', '15', '23', '44', '59', '接口简化，取消接口中的https参数', '0', '0', '0', '3', '4', '50', '', '0', '1430106197', '0', '1430106193');
INSERT INTO `task` VALUES ('768', '47', '15', '23', '44', '59', '修改http请求的sender类型为字符串', '0', '0', '0', '3', '6', '50', '', '0', '1430106424', '0', '1430106421');
INSERT INTO `task` VALUES ('769', '47', '15', '23', '44', '59', 'sender的类型变更，业务逻辑层接口修改', '0', '0', '0', '3', '2', '50', '', '0', '1430106576', '0', '1430106574');
INSERT INTO `task` VALUES ('770', '47', '15', '23', '44', '59', 'https参数被取消，业务逻辑层接口修改', '0', '0', '0', '3', '2', '50', '', '0', '1430106682', '0', '1430106680');
INSERT INTO `task` VALUES ('771', '47', '15', '23', '123', '58', '【swift】闭包和尾随闭包', '0', '0', '0', '3', '4', '50', '', '1430291067', '1430387019', '0', '1430109389');
INSERT INTO `task` VALUES ('772', '47', '15', '23', '123', '58', '【swift】下标(subscripts)', '0', '0', '0', '3', '4', '50', '', '1430737280', '1430812305', '0', '1430109494');
INSERT INTO `task` VALUES ('773', '47', '15', '23', '123', '58', '【swift】自判断链接(optional chaining)', '0', '0', '0', '3', '8', '50', '', '1430893819', '1430966350', '0', '1430109551');
INSERT INTO `task` VALUES ('774', '51', '21', '44', '126', '44', '版本和迭代可关闭', '0', '0', '0', '3', '4', '50', '', '1430122122', '1430122124', '0', '1430113687');
INSERT INTO `task` VALUES ('775', '51', '21', '44', '111', '53', '关注任务功能', '0', '0', '0', '3', '2', '50', '', '0', '1430364525', '0', '1430113737');
INSERT INTO `task` VALUES ('776', '51', '21', '44', '129', '44', '前置任务可多选', '0', '0', '0', '3', '1', '50', '', '1430734805', '1430734809', '0', '1430113777');
INSERT INTO `task` VALUES ('777', '51', '21', '44', '129', '53', '前置任务可多选', '99', '0', '0', '3', '4', '20', '', '1430734868', '1430734788', '0', '1430113793');
INSERT INTO `task` VALUES ('778', '51', '21', '44', '130', '53', '新增任务优化', '99', '0', '0', '3', '1', '20', '', '1430735332', '1430359603', '0', '1430113828');
INSERT INTO `task` VALUES ('779', '51', '21', '44', '122', '53', '新增任务时点击宽口外部分可关闭窗口', '0', '0', '0', '3', '1', '50', '', '1430116738', '1430116876', '0', '1430113877');
INSERT INTO `task` VALUES ('780', '51', '21', '44', '132', '53', '版本中的日期建议做成日历点选', '99', '0', '1', '3', '1', '10', '', '0', '0', '0', '1430113911');
INSERT INTO `task` VALUES ('781', '51', '21', '44', '132', '53', '版本中的日期建议做成日历点选', '0', '0', '1', '3', '4', '50', '', '1430706056', '1430711473', '0', '1430113920');
INSERT INTO `task` VALUES ('782', '51', '21', '44', '109', '53', '新增导入导出功能', '0', '0', '0', '3', '4', '50', '', '1430706052', '1430727788', '0', '1430113971');
INSERT INTO `task` VALUES ('783', '52', '20', '45', '135', '46', '静态代码检查及报告集成', '0', '0', '0', '1', '12', '50', '', '1430128845', '1430300481', '0', '1430114187');
INSERT INTO `task` VALUES ('784', '52', '20', '47', '135', '53', '静态代码检查及报告集成', '0', '0', '0', '1', '8', '50', '', '1431052928', '1431312933', '0', '1430114205');
INSERT INTO `task` VALUES ('785', '52', '20', '45', '135', '55', '静态代码检查及报告集成', '0', '0', '0', '1', '1', '50', '', '0', '1430704997', '0', '1430114217');
INSERT INTO `task` VALUES ('786', '47', '15', '23', '123', '58', '【swift】Objective-C语法异同点整理及混合编程', '0', '0', '0', '3', '16', '50', '', '1430125932', '1431402755', '0', '1430114376');
INSERT INTO `task` VALUES ('787', '44', '11', '17', '40', '46', '首页置顶特效开发', '0', '0', '0', '7', '10', '50', '', '0', '1430114635', '0', '1430114603');
INSERT INTO `task` VALUES ('788', '46', '19', '32', '137', '57', '静态代码检查修改', '0', '0', '0', '3', '5', '50', '', '0', '1430138243', '0', '1430114908');
INSERT INTO `task` VALUES ('789', '46', '19', '32', '136', '57', '时间操作', '0', '0', '0', '1', '2', '50', '', '0', '1430223327', '0', '1430114938');
INSERT INTO `task` VALUES ('790', '46', '19', '32', '136', '57', '通用方法', '0', '0', '0', '1', '5', '50', '', '0', '1430373201', '0', '1430114965');
INSERT INTO `task` VALUES ('791', '46', '19', '32', '136', '57', '文件操作', '0', '0', '0', '1', '5', '50', '', '0', '1430223345', '0', '1430114982');
INSERT INTO `task` VALUES ('792', '46', '19', '32', '136', '57', '异步图片处理', '0', '0', '0', '1', '4', '50', '', '0', '1430373199', '0', '1430115016');
INSERT INTO `task` VALUES ('793', '46', '19', '32', '136', '57', '随机方法', '0', '0', '0', '1', '5', '50', '', '1430706528', '1431311755', '0', '1430115032');
INSERT INTO `task` VALUES ('794', '46', '19', '32', '136', '57', '目录操作', '0', '0', '0', '1', '1', '50', '', '0', '1430373195', '0', '1430115047');
INSERT INTO `task` VALUES ('795', '46', '19', '32', '136', '57', 'Json操作', '0', '0', '0', '1', '3', '50', '', '0', '1430223342', '0', '1430115066');
INSERT INTO `task` VALUES ('796', '47', '15', '23', '123', '58', '【swift】高级操作符', '0', '0', '0', '3', '4', '50', '', '1431420459', '1431426657', '0', '1430115080');
INSERT INTO `task` VALUES ('797', '46', '19', '32', '136', '57', '加密操作', '0', '0', '0', '1', '5', '50', '', '1430373207', '1431311754', '0', '1430115081');
INSERT INTO `task` VALUES ('798', '46', '19', '32', '136', '56', '文本操作类', '0', '0', '0', '1', '3', '50', '', '1430120769', '1430226592', '0', '1430115115');
INSERT INTO `task` VALUES ('799', '46', '19', '32', '136', '56', '数字操作类', '0', '0', '0', '1', '2', '50', '', '0', '1430388152', '0', '1430115179');
INSERT INTO `task` VALUES ('800', '46', '19', '32', '136', '56', '验证通用类', '0', '0', '0', '1', '3', '50', '', '0', '1430226607', '0', '1430115321');
INSERT INTO `task` VALUES ('801', '46', '19', '32', '136', '56', '集合操作类', '0', '0', '0', '1', '3', '50', '', '0', '1430226591', '0', '1430115336');
INSERT INTO `task` VALUES ('802', '46', '19', '32', '136', '56', '图像操作类', '0', '0', '0', '1', '5', '50', '', '0', '1430226630', '0', '1430115356');
INSERT INTO `task` VALUES ('803', '46', '19', '32', '136', '56', '包操作类', '0', '0', '0', '1', '5', '50', '', '0', '1430388150', '0', '1430115374');
INSERT INTO `task` VALUES ('804', '46', '19', '32', '138', '46', '代码走查CheckList整理', '99', '0', '0', '3', '6', '20', '', '1430300485', '1430300485', '0', '1430115579');
INSERT INTO `task` VALUES ('805', '46', '19', '32', '139', '46', '第三方库选型', '0', '0', '0', '3', '8', '50', '', '1430300495', '1430300497', '0', '1430115978');
INSERT INTO `task` VALUES ('806', '51', '21', '44', '122', '44', '“我的任务”中不需要显示已关闭版本和迭代的任务', '0', '0', '0', '4', '6', '50', '', '1430122099', '1430122109', '0', '1430116598');
INSERT INTO `task` VALUES ('807', '51', '21', '44', '122', '44', '“工时统计”中时间数有问题', '0', '0', '0', '4', '4', '50', '', '1430703910', '1430703917', '0', '1430116687');
INSERT INTO `task` VALUES ('808', '51', '21', '44', '122', '53', '“故事进度”中故事名称消失', '0', '0', '0', '4', '1', '50', '', '1430208105', '1430208205', '0', '1430116998');
INSERT INTO `task` VALUES ('809', '47', '15', '23', '127', '58', '【swift】UI基础控件', '0', '0', '0', '3', '8', '50', '', '1431660774', '1431938138', '0', '1430117943');
INSERT INTO `task` VALUES ('810', '53', '22', '41', '116', '48', '业务流程确认是否启用电子帐户后调整规则', '0', '0', '0', '3', '2', '50', '', '1431568142', '1431568154', '0', '1430179531');
INSERT INTO `task` VALUES ('811', '53', '22', '41', '117', '48', '业务规则确认后的对接计划讨论', '0', '0', '0', '3', '2', '50', '', '1431568174', '1431568181', '0', '1430179562');
INSERT INTO `task` VALUES ('812', '47', '15', '23', '73', '48', '【iOS】插件模块pods引用支持测试', '0', '0', '0', '3', '8', '50', '', '1430187409', '1430870711', '0', '1430187404');
INSERT INTO `task` VALUES ('813', '47', '15', '23', '73', '48', '【iOS】格式化规范修改与验证', '0', '0', '0', '3', '3', '50', '', '1430274733', '1430274746', '0', '1430206239');
INSERT INTO `task` VALUES ('814', '47', '15', '23', '73', '48', '【iOS】格式化规范修改与验证', '99', '0', '0', '3', '3', '10', '', '0', '0', '0', '1430206239');
INSERT INTO `task` VALUES ('815', '49', '14', '35', '43', '55', '日志上线部署', '0', '0', '0', '3', '16', '50', '', '0', '1430383721', '0', '1430211080');
INSERT INTO `task` VALUES ('816', '51', '21', '46', '144', '53', '燃尽图界面开发', '99', '0', '0', '3', '1', '50', '', '1430704750', '1430704754', '0', '1430704124');
INSERT INTO `task` VALUES ('817', '51', '21', '46', '144', '44', '燃尽图功能完善：包含客户端要服务端提供全心的数据接口，以及针对第一次完成燃尽图的bug修复，以及一些过滤条件的增加。', '99', '0', '0', '3', '16', '20', '', '1430704762', '1430704762', '0', '1430704138');
INSERT INTO `task` VALUES ('818', '51', '21', '46', '140', '53', '工时统计扩展界面开发', '99', '0', '0', '3', '2', '10', '', '0', '0', '0', '1430704167');
INSERT INTO `task` VALUES ('819', '51', '21', '46', '140', '44', '工时统计扩展功能：过滤条件增加一个', '99', '0', '0', '3', '2', '20', '', '1430704785', '1430704785', '0', '1430704178');
INSERT INTO `task` VALUES ('820', '51', '21', '46', '141', '53', '增加任务备注功能', '99', '0', '0', '3', '2', '10', '', '0', '0', '0', '1430704223');
INSERT INTO `task` VALUES ('821', '51', '21', '46', '141', '44', '增加任务备注功能', '99', '0', '0', '3', '2', '10', '', '0', '0', '0', '1430704229');
INSERT INTO `task` VALUES ('822', '51', '21', '46', '142', '53', '通知中心界面开发', '99', '0', '1', '1', '4', '10', '', '0', '0', '0', '1430704258');
INSERT INTO `task` VALUES ('823', '51', '21', '46', '142', '44', '通知中心功能开发', '99', '0', '1', '1', '8', '20', '', '1430704522', '1430704522', '0', '1430704272');
INSERT INTO `task` VALUES ('824', '51', '21', '46', '143', '53', '树形展开界面开发', '99', '0', '1', '1', '4', '10', '', '0', '0', '0', '1430704304');
INSERT INTO `task` VALUES ('825', '51', '21', '46', '143', '44', '树形展开功能开发', '99', '0', '1', '1', '6', '10', '', '0', '0', '0', '1430704316');
INSERT INTO `task` VALUES ('826', '52', '20', '47', '145', '46', 'Monkey自动化测试工具集成', '0', '0', '0', '3', '8', '50', '', '1430966914', '1430991193', '0', '1430705078');
INSERT INTO `task` VALUES ('827', '51', '21', '44', '109', '53', '新增导入导出功能', '99', '0', '0', '3', '4', '10', '', '0', '0', '0', '1430705457');
INSERT INTO `task` VALUES ('828', '51', '21', '44', '109', '53', '新增导入导出功能', '99', '0', '0', '3', '4', '10', '', '0', '0', '0', '1430705464');
INSERT INTO `task` VALUES ('829', '51', '23', '48', '149', '44', '增加任务备注功能', '0', '0', '0', '3', '2', '50', '', '1430967521', '1430990088', '0', '1430705700');
INSERT INTO `task` VALUES ('830', '51', '23', '48', '150', '53', '工时统计扩展界面开发', '0', '0', '0', '3', '2', '50', '', '1431069483', '1431069484', '0', '1430705740');
INSERT INTO `task` VALUES ('831', '51', '23', '48', '149', '53', '增加任务备注功能', '0', '0', '0', '3', '2', '50', '', '1431054422', '1431054425', '0', '1430705773');
INSERT INTO `task` VALUES ('832', '51', '23', '48', '147', '44', '树形展开功能开发', '0', '0', '1', '1', '6', '50', '', '1430967524', '1430970898', '0', '1430705811');
INSERT INTO `task` VALUES ('833', '51', '23', '48', '148', '53', '通知中心界面开发', '0', '0', '1', '1', '4', '50', '测试备注', '1431488270', '1431488294', '0', '1430705840');
INSERT INTO `task` VALUES ('834', '51', '23', '48', '147', '53', '树形展开界面开发', '0', '0', '1', '1', '4', '50', 'sdfasdfasdfads', '1431333177', '1431487255', '0', '1430705869');
INSERT INTO `task` VALUES ('835', '51', '23', '48', '146', '44', '燃尽图功能完善：包含客户端要服务端提供全心的数据接口，以及针对第一次完成燃尽图的bug修复，以及一些过滤条件的增加。', '0', '0', '0', '3', '16', '50', '', '1430811557', '1430811583', '0', '1430705909');
INSERT INTO `task` VALUES ('836', '51', '23', '48', '150', '44', '工时统计扩展功能：过滤条件增加一个', '0', '0', '0', '3', '2', '50', '', '1430705946', '1430792430', '0', '1430705941');
INSERT INTO `task` VALUES ('837', '51', '23', '48', '148', '44', '通知中心功能开发', '0', '0', '1', '1', '8', '50', '', '1430990097', '1431051097', '0', '1430705970');
INSERT INTO `task` VALUES ('838', '51', '23', '48', '146', '53', '燃尽图界面开发', '0', '0', '0', '3', '1', '50', '', '1430796939', '1430796941', '0', '1430706015');
INSERT INTO `task` VALUES ('839', '46', '19', '43', '151', '57', '照相相关功能预研', '0', '0', '0', '3', '16', '50', '', '0', '1431311759', '0', '1430706524');
INSERT INTO `task` VALUES ('840', '46', '19', '43', '153', '56', '二维码扫描模块预研', '0', '0', '0', '3', '16', '50', '', '1430790930', '1431311760', '0', '1430706569');
INSERT INTO `task` VALUES ('841', '46', '19', '43', '154', '46', '共通化框架优化', '0', '0', '0', '3', '16', '50', '', '1430966853', '1431311729', '0', '1430708064');
INSERT INTO `task` VALUES ('842', '51', '23', '48', '155', '53', '前置任务可多选', '0', '0', '0', '3', '8', '50', '', '1430796926', '1430988563', '0', '1430735443');
INSERT INTO `task` VALUES ('843', '51', '23', '48', '156', '53', '新增任务优化', '0', '0', '0', '3', '2', '50', '', '1430961918', '1431488297', '0', '1430735534');
INSERT INTO `task` VALUES ('844', '47', '15', '23', '123', '58', '【swift】属性(Properties)和方法(Methods)', '0', '0', '0', '3', '4', '50', '', '1430737447', '1430737454', '0', '1430737442');
INSERT INTO `task` VALUES ('845', '51', '23', '48', '156', '44', '【BUG】删除的任务在故事进度中可以看到', '0', '0', '0', '5', '2', '50', '', '1430988562', '1430988567', '0', '1430789698');
INSERT INTO `task` VALUES ('846', '47', '15', '23', '73', '48', '【iOS】cordova升级到5.0，iOS平台升级到3.8，插件引用方式更新', '0', '0', '0', '3', '4', '50', '', '1430805011', '1430805019', '0', '1430804932');
INSERT INTO `task` VALUES ('847', '47', '15', '23', '73', '48', '【iOS】cordova资料收集与整理', '0', '0', '0', '3', '4', '50', '', '1430805016', '1430821577', '0', '1430804957');
INSERT INTO `task` VALUES ('848', '47', '15', '26', '73', '48', '【iOS】Cordova请求组件与现有请求整合', '0', '0', '0', '3', '8', '20', '', '1430870695', '1430870695', '0', '1430805006');
INSERT INTO `task` VALUES ('849', '47', '15', '23', '157', '48', '共通化阶段性分享讨论会', '0', '0', '0', '3', '3', '50', '', '1431040325', '1431040331', '0', '1431040319');
INSERT INTO `task` VALUES ('850', '47', '15', '23', '73', '48', 'Cordova请求组件的js脚本学习并编写', '0', '0', '0', '3', '4', '50', '', '1431040473', '1431080632', '0', '1431040436');
INSERT INTO `task` VALUES ('851', '47', '15', '23', '67', '48', 'Cordova请求组件的js脚本优化调整', '0', '0', '0', '3', '4', '50', '', '1431080626', '1432193012', '0', '1431040464');
INSERT INTO `task` VALUES ('852', '51', '23', '48', '158', '44', '1.任务完成后通知故事负责人\n2.任务完成后通知该故事所有所属任务的开发人员', '0', '1', '0', '5', '8', '50', '', '1431053210', '1431077651', '0', '1431051238');
INSERT INTO `task` VALUES ('853', '51', '23', '48', '159', '44', '【服务端】增加截止日期功能\n1.增加和维护任务时增加截止日期\n2.有截止日期的需要显示在看板任务中，并红色标明\n3.任务到截止日期当天需要99U通知', '0', '1', '1', '1', '4', '50', '', '1431053219', '1431077885', '0', '1431051410');
INSERT INTO `task` VALUES ('854', '51', '23', '48', '159', '53', '【WEB端】增加截止日期功能\n1.增加和维护任务时增加截止日期\n2.有截止日期的需要显示在看板任务中，并红色标明\n3.任务到截止日期当天需要99U通知', '0', '1', '1', '1', '2', '50', '', '1431333175', '1431333180', '0', '1431051430');
INSERT INTO `task` VALUES ('855', '47', '15', '23', '123', '58', '【swift】协议和扩展', '0', '0', '0', '3', '4', '50', '', '1431053680', '1431080961', '0', '1431053673');
INSERT INTO `task` VALUES ('856', '47', '15', '23', '121', '62', '【基础控件库】基础控件库结构重新梳理', '0', '0', '0', '3', '2', '50', '', '0', '1431065880', '0', '1431065875');
INSERT INTO `task` VALUES ('857', '47', '15', '23', '121', '58', '【基础控件库】UIImageView 快速创建', '0', '0', '0', '3', '4', '50', '', '1431081673', '1431660765', '0', '1431081107');
INSERT INTO `task` VALUES ('858', '52', '20', '49', '160', '46', '单元测试集成和报告', '0', '0', '0', '3', '8', '50', '', '0', '1431656383', '0', '1431311523');
INSERT INTO `task` VALUES ('859', '52', '20', '53', '160', '63', '单元测试集成和报告', '0', '0', '0', '3', '8', '50', '', '0', '1432287504', '0', '1431311546');
INSERT INTO `task` VALUES ('860', '52', '20', '49', '162', '61', '代码分析和报告', '0', '0', '0', '3', '8', '50', '', '1431324194', '1431662027', '0', '1431311572');
INSERT INTO `task` VALUES ('861', '52', '20', '49', '101', '48', 'Mac环境Jenkins环境搭建，配置自动启动Daemon机制，配置打包证书及权限', '0', '0', '0', '3', '8', '50', '', '1431569871', '1431569936', '0', '1431311604');
INSERT INTO `task` VALUES ('862', '46', '19', '50', '153', '56', '二维码扫描模块预研', '0', '0', '0', '3', '16', '50', '', '1431429063', '1431481855', '0', '1431311881');
INSERT INTO `task` VALUES ('863', '46', '19', '50', '151', '57', '拍照功能预研', '0', '0', '0', '3', '16', '50', '', '0', '1431670569', '0', '1431311899');
INSERT INTO `task` VALUES ('864', '46', '19', '50', '165', '56', '微信支付了解与设计', '0', '0', '0', '3', '8', '50', '', '1431481859', '1431566949', '0', '1431312050');
INSERT INTO `task` VALUES ('865', '46', '19', '50', '165', '56', '微信支付DEMO开发', '0', '0', '0', '3', '16', '50', '', '1431566953', '1432015075', '0', '1431312067');
INSERT INTO `task` VALUES ('866', '46', '19', '50', '166', '57', '声波功能了解与设计', '0', '0', '0', '3', '8', '50', '', '0', '1431670572', '0', '1431312093');
INSERT INTO `task` VALUES ('867', '46', '19', '50', '166', '57', '声波功能开发', '0', '0', '0', '3', '16', '50', '', '1431670575', '1432287003', '0', '1431312122');
INSERT INTO `task` VALUES ('868', '46', '19', '50', '105', '46', '工具类整理与优化', '0', '0', '0', '3', '8', '50', '', '0', '1431656514', '0', '1431312289');
INSERT INTO `task` VALUES ('869', '46', '19', '50', '167', '54', '商户端集成共通模块方案', '0', '0', '0', '3', '24', '50', '', '1431480787', '1432029166', '0', '1431313810');
INSERT INTO `task` VALUES ('870', '47', '15', '23', '66', '48', 'Jenkins环境部署与配套资源升级', '0', '0', '0', '3', '4', '50', '', '1431316521', '1431398332', '0', '1431316498');
INSERT INTO `task` VALUES ('871', '47', '15', '23', '66', '48', '与QA部署相关冲突问题解决', '0', '0', '0', '3', '2', '50', '', '1431316522', '1431398332', '0', '1431316519');
INSERT INTO `task` VALUES ('872', '47', '15', '23', '121', '62', '【表现层共通化】- 项目Demo梳理', '0', '0', '0', '3', '2', '50', '', '0', '1431324549', '0', '1431324544');
INSERT INTO `task` VALUES ('873', '54', '24', '51', '168', '46', '测试任务3', '99', '0', '0', '3', '1', '50', '', '0', '1431325782', '0', '1431325275');
INSERT INTO `task` VALUES ('874', '0', '24', '51', '168', '44', '测试任务1', '99', '0', '0', '5', '5', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('875', '0', '24', '51', '168', '53', '测试任务2', '99', '0', '0', '5', '10', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('876', '47', '15', '23', '124', '62', '【拓展控件库】-UIDatePicker 快速构建、控件', '0', '0', '0', '3', '6', '50', '', '0', '1431336661', '0', '1431336656');
INSERT INTO `task` VALUES ('877', '47', '15', '23', '123', '58', '【swift】泛型(Generics)', '0', '0', '0', '3', '2', '50', '', '1431411693', '1431420463', '0', '1431342721');
INSERT INTO `task` VALUES ('878', '47', '15', '23', '66', '48', 'Daemon进程处理实现自动启动jenkins', '0', '0', '0', '3', '4', '50', '', '1431398373', '1431420090', '0', '1431398371');
INSERT INTO `task` VALUES ('879', '47', '15', '23', '66', '48', 'jenkins对pod的支持配置与验证', '0', '0', '0', '3', '2', '50', '', '1431415535', '1431420090', '0', '1431415497');
INSERT INTO `task` VALUES ('880', '47', '15', '23', '66', '48', 'jenkins对nodejs的支持与验证', '0', '0', '0', '3', '2', '50', '', '1431415537', '1431420090', '0', '1431415531');
INSERT INTO `task` VALUES ('881', '51', '23', '48', '148', '46', '测试截止日期', '99', '0', '0', '1', '1', '10', '', '0', '0', '1431648000', '1431481455');
INSERT INTO `task` VALUES ('882', '51', '23', '48', '159', '46', 'sdfasdfasd', '99', '0', '0', '1', '1', '50', '', '0', '1431486680', '1432684800', '1431486621');
INSERT INTO `task` VALUES ('883', '47', '15', '23', '73', '48', '使用pod引用cordova组件集成验证', '0', '0', '0', '3', '4', '50', '', '1431506925', '1431559730', '1431648000', '1431506848');
INSERT INTO `task` VALUES ('884', '47', '15', '23', '73', '48', '代码整理后提交到SVN', '0', '0', '0', '3', '4', '50', '', '1431506949', '1431559736', '0', '1431506875');
INSERT INTO `task` VALUES ('885', '47', '15', '23', '73', '48', '完善pod引用步骤的文档与wiki', '0', '0', '0', '3', '2', '50', '', '1432193027', '1432193031', '0', '1431506921');
INSERT INTO `task` VALUES ('886', '47', '15', '26', '66', '48', 'jenkins打包插件配置自定义包名及参数，以后处理', '0', '0', '0', '3', '1', '50', '', '1434101257', '1435644612', '0', '1431559717');
INSERT INTO `task` VALUES ('887', '47', '15', '23', '157', '48', '参加开发内部讨论分享与头脑风暴', '0', '0', '0', '3', '3', '50', '', '1431570537', '1431570544', '1431475200', '1431570488');
INSERT INTO `task` VALUES ('888', '47', '15', '23', '157', '48', '整理完善技术对产品的观点wiki并参与讨论会议', '0', '0', '0', '3', '4', '50', '', '1431570539', '1431595989', '1431648000', '1431570514');
INSERT INTO `task` VALUES ('889', '47', '15', '25', '66', '48', 'mac server打包流程验证与jenkins对比，转到WWS处理，先使用os x server 打包', '0', '0', '0', '3', '2', '50', '', '1434099221', '1434099305', '0', '1431645034');
INSERT INTO `task` VALUES ('890', '52', '20', '53', '161', '46', '自动化脚本集成和报告', '0', '0', '0', '3', '10', '50', '', '0', '1432287014', '0', '1431656706');
INSERT INTO `task` VALUES ('891', '52', '20', '53', '160', '61', '单元测试集成和报告', '0', '0', '0', '3', '1', '50', '', '0', '1432288397', '0', '1431656741');
INSERT INTO `task` VALUES ('892', '50', '25', '52', '172', '59', '统一项目的金额输入控件，并校验输入', '0', '0', '0', '3', '16', '50', '', '1432004416', '1432120595', '1432166400', '1431656767');
INSERT INTO `task` VALUES ('893', '52', '20', '53', '161', '55', '自动化脚本集成与报告', '0', '0', '0', '3', '16', '50', '', '0', '1432287487', '0', '1431656784');
INSERT INTO `task` VALUES ('894', '50', '25', '52', '172', '54', '统项目的金额输入控件，并校验输入', '0', '0', '0', '3', '16', '50', '', '1432029156', '1432186478', '1432166400', '1431657051');
INSERT INTO `task` VALUES ('895', '50', '25', '52', '171', '61', 'webapp在加载过程中出现白屏。通过优化首屏加载时间，加载提示等手段解决白屏问题', '0', '0', '0', '1', '16', '50', '', '1432000734', '1432197638', '0', '1431668587');
INSERT INTO `task` VALUES ('896', '50', '25', '52', '173', '61', '优化webapp首屏加载速度', '0', '0', '0', '3', '16', '50', '', '1432000726', '1432197641', '0', '1431668717');
INSERT INTO `task` VALUES ('897', '47', '15', '23', '66', '48', '开发周报', '0', '0', '0', '3', '1', '50', '', '1431670961', '1432193007', '0', '1431670958');
INSERT INTO `task` VALUES ('898', '50', '25', '52', '171', '59', 'web白屏问题iOS端优化', '0', '0', '0', '3', '8', '50', '', '1431914093', '1432030490', '1431993600', '1431913434');
INSERT INTO `task` VALUES ('899', '50', '25', '52', '171', '54', 'web白屏问题Android端优化', '0', '0', '0', '3', '4', '50', '', '1432000741', '1432029154', '1431993600', '1431913466');
INSERT INTO `task` VALUES ('900', '50', '25', '52', '170', '52', '优化营业记录', '0', '0', '0', '3', '8', '50', '', '0', '1432087527', '0', '1431913638');
INSERT INTO `task` VALUES ('901', '50', '25', '52', '170', '61', '根据接口调整营业记录显示', '0', '0', '0', '3', '16', '50', '', '1432197643', '1432199547', '0', '1431913702');
INSERT INTO `task` VALUES ('902', '50', '25', '52', '169', '64', '重构报表框架对报表性能进行优化', '99', '0', '0', '3', '40', '20', '', '1431913712', '0', '0', '1431913704');
INSERT INTO `task` VALUES ('903', '50', '25', '52', '169', '64', '对报表框架进行重构', '0', '0', '0', '3', '16', '50', '', '0', '1431914602', '0', '1431914409');
INSERT INTO `task` VALUES ('904', '50', '25', '52', '169', '64', '门店信息汇总', '0', '0', '0', '3', '8', '50', '', '1432025423', '1432186520', '0', '1431914424');
INSERT INTO `task` VALUES ('905', '50', '25', '52', '169', '64', '营业月报表', '0', '0', '0', '3', '4', '50', '', '1431919888', '1432186518', '0', '1431914444');
INSERT INTO `task` VALUES ('906', '50', '25', '52', '169', '64', '营业年度报表', '0', '0', '0', '3', '4', '50', '', '1431919892', '1432186518', '0', '1431914460');
INSERT INTO `task` VALUES ('907', '50', '25', '52', '169', '64', '项目分类统计-分类汇总', '0', '0', '0', '3', '4', '50', '', '1432186547', '1432264935', '0', '1431914489');
INSERT INTO `task` VALUES ('908', '50', '25', '52', '169', '64', '项目分类统计-明细分析', '0', '0', '0', '3', '4', '50', '', '1432025432', '1432186517', '0', '1431914512');
INSERT INTO `task` VALUES ('909', '50', '25', '52', '169', '64', '员工业绩统计-员工业绩统计', '0', '0', '0', '3', '6', '50', '', '1432186528', '1432264934', '0', '1431914533');
INSERT INTO `task` VALUES ('910', '50', '25', '52', '169', '64', '员工业绩统计-项目分类统计', '0', '0', '0', '3', '6', '50', '', '1432186545', '1432264936', '0', '1431914546');
INSERT INTO `task` VALUES ('911', '50', '25', '52', '169', '64', '员工业绩统计-项目明细统计', '0', '0', '0', '3', '6', '50', '', '1432025434', '1432186521', '0', '1431914576');
INSERT INTO `task` VALUES ('912', '47', '15', '24', '127', '58', '【swift】界面编程：xib和代码界面', '0', '0', '0', '3', '8', '50', '', '1432606227', '1432634983', '0', '1431917907');
INSERT INTO `task` VALUES ('913', '49', '27', '54', '174', '63', '微信服务化', '0', '0', '0', '3', '40', '50', '', '1432018259', '1435643200', '0', '1431917991');
INSERT INTO `task` VALUES ('914', '47', '15', '24', '127', '58', '【swift】NS基础类库使用', '0', '0', '0', '3', '4', '50', '', '1432114929', '1432634973', '0', '1432002596');
INSERT INTO `task` VALUES ('915', '44', '28', '56', '179', '48', '1.屏蔽“我的钱包”\n2.屏蔽“推荐有礼”\n\n4.屏蔽售后相关功能“评论、退款、投诉”', '0', '0', '0', '5', '2', '50', '', '1432003757', '1432003847', '1431993600', '1432003613');
INSERT INTO `task` VALUES ('916', '44', '28', '56', '179', '57', '1.屏蔽“我的钱包”\n2.屏蔽“推荐有礼”\n3.屏蔽“商家/产品的分享”\n4.屏蔽售后相关功能“评论、退款、投诉”', '0', '0', '0', '5', '1', '50', '', '0', '1432024916', '1432080000', '1432003716');
INSERT INTO `task` VALUES ('917', '44', '28', '56', '179', '58', '屏蔽“商家/产品的分享”', '0', '0', '0', '5', '1', '50', '', '1432004122', '1432004124', '1431993600', '1432003817');
INSERT INTO `task` VALUES ('918', '44', '28', '56', '179', '58', '屏蔽“商家/产品的分享”', '99', '0', '0', '5', '1', '10', '', '0', '0', '1431993600', '1432003819');
INSERT INTO `task` VALUES ('919', '44', '28', '56', '180', '48', 'bug修复', '0', '0', '0', '3', '4', '50', '', '1432004075', '1432004118', '0', '1432004069');
INSERT INTO `task` VALUES ('920', '44', '28', '56', '180', '48', 'Logo和名称更新，并验证发布', '0', '0', '0', '3', '3', '50', '', '1432004127', '1432004136', '0', '1432004114');
INSERT INTO `task` VALUES ('921', '50', '25', '52', '181', '59', '使用共通化的momo通讯模块', '0', '0', '0', '3', '4', '50', '', '0', '1432187769', '1432166400', '1432187666');
INSERT INTO `task` VALUES ('922', '50', '25', '52', '181', '59', '使用BlockKit替换MoChat库中的MKBlock', '0', '0', '0', '3', '12', '50', '', '0', '1432187770', '1432166400', '1432187761');
INSERT INTO `task` VALUES ('923', '44', '28', '56', '179', '48', 'Logo及启动界面修改与发布', '0', '0', '0', '5', '4', '50', '', '1432192984', '1432535915', '0', '1432192963');
INSERT INTO `task` VALUES ('924', '44', '28', '56', '180', '48', 'Bug修改', '0', '0', '0', '3', '2', '50', '', '1432192982', '1432192989', '0', '1432192980');
INSERT INTO `task` VALUES ('925', '47', '15', '25', '66', '53', 'H5模块gulp打包流程集成Jenkins', '0', '0', '0', '3', '4', '50', '', '1433382863', '1433382866', '0', '1432193088');
INSERT INTO `task` VALUES ('926', '47', '15', '23', '157', '48', '沟通交接H5模块打包流程集成', '0', '0', '0', '3', '2', '50', '', '1432193115', '1432193119', '0', '1432193112');
INSERT INTO `task` VALUES ('927', '52', '20', '57', '182', '46', '整体持续流程集成', '0', '0', '0', '3', '8', '50', '', '1432542349', '1433144001', '0', '1432287149');
INSERT INTO `task` VALUES ('928', '52', '20', '57', '161', '61', 'gremlins.js', '0', '0', '0', '3', '8', '50', '', '1432542851', '1432620884', '0', '1432287187');
INSERT INTO `task` VALUES ('929', '52', '20', '62', '183', '48', '打包方案确定与验证（转到文生来评估）', '0', '0', '0', '3', '1', '50', '', '1432635289', '1433494420', '0', '1432287269');
INSERT INTO `task` VALUES ('930', '46', '19', '61', '184', '56', '数据库加密', '0', '0', '0', '3', '32', '50', '', '1434101334', '1434101338', '0', '1432287576');
INSERT INTO `task` VALUES ('931', '46', '19', '55', '184', '56', 'WebView和ContentProvider封装', '0', '0', '0', '3', '26', '50', '', '0', '1433143787', '0', '1432287607');
INSERT INTO `task` VALUES ('932', '46', '19', '55', '178', '56', 'NFC和重力感应预研', '0', '0', '0', '3', '14', '50', '', '1432533876', '1433143788', '0', '1432287626');
INSERT INTO `task` VALUES ('933', '46', '19', '55', '184', '46', '高效Adapter封装', '0', '0', '0', '3', '8', '50', '', '1432542346', '1432693588', '0', '1432287650');
INSERT INTO `task` VALUES ('934', '46', '19', '61', '178', '57', '蓝牙模块预研', '0', '0', '0', '3', '20', '50', '', '1433144058', '1434101380', '0', '1432287681');
INSERT INTO `task` VALUES ('935', '46', '19', '55', '184', '46', '常用界面元素和样式封装', '99', '0', '0', '3', '8', '10', '', '0', '0', '0', '1432287723');
INSERT INTO `task` VALUES ('936', '50', '29', '58', '185', '44', '[服务端] 完成框架改造。实现ID防刷。 主要包括：1框架入口改造 2框架出口改造 3算法引入 4防刷接口调试手段 5新老URL兼容问题', '0', '0', '0', '3', '40', '20', '', '1436790130', '1432607957', '1432252800', '1432537275');
INSERT INTO `task` VALUES ('937', '50', '29', '58', '185', '44', '前端联调。', '0', '0', '0', '3', '16', '50', '', '1436440284', '1436440284', '1432857600', '1432537304');
INSERT INTO `task` VALUES ('938', '50', '29', '58', '185', '44', '图片改造', '0', '0', '0', '3', '8', '20', '', '1436841834', '1436790039', '1432857600', '1432537534');
INSERT INTO `task` VALUES ('939', '52', '20', '57', '161', '61', 'gremlins.js', '99', '0', '0', '3', '8', '10', '', '0', '0', '0', '1432542862');
INSERT INTO `task` VALUES ('940', '50', '30', '60', '186', '59', '在流水单首页添加显示二维码的功能', '0', '0', '0', '3', '8', '50', '', '1432792656', '1433122495', '0', '1432624114');
INSERT INTO `task` VALUES ('941', '50', '30', '60', '186', '54', '在流水单首页添加显示二维码的功能', '0', '0', '0', '3', '8', '50', '', '1432878117', '1432878152', '0', '1432624159');
INSERT INTO `task` VALUES ('942', '50', '30', '60', '232', '45', '微信卡包版页面修改', '0', '0', '0', '3', '8', '50', '', '0', '1433122680', '0', '1432624628');
INSERT INTO `task` VALUES ('943', '50', '30', '60', '233', '61', 'B端店务页面修改', '0', '0', '0', '3', '12', '50', '', '1432792404', '1432792417', '0', '1432624695');
INSERT INTO `task` VALUES ('944', '50', '30', '60', '186', '47', '生成门店的二维码', '0', '0', '0', '3', '12', '50', '', '0', '1433123583', '0', '1432625677');
INSERT INTO `task` VALUES ('945', '47', '15', '24', '73', '48', '升级cordova3.7版本到3.8版本，验证及问题修复', '0', '0', '0', '3', '4', '50', '', '1432634930', '1432634948', '0', '1432634830');
INSERT INTO `task` VALUES ('946', '47', '15', '24', '73', '48', '小组讨论交流', '0', '0', '0', '3', '1', '50', '', '1432634922', '1432634924', '0', '1432634851');
INSERT INTO `task` VALUES ('947', '47', '15', '24', '71', '48', '部署Windows环境及Cordova组件，方便分享及后续沟通', '0', '0', '0', '3', '8', '50', '', '1432634936', '1432634942', '0', '1432634886');
INSERT INTO `task` VALUES ('948', '47', '15', '24', '71', '48', 'Gradle构建了解，Cordova默认使用该平台进行构建', '0', '0', '0', '3', '4', '50', '', '1432634919', '1432634927', '0', '1432634912');
INSERT INTO `task` VALUES ('949', '50', '30', '60', '186', '48', '需求讨论会', '0', '0', '0', '3', '1', '50', '', '1432635198', '1432635202', '0', '1432635195');
INSERT INTO `task` VALUES ('950', '47', '15', '24', '131', '58', '【swift】navigation导航条项目demo', '0', '0', '0', '3', '2', '50', '', '1432803555', '1432888778', '0', '1432635198');
INSERT INTO `task` VALUES ('951', '44', '28', '56', '179', '48', '打包及上传appstore', '0', '0', '0', '5', '8', '50', '', '1432635241', '1432635246', '0', '1432635238');
INSERT INTO `task` VALUES ('952', '47', '15', '24', '131', '58', '【swift】UITableView Demo', '0', '0', '0', '3', '4', '50', '', '1432803559', '1432888779', '0', '1432635351');
INSERT INTO `task` VALUES ('953', '47', '15', '25', '73', '48', 'Pod引用方案验证，成功集成到导购项目的分支中', '0', '0', '0', '3', '8', '50', '', '1432709725', '1433729894', '0', '1432635376');
INSERT INTO `task` VALUES ('954', '47', '15', '24', '157', '48', '整理Hybrid分享材料及wiki完善', '0', '0', '0', '3', '4', '50', '', '1432635413', '1432635424', '0', '1432635402');
INSERT INTO `task` VALUES ('955', '47', '15', '25', '73', '48', '基础组件升级及新版本验证', '0', '0', '0', '3', '8', '50', '', '1432687406', '1433729842', '0', '1432687402');
INSERT INTO `task` VALUES ('956', '47', '15', '24', '73', '48', '组件依赖逻辑编写初稿', '0', '0', '0', '3', '4', '50', '', '1432687442', '1432808013', '0', '1432687439');
INSERT INTO `task` VALUES ('957', '44', '28', '56', '179', '48', '订单支付超时问题沟通讨论：客户端支付的时候提交有效时间（服务器更新接口增加字段）/服务端取消订单时同时取消支付宝的订单', '0', '0', '0', '5', '2', '50', '', '1432707176', '1432707208', '0', '1432707173');
INSERT INTO `task` VALUES ('958', '44', '28', '56', '179', '48', '增加订单支付提交有效截止时间，接口变更及客户端验证', '0', '0', '0', '5', '2', '10', '', '1432709664', '0', '0', '1432707250');
INSERT INTO `task` VALUES ('959', '54', '24', '51', '168', '44', '故事修改优先级后无法保存，提示title已存在', '0', '0', '0', '3', '2', '10', '', '1436924264', '1436251575', '0', '1432709993');
INSERT INTO `task` VALUES ('960', '47', '15', '24', '124', '62', '【测试】XXJUISegmentControl拓展控件库（iOS6兼容）', '0', '0', '0', '3', '2', '50', '', '0', '1432717441', '0', '1432717436');
INSERT INTO `task` VALUES ('961', '47', '15', '24', '124', '62', '【测试】XXJDatePicker拓展控件库', '0', '0', '0', '3', '3', '50', '', '1432718796', '1432798636', '0', '1432718789');
INSERT INTO `task` VALUES ('962', '47', '15', '24', '124', '62', '【文案】第三迭代计划Excel编写', '0', '0', '0', '3', '2', '50', '', '0', '1432718862', '0', '1432718858');
INSERT INTO `task` VALUES ('963', '50', '30', '60', '232', '64', '关注二维码，插入会员', '0', '0', '0', '3', '8', '50', '', '1432777833', '1433122523', '0', '1432777676');
INSERT INTO `task` VALUES ('964', '47', '15', '24', '124', '62', '【测试】XXJUISegmentedControl拓展控件库测试', '0', '0', '0', '3', '3', '50', '', '0', '1432798677', '0', '1432798673');
INSERT INTO `task` VALUES ('965', '47', '15', '24', '73', '48', 'Cordova配置文件config.xml升级与文档查看', '0', '0', '0', '3', '4', '50', '', '1432801542', '1432801547', '0', '1432801487');
INSERT INTO `task` VALUES ('966', '47', '15', '24', '67', '48', '插件配置plugin.xml文件升级与文档查看', '0', '0', '0', '3', '4', '50', '', '1432801551', '1433382388', '0', '1432801537');
INSERT INTO `task` VALUES ('967', '47', '15', '24', '157', '48', '界面UI模块化代码验证与沟通', '0', '0', '0', '3', '4', '50', '', '1433124141', '1433319152', '0', '1433124137');
INSERT INTO `task` VALUES ('968', '47', '15', '25', '131', '58', '【swift】UI控件展示demo', '0', '0', '0', '3', '4', '50', '', '1433144882', '1433243990', '1433203200', '1433126671');
INSERT INTO `task` VALUES ('969', '47', '15', '25', '131', '58', '【swift】objective-C混合编程demo', '0', '0', '0', '3', '4', '50', '', '1433210096', '1433298402', '1433289600', '1433126877');
INSERT INTO `task` VALUES ('970', '47', '15', '25', '128', '58', '【swift】官方sample code理解', '0', '0', '0', '3', '4', '50', '', '1433298573', '1433503268', '0', '1433127182');
INSERT INTO `task` VALUES ('971', '47', '15', '25', '128', '58', '【swift】SwiftyJSON-master使用', '0', '0', '0', '3', '4', '50', '', '1433747317', '1434106606', '0', '1433127621');
INSERT INTO `task` VALUES ('972', '47', '15', '25', '128', '58', '【swift】Alamofire-Swift Networking网络库', '0', '0', '0', '3', '8', '50', '', '1433323475', '1433815321', '0', '1433127760');
INSERT INTO `task` VALUES ('973', '46', '19', '61', '178', '57', '手势功能预研', '0', '0', '0', '3', '20', '50', '', '0', '1434101374', '0', '1433143933');
INSERT INTO `task` VALUES ('974', '52', '20', '62', '182', '46', '持续集成环境切换', '0', '0', '0', '3', '1', '50', '', '0', '1434099264', '0', '1433144146');
INSERT INTO `task` VALUES ('975', '52', '20', '62', '182', '61', '持续集成环境切换', '0', '0', '0', '3', '8', '50', '', '1433498764', '1433498766', '0', '1433144183');
INSERT INTO `task` VALUES ('976', '52', '20', '62', '182', '55', '持续集成环境切换', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1433144190');
INSERT INTO `task` VALUES ('977', '47', '15', '24', '124', '62', '【测试】图片选择上传', '0', '0', '0', '3', '3', '50', '', '0', '1433147867', '0', '1433147863');
INSERT INTO `task` VALUES ('978', '44', '31', '63', '187', '46', 'czx', '99', '0', '0', '3', '1', '10', '', '0', '0', '0', '1433215481');
INSERT INTO `task` VALUES ('979', '0', '31', '63', '188', '61', '提交订单', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('980', '0', '31', '63', '189', '47', '下单调整（支付、修改手机号）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('981', '0', '31', '63', '189', '61', '微信-支付成功', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('982', '0', '31', '63', '190', '47', '支付完成流程调整', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('983', '0', '31', '63', '191', '61', '微信-订单列表调整', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('984', '0', '31', '63', '191', '61', '微信-提交订单', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('985', '0', '31', '63', '191', '61', '微信-无订单页面', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('986', '0', '31', '63', '192', '61', '微信-订单详情整理', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('987', '0', '31', '63', '193', '47', '我的订单调整（详情、改约）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('988', '0', '31', '63', '193', '47', '订单改约（短信通知）', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('989', '0', '31', '63', '193', '53', '微信-我要改约', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('990', '0', '31', '63', '194', '44', '评价调整（标签、算法调整）', '99', '0', '0', '5', '16', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('991', '0', '31', '63', '194', '45', '运营-买家评论调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('992', '0', '31', '63', '194', '61', '商户-用户评价', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('993', '0', '31', '63', '194', '49', '微信-我要评价', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('994', '0', '31', '63', '194', '49', '微信-评价成功', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('995', '0', '31', '64', '195', '64', '通知内容调整', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('996', '0', '31', '64', '196', '44', '关注分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('997', '0', '31', '64', '196', '44', '项目列表分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('998', '0', '31', '64', '196', '44', '项目详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('999', '0', '31', '64', '196', '44', '商户详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1000', '0', '31', '64', '196', '44', '文章详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1001', '0', '31', '64', '196', '44', '评价分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1002', '0', '31', '64', '197', '64', '服务保障（静态页面）', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1003', '0', '31', '64', '197', '53', '服务保障', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1004', '0', '31', '64', '198', '64', '美天客服调整（提示信息调整）', '99', '0', '0', '5', '1', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1005', '0', '31', '64', '199', '64', '订单消息（新增订单）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1006', '0', '31', '64', '199', '49', '消息弹出窗', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1007', '0', '31', '64', '199', '49', '新订单列表', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1008', '0', '31', '64', '200', '64', '昨日收益调整（算法）', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1009', '0', '31', '64', '200', '45', '商户-昨日收益', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1010', '0', '31', '64', '201', '64', '项目统计调整（算法）', '99', '0', '0', '5', '6', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1011', '0', '31', '64', '201', '53', '运营-门店报表结算调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1012', '0', '31', '64', '202', '47', '订单调整（字段）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1013', '0', '31', '64', '202', '49', '运营-订单管理调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1014', '0', '31', '64', '202', '49', '商户-订单管理', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1015', '0', '31', '64', '203', '53', '项目统计', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1016', '0', '31', '64', '204', '61', 'crm-会员关系调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1017', '0', '31', '64', '205', '53', '系统设置调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1018', '0', '31', '63', '188', '61', '提交订单', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1019', '0', '31', '63', '189', '47', '下单调整（支付、修改手机号）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1020', '0', '31', '63', '189', '61', '微信-支付成功', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1021', '0', '31', '63', '190', '47', '支付完成流程调整', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1022', '0', '31', '63', '191', '61', '微信-订单列表调整', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1023', '0', '31', '63', '191', '61', '微信-提交订单', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1024', '0', '31', '63', '191', '61', '微信-无订单页面', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1025', '0', '31', '63', '192', '61', '微信-订单详情整理', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1026', '0', '31', '63', '193', '47', '我的订单调整（详情、改约）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1027', '0', '31', '63', '193', '47', '订单改约（短信通知）', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1028', '0', '31', '63', '193', '53', '微信-我要改约', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1029', '0', '31', '63', '194', '44', '评价调整（标签、算法调整）', '99', '0', '0', '5', '16', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1030', '0', '31', '63', '194', '45', '运营-买家评论调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1031', '0', '31', '63', '194', '61', '商户-用户评价', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1032', '0', '31', '63', '194', '49', '微信-我要评价', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1033', '0', '31', '63', '194', '49', '微信-评价成功', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1034', '0', '31', '64', '195', '64', '通知内容调整', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1035', '0', '31', '64', '196', '44', '关注分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1036', '0', '31', '64', '196', '44', '项目列表分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1037', '0', '31', '64', '196', '44', '项目详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1038', '0', '31', '64', '196', '44', '商户详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1039', '0', '31', '64', '196', '44', '文章详情分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1040', '0', '31', '64', '196', '44', '评价分享', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1041', '0', '31', '64', '197', '64', '服务保障（静态页面）', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1042', '0', '31', '64', '197', '53', '服务保障', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1043', '0', '31', '64', '198', '64', '美天客服调整（提示信息调整）', '99', '0', '0', '5', '1', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1044', '0', '31', '64', '199', '64', '订单消息（新增订单）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1045', '0', '31', '64', '199', '49', '消息弹出窗', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1046', '0', '31', '64', '199', '49', '新订单列表', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1047', '0', '31', '64', '200', '64', '昨日收益调整（算法）', '99', '0', '0', '5', '4', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1048', '0', '31', '64', '200', '45', '商户-昨日收益', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1049', '0', '31', '64', '201', '64', '项目统计调整（算法）', '99', '0', '0', '5', '6', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1050', '0', '31', '64', '201', '53', '运营-门店报表结算调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1051', '0', '31', '64', '202', '47', '订单调整（字段）', '99', '0', '0', '5', '8', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1052', '0', '31', '64', '202', '49', '运营-订单管理调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1053', '0', '31', '64', '202', '49', '商户-订单管理', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1054', '0', '31', '64', '203', '53', '项目统计', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1055', '0', '31', '64', '204', '61', 'crm-会员关系调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1056', '0', '31', '64', '205', '53', '系统设置调整', '99', '0', '0', '5', '2', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1057', '0', '31', '63', '224', '47', '菜单调整', '0', '0', '0', '5', '2', '50', '', '1433232574', '1433299350', '0', '1');
INSERT INTO `task` VALUES ('1058', '0', '31', '63', '224', '45', '微信-菜单调整', '0', '0', '0', '5', '2', '50', '', '1433248539', '1433310683', '0', '1');
INSERT INTO `task` VALUES ('1059', '0', '31', '63', '225', '63', '绑定调整', '0', '0', '0', '5', '4', '50', '', '1433310181', '1433398031', '0', '1');
INSERT INTO `task` VALUES ('1060', '0', '31', '63', '225', '45', '微信-账号绑定', '0', '0', '0', '5', '8', '50', '', '1433310706', '1433382480', '0', '1');
INSERT INTO `task` VALUES ('1061', '0', '31', '63', '226', '47', '推送信息', '0', '0', '0', '5', '1', '50', '', '1433232557', '1433299345', '0', '1');
INSERT INTO `task` VALUES ('1062', '0', '31', '63', '226', '47', '推送软文', '99', '0', '0', '5', '1', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1063', '0', '31', '63', '226', '45', '微信-推送信息', '0', '0', '0', '5', '8', '50', '', '1433915484', '1434087978', '0', '1');
INSERT INTO `task` VALUES ('1064', '0', '31', '63', '227', '63', '文章列表（每日一荐、Nancy讲座）', '0', '0', '0', '5', '2', '50', '', '1433299443', '1433483501', '0', '1');
INSERT INTO `task` VALUES ('1065', '0', '31', '63', '227', '63', '文章详情（每日一荐、Nancy讲座）', '0', '0', '0', '5', '2', '50', '', '1433299445', '1433483500', '0', '1');
INSERT INTO `task` VALUES ('1066', '0', '31', '63', '227', '63', '增、删、改', '0', '0', '0', '5', '12', '50', '', '1433299430', '1433383020', '0', '1');
INSERT INTO `task` VALUES ('1067', '0', '31', '63', '227', '63', '权限调整', '0', '0', '0', '5', '4', '50', '', '1433232676', '1433303967', '0', '1');
INSERT INTO `task` VALUES ('1068', '0', '31', '63', '227', '63', '查询（列表、详情）', '0', '0', '0', '5', '12', '50', '', '1433299456', '1433483498', '0', '1');
INSERT INTO `task` VALUES ('1069', '0', '31', '63', '227', '63', '统计', '99', '0', '0', '5', '0', '10', '', '0', '0', '0', '1');
INSERT INTO `task` VALUES ('1070', '0', '31', '63', '227', '53', '运营-文章列表-列表', '0', '0', '0', '5', '8', '50', '', '1433742823', '1433742838', '0', '1');
INSERT INTO `task` VALUES ('1071', '0', '31', '63', '227', '53', '运营-文章列表-新增编辑', '0', '0', '0', '5', '16', '50', '', '1433310632', '1433493537', '0', '1');
INSERT INTO `task` VALUES ('1072', '44', '31', '64', '227', '53', '运营-文章列表-详情预览', '0', '0', '0', '5', '2', '50', '', '1434001920', '1434178741', '0', '1');
INSERT INTO `task` VALUES ('1073', '0', '31', '63', '227', '49', '微信-日志列表', '0', '0', '0', '5', '8', '50', '', '1433310601', '1433821663', '0', '1');
INSERT INTO `task` VALUES ('1074', '0', '31', '63', '227', '49', '微信-日志详情', '0', '0', '0', '5', '8', '50', '', '1433399283', '1433484079', '0', '1');
INSERT INTO `task` VALUES ('1075', '44', '31', '63', '228', '52', '项目列表调整(增加字段)', '0', '0', '0', '4', '4', '50', '', '1433232247', '1433396887', '0', '1');
INSERT INTO `task` VALUES ('1076', '44', '31', '63', '228', '63', '广告（嵌入项目列表）', '0', '0', '0', '4', '4', '50', '', '1433484077', '1433484141', '0', '1');
INSERT INTO `task` VALUES ('1077', '44', '31', '63', '228', '45', '微信-项目列表', '0', '0', '0', '4', '8', '50', 'ui还没出', '1433382485', '1433857179', '0', '1');
INSERT INTO `task` VALUES ('1078', '44', '31', '63', '229', '52', '项目详情调整（增加适用人群、操作步骤等）', '0', '0', '0', '4', '8', '50', '', '1433232253', '1433396886', '0', '1');
INSERT INTO `task` VALUES ('1079', '44', '31', '63', '229', '52', '项目列表调整（增加字段、预览）', '0', '0', '0', '4', '8', '50', '', '1433232235', '1433396882', '0', '1');
INSERT INTO `task` VALUES ('1080', '44', '31', '63', '229', '61', '运营-增加字段', '0', '0', '0', '4', '12', '50', '', '1433417839', '1433498567', '0', '1');
INSERT INTO `task` VALUES ('1081', '44', '31', '63', '229', '61', '运营-详情预览', '0', '0', '0', '4', '2', '50', '', '1433417837', '1433985571', '0', '1');
INSERT INTO `task` VALUES ('1082', '44', '31', '63', '229', '45', '微信-项目详情', '0', '0', '0', '4', '8', '50', '', '1433382495', '1433857177', '0', '1');
INSERT INTO `task` VALUES ('1083', '44', '31', '63', '230', '52', '商户详情调整（增加这里的环境等）', '0', '0', '0', '4', '4', '50', '', '1433401596', '1433483562', '0', '1');
INSERT INTO `task` VALUES ('1084', '44', '31', '63', '230', '52', '商家列表调整（预览）', '0', '0', '0', '4', '1', '50', '', '1433396900', '1433396903', '0', '1');
INSERT INTO `task` VALUES ('1085', '44', '31', '64', '230', '53', '运营-详情预览', '0', '0', '0', '4', '4', '50', '', '1434001922', '1434178740', '0', '1');
INSERT INTO `task` VALUES ('1086', '44', '31', '63', '230', '45', '微信-商户详情', '0', '0', '0', '4', '8', '50', '', '1433396854', '1433857176', '0', '1');
INSERT INTO `task` VALUES ('1087', '44', '31', '63', '231', '52', '选择项目调整（按天和时段分组等）', '0', '0', '0', '4', '1', '50', '', '1433401593', '1433483564', '0', '1');
INSERT INTO `task` VALUES ('1088', '44', '31', '63', '231', '52', '合同列表调整（排班约束）', '0', '0', '0', '4', '8', '50', '', '1433401597', '1433500246', '0', '1');
INSERT INTO `task` VALUES ('1089', '44', '31', '63', '231', '61', '运营-合同列表-场次排期', '0', '0', '0', '4', '2', '50', '', '1433232527', '1433319976', '0', '1');
INSERT INTO `task` VALUES ('1090', '44', '31', '63', '231', '49', '商户-恢复第一版设计', '0', '0', '0', '4', '8', '50', '', '1433483528', '1433825286', '0', '1');
INSERT INTO `task` VALUES ('1091', '44', '31', '63', '231', '45', '微信-选择时间', '0', '0', '0', '4', '8', '50', '', '1433483725', '1433857173', '0', '1');
INSERT INTO `task` VALUES ('1092', '44', '31', '63', '188', '61', '提交订单', '0', '0', '0', '4', '8', '50', '', '1433232521', '1433417834', '0', '1');
INSERT INTO `task` VALUES ('1093', '44', '31', '63', '189', '47', '下单调整（支付、修改手机号）', '0', '0', '0', '4', '8', '50', '', '1433232581', '1433315874', '0', '1');
INSERT INTO `task` VALUES ('1094', '44', '31', '63', '189', '61', '微信-支付成功', '0', '0', '0', '4', '8', '50', '', '1433232518', '1433417827', '0', '1');
INSERT INTO `task` VALUES ('1095', '44', '31', '63', '190', '47', '支付完成流程调整', '0', '0', '0', '4', '4', '50', '', '1433397016', '1433405575', '0', '1');
INSERT INTO `task` VALUES ('1096', '44', '31', '63', '191', '61', '微信-订单列表调整', '0', '0', '0', '3', '8', '50', '', '1433848809', '1434022527', '0', '1');
INSERT INTO `task` VALUES ('1097', '44', '31', '63', '191', '61', '微信-提交订单', '0', '0', '0', '3', '8', '50', '', '1433829008', '1433845870', '0', '1');
INSERT INTO `task` VALUES ('1098', '44', '31', '63', '191', '61', '微信-无订单页面', '0', '0', '0', '3', '8', '50', '', '1433845887', '1433848810', '0', '1');
INSERT INTO `task` VALUES ('1099', '44', '31', '63', '192', '61', '微信-订单详情整理', '0', '0', '0', '3', '8', '50', '', '1433845891', '1433857264', '0', '1');
INSERT INTO `task` VALUES ('1100', '44', '31', '63', '193', '47', '我的订单调整（详情、改约）', '0', '0', '0', '2', '8', '50', '', '1433315907', '1433727502', '0', '1');
INSERT INTO `task` VALUES ('1101', '44', '31', '63', '193', '47', '订单改约（短信通知）', '0', '0', '0', '2', '4', '50', '', '1433315889', '1433405095', '0', '1');
INSERT INTO `task` VALUES ('1102', '44', '31', '63', '193', '53', '微信-我要改约', '0', '0', '0', '2', '8', '50', '', '1433742842', '1433856489', '0', '1');
INSERT INTO `task` VALUES ('1103', '44', '31', '63', '194', '44', '评价调整（标签、算法调整）', '0', '0', '0', '2', '24', '50', '', '1433297027', '1433319188', '0', '1');
INSERT INTO `task` VALUES ('1104', '44', '31', '63', '194', '45', '运营-买家评论调整', '0', '0', '0', '2', '2', '50', '', '1433232399', '1433310686', '0', '1');
INSERT INTO `task` VALUES ('1105', '44', '31', '63', '194', '61', '商户-用户评价', '0', '0', '0', '1', '2', '50', '', '1433410247', '1434022596', '0', '1');
INSERT INTO `task` VALUES ('1106', '44', '31', '63', '194', '49', '微信-我要评价', '0', '0', '0', '1', '8', '50', '', '1433821681', '1434016469', '0', '1');
INSERT INTO `task` VALUES ('1107', '44', '31', '63', '194', '49', '微信-评价成功', '0', '0', '0', '1', '8', '50', '', '1433821682', '1434022502', '0', '1');
INSERT INTO `task` VALUES ('1108', '0', '31', '64', '195', '64', '通知内容调整', '0', '0', '0', '5', '4', '50', '', '1433313586', '1433385227', '0', '1');
INSERT INTO `task` VALUES ('1109', '0', '31', '64', '196', '44', '关注分享', '0', '0', '0', '5', '4', '50', '', '1433319225', '1433483639', '0', '1');
INSERT INTO `task` VALUES ('1110', '0', '31', '64', '196', '44', '项目列表分享', '0', '0', '0', '5', '4', '50', '', '1433319224', '1433475551', '0', '1');
INSERT INTO `task` VALUES ('1111', '0', '31', '64', '196', '44', '项目详情分享', '0', '0', '0', '5', '4', '50', '', '1433319223', '1433475552', '0', '1');
INSERT INTO `task` VALUES ('1112', '0', '31', '64', '196', '44', '商户详情分享', '0', '0', '0', '5', '4', '50', '', '1433319221', '1433483637', '0', '1');
INSERT INTO `task` VALUES ('1113', '0', '31', '64', '196', '44', '文章详情分享', '0', '0', '0', '5', '4', '50', '', '1433319224', '1433483636', '0', '1');
INSERT INTO `task` VALUES ('1114', '0', '31', '64', '196', '44', '评价分享', '0', '0', '0', '5', '4', '50', '', '1433319226', '1433483635', '0', '1');
INSERT INTO `task` VALUES ('1115', '0', '31', '64', '197', '64', '服务保障（静态页面）', '0', '0', '0', '5', '2', '50', '', '1433313583', '1433397302', '0', '1');
INSERT INTO `task` VALUES ('1116', '0', '31', '64', '197', '53', '服务保障', '0', '0', '0', '5', '8', '50', '', '1433923739', '1434001916', '0', '1');
INSERT INTO `task` VALUES ('1117', '44', '31', '64', '198', '64', '美天客服调整（提示信息调整）', '0', '0', '0', '4', '1', '50', '', '1433313585', '1433382534', '0', '1');
INSERT INTO `task` VALUES ('1118', '44', '31', '64', '199', '64', '订单消息（新增订单）', '0', '0', '0', '3', '8', '50', '', '1433226651', '1433385301', '0', '1');
INSERT INTO `task` VALUES ('1119', '44', '31', '64', '199', '49', '消息弹出窗', '0', '0', '0', '3', '4', '50', '', '1434001389', '1434102239', '0', '1');
INSERT INTO `task` VALUES ('1120', '44', '31', '64', '199', '49', '新订单列表', '0', '0', '0', '3', '4', '50', '', '1434001393', '1434102238', '0', '1');
INSERT INTO `task` VALUES ('1121', '44', '31', '64', '200', '64', '昨日收益调整（算法）', '0', '0', '0', '3', '4', '50', '', '1433226645', '1433382536', '0', '1');
INSERT INTO `task` VALUES ('1122', '44', '31', '64', '200', '45', '商户-昨日收益', '0', '0', '0', '3', '2', '50', '', '1433232411', '1433382504', '0', '1');
INSERT INTO `task` VALUES ('1123', '44', '31', '64', '201', '64', '项目统计调整（算法）', '0', '0', '0', '3', '6', '50', '', '1433232304', '1433396946', '0', '1');
INSERT INTO `task` VALUES ('1124', '44', '31', '64', '201', '53', '运营-门店报表结算调整', '0', '0', '0', '3', '2', '50', '', '1433908612', '1433923596', '0', '1');
INSERT INTO `task` VALUES ('1125', '44', '31', '64', '202', '47', '订单调整（字段）', '0', '0', '0', '2', '8', '50', '', '1433413265', '1433482624', '0', '1');
INSERT INTO `task` VALUES ('1126', '44', '31', '64', '202', '49', '运营-订单管理调整', '0', '0', '0', '2', '2', '50', '', '1433928243', '1433928249', '0', '1');
INSERT INTO `task` VALUES ('1127', '44', '31', '64', '202', '49', '商户-订单管理', '0', '0', '0', '2', '2', '50', '', '1434001407', '1434078109', '0', '1');
INSERT INTO `task` VALUES ('1128', '44', '31', '64', '203', '53', '项目统计', '0', '0', '0', '1', '2', '50', '', '1433908609', '1433922679', '0', '1');
INSERT INTO `task` VALUES ('1129', '44', '31', '64', '204', '61', 'crm-会员关系调整', '0', '0', '0', '1', '2', '50', '', '1433915471', '1433916277', '0', '1');
INSERT INTO `task` VALUES ('1130', '44', '31', '64', '205', '53', '系统设置调整', '0', '0', '0', '1', '2', '50', '', '1433908610', '1433923734', '0', '1');
INSERT INTO `task` VALUES ('1131', '47', '15', '24', '66', '48', 'Mac Server配置与验证，Bot创建后证书问题跟踪及Pod支持。证书需要帐号那边做相应的处理。pod未调试成功', '0', '0', '0', '3', '4', '50', '', '1433290878', '1433290884', '0', '1433290723');
INSERT INTO `task` VALUES ('1132', '47', '15', '24', '66', '48', 'Mac Server部署配置，选择Xcode问题及处理，下载最新版本xcode_6.3.2.dmg并上传到部门FTP', '0', '0', '0', '3', '2', '50', '', '1433290850', '1433290854', '0', '1433290779');
INSERT INTO `task` VALUES ('1133', '47', '15', '24', '125', '48', '整理修改建议及讨论沟通内容，并提交到SVN中。', '0', '0', '0', '3', '2', '50', '', '1433290834', '1433290837', '0', '1433290811');
INSERT INTO `task` VALUES ('1134', '47', '15', '24', '157', '48', 'UI共通化沟通讨论', '0', '0', '0', '3', '2', '50', '', '1433319142', '1433319146', '0', '1433319139');
INSERT INTO `task` VALUES ('1135', '47', '15', '24', '66', '48', 'appium文档查看', '0', '0', '0', '3', '3', '50', '', '1433382402', '1433382408', '0', '1433322580');
INSERT INTO `task` VALUES ('1136', '53', '22', '42', '117', '48', '厦门支付问题相关的解答与配合', '0', '0', '0', '3', '4', '50', '', '1433382502', '1435644595', '0', '1433382498');
INSERT INTO `task` VALUES ('1137', '47', '15', '24', '124', '62', '【优化】命名优化、参数简化、文件目录变迁', '0', '1', '0', '3', '5', '50', '', '0', '1433384550', '0', '1433384544');
INSERT INTO `task` VALUES ('1138', '47', '15', '25', '124', '62', '【拓展控件库】自增长UITableViewCell拓展(左右Label计算高度)', '99', '0', '0', '3', '6', '20', '', '1433926661', '0', '0', '1433384630');
INSERT INTO `task` VALUES ('1139', '47', '15', '25', '124', '62', '【测试】多个label的自增长UITableViewCell测试', '99', '0', '0', '3', '4', '10', '', '0', '0', '0', '1433384694');
INSERT INTO `task` VALUES ('1140', '47', '15', '25', '124', '62', '【拓展控件库】图片选择器支持选择全图', '0', '0', '0', '3', '3', '50', '', '1433828751', '1433831361', '0', '1433384734');
INSERT INTO `task` VALUES ('1141', '47', '15', '25', '125', '62', '【业务控件库】UITableViewCell 样式扩展', '0', '0', '0', '3', '8', '50', '', '1434095289', '1434455662', '0', '1433384771');
INSERT INTO `task` VALUES ('1142', '47', '15', '25', '125', '62', '【业务控件库】UIButton、UIBarButton样式拓展，丰富快速创建功能', '0', '0', '0', '3', '6', '50', '', '1433992480', '1434441306', '0', '1433384827');
INSERT INTO `task` VALUES ('1143', '47', '15', '25', '124', '58', '【拓展控件库】多级联动PickerMenu修改，支持对象类型', '0', '0', '0', '3', '4', '50', '', '1433406400', '1433503263', '0', '1433406381');
INSERT INTO `task` VALUES ('1144', '50', '29', '59', '234', '59', '【iOS】基础信息模块以及客户信息模块改造', '0', '0', '0', '3', '8', '50', '', '1433470232', '1433470256', '0', '1433469995');
INSERT INTO `task` VALUES ('1145', '50', '29', '59', '234', '59', '【iOS】店务操作模块改造', '0', '0', '0', '3', '8', '50', '', '1433470230', '1433741868', '0', '1433470017');
INSERT INTO `task` VALUES ('1146', '50', '29', '59', '234', '59', '【iOS】店务管理模块改造', '0', '0', '0', '3', '8', '50', '', '1433741874', '1434001135', '0', '1433470044');
INSERT INTO `task` VALUES ('1147', '50', '29', '59', '234', '59', '【iOS】提升生意模块改造', '0', '0', '0', '3', '8', '50', '', '1433741872', '1434001098', '0', '1433470094');
INSERT INTO `task` VALUES ('1148', '50', '29', '59', '234', '59', '【iOS】店面设置模块改造', '0', '0', '0', '3', '8', '50', '', '1433470226', '1433741868', '0', '1433470118');
INSERT INTO `task` VALUES ('1149', '47', '15', '25', '157', '48', '分析评估react native与cordova的方案', '0', '0', '0', '3', '4', '50', '', '1433494405', '1433494409', '0', '1433494394');
INSERT INTO `task` VALUES ('1150', '52', '20', '62', '161', '48', 'appium平台使用与iOS平台问题配合QA解决', '0', '0', '0', '3', '8', '50', '', '1433494474', '1433494478', '0', '1433494471');
INSERT INTO `task` VALUES ('1151', '47', '15', '25', '235', '48', '整理平台化改造的内容发散', '0', '0', '0', '3', '8', '50', '', '1433730059', '1434099263', '0', '1433730056');
INSERT INTO `task` VALUES ('1152', '50', '29', '59', '234', '54', '【Android】提升生意', '0', '0', '0', '3', '8', '50', '', '1434080047', '1434504869', '0', '1433732309');
INSERT INTO `task` VALUES ('1153', '50', '29', '59', '234', '54', '【Android】店务管理Id改造', '0', '0', '0', '3', '8', '50', '', '1434079381', '1434080035', '0', '1433732490');
INSERT INTO `task` VALUES ('1154', '50', '29', '59', '234', '54', '【Android】店务操作ID改造', '0', '0', '0', '3', '8', '50', '', '1434079348', '1434079370', '0', '1433732631');
INSERT INTO `task` VALUES ('1155', '50', '29', '59', '234', '54', '【Android】店面设置ID改造', '0', '0', '0', '3', '8', '50', '', '0', '1434504865', '0', '1433732675');
INSERT INTO `task` VALUES ('1156', '50', '29', '59', '234', '54', '【Android】其他ID改造', '0', '0', '0', '3', '8', '50', '', '1434504862', '1434504867', '0', '1433732696');
INSERT INTO `task` VALUES ('1157', '47', '15', '26', '134', '58', '【swift】准备分享', '0', '0', '0', '3', '16', '50', '', '1434331667', '1434678627', '0', '1433755129');
INSERT INTO `task` VALUES ('1158', '47', '15', '25', '133', '58', '【swift】美天app代码试改造：项目详情', '0', '0', '0', '3', '8', '50', '', '1433900039', '1434075715', '0', '1433758311');
INSERT INTO `task` VALUES ('1159', '47', '15', '25', '133', '58', '【swift】美天app代码试改造：网络通讯与数据解析', '0', '0', '0', '3', '8', '50', '', '1433815326', '1434106652', '0', '1433815208');
INSERT INTO `task` VALUES ('1160', '50', '29', '58', '185', '44', '根据二次评审会议中提到的几点：1 加入字段白名单 2 混淆后的ID加入前缀', '0', '0', '0', '5', '16', '10', '', '1436786503', '1436790035', '1433894400', '1433828788');
INSERT INTO `task` VALUES ('1161', '47', '15', '26', '134', '58', '【swift】iOS内部demo分享', '0', '0', '0', '3', '2', '50', '', '1434522047', '1434678630', '0', '1434097532');
INSERT INTO `task` VALUES ('1162', '47', '15', '25', '71', '48', '安卓端现在有代码环境配置与编译问题解决', '0', '0', '0', '3', '4', '50', '', '1434099226', '1434099257', '0', '1434099046');
INSERT INTO `task` VALUES ('1163', '47', '15', '25', '71', '48', '安卓端3.x升级到4.0.2版本问题定位及解决思路提供', '0', '0', '0', '3', '4', '50', '', '1434099184', '1434099214', '0', '1434099089');
INSERT INTO `task` VALUES ('1164', '47', '15', '25', '235', '48', '业务框架图表及用例图等', '0', '0', '0', '3', '6', '50', '', '1434099201', '1434099211', '0', '1434099112');
INSERT INTO `task` VALUES ('1165', '47', '15', '25', '235', '48', '开会讨论平台化内容', '0', '0', '0', '3', '12', '50', '', '1434099230', '1434099232', '0', '1434099131');
INSERT INTO `task` VALUES ('1166', '47', '15', '25', '235', '48', '平台化文档编写与内容完善', '0', '0', '0', '3', '4', '50', '', '1434099192', '1434099198', '0', '1434099149');
INSERT INTO `task` VALUES ('1167', '47', '15', '25', '70', '48', 'cordova升级到5.1.1了解升级内容变更', '0', '0', '0', '3', '4', '50', '', '1434099438', '1434099444', '0', '1434099405');
INSERT INTO `task` VALUES ('1168', '47', '15', '25', '73', '48', 'Nodejs使用及部署问题交流研究', '0', '0', '0', '3', '8', '50', '', '1434099434', '1434099521', '0', '1434099431');
INSERT INTO `task` VALUES ('1169', '47', '15', '25', '73', '48', 'appium配合QA验证与录制测试用例脚本，现已完成模拟器环境', '0', '0', '0', '3', '16', '50', '', '1434099503', '1434099529', '0', '1434099498');
INSERT INTO `task` VALUES ('1170', '47', '15', '25', '157', '48', '看板维护与跟踪', '0', '0', '0', '3', '3', '50', '', '1434099607', '1434099616', '0', '1434099574');
INSERT INTO `task` VALUES ('1171', '47', '15', '25', '157', '48', '第五迭代计划排写与人员沟通确认', '0', '0', '0', '3', '2', '50', '', '1434099609', '1434099618', '0', '1434099600');
INSERT INTO `task` VALUES ('1172', '47', '15', '26', '71', '48', '跟踪与确认人员进度，沟通碰到的问题及解决方案', '0', '0', '0', '3', '8', '50', '', '1435038449', '1435149606', '0', '1434100493');
INSERT INTO `task` VALUES ('1173', '47', '15', '26', '73', '48', '跳转插件前端代码整合与优化梳理', '0', '0', '0', '3', '4', '20', '', '1435038351', '0', '0', '1434100521');
INSERT INTO `task` VALUES ('1174', '47', '15', '26', '72', '48', '跟踪前端进度与问题确认', '0', '0', '0', '3', '4', '50', '', '1434338133', '1435565032', '0', '1434100553');
INSERT INTO `task` VALUES ('1175', '47', '15', '26', '71', '56', '升级到4.0.2版本现有插件的功能实现与代码改造，跳转插件问题修复', '0', '0', '0', '3', '16', '50', '', '1434101265', '1434711407', '0', '1434100706');
INSERT INTO `task` VALUES ('1176', '47', '15', '25', '71', '56', '现有插件代码的学习及环境部署', '0', '0', '0', '3', '8', '50', '', '1434100948', '1434100954', '0', '1434100746');
INSERT INTO `task` VALUES ('1177', '47', '15', '25', '71', '56', 'Cordova环境配置与文档学习', '0', '0', '0', '3', '8', '50', '', '1434100946', '1434100952', '0', '1434100809');
INSERT INTO `task` VALUES ('1178', '47', '15', '25', '71', '56', '升级到4.0.2版本现有插件的功能实现与代码改造', '0', '0', '0', '3', '8', '50', '', '1434100992', '1434100994', '0', '1434100982');
INSERT INTO `task` VALUES ('1179', '47', '15', '26', '71', '56', '请求组件改造，集成现有共通化模块', '0', '0', '0', '5', '16', '50', '', '1435050248', '1435717068', '0', '1434101088');
INSERT INTO `task` VALUES ('1180', '47', '15', '26', '71', '56', '插件开发机制学习', '0', '0', '0', '3', '16', '50', '', '1434101268', '1434711411', '0', '1434101106');
INSERT INTO `task` VALUES ('1181', '47', '15', '26', '71', '56', '跳转插件升级到4.x可用', '99', '0', '0', '3', '8', '10', '', '0', '0', '0', '1434101185');
INSERT INTO `task` VALUES ('1182', '47', '15', '26', '71', '56', 'H5模块自动下载检查更新功能实现', '0', '0', '0', '5', '16', '50', '', '1435050240', '1435717066', '0', '1434101219');
INSERT INTO `task` VALUES ('1183', '47', '15', '26', '72', '48', 'H5模块打包内容及集成方式验证', '0', '0', '0', '3', '8', '50', '', '1436151344', '1436151348', '0', '1434101323');
INSERT INTO `task` VALUES ('1184', '47', '15', '26', '71', '56', '集成到导购项目方式处理', '0', '0', '0', '4', '16', '50', '', '0', '1435717072', '0', '1434101357');
INSERT INTO `task` VALUES ('1185', '47', '15', '26', '157', '56', '编写集成手册与构建规则等文档内容', '0', '0', '0', '2', '8', '20', '', '1435717079', '0', '0', '1434101383');
INSERT INTO `task` VALUES ('1186', '50', '29', '59', '234', '61', '【Web】smanage ID改造', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1434102369');
INSERT INTO `task` VALUES ('1187', '50', '29', '59', '234', '45', '【Web】smanage ID改造', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1434102410');
INSERT INTO `task` VALUES ('1188', '50', '29', '59', '234', '53', '【Web】b-admin ID改造', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1434102477');
INSERT INTO `task` VALUES ('1189', '50', '29', '59', '234', '49', '【Web】b-admin ID改造', '0', '0', '0', '1', '8', '10', '', '0', '0', '0', '1434102500');
INSERT INTO `task` VALUES ('1190', '50', '29', '59', '234', '45', '【Web】cwebapp ID改造', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1434102525');
INSERT INTO `task` VALUES ('1191', '50', '29', '59', '234', '45', '【Web】cwechat ID改造', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1434102548');
INSERT INTO `task` VALUES ('1192', '50', '29', '59', '234', '53', '【Web】tools ID改造', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1434102564');
INSERT INTO `task` VALUES ('1193', '50', '29', '59', '234', '49', '【Web】tools ID改造', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1434102579');
INSERT INTO `task` VALUES ('1194', '50', '29', '59', '234', '61', '【Web】webapp ID改造', '0', '0', '0', '3', '8', '10', '', '0', '0', '0', '1434102593');
INSERT INTO `task` VALUES ('1195', '50', '29', '59', '234', '49', '【Web】m\\www ID改造', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1434102610');
INSERT INTO `task` VALUES ('1196', '47', '15', '26', '69', '48', '前端人员工作计划与跟踪核实', '0', '0', '0', '3', '1', '50', '', '1434338086', '1434338093', '0', '1434103234');
INSERT INTO `task` VALUES ('1197', '47', '15', '26', '73', '48', '请求插件前端代码整合与优化梳理', '0', '0', '0', '3', '4', '50', '', '1434338121', '1435029820', '0', '1434103311');
INSERT INTO `task` VALUES ('1198', '47', '15', '26', '73', '48', 'iOS插件升级机制验证与研究', '0', '0', '0', '3', '8', '50', '', '1434103341', '1434509823', '0', '1434103336');
INSERT INTO `task` VALUES ('1199', '47', '15', '26', '235', '48', '平台化文档整理2015-6-16', '0', '0', '0', '3', '4', '50', '', '1434414544', '1434437481', '0', '1434103425');
INSERT INTO `task` VALUES ('1200', '47', '15', '26', '235', '48', '平台化会议讨论2015-06-15 18:00-20:00', '0', '0', '0', '3', '2', '50', '', '1434369130', '1434369159', '0', '1434103436');
INSERT INTO `task` VALUES ('1201', '47', '15', '26', '235', '48', '平台化会议讨论2015-6-17', '0', '0', '0', '3', '4', '50', '', '1435032615', '1435032650', '0', '1434103440');
INSERT INTO `task` VALUES ('1202', '47', '15', '26', '235', '48', '平台化会议讨论2015-06-29 19:00-20:00财务模块评审', '0', '0', '0', '3', '1', '50', '', '1435628296', '1435628332', '0', '1434103444');
INSERT INTO `task` VALUES ('1203', '47', '15', '26', '235', '48', '平台化文档整理2015-6-17', '0', '0', '0', '3', '2', '50', '', '1434509832', '1434509852', '0', '1434103459');
INSERT INTO `task` VALUES ('1204', '47', '15', '26', '235', '48', '平台化文档整理2015-6-19 业务结构图梳理', '0', '0', '0', '3', '4', '50', '', '1435032654', '1435032698', '0', '1434103464');
INSERT INTO `task` VALUES ('1205', '47', '15', '26', '73', '48', '【iOS】H5模块管理机制优化', '0', '0', '0', '3', '16', '20', '', '1436151357', '0', '0', '1434103523');
INSERT INTO `task` VALUES ('1206', '47', '15', '26', '157', '48', '共通化平台会议沟通讨论2015-6-29', '0', '0', '0', '3', '2', '50', '', '1435543180', '1435579345', '0', '1434103582');
INSERT INTO `task` VALUES ('1207', '47', '15', '26', '73', '48', '【iOS】现有项目集成方案优化与分享', '0', '0', '0', '3', '8', '20', '', '1435038461', '0', '0', '1434103606');
INSERT INTO `task` VALUES ('1208', '47', '15', '26', '157', '48', '部门开发周会', '0', '0', '0', '3', '1', '50', '', '1434356143', '1434356147', '0', '1434356139');
INSERT INTO `task` VALUES ('1209', '47', '15', '26', '157', '48', '开发日志与周报填写', '0', '0', '0', '3', '1', '50', '', '1434356166', '1434356169', '0', '1434356163');
INSERT INTO `task` VALUES ('1210', '47', '15', '26', '66', '48', 'appium远程指导与配置验证，解决验证录制脚本界面问题', '0', '0', '0', '3', '2', '50', '', '1435029827', '1435038339', '0', '1434369196');
INSERT INTO `task` VALUES ('1211', '47', '15', '26', '71', '48', 'CrossWalk集成问题跟踪与解决，编译环境需要使用命令方式', '0', '0', '0', '3', '3', '50', '', '1434369274', '1434369277', '0', '1434369270');
INSERT INTO `task` VALUES ('1212', '50', '34', '68', '237', '52', '【Server】店面设置接口增加是否启用赠送金', '0', '0', '0', '3', '2', '50', '', '1434529030', '1434529036', '0', '1434445229');
INSERT INTO `task` VALUES ('1213', '50', '34', '68', '237', '59', '【iOS】添加‘赠送金设置’', '0', '0', '0', '3', '2', '50', '', '1434607997', '1434707441', '1434672000', '1434445301');
INSERT INTO `task` VALUES ('1214', '50', '34', '68', '237', '54', '【Android】添加‘赠送金设置’', '0', '0', '0', '3', '2', '50', '', '1434693509', '1434706159', '1434672000', '1434445340');
INSERT INTO `task` VALUES ('1215', '50', '34', '68', '238', '52', '【Server】会员详情接口增加赠送金', '0', '0', '0', '3', '2', '50', '', '1434529046', '1434529049', '0', '1434445392');
INSERT INTO `task` VALUES ('1216', '50', '34', '68', '238', '59', '【iOS】会员信息赠送金改造', '0', '0', '0', '3', '2', '50', '', '1435017122', '1435024565', '1435017600', '1434445893');
INSERT INTO `task` VALUES ('1217', '50', '34', '68', '238', '54', '【Android】会员信息赠送金改造', '0', '0', '0', '3', '2', '50', '', '1435025500', '1435061586', '1435017600', '1434445929');
INSERT INTO `task` VALUES ('1218', '50', '34', '68', '239', '52', '【Server】\n开卡接口增加赠送金；\n充值借口增加赠送金；\n转卡/升级接口增加赠送金', '0', '0', '0', '3', '8', '50', '', '1434529025', '1435024012', '1434672000', '1434446020');
INSERT INTO `task` VALUES ('1219', '50', '34', '68', '239', '59', '【iOS】开卡接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435017140', '1435111573', '1435104000', '1434446360');
INSERT INTO `task` VALUES ('1220', '50', '34', '68', '239', '54', '【Android】开卡接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435025496', '1435061585', '1435017600', '1434446473');
INSERT INTO `task` VALUES ('1221', '50', '34', '68', '239', '59', '【iOS】充值接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435017135', '1435110067', '1435104000', '1434446577');
INSERT INTO `task` VALUES ('1222', '50', '34', '68', '239', '54', '【Android】充值接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435108736', '1435142258', '1435104000', '1434446715');
INSERT INTO `task` VALUES ('1223', '50', '34', '68', '239', '59', '【iOS】转卡/升级接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435017132', '1435030907', '1435104000', '1434446754');
INSERT INTO `task` VALUES ('1224', '50', '34', '68', '239', '54', '【Android】转卡/升级接口增加赠送金', '0', '0', '0', '3', '4', '50', '', '1435108730', '1435142256', '1435104000', '1434446798');
INSERT INTO `task` VALUES ('1225', '50', '34', '68', '241', '52', '【Server】\n门店消费记录-交易增加赠送金信息\n门店消费记录-开卡增加赠送金信息\n门店消费记录-充值增加赠送金信息\n门店消费记录-抓卡/升级增加赠送金信息\n营业记录增加手工单号搜索功能', '0', '0', '0', '3', '10', '50', '', '1435109177', '1435194948', '1435104000', '1434447924');
INSERT INTO `task` VALUES ('1226', '47', '15', '26', '121', '62', '【基础控件库】UIDevice类方法、实例方法拓展', '0', '0', '0', '3', '2', '50', '', '0', '1434455765', '0', '1434455745');
INSERT INTO `task` VALUES ('1227', '47', '15', '26', '121', '62', '【基础控件库】UIImageView类方法、实例方法拓展', '0', '0', '0', '3', '2', '50', '', '0', '1434455766', '0', '1434455763');
INSERT INTO `task` VALUES ('1228', '50', '34', '68', '241', '49', '【Webapp】营业记录详情', '0', '0', '0', '3', '4', '50', '', '1435297654', '1435497943', '1435276800', '1434457222');
INSERT INTO `task` VALUES ('1229', '50', '34', '68', '241', '49', '【Webapp】手工单号搜索', '0', '0', '0', '3', '2', '50', '', '1435297653', '1435303191', '1435276800', '1434457284');
INSERT INTO `task` VALUES ('1230', '50', '34', '68', '240', '52', '【Server】\n已选用卡增加赠送金；\n结账接口增加赠送金。', '0', '0', '0', '3', '10', '50', '', '1435027579', '1435050425', '1435017600', '1434457429');
INSERT INTO `task` VALUES ('1231', '50', '34', '68', '240', '52', '【Server】\n交易接口增加返回赠送金使用数据；\n销单接口增加销单返赠送金功能。', '0', '0', '0', '3', '8', '50', '', '1435027581', '1435050422', '1435104000', '1434457490');
INSERT INTO `task` VALUES ('1232', '50', '34', '68', '240', '59', '【iOS】结账-划赠送金', '0', '0', '0', '3', '4', '50', '', '1435201707', '1435293486', '1435276800', '1434457684');
INSERT INTO `task` VALUES ('1233', '50', '34', '68', '240', '54', '【Android】结账-划赠送金', '0', '0', '0', '3', '4', '50', '', '1435211915', '1435309264', '1435276800', '1434457722');
INSERT INTO `task` VALUES ('1234', '50', '34', '68', '240', '59', '【iOS】已选用卡赠送金', '0', '0', '0', '3', '4', '50', '', '1435111583', '1435201701', '1435190400', '1434457791');
INSERT INTO `task` VALUES ('1235', '50', '34', '68', '240', '54', '【Android】已选用卡赠送金', '0', '0', '0', '3', '4', '50', '', '1435195665', '1435232782', '1435190400', '1434457842');
INSERT INTO `task` VALUES ('1236', '50', '34', '68', '240', '59', '【iOS】结账确认窗口-赠送金', '0', '0', '0', '3', '4', '50', '', '1435212663', '1435294221', '1435276800', '1434457901');
INSERT INTO `task` VALUES ('1237', '50', '34', '68', '240', '54', '【Android】结账确认窗口-赠送金', '0', '0', '0', '3', '4', '50', '', '1435211913', '1435309264', '1435276800', '1434457938');
INSERT INTO `task` VALUES ('1238', '50', '34', '68', '242', '44', '【Server】\n短信增加赠送金；\n推送增加赠送金。', '0', '0', '0', '3', '4', '50', '', '1434531124', '1434531815', '0', '1434458202');
INSERT INTO `task` VALUES ('1239', '50', '34', '68', '243', '44', '【Server】默认图片接口改造', '0', '0', '0', '3', '2', '50', '', '1434527984', '1434531123', '0', '1434458268');
INSERT INTO `task` VALUES ('1240', '50', '34', '68', '244', '64', '【Server】报表(业绩分析)', '0', '0', '0', '3', '4', '50', '', '1434608471', '1435022793', '1434672000', '1434458309');
INSERT INTO `task` VALUES ('1241', '50', '34', '68', '243', '49', '【Webapp】默认图片接口改造', '0', '0', '0', '3', '4', '50', '', '1435297652', '1435303179', '1435276800', '1434458526');
INSERT INTO `task` VALUES ('1242', '50', '34', '68', '243', '49', '【CWebapp】默认图片接口改造', '0', '0', '0', '3', '4', '50', '', '0', '1435211622', '1435276800', '1434458548');
INSERT INTO `task` VALUES ('1243', '50', '34', '68', '243', '45', '【CWeChat】默认图片接口改造', '0', '0', '0', '3', '4', '50', '', '0', '1435022364', '1434931200', '1434458569');
INSERT INTO `task` VALUES ('1244', '50', '34', '68', '249', '52', '【Server】卡金增加返回赠送金', '0', '0', '0', '3', '1', '50', '', '1435110180', '1435110184', '1435190400', '1434458654');
INSERT INTO `task` VALUES ('1245', '50', '34', '68', '249', '49', '【CWebapp】我的会员卡-赠送金', '0', '0', '0', '3', '4', '50', '', '0', '1435211624', '1435276800', '1434458820');
INSERT INTO `task` VALUES ('1246', '50', '34', '68', '250', '52', '【Server】\n卡消费记录-交易增加赠送金信息	\n卡消费记录-开卡增加赠送金信息	\n卡消费记录-充值增加赠送金信息	\n卡消费记录-抓卡/升级增加赠送金信息	\n用户消费记录-交易增加赠送金信息	\n用户消费记录-开卡增加赠送金信息	\n用户消费记录-充值增加赠送金信息	\n用户消费记录-抓卡/升级增加赠送金信息', '0', '0', '0', '3', '8', '50', '', '1435050451', '1435195206', '1435190400', '1434458910');
INSERT INTO `task` VALUES ('1247', '50', '34', '68', '250', '49', '【CWebapp】卡消费记录-赠送金', '0', '0', '0', '3', '4', '50', '', '0', '1435211625', '1435276800', '1434459386');
INSERT INTO `task` VALUES ('1248', '50', '34', '68', '250', '49', '【CWebapp】卡充值详情-赠送金', '0', '0', '0', '3', '4', '50', '', '0', '1435211638', '1435276800', '1434459429');
INSERT INTO `task` VALUES ('1249', '50', '34', '68', '250', '49', '【CWebapp】开卡详情-赠送金', '0', '0', '0', '3', '4', '50', '', '0', '1435211634', '1435276800', '1434459473');
INSERT INTO `task` VALUES ('1250', '50', '34', '68', '251', '57', '【Android】消息中心', '0', '0', '0', '3', '8', '50', '', '0', '1435112064', '1435104000', '1434459557');
INSERT INTO `task` VALUES ('1251', '50', '34', '68', '251', '62', '【iOS】消息中心', '0', '0', '0', '3', '8', '50', '', '1435198245', '1435198247', '1435104000', '1434459659');
INSERT INTO `task` VALUES ('1252', '50', '34', '68', '252', '52', '【Server】卡金增加返回赠送金', '0', '0', '0', '3', '1', '50', '', '1435110168', '1435110172', '1435190400', '1434459726');
INSERT INTO `task` VALUES ('1253', '50', '34', '68', '252', '45', '【CWeChat】会员卡列表-赠送金', '0', '0', '0', '3', '2', '50', '', '1434686291', '1435042386', '1435017600', '1434459899');
INSERT INTO `task` VALUES ('1254', '50', '34', '68', '253', '52', '【Server】\n接口修改同C端', '0', '0', '0', '3', '2', '50', '', '1435110511', '1435195193', '1435190400', '1434459998');
INSERT INTO `task` VALUES ('1255', '50', '34', '68', '253', '45', '【CWeChat】卡消费记录-赠送金', '0', '0', '0', '3', '2', '50', '', '1434686316', '1435050265', '1435017600', '1434460093');
INSERT INTO `task` VALUES ('1256', '50', '34', '68', '253', '45', '【CWeChat】卡充值详情-赠送金', '0', '0', '0', '3', '2', '50', '', '1434686309', '1435046341', '1435017600', '1434460115');
INSERT INTO `task` VALUES ('1257', '50', '34', '68', '253', '45', '【CWeChat】开卡详情-赠送金', '0', '0', '0', '3', '2', '50', '', '0', '1435050279', '1435104000', '1434460133');
INSERT INTO `task` VALUES ('1258', '50', '34', '68', '254', '47', '【Server】微信菜单项调整', '99', '0', '0', '3', '4', '10', '', '0', '0', '0', '1434460217');
INSERT INTO `task` VALUES ('1259', '50', '34', '68', '254', '61', '【CWeChat】菜单调整', '0', '0', '0', '3', '4', '50', '', '1435037934', '1435067178', '1435017600', '1434460249');
INSERT INTO `task` VALUES ('1260', '50', '34', '68', '246', '52', '【Server】\n账户调整；\n开卡/充值/转卡/充值同B端', '0', '0', '0', '3', '6', '50', '', '1434692551', '1435024014', '1434672000', '1434460385');
INSERT INTO `task` VALUES ('1261', '50', '34', '68', '247', '52', '【Server】同B端', '0', '0', '0', '3', '2', '50', '', '1435038638', '1435050426', '1435017600', '1434460543');
INSERT INTO `task` VALUES ('1262', '50', '34', '68', '248', '52', '【Server】同B端', '0', '0', '0', '3', '2', '50', '', '1435109175', '1435194946', '1435104000', '1434460587');
INSERT INTO `task` VALUES ('1263', '50', '34', '68', '255', '55', '【Server】增加利润比例提成', '0', '0', '0', '3', '8', '50', '', '1434693537', '1435298704', '1435017600', '1434460634');
INSERT INTO `task` VALUES ('1264', '50', '34', '68', '256', '64', '【Server】【报表】\n今日营业额增加划赠送金统计', '0', '0', '0', '3', '4', '50', '', '1434608472', '1435022795', '1434672000', '1434460723');
INSERT INTO `task` VALUES ('1265', '50', '34', '68', '256', '64', '【Server】【报表】\n店内营业报表增加赠送金统计', '0', '0', '0', '3', '8', '50', '', '1434608467', '1435022791', '1434672000', '1434460742');
INSERT INTO `task` VALUES ('1266', '50', '34', '68', '256', '64', '【Server】【报表】\n店内营业月报表增加赠送金统计', '0', '0', '0', '3', '4', '50', '', '1434608469', '1435125365', '1435017600', '1434460756');
INSERT INTO `task` VALUES ('1267', '50', '34', '68', '256', '64', '【Server】【报表】\n店内营业年度报表增加赠送金统计', '0', '0', '0', '3', '4', '50', '', '1434608474', '1435125364', '1435017600', '1434460772');
INSERT INTO `task` VALUES ('1268', '50', '34', '68', '244', '49', '【Webapp】员工业绩-赠送金', '0', '0', '0', '3', '2', '50', '', '1435297651', '1435497942', '1435276800', '1434461341');
INSERT INTO `task` VALUES ('1269', '50', '34', '68', '244', '49', '【Webapp】我的业绩-赠送金', '0', '0', '0', '3', '2', '50', '', '1435297650', '1435497938', '1435276800', '1434461354');
INSERT INTO `task` VALUES ('1270', '50', '34', '68', '244', '49', '【Webapp】店面业绩-赠送金', '0', '0', '0', '3', '2', '50', '', '1435297649', '1435498648', '1435276800', '1434461394');
INSERT INTO `task` VALUES ('1271', '50', '34', '68', '244', '49', '【Webapp】操作日志-赠送金', '0', '0', '0', '3', '2', '50', '', '1435297648', '1435498742', '1435276800', '1434461414');
INSERT INTO `task` VALUES ('1272', '50', '34', '68', '259', '61', '【CWeChat】新增预约', '0', '0', '0', '3', '8', '50', '', '1435037942', '1435411366', '1435104000', '1434461709');
INSERT INTO `task` VALUES ('1273', '50', '34', '68', '259', '45', '【CWeChat】门店列表', '0', '0', '0', '3', '4', '50', '', '1435038789', '1435227098', '1435190400', '1434461731');
INSERT INTO `task` VALUES ('1274', '50', '34', '68', '259', '61', '【CWeChat】预约列表', '0', '0', '0', '3', '16', '50', '', '1435149967', '1435411365', '1435190400', '1434461756');
INSERT INTO `task` VALUES ('1275', '50', '34', '68', '259', '45', '【CWeChat】项目列表', '0', '0', '0', '3', '6', '50', '', '1435194972', '1435227096', '1435190400', '1434461791');
INSERT INTO `task` VALUES ('1276', '50', '34', '68', '259', '45', '【CWeChat】服务人员列表', '0', '0', '0', '3', '8', '50', '', '1435211673', '1435227094', '1435190400', '1434461811');
INSERT INTO `task` VALUES ('1277', '50', '34', '68', '259', '45', '【CWeChat】时间列表', '0', '0', '0', '3', '16', '50', '', '1435211670', '1435499197', '1435276800', '1434461839');
INSERT INTO `task` VALUES ('1278', '50', '34', '68', '259', '45', '【CWeChat】当前预约', '0', '0', '0', '3', '6', '50', '', '1435211668', '1435227161', '1435276800', '1434461862');
INSERT INTO `task` VALUES ('1279', '50', '34', '68', '260', '45', '【CWeChat】无预约记录', '0', '0', '0', '3', '4', '50', '', '0', '1435143093', '1435276800', '1434461894');
INSERT INTO `task` VALUES ('1280', '50', '34', '68', '260', '45', '【CWeChat】预约列表', '0', '0', '0', '3', '4', '50', '', '0', '1435143098', '1435276800', '1434461913');
INSERT INTO `task` VALUES ('1281', '50', '34', '68', '260', '61', '【CWeChat】提意见', '0', '0', '0', '3', '8', '50', '', '1435119636', '1435411367', '1435104000', '1434461942');
INSERT INTO `task` VALUES ('1282', '50', '34', '68', '237', '49', '【PCWeb】添加‘赠送金设置’', '0', '0', '0', '3', '2', '50', '', '1435201745', '1435297644', '1435190400', '1434462079');
INSERT INTO `task` VALUES ('1283', '50', '34', '68', '247', '49', '【PCWeb】结账\n支付方式-显示赠送金\n选择他人储值卡-显示赠送金', '0', '0', '0', '3', '4', '50', '', '1435201743', '1435238033', '1435190400', '1434462524');
INSERT INTO `task` VALUES ('1284', '50', '34', '68', '247', '49', '【PCWeb】结账\n消费细则-显示/修改赠送金', '0', '0', '0', '3', '4', '50', '', '1435201741', '1435297643', '1435190400', '1434462543');
INSERT INTO `task` VALUES ('1285', '50', '34', '68', '246', '49', '【PCWeb】充值-赠送金', '0', '0', '0', '3', '4', '50', '', '1435201739', '1435237019', '1435190400', '1434462662');
INSERT INTO `task` VALUES ('1286', '50', '34', '68', '246', '49', '【PCWeb】开卡-赠送金', '0', '0', '0', '3', '4', '50', '', '1435139793', '1435234938', '1435104000', '1434462674');
INSERT INTO `task` VALUES ('1287', '50', '34', '68', '246', '49', '【PCWeb】转卡/卡升级-赠送金', '0', '0', '0', '3', '2', '50', '', '1435139792', '1435234365', '1435104000', '1434462701');
INSERT INTO `task` VALUES ('1288', '50', '34', '68', '248', '49', '【PCWeb】营业记录详情', '0', '0', '0', '3', '2', '50', '', '1435048745', '1435060647', '1435104000', '1434462912');
INSERT INTO `task` VALUES ('1289', '50', '34', '68', '248', '49', '【PCWeb】销单记录', '0', '0', '0', '3', '2', '50', '', '1435139791', '1435224237', '1435104000', '1434462946');
INSERT INTO `task` VALUES ('1290', '50', '34', '68', '238', '49', '【PCWeb】会员资料--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053439', '1435128794', '1435017600', '1434463042');
INSERT INTO `task` VALUES ('1291', '50', '34', '68', '238', '49', '【PCWeb】会员资料--调整卡余额', '0', '0', '0', '3', '2', '50', '', '1435053438', '1435144528', '1435017600', '1434463059');
INSERT INTO `task` VALUES ('1292', '50', '34', '68', '238', '49', '【PCWeb】会员列表--显示赠送金', '0', '0', '0', '3', '4', '50', '', '1435053436', '1435201722', '1435017600', '1434463087');
INSERT INTO `task` VALUES ('1293', '50', '34', '68', '238', '49', '【PCWeb】开卡记录--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053435', '1435139494', '1435017600', '1434463112');
INSERT INTO `task` VALUES ('1294', '50', '34', '68', '238', '49', '【PCWeb】充值记录--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053433', '1435139491', '1435017600', '1434463125');
INSERT INTO `task` VALUES ('1295', '50', '34', '68', '238', '49', '【PCWeb】账户调整记录--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053431', '1435137741', '1435017600', '1434463141');
INSERT INTO `task` VALUES ('1296', '50', '34', '68', '238', '49', '【PCWeb】转卡记录--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053429', '1435137109', '1435017600', '1434463159');
INSERT INTO `task` VALUES ('1297', '50', '34', '68', '238', '49', '【PCWeb】卡升级记录--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435053428', '1435135772', '1435017600', '1434463172');
INSERT INTO `task` VALUES ('1298', '50', '34', '68', '238', '53', '【PCWeb】去除导入功能', '0', '0', '0', '3', '2', '50', '', '1434683972', '1434697074', '1434672000', '1434463201');
INSERT INTO `task` VALUES ('1299', '50', '34', '68', '238', '49', '【PCWeb】可定位分页', '0', '0', '0', '3', '2', '50', '', '1435038566', '1435045575', '1435017600', '1434463225');
INSERT INTO `task` VALUES ('1300', '50', '34', '68', '248', '49', '【PCWeb】手工单号搜索', '0', '0', '0', '3', '4', '50', '', '1435028225', '1435048508', '1434931200', '1434463340');
INSERT INTO `task` VALUES ('1301', '50', '34', '68', '248', '49', '【PCWeb】可定位分页', '0', '0', '0', '3', '4', '50', '', '1435028219', '1435045066', '1434931200', '1434463362');
INSERT INTO `task` VALUES ('1302', '50', '34', '68', '256', '49', '【PCWeb】营业报表--显示赠送金', '0', '0', '0', '3', '4', '50', '', '1435201738', '1435229305', '1435190400', '1434463429');
INSERT INTO `task` VALUES ('1303', '50', '34', '68', '256', '49', '【PCWeb】店内营业月报--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435201737', '1435229740', '1435190400', '1434463446');
INSERT INTO `task` VALUES ('1304', '50', '34', '68', '256', '49', '【PCWeb】店内营业年度分析--显示赠送金', '0', '0', '0', '3', '2', '50', '', '1435201735', '1435230005', '1435190400', '1434463482');
INSERT INTO `task` VALUES ('1305', '50', '34', '69', '261', '53', '【PCWeb】赠送金多版本兼容', '0', '0', '0', '3', '24', '50', '', '1435736493', '1435736494', '1435881600', '1434463571');
INSERT INTO `task` VALUES ('1306', '47', '15', '26', '121', '62', '【基础控件库】XXJFoundation 方法拓展', '0', '0', '0', '3', '4', '50', '', '1434507099', '1434531622', '0', '1434507097');
INSERT INTO `task` VALUES ('1307', '50', '34', '68', '263', '53', '增加菜单', '0', '0', '0', '3', '2', '50', '', '1434683984', '1435037957', '1434672000', '1434512496');
INSERT INTO `task` VALUES ('1308', '50', '34', '68', '263', '53', '权限调整', '0', '0', '0', '3', '2', '50', '', '1434683986', '1435037959', '1434672000', '1434512532');
INSERT INTO `task` VALUES ('1309', '50', '34', '68', '263', '53', '会员导入', '0', '0', '0', '3', '16', '50', '', '1435195377', '1435297918', '1435104000', '1434512551');
INSERT INTO `task` VALUES ('1310', '50', '34', '68', '263', '53', '项目导入', '0', '0', '0', '3', '16', '50', '', '1435195379', '1435544662', '1435017600', '1434512568');
INSERT INTO `task` VALUES ('1311', '50', '34', '68', '263', '53', '产品导入', '0', '0', '0', '3', '16', '50', '', '1435037963', '1435544663', '1434931200', '1434512585');
INSERT INTO `task` VALUES ('1312', '50', '34', '68', '259', '61', '预约界面', '0', '0', '0', '3', '16', '50', '', '1435063889', '1435411367', '1435276800', '1434512637');
INSERT INTO `task` VALUES ('1313', '50', '34', '68', '262', '47', '导入模版增加赠送金', '0', '0', '0', '3', '4', '50', '', '1434692988', '1434692993', '1434672000', '1434524248');
INSERT INTO `task` VALUES ('1314', '50', '34', '68', '263', '44', '增加导入预校验（导入前进行数据校验，并提供校验结果）', '0', '0', '0', '3', '16', '50', '', '1434605980', '1435226918', '0', '1434524314');
INSERT INTO `task` VALUES ('1315', '50', '34', '68', '263', '47', '增加产品导入，默认增加品牌、类型、单位下拉选择', '0', '0', '0', '3', '8', '50', '', '1434692999', '1435128712', '1435104000', '1434524412');
INSERT INTO `task` VALUES ('1316', '50', '34', '68', '263', '47', '增加项目导入', '0', '0', '0', '3', '4', '50', '', '0', '1435055380', '1435017600', '1434524431');
INSERT INTO `task` VALUES ('1317', '47', '15', '26', '265', '62', '【基础控件库】文案编写', '0', '0', '0', '3', '4', '50', '', '1434694101', '1435110851', '0', '1434531908');
INSERT INTO `task` VALUES ('1318', '47', '15', '26', '265', '62', '【拓展控件库】文档编写', '0', '0', '0', '3', '5', '20', '', '1435110858', '1435110854', '0', '1434531929');
INSERT INTO `task` VALUES ('1319', '47', '15', '26', '265', '62', '【业务控件库】文档编写', '0', '0', '0', '3', '5', '10', '', '0', '0', '0', '1434531946');
INSERT INTO `task` VALUES ('1320', '47', '15', '26', '124', '62', '【拓展控件库】下拉刷新样式丰富', '0', '0', '0', '3', '4', '10', '', '0', '0', '0', '1434532000');
INSERT INTO `task` VALUES ('1321', '47', '15', '26', '265', '62', '【控件库】苹果文档生成以及注释验证补充', '0', '0', '0', '3', '4', '50', '', '0', '1435110850', '0', '1434694225');
INSERT INTO `task` VALUES ('1322', '47', '15', '26', '265', '62', '【Foundation】项目数据拓展文案编写', '0', '0', '0', '3', '4', '20', '', '1434694394', '0', '0', '1434694391');
INSERT INTO `task` VALUES ('1323', '47', '15', '26', '66', '48', '真机打包支持Appium测试', '0', '0', '0', '3', '4', '50', '', '1435149550', '1435149554', '0', '1435149545');
INSERT INTO `task` VALUES ('1324', '47', '15', '26', '72', '48', '导购模块数据导入mongodb脚本升级与问题修复', '0', '0', '0', '3', '4', '50', '', '1435150027', '1435565028', '0', '1435149666');
INSERT INTO `task` VALUES ('1325', '50', '34', '68', '266', '62', '【iOS】新手引导', '99', '0', '0', '3', '80', '10', '', '0', '0', '1435881600', '1435198683');
INSERT INTO `task` VALUES ('1326', '50', '34', '68', '266', '54', '【Android】新手引导', '99', '1', '0', '3', '80', '10', '', '0', '0', '1435881600', '1435198723');
INSERT INTO `task` VALUES ('1327', '50', '34', '69', '266', '57', '【Android】新手引导-店面设置引导', '0', '1', '0', '3', '12', '50', '', '1435557543', '1436151108', '1435536000', '1435198880');
INSERT INTO `task` VALUES ('1328', '50', '34', '68', '266', '62', '【iOS】新手引导', '99', '0', '0', '3', '1', '10', '', '0', '0', '1435881600', '1435198928');
INSERT INTO `task` VALUES ('1329', '50', '34', '68', '266', '44', '测试', '99', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435200026');
INSERT INTO `task` VALUES ('1330', '50', '34', '69', '266', '48', '【iOS】新手引导-员工设置引导', '0', '1', '0', '3', '8', '50', '', '1435717108', '1436151181', '0', '1435202057');
INSERT INTO `task` VALUES ('1331', '50', '34', '69', '266', '48', '【iOS】新手引导-项目设置引导', '0', '1', '0', '3', '8', '50', '', '1435879615', '1436151183', '0', '1435202107');
INSERT INTO `task` VALUES ('1332', '50', '34', '69', '266', '62', '【iOS】新手引导-开单引导', '0', '1', '0', '3', '32', '50', '', '1435297769', '1436162251', '1435708800', '1435202141');
INSERT INTO `task` VALUES ('1333', '50', '34', '69', '266', '57', '【Android】新手引导-开单引导', '0', '1', '0', '3', '32', '50', '', '1435644041', '1436151106', '1435881600', '1435202348');
INSERT INTO `task` VALUES ('1334', '50', '34', '69', '266', '54', '【Android】新手引导-项目设置引导', '0', '1', '0', '3', '20', '50', '', '1436165611', '1436165614', '1435881600', '1435202387');
INSERT INTO `task` VALUES ('1335', '50', '34', '69', '266', '54', '【Android】新手引导-员工设置引导', '0', '1', '0', '3', '16', '50', '', '1435816636', '1436165612', '1435881600', '1435202406');
INSERT INTO `task` VALUES ('1336', '50', '34', '69', '266', '62', '【iOS】新手引导-店面设置引导', '0', '1', '0', '3', '12', '50', '', '1435816469', '1436162254', '1435881600', '1435202435');
INSERT INTO `task` VALUES ('1337', '44', '36', '71', '274', '60', '[巴厘岛][古熙]需要提醒门店，验证码的核销需在顾客到店后，美容服务前首先进行操作，以免验证码过期造成无法核销。此外，验证码的过期限制将会放宽。', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1435294944');
INSERT INTO `task` VALUES ('1338', '44', '36', '70', '268', '60', '预约时间后“半小时”验证码过期的限制极不合理，建议放宽至3小时或当天。\n备注：目前先将验证码过期限制改为当天时间内核销；但有可能遇到极端情况，即跨12点的服务时段，故备注下，期望在下期中完善严谨这个核销限制规则。', '0', '0', '0', '5', '1', '50', '', '1435742153', '1436789429', '0', '1435295202');
INSERT INTO `task` VALUES ('1339', '44', '36', '71', '274', '60', '[巴厘岛]服务中推销办卡的问题', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1435295295');
INSERT INTO `task` VALUES ('1340', '44', '36', '71', '273', '60', '[巴厘岛]平台上可预约的时段，门店店长信息不同步，让顾客不要走平台预约', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435295868');
INSERT INTO `task` VALUES ('1341', '44', '36', '70', '270', '60', '购买订单预约成功，同时收到两条手机短信提醒（内容不同），建议合并成一条发送', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435295960');
INSERT INTO `task` VALUES ('1342', '44', '36', '70', '270', '60', '手机短信内容中有很多带方括号[]的信息，请及时修改短信文字内容，用其他符合替代方括号，以免影响短信渠道被屏蔽！', '0', '0', '0', '5', '1', '20', '', '1435741927', '0', '0', '1435296059');
INSERT INTO `task` VALUES ('1343', '44', '36', '70', '269', '60', '1、建议验证码即将过期前10-15分钟，应有服务号内消息提醒：您的验证码即将于xxx时间过期，请及时到店核销；\n2、验证码过期后，也应有服务号内消息提示：您的xxx订单验证码已过期，可在“我的订单”页面内改约，重新选择时段。\n否则顾客并不知情验证码时限的问题，到店核销时，遇到无法验证的情况，只会认为是平台软件有bug，降低对平台的信任感和满意度。', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435296439');
INSERT INTO `task` VALUES ('1344', '44', '36', '70', '269', '60', '在选时页面选择一个时段，进入付款页面，未支付，此时返回选时页面。则刚才选择的时段显示被占用，无法取消或修改，也无法再次进入支付页面。必须去我的订单页面才可继续支付，这个交互方式非常不易用不直接。', '0', '0', '0', '4', '1', '20', '', '1436845129', '1436845127', '0', '1435296546');
INSERT INTO `task` VALUES ('1345', '44', '36', '70', '269', '60', '服务号的各类消息提醒文字内容和格式太相似，难以突出重点内容，容易让人混淆忽略。例如已核销后的评价提醒，就不需要再出现“凭手机号和验证码去柜台验证”，改约提醒改约成功即可，就不需要再喊不充卡不推销的口号……', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435296690');
INSERT INTO `task` VALUES ('1346', '44', '36', '70', '268', '60', '建议购买的一个订单，即使改约，但保持验证码不变。减少服务号或手机短信中众多消息提醒，验证码变来变去，给顾客造成混乱和麻烦。', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435298103');
INSERT INTO `task` VALUES ('1347', '44', '36', '70', '267', '69', '现在后台的每个美容项目服务时长是以10分钟为刻度，但实际很多美容项目是类似45分钟的，建议修改为以5分钟为刻度', '0', '0', '0', '3', '2', '10', '', '0', '0', '0', '1435303402');
INSERT INTO `task` VALUES ('1348', '44', '36', '70', '269', '69', '分享巴厘岛的面部护理项目出去，点击进去就只能看到这个项目，没法查看更多产品，也没有美天的标识。建议在底部增设一个查看更多美容产品的按钮。或者在页面最上面有返回主页面的按钮。（并建议引导关注服务号）', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435327155');
INSERT INTO `task` VALUES ('1349', '50', '34', '69', '275', '52', '【Server】版本发布', '0', '0', '0', '3', '8', '50', '', '1435557395', '1435730738', '1435795200', '1435537782');
INSERT INTO `task` VALUES ('1350', '50', '34', '69', '275', '52', '【Server】版本校验', '0', '0', '0', '3', '8', '50', '', '1435557394', '1435730737', '1435795200', '1435537792');
INSERT INTO `task` VALUES ('1351', '50', '34', '69', '275', '52', '【Server】版本升级', '0', '0', '0', '3', '8', '50', '', '1435557392', '1435730739', '1435795200', '1435537800');
INSERT INTO `task` VALUES ('1352', '50', '34', '69', '275', '52', '【Server】多版本共存', '0', '0', '0', '3', '8', '20', '', '1437549831', '1435730736', '1435795200', '1435537818');
INSERT INTO `task` VALUES ('1353', '50', '34', '69', '275', '59', '【iOS】客户端逻辑', '99', '0', '0', '3', '4', '10', '', '0', '0', '1435881600', '1435537884');
INSERT INTO `task` VALUES ('1354', '50', '34', '69', '275', '54', '【Android】客户端逻辑', '99', '0', '0', '3', '4', '10', '', '0', '0', '1435881600', '1435537901');
INSERT INTO `task` VALUES ('1355', '50', '34', '69', '245', '58', '【iOS】在店面设置增加菜单‘产品’，跳转到进销存', '0', '0', '0', '3', '2', '50', '', '1435738145', '1435820821', '1435795200', '1435538020');
INSERT INTO `task` VALUES ('1356', '50', '34', '69', '245', '54', '【Android】在店面设置增加菜单‘产品’，跳转到经销存', '0', '0', '0', '3', '2', '50', '', '1435818831', '1435820520', '1435795200', '1435538033');
INSERT INTO `task` VALUES ('1357', '50', '34', '69', '276', '61', '【PCWeb】会员表单', '0', '0', '0', '3', '8', '50', '', '1435643894', '1436346282', '1436227200', '1435538727');
INSERT INTO `task` VALUES ('1358', '50', '34', '69', '276', '61', '【PCWeb】散客表单', '0', '0', '0', '3', '4', '50', '', '1435643899', '1436434335', '1436227200', '1435538757');
INSERT INTO `task` VALUES ('1359', '50', '34', '69', '276', '61', '【PCWeb】支付方式表单', '0', '0', '0', '3', '8', '50', '', '1435913307', '1436145369', '1436054400', '1435538775');
INSERT INTO `task` VALUES ('1360', '50', '34', '69', '276', '61', '【PCWeb】选择他人储值卡列表', '0', '0', '0', '3', '4', '50', '', '1435913310', '1436145367', '1436054400', '1435538949');
INSERT INTO `task` VALUES ('1361', '50', '34', '69', '276', '53', '【PCWeb】开卡表单', '0', '0', '0', '3', '8', '50', '', '1435643520', '1436161787', '1435968000', '1435538966');
INSERT INTO `task` VALUES ('1362', '50', '34', '69', '276', '53', '【PCWeb】充值表单', '0', '0', '0', '3', '8', '50', '', '1435730222', '1436161785', '1435968000', '1435538979');
INSERT INTO `task` VALUES ('1363', '50', '34', '69', '276', '53', '【PCWeb】转卡/卡升级表单', '0', '0', '0', '3', '8', '50', '', '1435902860', '1436346272', '1435968000', '1435538994');
INSERT INTO `task` VALUES ('1364', '50', '34', '69', '276', '61', '【PCWeb】项目列表', '0', '0', '0', '3', '8', '50', '', '1435730129', '1436145365', '1436054400', '1435539010');
INSERT INTO `task` VALUES ('1365', '50', '34', '69', '276', '45', '【PCWeb】选择项目', '0', '0', '0', '3', '4', '50', '', '1436145413', '1436272714', '1436140800', '1435539027');
INSERT INTO `task` VALUES ('1366', '50', '34', '69', '276', '53', '【PCWeb】服务人员列表', '0', '0', '0', '3', '8', '50', '', '1436230325', '1436334172', '1436054400', '1435539049');
INSERT INTO `task` VALUES ('1367', '50', '34', '69', '276', '53', '【PCWeb】项目修改业绩', '0', '0', '0', '3', '4', '50', '', '1436346305', '1436434295', '1436140800', '1435539064');
INSERT INTO `task` VALUES ('1368', '50', '34', '69', '276', '61', '【PCWeb】产品列表', '0', '0', '0', '3', '4', '50', '', '1435730131', '1436145364', '1436054400', '1435539074');
INSERT INTO `task` VALUES ('1369', '50', '34', '69', '276', '45', '【PCWeb】选择产品', '0', '0', '0', '3', '8', '50', '', '1436145410', '1436272713', '1436140800', '1435539091');
INSERT INTO `task` VALUES ('1370', '50', '34', '69', '276', '53', '【PCWeb】销售人员列表', '0', '0', '0', '3', '4', '50', '', '1436230327', '1436334174', '1436140800', '1435539123');
INSERT INTO `task` VALUES ('1371', '50', '34', '69', '276', '53', '【PCWeb】产品修改业绩', '0', '0', '0', '3', '4', '50', '', '1436346307', '1436434297', '1436140800', '1435539144');
INSERT INTO `task` VALUES ('1372', '50', '34', '69', '276', '61', '【PCWeb】使用优惠券', '0', '0', '0', '3', '8', '50', '', '1435902765', '1436145361', '1436054400', '1435539156');
INSERT INTO `task` VALUES ('1373', '50', '34', '69', '276', '53', '【PCWeb】赠送优惠券', '0', '0', '0', '3', '4', '50', '', '1436346308', '1436434298', '1436140800', '1435539168');
INSERT INTO `task` VALUES ('1374', '50', '34', '69', '276', '61', '【PCWeb】使用次数卡', '0', '0', '0', '3', '4', '50', '', '1435913305', '1436346279', '1436227200', '1435539182');
INSERT INTO `task` VALUES ('1375', '50', '34', '69', '276', '61', '【PCWeb】消费细则', '0', '0', '0', '3', '4', '50', '', '1435902762', '1436145358', '1436054400', '1435539193');
INSERT INTO `task` VALUES ('1376', '50', '34', '69', '277', '45', '【PCWeb】增加产品菜单', '0', '0', '0', '3', '2', '50', '', '0', '1435902823', '1435881600', '1435539637');
INSERT INTO `task` VALUES ('1377', '50', '34', '69', '278', '45', '【PCWeb】批量删除', '0', '0', '0', '3', '4', '50', '', '1435643741', '1435908533', '1435622400', '1435539717');
INSERT INTO `task` VALUES ('1378', '50', '34', '69', '279', '45', '【PCWeb】权限调整', '0', '0', '0', '3', '4', '50', '', '0', '1435661377', '1435708800', '1435539749');
INSERT INTO `task` VALUES ('1379', '47', '15', '26', '235', '48', '财务模块Word文档整理与汇总', '0', '0', '0', '3', '4', '50', '', '1435543223', '1435544162', '0', '1435543220');
INSERT INTO `task` VALUES ('1380', '44', '36', '70', '267', '69', '1.项目图片加载过慢，产品里图片希望可以自动压缩到最佳比例，否则很容易变形（或者，可以整一份每个图片位的图片尺寸，便于运营人员上传最佳比例的图片）\n2.每日一荐的封面图，建议设计两个版式，一个是图片+小头像，一个是纯图片\n3.希望每日一荐封面图下带的产品，希望可以点击，能够跳转到产品页，或者是在文章的底部带有可以跳转至产业页的链接。', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435546645');
INSERT INTO `task` VALUES ('1381', '50', '34', '69', '276', '45', '选择项目拼音模糊搜索', '0', '0', '0', '3', '4', '50', '', '1435902827', '1436272717', '1436140800', '1435563925');
INSERT INTO `task` VALUES ('1382', '50', '34', '69', '276', '45', '利润比例提成', '0', '0', '0', '3', '8', '50', '', '1435643715', '1435652250', '1435622400', '1435563982');
INSERT INTO `task` VALUES ('1383', '50', '34', '69', '276', '45', '员工报表调整', '0', '0', '0', '3', '4', '50', '', '1435652270', '1435661383', '1435708800', '1435564022');
INSERT INTO `task` VALUES ('1384', '50', '34', '69', '276', '45', '工资报表调整', '0', '0', '0', '3', '4', '50', '', '1435652267', '1435661384', '1435708800', '1435564047');
INSERT INTO `task` VALUES ('1385', '50', '34', '69', '277', '49', '样式变化', '0', '0', '0', '3', '16', '50', '', '1435643950', '1436161366', '1435881600', '1435564089');
INSERT INTO `task` VALUES ('1386', '50', '34', '69', '277', '49', '各岗位菜单权限调整', '0', '0', '0', '3', '16', '50', '', '1437118146', '1437118148', '1436227200', '1435564113');
INSERT INTO `task` VALUES ('1387', '47', '15', '26', '235', '48', '参加开发周会2015-6-29', '0', '0', '0', '3', '1', '50', '', '1435565020', '1435565022', '0', '1435565018');
INSERT INTO `task` VALUES ('1388', '44', '36', '70', '269', '60', '未关注服务号的用户，通过分享的链接购买订单，只会提醒绑定手机号，而没有途径引导新用户去关注服务号。这样仅仅只能做成一次的生意，而无法把用户引导至平台，变成平台的长期粉丝', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1435568815');
INSERT INTO `task` VALUES ('1389', '47', '15', '26', '235', '48', '产品策划沟通交流会', '0', '0', '0', '3', '2', '50', '', '1435575058', '1435575061', '0', '1435575055');
INSERT INTO `task` VALUES ('1390', '44', '36', '70', '267', '60', '目前平台上，项目和时段的对应逻辑不正确。每个项目同一个时段，只能购买一次；当美容院在同一个时段可以提供多个床位的时候，无法购买多个。并且同个美容院提供多个项目时，床位没有做动态分配，限死了一个项目对应一个床位。时段和床位的设置应该是在美容院的设置下的，而不该是在项目的设置下。', '0', '0', '0', '5', '5', '10', '', '0', '0', '0', '1435578372');
INSERT INTO `task` VALUES ('1391', '47', '15', '26', '235', '48', '财务模块内容补充与完善2015-06-30', '0', '0', '0', '3', '6', '50', '', '1435628358', '1436271932', '0', '1435628355');
INSERT INTO `task` VALUES ('1392', '50', '34', '69', '266', '64', '1.用户登陆接口改造-增加返回新手引导状态\n2.注册流程改造-注册即创建门店和员工并标记为待完善状态\n3.引导流程改造-记录当前引导步骤', '0', '0', '0', '3', '24', '50', '', '1435630800', '1435816429', '1435795200', '1435630793');
INSERT INTO `task` VALUES ('1393', '44', '36', '70', '267', '60', '建议微信号上，我要美容项目显示可以根据规则自动或人为的操作先后排序，将热门或重点推的项目排在前面', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435649780');
INSERT INTO `task` VALUES ('1394', '44', '36', '70', '267', '69', '目前各个美容项目都是按最新上传顺序显示，希望可以在后台增设一个自主排序功能', '99', '0', '0', '1', '1', '10', '', '0', '0', '0', '1435650268');
INSERT INTO `task` VALUES ('1395', '51', '37', '72', '280', '44', '【服务端】新用户注册功能', '0', '0', '0', '3', '4', '50', '', '1436930242', '1437526864', '0', '1435652060');
INSERT INTO `task` VALUES ('1396', '51', '37', '72', '281', '44', '新增任务和修改开发人员时通知开发人员', '0', '0', '0', '3', '8', '20', '', '1437558485', '1436877582', '0', '1435652104');
INSERT INTO `task` VALUES ('1397', '50', '34', '69', '282', '49', '会员列表(清空搜索结果,模糊搜索)', '0', '1', '0', '3', '8', '50', '', '1436790190', '1436790535', '1436227200', '1435721344');
INSERT INTO `task` VALUES ('1398', '50', '34', '69', '282', '49', '会员详情(会员卡对应操作，编辑，查看)', '0', '1', '0', '5', '8', '10', '', '1436360086', '1436365371', '1436227200', '1435721450');
INSERT INTO `task` VALUES ('1399', '50', '34', '69', '266', '58', '【iOS】新手引导-次要流程', '0', '0', '0', '3', '20', '20', '', '1437549839', '1436151167', '1435881600', '1435730507');
INSERT INTO `task` VALUES ('1400', '44', '36', '70', '268', '60', '增强预约订单的商家提醒：\n1、当有新的客人预约订单时，对商家也要有短信提醒；\n2、在客人到店前半小时，最好也给商家短信提醒；\n3、当有新的预约，浏览器标签栏上闪动提醒\n4、浏览器弹窗提醒时，加入音效和语音播报，便于提醒离开位置的人员。并让BD告知商家有此功能。', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1435743488');
INSERT INTO `task` VALUES ('1401', '44', '36', '70', '269', '60', '(建议)微信服务号中，每个页面最下端的那个“没有数据可以显示了”，能否只在往下拉时才露出，手松开后回弹收进屏幕内，可以美观一点。对于内容不足一屏的可在信息下方显示“没有数据可以显示了”无需回弹。', '0', '0', '0', '2', '1', '10', '', '0', '0', '0', '1435745763');
INSERT INTO `task` VALUES ('1402', '44', '36', '70', '267', '60', '可否在运营平台加一个核销验证码的入口，便于工作人员（客服）处理问题订单；在工作人员进行核销时需输入管理密码方可执行操作。', '0', '0', '0', '2', '1', '10', '', '0', '0', '0', '1435745985');
INSERT INTO `task` VALUES ('1403', '50', '34', '69', '266', '56', '【Android】新手引导-次要流程', '0', '0', '0', '3', '20', '20', '', '1436790405', '1436162437', '1435881600', '1435818715');
INSERT INTO `task` VALUES ('1404', '44', '36', '73', '269', '53', '页面加载失败，无重新加载按键', '0', '0', '0', '3', '1', '50', '', '0', '1435828853', '0', '1435828849');
INSERT INTO `task` VALUES ('1405', '44', '36', '73', '269', '49', '首次绑定账号，输入个人信息页，当网络速度缓慢（手机2G网络）时，性别选择那行显示为空，建议图片未加载时，有文字显示可选择', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435829086');
INSERT INTO `task` VALUES ('1406', '44', '36', '73', '269', '51', '项目列表、订单页加载失败，重复加载不成功（偶发问题）', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435829184');
INSERT INTO `task` VALUES ('1407', '44', '36', '73', '269', '51', '项目列表中，缩略图图片加载失败（偶发问题）', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435829348');
INSERT INTO `task` VALUES ('1408', '44', '36', '73', '270', '51', '预约服务时间前半小时，没有接收到手机短信提醒（余乐）（偶发问题）', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435829413');
INSERT INTO `task` VALUES ('1409', '44', '36', '73', '269', '61', '订单评价后分享出来的链接中，项目“立即购买”无法点击', '0', '0', '0', '5', '1', '10', '', '0', '0', '0', '1435829517');
INSERT INTO `task` VALUES ('1410', '44', '36', '73', '269', '61', '“每日一荐”“Nancy课堂”文章中圆形小头像被放大的问题', '0', '0', '0', '3', '1', '10', '', '0', '0', '0', '1435829783');
INSERT INTO `task` VALUES ('1411', '44', '36', '73', '269', '61', '“每日一荐”“Nancy课堂”内文章分享“发送给好友”、“收藏”，点击无效', '0', '0', '0', '4', '1', '10', '', '0', '0', '0', '1435829895');
INSERT INTO `task` VALUES ('1412', '50', '34', '69', '266', '48', '【iOS】引导组件开发与集成方式验证', '0', '0', '0', '3', '16', '10', '', '1435879604', '1436151184', '0', '1435879599');
INSERT INTO `task` VALUES ('1413', '50', '34', '68', '236', '52', '赠送金设计方案', '0', '0', '0', '3', '8', '50', '', '0', '1435888604', '0', '1435888599');
INSERT INTO `task` VALUES ('1414', '50', '34', '68', '236', '52', '赠送金相关接口打桩', '0', '0', '0', '3', '4', '50', '', '0', '1435888643', '0', '1435888641');
INSERT INTO `task` VALUES ('1415', '47', '15', '26', '235', '48', 'iPhone6Plugs适配问题研究与验证：暂时不升级支持，代码调整影响比较大', '0', '0', '0', '3', '3', '50', '', '1436272007', '1436272012', '0', '1436272004');
INSERT INTO `task` VALUES ('1416', '47', '15', '26', '235', '48', '财务相关文档整理2015-07-07', '0', '0', '0', '3', '3', '50', '', '1436275936', '1436275942', '0', '1436275934');
INSERT INTO `task` VALUES ('1417', '51', '37', '72', '281', '45', '1', '0', '0', '0', '5', '1', '50', '', '1436924251', '1436959023', '1438300800', '1436855404');
INSERT INTO `task` VALUES ('1418', '51', '37', '72', '281', '44', '5675676', '0', '0', '0', '5', '1', '50', '', '1437526802', '1437526811', '0', '1436922583');
INSERT INTO `task` VALUES ('1419', '51', '37', '72', '281', '44', '56756766756757', '0', '0', '0', '5', '1', '20', '', '1437558464', '0', '0', '1436922588');
INSERT INTO `task` VALUES ('1420', '51', '37', '72', '281', '44', '56756766756757', '0', '0', '0', '5', '12', '50', '', '1436930234', '1436959021', '0', '1436922593');
INSERT INTO `task` VALUES ('1421', '51', '37', '72', '281', '44', '56756766756757', '0', '0', '0', '5', '12', '10', '', '1436930238', '1436930236', '0', '1436922596');
INSERT INTO `task` VALUES ('1422', '51', '37', '72', '228', '50', 'ewe', '0', '0', '0', '3', '1', '20', '', '1437526807', '0', '0', '1436952569');
INSERT INTO `task` VALUES ('1423', '51', '37', '72', '281', '47', '\"\n\'', '0', '0', '0', '5', '1', '20', '', '1437546445', '0', '0', '1437009539');

-- ----------------------------
-- Table structure for task_concerned
-- ----------------------------
DROP TABLE IF EXISTS `task_concerned`;
CREATE TABLE `task_concerned` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '任务id',
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_tu` (`task_id`,`user_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of task_concerned
-- ----------------------------
INSERT INTO `task_concerned` VALUES ('1', '777', '44', '1430734678');
INSERT INTO `task_concerned` VALUES ('2', '777', '46', '1430734776');
INSERT INTO `task_concerned` VALUES ('3', '776', '46', '1430734800');
INSERT INTO `task_concerned` VALUES ('4', '829', '46', '1430966892');
INSERT INTO `task_concerned` VALUES ('5', '830', '46', '1430966893');
INSERT INTO `task_concerned` VALUES ('6', '831', '46', '1430966894');
INSERT INTO `task_concerned` VALUES ('7', '834', '46', '1430966895');
INSERT INTO `task_concerned` VALUES ('8', '832', '46', '1430966897');
INSERT INTO `task_concerned` VALUES ('10', '843', '46', '1430966899');
INSERT INTO `task_concerned` VALUES ('11', '842', '46', '1430966900');
INSERT INTO `task_concerned` VALUES ('12', '837', '46', '1430966901');
INSERT INTO `task_concerned` VALUES ('13', '784', '46', '1430966915');
INSERT INTO `task_concerned` VALUES ('14', '797', '46', '1430966921');
INSERT INTO `task_concerned` VALUES ('15', '793', '46', '1430966922');
INSERT INTO `task_concerned` VALUES ('16', '839', '46', '1430966927');
INSERT INTO `task_concerned` VALUES ('17', '840', '46', '1430966928');
INSERT INTO `task_concerned` VALUES ('18', '644', '52', '1430987976');
INSERT INTO `task_concerned` VALUES ('19', '643', '52', '1430987991');
INSERT INTO `task_concerned` VALUES ('20', '657', '52', '1430987996');
INSERT INTO `task_concerned` VALUES ('21', '656', '52', '1430987997');
INSERT INTO `task_concerned` VALUES ('22', '642', '52', '1430988031');
INSERT INTO `task_concerned` VALUES ('23', '658', '52', '1430988035');
INSERT INTO `task_concerned` VALUES ('24', '655', '52', '1430988036');
INSERT INTO `task_concerned` VALUES ('25', '659', '63', '1430988063');
INSERT INTO `task_concerned` VALUES ('26', '664', '63', '1430988115');
INSERT INTO `task_concerned` VALUES ('27', '845', '52', '1430988556');
INSERT INTO `task_concerned` VALUES ('28', '853', '46', '1431051600');
INSERT INTO `task_concerned` VALUES ('29', '854', '46', '1431051601');
INSERT INTO `task_concerned` VALUES ('30', '852', '46', '1431051602');
INSERT INTO `task_concerned` VALUES ('31', '852', '44', '1431053200');
INSERT INTO `task_concerned` VALUES ('34', '584', '52', '1431482129');
INSERT INTO `task_concerned` VALUES ('35', '833', '46', '1431482278');
INSERT INTO `task_concerned` VALUES ('36', '882', '46', '1431486676');
INSERT INTO `task_concerned` VALUES ('37', '743', '59', '1432544642');
INSERT INTO `task_concerned` VALUES ('38', '650', '59', '1432544643');
INSERT INTO `task_concerned` VALUES ('39', '914', '59', '1432544657');
INSERT INTO `task_concerned` VALUES ('40', '889', '59', '1432544662');
INSERT INTO `task_concerned` VALUES ('41', '886', '59', '1432544664');
INSERT INTO `task_concerned` VALUES ('42', '848', '59', '1432544666');
INSERT INTO `task_concerned` VALUES ('47', '1255', '45', '1435214762');
INSERT INTO `task_concerned` VALUES ('48', '65', '45', '1436431834');
INSERT INTO `task_concerned` VALUES ('50', '938', '44', '1436836899');
INSERT INTO `task_concerned` VALUES ('58', '959', '44', '1436848518');
INSERT INTO `task_concerned` VALUES ('59', '1412', '44', '1436849000');
INSERT INTO `task_concerned` VALUES ('61', '633', '44', '1436855245');
INSERT INTO `task_concerned` VALUES ('62', '632', '44', '1436855247');
INSERT INTO `task_concerned` VALUES ('63', '639', '44', '1436855250');
INSERT INTO `task_concerned` VALUES ('64', '638', '44', '1436855252');
INSERT INTO `task_concerned` VALUES ('65', '636', '44', '1436855253');
INSERT INTO `task_concerned` VALUES ('66', '637', '44', '1436855254');
INSERT INTO `task_concerned` VALUES ('67', '635', '44', '1436855256');
INSERT INTO `task_concerned` VALUES ('70', '1342', '44', '1436869368');
INSERT INTO `task_concerned` VALUES ('75', '1395', '44', '1437013969');
INSERT INTO `task_concerned` VALUES ('77', '1418', '44', '1437489915');

-- ----------------------------
-- Table structure for task_follow
-- ----------------------------
DROP TABLE IF EXISTS `task_follow`;
CREATE TABLE `task_follow` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '任务ID',
  `prev_task_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '前置任务ID',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `unix_tp` (`task_id`,`prev_task_id`) USING BTREE,
  KEY `idx_prev_task_id` (`prev_task_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=342 DEFAULT CHARSET=utf8 COMMENT='任务关系表\r\n';

-- ----------------------------
-- Records of task_follow
-- ----------------------------
INSERT INTO `task_follow` VALUES ('1', '9', '1', '1425694549');
INSERT INTO `task_follow` VALUES ('2', '10', '1', '1425694609');
INSERT INTO `task_follow` VALUES ('3', '11', '1', '1425694610');
INSERT INTO `task_follow` VALUES ('4', '12', '1', '1425695030');
INSERT INTO `task_follow` VALUES ('5', '13', '1', '1425695041');
INSERT INTO `task_follow` VALUES ('6', '14', '1', '1425695041');
INSERT INTO `task_follow` VALUES ('7', '15', '1', '1425695045');
INSERT INTO `task_follow` VALUES ('8', '16', '1', '1425695045');
INSERT INTO `task_follow` VALUES ('9', '17', '1', '1425695060');
INSERT INTO `task_follow` VALUES ('10', '18', '1', '1425695090');
INSERT INTO `task_follow` VALUES ('11', '19', '1', '1425695114');
INSERT INTO `task_follow` VALUES ('12', '20', '1', '1425696925');
INSERT INTO `task_follow` VALUES ('13', '21', '1', '1425696934');
INSERT INTO `task_follow` VALUES ('14', '22', '1', '1425704862');
INSERT INTO `task_follow` VALUES ('18', '21', '2', '1425706776');
INSERT INTO `task_follow` VALUES ('19', '23', '1', '1425707482');
INSERT INTO `task_follow` VALUES ('20', '24', '1', '1425719716');
INSERT INTO `task_follow` VALUES ('21', '25', '1', '1425719825');
INSERT INTO `task_follow` VALUES ('22', '26', '1', '1425719841');
INSERT INTO `task_follow` VALUES ('23', '27', '25', '1425719868');
INSERT INTO `task_follow` VALUES ('24', '28', '25', '1425719894');
INSERT INTO `task_follow` VALUES ('25', '29', '24', '1425720175');
INSERT INTO `task_follow` VALUES ('26', '29', '25', '1425720275');
INSERT INTO `task_follow` VALUES ('28', '37', '1', '1425883739');
INSERT INTO `task_follow` VALUES ('29', '38', '1', '1425883744');
INSERT INTO `task_follow` VALUES ('30', '38', '2', '1425883744');
INSERT INTO `task_follow` VALUES ('31', '39', '1', '1425886656');
INSERT INTO `task_follow` VALUES ('32', '39', '2', '1425886656');
INSERT INTO `task_follow` VALUES ('33', '40', '1', '1425886703');
INSERT INTO `task_follow` VALUES ('34', '40', '2', '1425886703');
INSERT INTO `task_follow` VALUES ('35', '41', '1', '1425886718');
INSERT INTO `task_follow` VALUES ('36', '41', '2', '1425886718');
INSERT INTO `task_follow` VALUES ('37', '42', '1', '1425886726');
INSERT INTO `task_follow` VALUES ('38', '42', '2', '1425886726');
INSERT INTO `task_follow` VALUES ('39', '44', '29', '1425888117');
INSERT INTO `task_follow` VALUES ('40', '43', '44', '1425901205');
INSERT INTO `task_follow` VALUES ('41', '45', '44', '1425951058');
INSERT INTO `task_follow` VALUES ('42', '47', '44', '1425978277');
INSERT INTO `task_follow` VALUES ('43', '47', '45', '1425978463');
INSERT INTO `task_follow` VALUES ('44', '47', '46', '1425978532');
INSERT INTO `task_follow` VALUES ('48', '46', '47', '1425980020');
INSERT INTO `task_follow` VALUES ('49', '46', '43', '1425980039');
INSERT INTO `task_follow` VALUES ('50', '46', '45', '1425980047');
INSERT INTO `task_follow` VALUES ('51', '55', '54', '1425980238');
INSERT INTO `task_follow` VALUES ('52', '55', '52', '1425980294');
INSERT INTO `task_follow` VALUES ('53', '55', '51', '1425980338');
INSERT INTO `task_follow` VALUES ('56', '52', '51', '1425982572');
INSERT INTO `task_follow` VALUES ('61', '53', '52', '1425989023');
INSERT INTO `task_follow` VALUES ('65', '54', '51', '1425991139');
INSERT INTO `task_follow` VALUES ('66', '51', '51', '1425991583');
INSERT INTO `task_follow` VALUES ('67', '56', '54', '1426038013');
INSERT INTO `task_follow` VALUES ('68', '57', '56', '1426038058');
INSERT INTO `task_follow` VALUES ('70', '59', '58', '1426043579');
INSERT INTO `task_follow` VALUES ('77', '79', '68', '1426044804');
INSERT INTO `task_follow` VALUES ('78', '81', '53', '1426044852');
INSERT INTO `task_follow` VALUES ('96', '197', '178', '1426068285');
INSERT INTO `task_follow` VALUES ('100', '196', '165', '1426068338');
INSERT INTO `task_follow` VALUES ('103', '208', '181', '1426068763');
INSERT INTO `task_follow` VALUES ('109', '209', '183', '1426069616');
INSERT INTO `task_follow` VALUES ('111', '75', '235', '1426123565');
INSERT INTO `task_follow` VALUES ('113', '453', '452', '1426837648');
INSERT INTO `task_follow` VALUES ('114', '211', '162', '1427076069');
INSERT INTO `task_follow` VALUES ('115', '479', '317', '1427077122');
INSERT INTO `task_follow` VALUES ('116', '480', '318', '1427077174');
INSERT INTO `task_follow` VALUES ('117', '481', '319', '1427077402');
INSERT INTO `task_follow` VALUES ('118', '483', '332', '1427078419');
INSERT INTO `task_follow` VALUES ('119', '484', '333', '1427078535');
INSERT INTO `task_follow` VALUES ('121', '490', '489', '1427089599');
INSERT INTO `task_follow` VALUES ('122', '487', '486', '1427089612');
INSERT INTO `task_follow` VALUES ('124', '494', '493', '1427089893');
INSERT INTO `task_follow` VALUES ('126', '496', '495', '1427090168');
INSERT INTO `task_follow` VALUES ('127', '492', '491', '1427176223');
INSERT INTO `task_follow` VALUES ('129', '584', '583', '1428972994');
INSERT INTO `task_follow` VALUES ('130', '609', '608', '1429000674');
INSERT INTO `task_follow` VALUES ('135', '614', '612', '1429002487');
INSERT INTO `task_follow` VALUES ('142', '613', '612', '1429079029');
INSERT INTO `task_follow` VALUES ('143', '641', '640', '1429173770');
INSERT INTO `task_follow` VALUES ('144', '646', '645', '1429174040');
INSERT INTO `task_follow` VALUES ('145', '647', '645', '1429174075');
INSERT INTO `task_follow` VALUES ('146', '648', '645', '1429174101');
INSERT INTO `task_follow` VALUES ('147', '657', '642', '1429250498');
INSERT INTO `task_follow` VALUES ('148', '658', '642', '1429250541');
INSERT INTO `task_follow` VALUES ('154', '210', '183', '1429602158');
INSERT INTO `task_follow` VALUES ('155', '207', '179', '1429602465');
INSERT INTO `task_follow` VALUES ('156', '139', '139', '1430100932');
INSERT INTO `task_follow` VALUES ('157', '761', '760', '1430102929');
INSERT INTO `task_follow` VALUES ('158', '760', '761', '1430102940');
INSERT INTO `task_follow` VALUES ('159', '703', '755', '1430103287');
INSERT INTO `task_follow` VALUES ('161', '762', '634', '1430103571');
INSERT INTO `task_follow` VALUES ('162', '631', '762', '1430103590');
INSERT INTO `task_follow` VALUES ('164', '770', '767', '1430106680');
INSERT INTO `task_follow` VALUES ('165', '769', '768', '1430106714');
INSERT INTO `task_follow` VALUES ('166', '901', '900', '1431913702');
INSERT INTO `task_follow` VALUES ('168', '940', '944', '1432705069');
INSERT INTO `task_follow` VALUES ('169', '941', '944', '1432705084');
INSERT INTO `task_follow` VALUES ('175', '619', '617', '1433382728');
INSERT INTO `task_follow` VALUES ('176', '616', '615', '1433729866');
INSERT INTO `task_follow` VALUES ('178', '618', '615', '1434099352');
INSERT INTO `task_follow` VALUES ('179', '620', '619', '1434099518');
INSERT INTO `task_follow` VALUES ('180', '612', '609', '1434099671');
INSERT INTO `task_follow` VALUES ('184', '625', '623', '1434101567');
INSERT INTO `task_follow` VALUES ('276', '1213', '1212', '1434607546');
INSERT INTO `task_follow` VALUES ('278', '1219', '1218', '1434607668');
INSERT INTO `task_follow` VALUES ('279', '1221', '1218', '1434607676');
INSERT INTO `task_follow` VALUES ('280', '1223', '1218', '1434607692');
INSERT INTO `task_follow` VALUES ('281', '1236', '1230', '1434607713');
INSERT INTO `task_follow` VALUES ('282', '1232', '1230', '1434607776');
INSERT INTO `task_follow` VALUES ('283', '1214', '1212', '1434609708');
INSERT INTO `task_follow` VALUES ('286', '1222', '1218', '1434609755');
INSERT INTO `task_follow` VALUES ('287', '1224', '1218', '1434609763');
INSERT INTO `task_follow` VALUES ('288', '1237', '1230', '1434609773');
INSERT INTO `task_follow` VALUES ('289', '1233', '1230', '1434609779');
INSERT INTO `task_follow` VALUES ('291', '1243', '1239', '1434684948');
INSERT INTO `task_follow` VALUES ('292', '1253', '1252', '1434684962');
INSERT INTO `task_follow` VALUES ('293', '1257', '1254', '1434686269');
INSERT INTO `task_follow` VALUES ('294', '1300', '1261', '1434687577');
INSERT INTO `task_follow` VALUES ('299', '1289', '1262', '1434687698');
INSERT INTO `task_follow` VALUES ('300', '1286', '1260', '1434687705');
INSERT INTO `task_follow` VALUES ('301', '1287', '1260', '1434687713');
INSERT INTO `task_follow` VALUES ('302', '1288', '1261', '1434687720');
INSERT INTO `task_follow` VALUES ('303', '1241', '1239', '1434687731');
INSERT INTO `task_follow` VALUES ('304', '1242', '1239', '1434687735');
INSERT INTO `task_follow` VALUES ('305', '1297', '1215', '1434687757');
INSERT INTO `task_follow` VALUES ('306', '1296', '1215', '1434687761');
INSERT INTO `task_follow` VALUES ('308', '1295', '1215', '1434687766');
INSERT INTO `task_follow` VALUES ('309', '1294', '1215', '1434687771');
INSERT INTO `task_follow` VALUES ('310', '1293', '1215', '1434687775');
INSERT INTO `task_follow` VALUES ('311', '1292', '1215', '1434687780');
INSERT INTO `task_follow` VALUES ('312', '1291', '1215', '1434690423');
INSERT INTO `task_follow` VALUES ('313', '1290', '1215', '1434690429');
INSERT INTO `task_follow` VALUES ('314', '1285', '1260', '1434690445');
INSERT INTO `task_follow` VALUES ('315', '1284', '1262', '1434690451');
INSERT INTO `task_follow` VALUES ('316', '1283', '1262', '1434690456');
INSERT INTO `task_follow` VALUES ('318', '1282', '1212', '1434690497');
INSERT INTO `task_follow` VALUES ('323', '1220', '1218', '1434697984');
INSERT INTO `task_follow` VALUES ('324', '1217', '1215', '1434698004');
INSERT INTO `task_follow` VALUES ('325', '1235', '1230', '1434698050');
INSERT INTO `task_follow` VALUES ('326', '1216', '1215', '1435017161');
INSERT INTO `task_follow` VALUES ('327', '1255', '1254', '1435022344');
INSERT INTO `task_follow` VALUES ('328', '1256', '1254', '1435022349');
INSERT INTO `task_follow` VALUES ('329', '1229', '1225', '1435137828');
INSERT INTO `task_follow` VALUES ('330', '1228', '1225', '1435137834');
INSERT INTO `task_follow` VALUES ('331', '1245', '1244', '1435201769');
INSERT INTO `task_follow` VALUES ('332', '1247', '1246', '1435201776');
INSERT INTO `task_follow` VALUES ('333', '1268', '1240', '1435201789');
INSERT INTO `task_follow` VALUES ('334', '1269', '1240', '1435201796');
INSERT INTO `task_follow` VALUES ('335', '1270', '1240', '1435201802');
INSERT INTO `task_follow` VALUES ('336', '1271', '1240', '1435201807');
INSERT INTO `task_follow` VALUES ('337', '1248', '1246', '1435201816');
INSERT INTO `task_follow` VALUES ('338', '1343', '1338', '1435296439');
INSERT INTO `task_follow` VALUES ('339', '1346', '1338', '1435298103');
INSERT INTO `task_follow` VALUES ('341', '1305', '1352', '1435643078');

-- ----------------------------
-- Table structure for task_history
-- ----------------------------
DROP TABLE IF EXISTS `task_history`;
CREATE TABLE `task_history` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '用户id',
  `task_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '任务id',
  `current` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '当前状态',
  `next` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '下一个状态',
  `create_time` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1455 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for task_status
-- ----------------------------
DROP TABLE IF EXISTS `task_status`;
CREATE TABLE `task_status` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL DEFAULT '' COMMENT '状态名称',
  `sort` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '顺序',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建名称',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COMMENT='任务状态表';

-- ----------------------------
-- Records of task_status
-- ----------------------------
INSERT INTO `task_status` VALUES ('10', '待开发', '1', '1425622025');
INSERT INTO `task_status` VALUES ('20', '开发中', '2', '1425622010');
INSERT INTO `task_status` VALUES ('50', '已完成', '5', '1425622025');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mobile` char(11) NOT NULL DEFAULT '' COMMENT '手机号',
  `worker_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '员工号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `salt` char(32) NOT NULL DEFAULT '' COMMENT '盐',
  `name` char(10) NOT NULL DEFAULT '' COMMENT '名字',
  `email` varchar(120) NOT NULL DEFAULT '' COMMENT '邮箱',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `worker_num` (`worker_num`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COMMENT='人员';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('44', '18607946001', '123456', '8c556e7c4c56105bac06aa0f5c3c21cd', 'a241b0a80491f797f4225c771e69753f', '阿妹', 'yzb@qq.com', '1425954460');
INSERT INTO `user` VALUES ('45', '18607946002', '123457', '', '', '路人甲', 'yzb@qq.com', '1425980995');
INSERT INTO `user` VALUES ('46', '18607946003', '123458', '', '', '路人乙', 'yzb@qq.com', '1425993528');
INSERT INTO `user` VALUES ('47', '18607946004', '123459', '', '', '路人丙', 'yzb@qq.com', '1426039172');
INSERT INTO `user` VALUES ('48', '18607946005', '123460', '', '', '路人丁', 'yzb@qq.com', '1426039474');
INSERT INTO `user` VALUES ('49', '18607946006', '123461', '', '', '陈小威', 'yzb@qq.com', '1426040388');
INSERT INTO `user` VALUES ('50', '18607946007', '123462', '', '', '高大强', 'yzb@qq.com', '1426041245');
INSERT INTO `user` VALUES ('51', '18607946008', '123463', '', '', '程哥哥', 'yzb@qq.com', '1426041523');
INSERT INTO `user` VALUES ('52', '18607946009', '123464', '', '', '杨小泽', 'yzb@qq.com', '1426041764');
INSERT INTO `user` VALUES ('53', '18607946010', '123465', '', '', '杨洋', 'yzb@qq.com', '1426043313');
INSERT INTO `user` VALUES ('54', '18607946011', '123466', '', '', '波波', 'yzb@qq.com', '1426043995');
INSERT INTO `user` VALUES ('55', '18607946012', '123467', '', '', '宏哥', 'yzb@qq.com', '1426044030');
INSERT INTO `user` VALUES ('56', '18607946013', '123468', '', '', '才兄', 'yzb@qq.com', '1426044044');
INSERT INTO `user` VALUES ('57', '18607946014', '123469', '', '', '超超', 'yzb@qq.com', '1426044438');
INSERT INTO `user` VALUES ('58', '18607946015', '123470', '', '', '世界先生', 'yzb@qq.com', '1426044508');
INSERT INTO `user` VALUES ('59', '18607946016', '123471', '', '', '大生', 'yzb@qq.com', '1426045384');
INSERT INTO `user` VALUES ('60', '18607946017', '123472', '', '', '小倩', 'yzb@qq.com', '1426054083');
INSERT INTO `user` VALUES ('61', '18607946018', '123473', '', '', '小何', 'yzb@qq.com', '1426070033');
INSERT INTO `user` VALUES ('62', '18607946019', '123474', '', '', '小慧', 'yzb@qq.com', '1426075560');
INSERT INTO `user` VALUES ('63', '18607946020', '123475', '', '', '陈大巍', 'yzb@qq.com', '1426167390');
INSERT INTO `user` VALUES ('64', '18607946021', '123476', '', '', '水木年华', 'yzb@qq.com', '1426832453');
INSERT INTO `user` VALUES ('65', '18607946022', '123477', '', '', 'QA妹纸', 'yzb@qq.com', '1429256078');
INSERT INTO `user` VALUES ('67', '18607946023', '123478', '', '', '策划兄弟', 'yzb@qq.com', '0');
INSERT INTO `user` VALUES ('68', '18607946024', '123479', '', '', '小黄', 'yzb@qq.com', '0');
INSERT INTO `user` VALUES ('69', '18607946025', '123480', '', '', '小林', 'yzb@qq.com', '0');
INSERT INTO `user` VALUES ('70', '18607946026', '123481', '', '', '小侯', 'yzb@qq.com', '0');
INSERT INTO `user` VALUES ('71', '18607946027', '123482', '', '', '多多', 'yzb@qq.com', '0');

-- ----------------------------
-- Table structure for version
-- ----------------------------
DROP TABLE IF EXISTS `version`;
CREATE TABLE `version` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '所属项目ID',
  `name` char(6) NOT NULL DEFAULT '' COMMENT '版本名称',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '开始时间',
  `end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '截止时间',
  `relaxed` varchar(120) NOT NULL DEFAULT '' COMMENT '休息日',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uniq_pn` (`project_id`,`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='版本';

-- ----------------------------
-- Records of version
-- ----------------------------
INSERT INTO `version` VALUES ('9', '43', 'V0.1', '1425978909', '1428657309', '', '99', '1425978864');
INSERT INTO `version` VALUES ('10', '43', 'V0.2', '1428657329', '1431249329', '', '99', '1425978885');
INSERT INTO `version` VALUES ('11', '44', 'V0.1', '1425866011', '1429840411', '20150314,20150315,20150321,20150322,20150328,20150329', '1', '1426038914');
INSERT INTO `version` VALUES ('12', '45', 'v1', '1426044109', '1434770509', '', '1', '1426044052');
INSERT INTO `version` VALUES ('13', '50', 'v2.3', '1428905700', '1430460900', '', '0', '1428905607');
INSERT INTO `version` VALUES ('14', '49', 'V0.1', '1428921085', '1430389885', '20150314,20150315,20150321,20150322,20150328,20150329', '1', '1428920952');
INSERT INTO `version` VALUES ('15', '47', '1.0.0', '1425881144', '1435644344', '', '0', '1428991596');
INSERT INTO `version` VALUES ('16', '48', 'v1.0.0', '1429145585', '1433119985', '', '0', '1429145481');
INSERT INTO `version` VALUES ('18', '51', 'V1.1', '1428914747', '1429865147', '', '1', '1429173855');
INSERT INTO `version` VALUES ('19', '46', 'V1.0', '1429181300', '1435661300', '', '1', '1429181323');
INSERT INTO `version` VALUES ('20', '52', 'V1.0', '1429519426', '1432975426', '', '1', '1429519443');
INSERT INTO `version` VALUES ('21', '51', 'V1.2', '1429520744', '1430989544', '', '1', '1429520777');
INSERT INTO `version` VALUES ('22', '53', 'V1.0', '1426905668', '1435632068', '', '0', '1429584279');
INSERT INTO `version` VALUES ('23', '51', 'V1.3', '1430705270', '1431655670', '', '0', '0');
INSERT INTO `version` VALUES ('24', '54', 'V0.1', '1431446400', '1432224000', '', '0', '1431323815');
INSERT INTO `version` VALUES ('25', '50', 'v2.3.1', '1431595034', '1431595034', '', '0', '0');
INSERT INTO `version` VALUES ('26', '50', '2.3.2', '1431595099', '1431595099', '', '99', '0');
INSERT INTO `version` VALUES ('27', '49', '服务化改造V', '1431915496', '1435285096', '', '0', '0');
INSERT INTO `version` VALUES ('28', '44', 'V1.1', '1432003492', '1432262692', '', '0', '0');
INSERT INTO `version` VALUES ('29', '50', 'ID防刷', '1431931193', '1433486393', '', '0', '0');
INSERT INTO `version` VALUES ('30', '50', 'v2.3.2', '1432709687', '1433487287', '', '0', '0');
INSERT INTO `version` VALUES ('31', '44', 'V2.0', '1433244643', '1434108643', '', '0', '0');
INSERT INTO `version` VALUES ('32', '55', 'V2.0', '1433174400', '1434038400', '', '99', '1433215945');
INSERT INTO `version` VALUES ('33', '52', 'V2.0', '1434099298', '1435654498', '', '0', '0');
INSERT INTO `version` VALUES ('34', '50', 'v2.4.0', '1434442752', '1435911552', '', '0', '0');
INSERT INTO `version` VALUES ('35', '50', 'v2.4.1', '1436170840', '1437121240', '', '99', '0');
INSERT INTO `version` VALUES ('36', '44', '导购平台体验', '1435293713', '1440564113', '', '0', '0');
INSERT INTO `version` VALUES ('37', '51', 'V1.4', '1435651992', '1435911192', '', '0', '0');
INSERT INTO `version` VALUES ('38', '56', '7月份', '1435741599', '1438333599', '', '1', '0');
