/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : indoor

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-07-08 20:41:39
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for il_building
-- ----------------------------
DROP TABLE IF EXISTS `il_building`;
CREATE TABLE `il_building` (
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '建筑id',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑名称',
  `totalfloor` smallint(2) unsigned NOT NULL COMMENT '建筑总层数',
  `height` smallint(6) NOT NULL COMMENT '建筑高度',
  `coordinate` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '建筑地址',
  `comment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '主管单位',
  PRIMARY KEY (`bui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_building
-- ----------------------------
INSERT INTO `il_building` VALUES ('{BFF5481F-A3DF-F185-927A-83FF572351DB}', '建筑以', '60', '300', 'fasdf', '福华三路100号', '福田中队负责', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');
INSERT INTO `il_building` VALUES ('{6642EB69-0EC0-25FF-29A7-C2842E5AB4A7}', '建筑二', '100', '32767', 'fdsafd', '北四道1号', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

-- ----------------------------
-- Table structure for il_floor
-- ----------------------------
DROP TABLE IF EXISTS `il_floor`;
CREATE TABLE `il_floor` (
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `number` tinyint(2) unsigned NOT NULL COMMENT '楼层号',
  `height` smallint(3) unsigned NOT NULL COMMENT '层高',
  `layout` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '楼层布局',
  `coordinate` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '底面坐标',
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`flo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_floor
-- ----------------------------
INSERT INTO `il_floor` VALUES ('{4DCEC62F-F315-2360-E3FC-21A711B28948}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '3', '211', 'dsaf', 'fdsaf', '没有备注');
INSERT INTO `il_floor` VALUES ('{FF45E1EB-0721-7D71-9608-BC212359908D}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}', '2', '4554', 'dsfad', 'dasfd', '备注2层');

-- ----------------------------
-- Table structure for il_group
-- ----------------------------
DROP TABLE IF EXISTS `il_group`;
CREATE TABLE `il_group` (
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '组长',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0正常1弃用',
  PRIMARY KEY (`gro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_group
-- ----------------------------
INSERT INTO `il_group` VALUES ('{0AFDC3FA-F61E-C09E-B120-57F755E77408}', '第二组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_group` VALUES ('{7F24EB5F-8BF5-0B50-3B14-17654B7593AD}', '第一组', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_incident
-- ----------------------------
DROP TABLE IF EXISTS `il_incident`;
CREATE TABLE `il_incident` (
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件名称',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '事件类型',
  `description` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '事件描述',
  `start_time` int(11) NOT NULL COMMENT '事件开始事件',
  `end_time` int(11) NOT NULL COMMENT '事件结束时间',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  PRIMARY KEY (`inc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_incident
-- ----------------------------
INSERT INTO `il_incident` VALUES ('{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '事件一', '1', '突发火灾', '1462594528', '1462612528', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}');

-- ----------------------------
-- Table structure for il_inc_bui
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_bui`;
CREATE TABLE `il_inc_bui` (
  `ibui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件建筑关联表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事发建筑',
  PRIMARY KEY (`ibui_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_bui
-- ----------------------------
INSERT INTO `il_inc_bui` VALUES ('{45614C04-ED5F-C84B-DFAA-845B65FE1194}', '{48460920-1AA0-BF9A-34DB-2358A2E7A4E4}', '{BFF5481F-A3DF-F185-927A-83FF572351DB}');

-- ----------------------------
-- Table structure for il_inc_lmar
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_lmar`;
CREATE TABLE `il_inc_lmar` (
  `ilma_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '事件、定位信标关联表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件id',
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标所在建筑物id',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标所在楼层id',
  `start_time` int(11) NOT NULL COMMENT '信标开始工作时间',
  `end_time` int(11) NOT NULL COMMENT '信标结束工作时间',
  `x` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标x坐标',
  `y` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标y坐标',
  `z` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '信标z坐标',
  PRIMARY KEY (`ilma_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_lmar
-- ----------------------------

-- ----------------------------
-- Table structure for il_inc_per
-- ----------------------------
DROP TABLE IF EXISTS `il_inc_per`;
CREATE TABLE `il_inc_per` (
  `iper_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '参与事件人员表id',
  `inc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属事件id',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '当事人员id',
  `track` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人员状态轨迹文件',
  PRIMARY KEY (`iper_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_inc_per
-- ----------------------------

-- ----------------------------
-- Table structure for il_local_equipment
-- ----------------------------
DROP TABLE IF EXISTS `il_local_equipment`;
CREATE TABLE `il_local_equipment` (
  `lequ_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备名',
  `buy_time` int(11) NOT NULL DEFAULT '0' COMMENT '购入时间',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用',
  PRIMARY KEY (`lequ_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_local_equipment
-- ----------------------------
INSERT INTO `il_local_equipment` VALUES ('', '终端一', '2044', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_local_equipment` VALUES ('{EDB3F169-BC5B-DE15-F20E-1A68AF657B8E}', '终端二', '2056', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{81667213-50DA-4AEC-9EC8-B11097123D3B}', '中断而', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_local_equipment` VALUES ('{C1CCA840-F2A8-89CE-DD58-32514ACCE254}', '', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{D81A2BAE-513B-4796-22A7-7D71848CE04C}', '终端4', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_local_equipment` VALUES ('{CB98BEEB-7D18-58F9-E138-43FFD0B04CF1}', '终端三', '639244800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_location_mark
-- ----------------------------
DROP TABLE IF EXISTS `il_location_mark`;
CREATE TABLE `il_location_mark` (
  `lmar_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位信标id',
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '信标类型',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位',
  `mac` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用',
  PRIMARY KEY (`lmar_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_location_mark
-- ----------------------------
INSERT INTO `il_location_mark` VALUES ('{C7448A9E-A9CD-01D5-87FF-4FFC5DB9ECCC}', '信标一', '1', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', 'fdsaf6565', '1');
INSERT INTO `il_location_mark` VALUES ('{50E15174-63B4-3C66-6F5C-EE3B298233E7}', '信标二', '2', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '6556+56sdf', '0');

-- ----------------------------
-- Table structure for il_locator
-- ----------------------------
DROP TABLE IF EXISTS `il_locator`;
CREATE TABLE `il_locator` (
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `buy_time` int(11) NOT NULL DEFAULT '0',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0未使用，1正常在用，2正常停用，3故障停用',
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_locator
-- ----------------------------
INSERT INTO `il_locator` VALUES ('{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '定位模块一', '1329148800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{40F07D59-23A7-1CB7-E4F3-512239754508}', '定位模块二', '1370275200', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{96C78A19-C82A-6A0A-0B2D-6A86CC031088}', '定位模块三', '2012', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{9548413F-9E38-FEC4-1636-58BEAD37A2EF}', '模块五', '545444454', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{A24AAF1B-AD2D-03D7-B454-274B1FA99A38}', '模块六', '2147483647', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '1');
INSERT INTO `il_locator` VALUES ('{16CCCA18-3A73-3E5A-BB60-FA8FF6DC876D}', '模块七', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{FA9A37EC-758B-6877-6E12-49F9749322B6}', '模块八', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{C3A80AB2-655A-F369-C341-D491D1E6E939}', '模块九', '2147483647', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{1A306EC7-3826-5578-0E04-D257EB43CF3C}', '魔窟啊', '0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');
INSERT INTO `il_locator` VALUES ('{0B725BAF-7F7D-1ACA-CF37-A586AA79ADEA}', '定位仪', '1399564800', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0');

-- ----------------------------
-- Table structure for il_organization
-- ----------------------------
DROP TABLE IF EXISTS `il_organization`;
CREATE TABLE `il_organization` (
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `abbr` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `address` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `p_org_id` char(38) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '父级单位id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`org_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_organization
-- ----------------------------

-- ----------------------------
-- Table structure for il_outfire_facility
-- ----------------------------
DROP TABLE IF EXISTS `il_outfire_facility`;
CREATE TABLE `il_outfire_facility` (
  `ofac_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施id',
  `number` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '设备编号',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '消防设施名称',
  `type` tinyint(1) NOT NULL COMMENT '类型，0灭火器，1消防栓',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层id',
  `coordinate` char(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置坐标',
  `place_time` int(11) NOT NULL COMMENT '放置时间',
  `remove_time` int(11) DEFAULT NULL COMMENT '移除时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1移除，2故障',
  PRIMARY KEY (`ofac_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_outfire_facility
-- ----------------------------
INSERT INTO `il_outfire_facility` VALUES ('{D2A08936-515C-A10F-CD52-8A9164C70FCD}', '44545', '灭火器', '1', '贝塔尔大厦', '3', '45545', '2015', null, '0');

-- ----------------------------
-- Table structure for il_person
-- ----------------------------
DROP TABLE IF EXISTS `il_person`;
CREATE TABLE `il_person` (
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '人员主键guid（38位）',
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '姓名',
  `sex` tinyint(1) unsigned NOT NULL COMMENT '性别：0男，1女',
  `birthday` int(11) NOT NULL DEFAULT '0' COMMENT '出生日期',
  `pic` varchar(48) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '头像url',
  `pidtype` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '证件类型0身份证1士官证',
  `pid` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '证件号',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '单位id',
  `gro_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '所属组',
  `position` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '职务',
  `rank` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '警衔',
  `join_time` int(11) NOT NULL DEFAULT '0' COMMENT '入伍时间',
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '绑定定位器',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '0在岗，1离职',
  PRIMARY KEY (`per_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_person
-- ----------------------------
INSERT INTO `il_person` VALUES ('{5B5E18E7-22E5-8C2F-3E50-2B0803EF85FE}', '人员三', '0', '65566565', '20170613\\eae2b17ecf8e93a1999bf', '1', '444444444', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '3', '1433779200', '3', '0');
INSERT INTO `il_person` VALUES ('{25EF63DD-7B3B-3770-16C2-2A6E65BEE290}', '王五', '1', '1396627200', '20170613\\eae2b17ecf8e93a1999bf', '1', '6546545454', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1258732800', '2', '0');
INSERT INTO `il_person` VALUES ('{485A04A4-90BC-C425-E350-F7654B6B6FC9}', '李三', '0', '618591600', '20170613\\eae2b17ecf8e93a1999bf', '1', '456446', '{B7E75C90-5D60-85C4-C0D2-307EBDE3981B}', '', '2', '2', '1260633600', '{A73E1147-BC5F-C6AB-55D2-266642AA1C4E}', '0');
INSERT INTO `il_person` VALUES ('{F6863A60-4D79-4934-95AB-648D504E004B}', '人员w', '1', '-460022400', '20170623\\990c0207bff34c60304697247a7263d7.jpg', '0', '65556665', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '1430668800', '2', '0');
INSERT INTO `il_person` VALUES ('{A893365B-305A-CEDB-7688-9720B5330015}', '人员刘', '0', '2077', '20170622\\37016c6b2c532214f53637a021c7584e.jpg', '0', '95456554', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '3', '2044', '2', '0');
INSERT INTO `il_person` VALUES ('{B4A661EB-B3F5-C40F-B741-9053CC5D2B28}', '人员发', '0', '-28800', '20170623\\b7b27fab7c77201189a9abd805731472.jpg', '0', '654655', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '3', '0');
INSERT INTO `il_person` VALUES ('{E7381CC9-D5A7-9C3E-4F9E-85BA77127E5C}', '人员李', '0', '-28800', '20170613\\eae2b17ecf8e93a1999bf', '0', '5655656+565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '2', '2', '-28800', '2', '0');
INSERT INTO `il_person` VALUES ('{6F5AE69C-A5A9-9ABD-A614-1ACF04285F17}', '李三', '0', '1399305600', '', '0', '545645', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1439049600', '1', '0');
INSERT INTO `il_person` VALUES ('{24C6D7EB-D5D6-E6EC-65F4-F3C650E0C8B1}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '', '', '0', '', '0');
INSERT INTO `il_person` VALUES ('{B2C35EE6-4EE5-7D57-A5F4-8B8ACC081164}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '', '', '0', '', '0');
INSERT INTO `il_person` VALUES ('{A77175CD-9C4B-76CB-7CBE-CF1C96632F61}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '', '', '0', '', '0');
INSERT INTO `il_person` VALUES ('{CF4A8E26-72E6-D9D4-8FB1-15A9230CF631}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '', '', '0', '', '0');
INSERT INTO `il_person` VALUES ('{3E078409-5723-9415-56F4-6044B0AE8688}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '', '', '0', '', '0');
INSERT INTO `il_person` VALUES ('{E72D8891-8B90-CA1E-A324-D022D2CB6102}', '王宇', '0', '2065', '', '0', '965454544', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '2056', '1', '0');
INSERT INTO `il_person` VALUES ('{0A9ECA32-F234-A673-4837-B2388C12C317}', '王柳', '0', '1420041600', '', '0', '54546565', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '1430755200', '1', '0');
INSERT INTO `il_person` VALUES ('{162FABDF-EA15-240F-551F-D066D1601701}', '', '0', '0', '', '0', '', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '0', '1', '0');
INSERT INTO `il_person` VALUES ('{58E2B509-502D-E77D-3902-A3A6F11ED240}', '王文', '0', '2065', '', '0', '546+65+65', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '2044', '1', '0');
INSERT INTO `il_person` VALUES ('{0F6AB859-DA46-C1A3-489A-A1B2BABDFBED}', '王文', '0', '1777996800', '', '0', '+656566', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '', '1', '1', '0', '1', '0');

-- ----------------------------
-- Table structure for il_tag
-- ----------------------------
DROP TABLE IF EXISTS `il_tag`;
CREATE TABLE `il_tag` (
  `tag_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '固定物件id',
  `type` tinyint(1) NOT NULL COMMENT '类型，0灭火器，1消防栓',
  `bui_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属建筑',
  `flo_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '楼层id',
  `coordinate` char(18) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '位置坐标',
  `place_time` int(11) NOT NULL COMMENT '放置时间',
  `remove_time` int(11) DEFAULT NULL COMMENT '移除时间',
  `status` tinyint(1) unsigned NOT NULL COMMENT '0正常，1移除，2故障',
  PRIMARY KEY (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_tag
-- ----------------------------

-- ----------------------------
-- Table structure for il_usage
-- ----------------------------
DROP TABLE IF EXISTS `il_usage`;
CREATE TABLE `il_usage` (
  `usa_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用记录id',
  `loc_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '定位模块id',
  `per_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '使用人员id',
  `start_time` int(11) NOT NULL COMMENT '开始时间',
  `end_time` int(11) DEFAULT NULL COMMENT '结束时间，null表示正在使用中',
  PRIMARY KEY (`usa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of il_usage
-- ----------------------------

-- ----------------------------
-- Table structure for il_user
-- ----------------------------
DROP TABLE IF EXISTS `il_user`;
CREATE TABLE `il_user` (
  `use_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户登录名',
  `password` char(32) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '用户登录密码',
  `email` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系邮箱',
  `phone` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '联系手机号',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '备注说明',
  `login_num` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `login_time` int(11) NOT NULL DEFAULT '0',
  `login_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '最后一次登录ip',
  `org_id` char(38) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '所属单位id',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `authorize` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `create_by` char(38) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '创建人',
  `create_time` int(11) NOT NULL DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`use_id`),
  UNIQUE KEY `index_system_user_username` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='系统用户表';

-- ----------------------------
-- Records of il_user
-- ----------------------------
INSERT INTO `il_user` VALUES ('{31B847C6-8598-388E-9E87-C75C37F8076B}', 'yonghu3', '123456', '123456@qq.com', '13888888888', '第二个用户', '0', '0', '0.0.0.0', '{3033D1DB-3C92-6624-DCDE-0435498BB60D}', '0', '', '', '1499341299');

-- ----------------------------
-- Table structure for system_auth
-- ----------------------------
DROP TABLE IF EXISTS `system_auth`;
CREATE TABLE `system_auth` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '权限名称',
  `status` tinyint(1) unsigned DEFAULT '1' COMMENT '状态(1:禁用,2:启用)',
  `sort` smallint(6) unsigned DEFAULT '0' COMMENT '排序权重',
  `desc` varchar(255) DEFAULT NULL COMMENT '备注说明',
  `create_by` bigint(11) unsigned DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_auth_title` (`title`) USING BTREE,
  KEY `index_system_auth_status` (`status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统权限表';

-- ----------------------------
-- Records of system_auth
-- ----------------------------

-- ----------------------------
-- Table structure for system_auth_node
-- ----------------------------
DROP TABLE IF EXISTS `system_auth_node`;
CREATE TABLE `system_auth_node` (
  `auth` bigint(20) unsigned DEFAULT NULL COMMENT '角色ID',
  `node` varchar(200) DEFAULT NULL COMMENT '节点路径',
  KEY `index_system_auth_auth` (`auth`) USING BTREE,
  KEY `index_system_auth_node` (`node`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色与节点关系表';

-- ----------------------------
-- Records of system_auth_node
-- ----------------------------

-- ----------------------------
-- Table structure for system_config
-- ----------------------------
DROP TABLE IF EXISTS `system_config`;
CREATE TABLE `system_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '配置编码',
  `value` varchar(500) DEFAULT NULL COMMENT '配置值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of system_config
-- ----------------------------
INSERT INTO `system_config` VALUES ('148', 'site_name', 'Think.Admin Demo');
INSERT INTO `system_config` VALUES ('149', 'site_copy', '广州楚才信息科技有限公司 © 2014~2017');
INSERT INTO `system_config` VALUES ('164', 'storage_type', 'local');
INSERT INTO `system_config` VALUES ('165', 'storage_qiniu_is_https', '1');
INSERT INTO `system_config` VALUES ('166', 'storage_qiniu_bucket', 'static');
INSERT INTO `system_config` VALUES ('167', 'storage_qiniu_domain', 'static.ctolog.com');
INSERT INTO `system_config` VALUES ('168', 'storage_qiniu_access_key', '');
INSERT INTO `system_config` VALUES ('169', 'storage_qiniu_secret_key', '');
INSERT INTO `system_config` VALUES ('170', 'storage_qiniu_region', '华东');
INSERT INTO `system_config` VALUES ('173', 'app_name', 'Think.Admin');
INSERT INTO `system_config` VALUES ('174', 'app_version', '1.00 dev');
INSERT INTO `system_config` VALUES ('176', 'browser_icon', 'https://think.ctolog.com/static/upload/f47b8fe06e38ae99/08e8398da45583b9.png');
INSERT INTO `system_config` VALUES ('184', 'wechat_appid', '');
INSERT INTO `system_config` VALUES ('185', 'wechat_appsecret', '');
INSERT INTO `system_config` VALUES ('186', 'wechat_token', '');
INSERT INTO `system_config` VALUES ('187', 'wechat_encodingaeskey', '');
INSERT INTO `system_config` VALUES ('188', 'wechat_mch_id', '');
INSERT INTO `system_config` VALUES ('189', 'wechat_partnerkey', '');
INSERT INTO `system_config` VALUES ('194', 'wechat_cert_key', '');
INSERT INTO `system_config` VALUES ('196', 'wechat_cert_cert', '');
INSERT INTO `system_config` VALUES ('197', 'tongji_baidu_key', 'aa2f9869e9b578122e4692de2bd9f80f');
INSERT INTO `system_config` VALUES ('198', 'tongji_cnzz_key', '1261854404');
INSERT INTO `system_config` VALUES ('199', 'storage_oss_bucket', '');
INSERT INTO `system_config` VALUES ('200', 'storage_oss_keyid', '');
INSERT INTO `system_config` VALUES ('201', 'storage_oss_secret', '');
INSERT INTO `system_config` VALUES ('202', 'storage_oss_domain', '');
INSERT INTO `system_config` VALUES ('203', 'storage_oss_is_https', '1');

-- ----------------------------
-- Table structure for system_log
-- ----------------------------
DROP TABLE IF EXISTS `system_log`;
CREATE TABLE `system_log` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip` char(15) NOT NULL DEFAULT '' COMMENT '操作者IP地址',
  `node` char(200) NOT NULL DEFAULT '' COMMENT '当前操作节点',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '操作人用户名',
  `action` varchar(200) NOT NULL DEFAULT '' COMMENT '操作行为',
  `content` text NOT NULL COMMENT '操作内容描述',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5173 DEFAULT CHARSET=utf8 COMMENT='系统操作日志表';

-- ----------------------------
-- Records of system_log
-- ----------------------------
INSERT INTO `system_log` VALUES ('5131', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-16 11:58:06');
INSERT INTO `system_log` VALUES ('5132', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-17 12:39:43');
INSERT INTO `system_log` VALUES ('5133', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-19 10:03:34');
INSERT INTO `system_log` VALUES ('5134', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-20 11:32:14');
INSERT INTO `system_log` VALUES ('5135', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-21 09:39:13');
INSERT INTO `system_log` VALUES ('5136', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-23 09:40:16');
INSERT INTO `system_log` VALUES ('5137', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-28 18:35:26');
INSERT INTO `system_log` VALUES ('5138', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-29 20:26:10');
INSERT INTO `system_log` VALUES ('5139', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-06-30 15:09:01');
INSERT INTO `system_log` VALUES ('5140', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 10:17:25');
INSERT INTO `system_log` VALUES ('5141', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 11:41:28');
INSERT INTO `system_log` VALUES ('5142', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 11:52:50');
INSERT INTO `system_log` VALUES ('5143', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 14:09:21');
INSERT INTO `system_log` VALUES ('5144', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 17:10:06');
INSERT INTO `system_log` VALUES ('5145', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 17:10:16');
INSERT INTO `system_log` VALUES ('5146', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-03 17:36:49');
INSERT INTO `system_log` VALUES ('5147', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-03 18:56:11');
INSERT INTO `system_log` VALUES ('5148', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-04 20:26:43');
INSERT INTO `system_log` VALUES ('5149', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 09:33:30');
INSERT INTO `system_log` VALUES ('5150', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 10:46:32');
INSERT INTO `system_log` VALUES ('5151', '0.0.0.0', 'admin/login/out', '', '系统管理', '用户退出系统成功', '2017-07-06 10:46:33');
INSERT INTO `system_log` VALUES ('5152', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:01:06');
INSERT INTO `system_log` VALUES ('5153', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:09:54');
INSERT INTO `system_log` VALUES ('5154', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:10:00');
INSERT INTO `system_log` VALUES ('5155', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:10:39');
INSERT INTO `system_log` VALUES ('5156', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:10:46');
INSERT INTO `system_log` VALUES ('5157', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:10:54');
INSERT INTO `system_log` VALUES ('5158', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:11:00');
INSERT INTO `system_log` VALUES ('5159', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:12:00');
INSERT INTO `system_log` VALUES ('5160', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:15:22');
INSERT INTO `system_log` VALUES ('5161', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:16:41');
INSERT INTO `system_log` VALUES ('5162', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:16:52');
INSERT INTO `system_log` VALUES ('5163', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:17:18');
INSERT INTO `system_log` VALUES ('5164', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:17:26');
INSERT INTO `system_log` VALUES ('5165', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:18:12');
INSERT INTO `system_log` VALUES ('5166', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:18:22');
INSERT INTO `system_log` VALUES ('5167', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:20:29');
INSERT INTO `system_log` VALUES ('5168', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:20:37');
INSERT INTO `system_log` VALUES ('5169', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:20:58');
INSERT INTO `system_log` VALUES ('5170', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:21:33');
INSERT INTO `system_log` VALUES ('5171', '0.0.0.0', 'admin/login/out', 'admin', '系统管理', '用户退出系统成功', '2017-07-06 11:28:30');
INSERT INTO `system_log` VALUES ('5172', '0.0.0.0', 'admin/login/index', 'admin', '系统管理', '用户登录系统成功', '2017-07-06 11:28:59');

-- ----------------------------
-- Table structure for system_menu
-- ----------------------------
DROP TABLE IF EXISTS `system_menu`;
CREATE TABLE `system_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '父id',
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '名称',
  `node` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '节点代码',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '菜单图标',
  `url` varchar(400) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '' COMMENT '链接',
  `params` varchar(500) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT '' COMMENT '链接参数',
  `target` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self' COMMENT '链接打开方式',
  `sort` int(11) unsigned DEFAULT '0' COMMENT '菜单排序',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '1' COMMENT '状态(0:禁用,1:启用)',
  `create_by` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '创建人',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_menu_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='系统菜单表';

-- ----------------------------
-- Records of system_menu
-- ----------------------------
INSERT INTO `system_menu` VALUES ('2', '0', '系统管理', '', '', '#', '', '_self', '1000', '1', '0', '2015-11-16 19:15:38');
INSERT INTO `system_menu` VALUES ('3', '4', '后台首页', '', 'fa fa-fw fa-tachometer', 'admin/index/main', '', '_self', '10', '1', '0', '2015-11-17 13:27:25');
INSERT INTO `system_menu` VALUES ('4', '2', '系统配置', '', '', '#', '', '_self', '100', '1', '0', '2016-03-14 18:12:55');
INSERT INTO `system_menu` VALUES ('5', '4', '网站参数', '', 'fa fa-apple', 'admin/config/index', '', '_self', '20', '1', '0', '2016-05-06 14:36:49');
INSERT INTO `system_menu` VALUES ('6', '4', '文件存储', '', 'fa fa-hdd-o', 'admin/config/file', '', '_self', '30', '1', '0', '2016-05-06 14:39:43');
INSERT INTO `system_menu` VALUES ('9', '20', '操作日志', '', 'glyphicon glyphicon-console', 'admin/log/index', '', '_self', '50', '1', '0', '2017-03-24 15:49:31');
INSERT INTO `system_menu` VALUES ('19', '20', '权限管理', '', 'fa fa-user-secret', 'admin/auth/index', '', '_self', '20', '1', '0', '2015-11-17 13:18:12');
INSERT INTO `system_menu` VALUES ('20', '2', '系统权限', '', '', '#', '', '_self', '200', '1', '0', '2016-03-14 18:11:41');
INSERT INTO `system_menu` VALUES ('21', '20', '系统菜单', '', 'glyphicon glyphicon-menu-hamburger', 'admin/menu/index', '', '_self', '30', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('22', '20', '节点管理', '', 'fa fa-ellipsis-v', 'admin/node/index', '', '_self', '10', '1', '0', '2015-11-16 19:16:16');
INSERT INTO `system_menu` VALUES ('29', '20', '系统用户', '', 'fa fa-users', 'admin/user/index', '', '_self', '40', '1', '0', '2016-10-31 14:31:40');
INSERT INTO `system_menu` VALUES ('61', '0', '微信管理', '', '', '#', '', '_self', '2000', '1', '0', '2017-03-29 11:00:21');
INSERT INTO `system_menu` VALUES ('62', '61', '微信对接配置', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:03:38');
INSERT INTO `system_menu` VALUES ('63', '62', '微信接口配置\r\n', '', 'fa fa-usb', 'wechat/config/index', '', '_self', '0', '1', '0', '2017-03-29 11:04:44');
INSERT INTO `system_menu` VALUES ('64', '62', '微信支付配置', '', 'fa fa-paypal', 'wechat/config/pay', '', '_self', '0', '1', '0', '2017-03-29 11:05:29');
INSERT INTO `system_menu` VALUES ('65', '61', '微信粉丝管理', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:08:32');
INSERT INTO `system_menu` VALUES ('66', '65', '粉丝标签', '', 'fa fa-tags', 'wechat/tags/index', '', '_self', '0', '1', '0', '2017-03-29 11:09:41');
INSERT INTO `system_menu` VALUES ('67', '65', '已关注粉丝', '', 'fa fa-wechat', 'wechat/fans/index', '', '_self', '0', '1', '0', '2017-03-29 11:10:07');
INSERT INTO `system_menu` VALUES ('68', '61', '微信订制', '', '', '#', '', '_self', '0', '1', '0', '2017-03-29 11:10:39');
INSERT INTO `system_menu` VALUES ('69', '68', '微信菜单定制', '', 'glyphicon glyphicon-phone', 'wechat/menu/index', '', '_self', '0', '1', '0', '2017-03-29 11:11:08');
INSERT INTO `system_menu` VALUES ('70', '68', '关键字管理', '', 'fa fa-paw', 'wechat/keys/index', '', '_self', '0', '1', '0', '2017-03-29 11:11:49');
INSERT INTO `system_menu` VALUES ('71', '68', '关注自动回复', '', 'fa fa-commenting-o', 'wechat/keys/subscribe', '', '_self', '0', '1', '0', '2017-03-29 11:12:32');
INSERT INTO `system_menu` VALUES ('81', '68', '无配置默认回复', '', 'fa fa-commenting-o', 'wechat/keys/defaults', '', '_self', '0', '1', '0', '2017-04-21 14:48:25');
INSERT INTO `system_menu` VALUES ('82', '61', '素材资源管理', '', '', '#', '', '_self', '0', '1', '0', '2017-04-24 11:23:18');
INSERT INTO `system_menu` VALUES ('83', '82', '添加图文', '', 'fa fa-folder-open-o', 'wechat/news/add?id=1', '', '_self', '0', '1', '0', '2017-04-24 11:23:40');
INSERT INTO `system_menu` VALUES ('85', '82', '图文列表', '', 'fa fa-file-pdf-o', 'wechat/news/index', '', '_self', '0', '1', '0', '2017-04-24 11:25:45');
INSERT INTO `system_menu` VALUES ('86', '65', '粉丝黑名单', '', 'fa fa-reddit-alien', 'wechat/fans/back', '', '_self', '0', '1', '0', '2017-05-05 16:17:03');

-- ----------------------------
-- Table structure for system_node
-- ----------------------------
DROP TABLE IF EXISTS `system_node`;
CREATE TABLE `system_node` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `node` varchar(100) DEFAULT NULL COMMENT '节点代码',
  `title` varchar(500) DEFAULT NULL COMMENT '节点标题',
  `is_menu` tinyint(1) unsigned DEFAULT '0' COMMENT '是否可设置为菜单',
  `is_auth` tinyint(1) unsigned DEFAULT '1' COMMENT '是启启动RBAC权限控制',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`),
  KEY `index_system_node_node` (`node`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8 COMMENT='系统节点表';

-- ----------------------------
-- Records of system_node
-- ----------------------------
INSERT INTO `system_node` VALUES ('3', 'admin', '系统管理', '0', '1', '2017-03-10 15:31:29');
INSERT INTO `system_node` VALUES ('4', 'admin/menu/add', '添加菜单', '0', '1', '2017-03-10 15:32:21');
INSERT INTO `system_node` VALUES ('5', 'admin/config', '系统配置', '0', '1', '2017-03-10 15:32:56');
INSERT INTO `system_node` VALUES ('6', 'admin/config/index', '网站配置', '1', '1', '2017-03-10 15:32:58');
INSERT INTO `system_node` VALUES ('7', 'admin/config/file', '文件配置', '1', '1', '2017-03-10 15:33:02');
INSERT INTO `system_node` VALUES ('8', 'admin/config/mail', '邮件配置', '0', '0', '2017-03-10 15:36:42');
INSERT INTO `system_node` VALUES ('9', 'admin/config/sms', '短信配置', '0', '0', '2017-03-10 15:36:43');
INSERT INTO `system_node` VALUES ('10', 'admin/menu/index', '菜单列表', '1', '1', '2017-03-10 15:36:50');
INSERT INTO `system_node` VALUES ('11', 'admin/node/index', '节点列表', '1', '1', '2017-03-10 15:36:59');
INSERT INTO `system_node` VALUES ('12', 'admin/node/save', '节点更新', '0', '1', '2017-03-10 15:36:59');
INSERT INTO `system_node` VALUES ('13', 'store/menu/index', '菜单列表', '1', '1', '2017-03-10 15:37:22');
INSERT INTO `system_node` VALUES ('14', 'store/menu/add', '添加菜单', '0', '1', '2017-03-10 15:37:23');
INSERT INTO `system_node` VALUES ('15', 'store/menu/edit', '编辑菜单', '0', '1', '2017-03-10 15:37:24');
INSERT INTO `system_node` VALUES ('16', 'store/menu/del', '删除菜单', '0', '1', '2017-03-10 15:37:24');
INSERT INTO `system_node` VALUES ('17', 'admin/index/index', '', '1', '1', '2017-03-10 15:39:23');
INSERT INTO `system_node` VALUES ('18', 'admin/index/main', '', '0', '1', '2017-03-14 16:21:54');
INSERT INTO `system_node` VALUES ('19', 'admin/index/pass', null, '0', '1', '2017-03-14 16:25:56');
INSERT INTO `system_node` VALUES ('20', 'admin/index/info', null, '0', '1', '2017-03-14 16:25:57');
INSERT INTO `system_node` VALUES ('21', 'store/menu/tagmove', '移动标签', '0', '1', '2017-03-14 17:07:12');
INSERT INTO `system_node` VALUES ('22', 'store/menu/tagedit', '编辑标签', '0', '1', '2017-03-14 17:07:13');
INSERT INTO `system_node` VALUES ('23', 'store/menu/tagdel', '删除标签', '0', '1', '2017-03-14 17:07:13');
INSERT INTO `system_node` VALUES ('24', 'store/menu/resume', '启用菜单', '0', '1', '2017-03-14 17:07:14');
INSERT INTO `system_node` VALUES ('25', 'store/menu/forbid', '禁用菜单', '0', '1', '2017-03-14 17:07:15');
INSERT INTO `system_node` VALUES ('26', 'store/menu/tagadd', '添加标签', '0', '1', '2017-03-14 17:07:15');
INSERT INTO `system_node` VALUES ('27', 'store/menu/hot', '设置热卖', '0', '1', '2017-03-14 17:07:18');
INSERT INTO `system_node` VALUES ('28', 'admin/index', '', '0', '1', '2017-03-14 17:27:00');
INSERT INTO `system_node` VALUES ('29', 'store/order/index', '订单列表', '1', '1', '2017-03-14 17:52:51');
INSERT INTO `system_node` VALUES ('30', 'store/index/qrcimg', '店铺二维码', '0', '1', '2017-03-14 17:52:52');
INSERT INTO `system_node` VALUES ('31', 'store/index/edit', '编辑店铺', '0', '1', '2017-03-14 17:52:55');
INSERT INTO `system_node` VALUES ('32', 'store/index/qrc', '二维码列表', '0', '1', '2017-03-14 17:52:56');
INSERT INTO `system_node` VALUES ('33', 'store/index/add', '添加店铺', '0', '1', '2017-03-14 17:52:56');
INSERT INTO `system_node` VALUES ('34', 'store/index/index', '我的店铺', '1', '1', '2017-03-14 17:52:57');
INSERT INTO `system_node` VALUES ('35', 'store/api/delcache', null, '0', '1', '2017-03-14 17:52:59');
INSERT INTO `system_node` VALUES ('36', 'store/api/getcache', null, '0', '1', '2017-03-14 17:53:00');
INSERT INTO `system_node` VALUES ('37', 'store/api/setcache', null, '0', '1', '2017-03-14 17:53:01');
INSERT INTO `system_node` VALUES ('38', 'store/api/response', null, '0', '1', '2017-03-14 17:53:01');
INSERT INTO `system_node` VALUES ('39', 'store/api/auth', null, '0', '1', '2017-03-14 17:53:02');
INSERT INTO `system_node` VALUES ('40', 'admin/user/resume', '启用用户', '1', '1', '2017-03-14 17:53:03');
INSERT INTO `system_node` VALUES ('41', 'admin/user/forbid', '禁用用户', '1', '1', '2017-03-14 17:53:03');
INSERT INTO `system_node` VALUES ('42', 'admin/user/del', '删除用户', '0', '1', '2017-03-14 17:53:04');
INSERT INTO `system_node` VALUES ('43', 'admin/user/pass', '密码修改', '0', '1', '2017-03-14 17:53:04');
INSERT INTO `system_node` VALUES ('44', 'admin/user/edit', '编辑用户', '1', '1', '2017-03-14 17:53:05');
INSERT INTO `system_node` VALUES ('45', 'admin/user/index', '用户列表', '1', '1', '2017-03-14 17:53:07');
INSERT INTO `system_node` VALUES ('46', 'admin/user/auth', '用户授权', '1', '1', '2017-03-14 17:53:08');
INSERT INTO `system_node` VALUES ('47', 'admin/user/add', '新增用户', '1', '1', '2017-03-14 17:53:09');
INSERT INTO `system_node` VALUES ('48', 'admin/plugs/icon', null, '0', '1', '2017-03-14 17:53:09');
INSERT INTO `system_node` VALUES ('49', 'admin/plugs/upload', null, '0', '1', '2017-03-14 17:53:10');
INSERT INTO `system_node` VALUES ('50', 'admin/plugs/upfile', null, '0', '1', '2017-03-14 17:53:11');
INSERT INTO `system_node` VALUES ('51', 'admin/plugs/upstate', null, '0', '1', '2017-03-14 17:53:11');
INSERT INTO `system_node` VALUES ('52', 'admin/menu/resume', '菜单启用', '0', '1', '2017-03-14 17:53:14');
INSERT INTO `system_node` VALUES ('53', 'admin/menu/forbid', '菜单禁用', '1', '1', '2017-03-14 17:53:15');
INSERT INTO `system_node` VALUES ('54', 'admin/login/index', null, '0', '1', '2017-03-14 17:53:17');
INSERT INTO `system_node` VALUES ('55', 'admin/login/out', '', '0', '1', '2017-03-14 17:53:18');
INSERT INTO `system_node` VALUES ('56', 'admin/menu/edit', '编辑菜单', '0', '0', '2017-03-14 17:53:20');
INSERT INTO `system_node` VALUES ('57', 'admin/menu/del', '菜单删除', '0', '1', '2017-03-14 17:53:21');
INSERT INTO `system_node` VALUES ('58', 'store/menu', '菜谱管理', '0', '1', '2017-03-14 17:57:47');
INSERT INTO `system_node` VALUES ('59', 'store/index', '店铺管理', '0', '1', '2017-03-14 17:58:28');
INSERT INTO `system_node` VALUES ('60', 'store', '店铺管理', '0', '1', '2017-03-14 17:58:29');
INSERT INTO `system_node` VALUES ('61', 'store/order', '订单管理', '0', '1', '2017-03-14 17:58:56');
INSERT INTO `system_node` VALUES ('62', 'admin/user', '用户管理', '0', '1', '2017-03-14 17:59:39');
INSERT INTO `system_node` VALUES ('63', 'admin/node', '节点管理', '0', '1', '2017-03-14 17:59:53');
INSERT INTO `system_node` VALUES ('64', 'admin/menu', '菜单管理', '0', '1', '2017-03-14 18:00:31');
INSERT INTO `system_node` VALUES ('65', 'admin/auth', '权限管理', '0', '1', '2017-03-17 14:37:05');
INSERT INTO `system_node` VALUES ('66', 'admin/auth/index', '权限列表', '1', '1', '2017-03-17 14:37:14');
INSERT INTO `system_node` VALUES ('67', 'admin/auth/apply', '权限节点', '1', '1', '2017-03-17 14:37:29');
INSERT INTO `system_node` VALUES ('68', 'admin/auth/add', '添加权', '0', '1', '2017-03-17 14:37:32');
INSERT INTO `system_node` VALUES ('69', 'admin/auth/edit', '编辑权限', '0', '1', '2017-03-17 14:37:36');
INSERT INTO `system_node` VALUES ('70', 'admin/auth/forbid', '禁用权限', '0', '1', '2017-03-17 14:37:38');
INSERT INTO `system_node` VALUES ('71', 'admin/auth/resume', '启用权限', '0', '1', '2017-03-17 14:37:41');
INSERT INTO `system_node` VALUES ('72', 'admin/auth/del', '删除权限', '0', '1', '2017-03-17 14:37:47');
INSERT INTO `system_node` VALUES ('73', 'admin/log/index', '日志列表', '1', '1', '2017-03-25 09:54:57');
INSERT INTO `system_node` VALUES ('74', 'admin/log/del', '删除日志', '1', '1', '2017-03-25 09:54:59');
INSERT INTO `system_node` VALUES ('75', 'admin/log', '系统日志', '0', '1', '2017-03-25 10:56:53');
INSERT INTO `system_node` VALUES ('76', 'wechat', '微信管理', '0', '1', '2017-04-05 10:52:31');
INSERT INTO `system_node` VALUES ('77', 'wechat/article', '微信文章', '0', '1', '2017-04-05 10:52:47');
INSERT INTO `system_node` VALUES ('78', 'wechat/article/index', '文章列表', '1', '1', '2017-04-05 10:52:54');
INSERT INTO `system_node` VALUES ('79', 'wechat/config', '微信配置', '0', '1', '2017-04-05 10:53:02');
INSERT INTO `system_node` VALUES ('80', 'wechat/config/index', '微信接口配置', '1', '1', '2017-04-05 10:53:16');
INSERT INTO `system_node` VALUES ('81', 'wechat/config/pay', '微信支付配置', '1', '1', '2017-04-05 10:53:18');
INSERT INTO `system_node` VALUES ('82', 'wechat/fans', '微信粉丝', '0', '1', '2017-04-05 10:53:34');
INSERT INTO `system_node` VALUES ('83', 'wechat/fans/index', '粉丝列表', '1', '1', '2017-04-05 10:53:39');
INSERT INTO `system_node` VALUES ('84', 'wechat/index', '微信主页', '0', '1', '2017-04-05 10:53:49');
INSERT INTO `system_node` VALUES ('85', 'wechat/index/index', '微信主页', '1', '1', '2017-04-05 10:53:49');
INSERT INTO `system_node` VALUES ('86', 'wechat/keys', '微信关键字', '0', '1', '2017-04-05 10:54:00');
INSERT INTO `system_node` VALUES ('87', 'wechat/keys/index', '关键字列表', '1', '1', '2017-04-05 10:54:14');
INSERT INTO `system_node` VALUES ('88', 'wechat/keys/subscribe', '关键自动回复', '1', '1', '2017-04-05 10:54:23');
INSERT INTO `system_node` VALUES ('89', 'wechat/keys/defaults', '默认自动回复', '1', '1', '2017-04-05 10:54:29');
INSERT INTO `system_node` VALUES ('90', 'wechat/menu', '微信菜单管理', '0', '1', '2017-04-05 10:54:34');
INSERT INTO `system_node` VALUES ('91', 'wechat/menu/index', '微信菜单', '1', '1', '2017-04-05 10:54:41');
INSERT INTO `system_node` VALUES ('92', 'wechat/news', '微信图文管理', '0', '1', '2017-04-05 10:54:51');
INSERT INTO `system_node` VALUES ('93', 'wechat/news/index', '图文列表', '1', '1', '2017-04-05 10:54:59');
INSERT INTO `system_node` VALUES ('94', 'wechat/notify/index', '', '0', '0', '2017-04-05 17:59:20');
INSERT INTO `system_node` VALUES ('95', 'wechat/api/index', '', '1', '1', '2017-04-06 09:30:28');
INSERT INTO `system_node` VALUES ('96', 'wechat/api', '', '0', '1', '2017-04-06 10:11:23');
INSERT INTO `system_node` VALUES ('97', 'wechat/notify', '', '0', '1', '2017-04-10 10:37:33');
INSERT INTO `system_node` VALUES ('98', 'wechat/fans/sync', '同步粉丝', '0', '1', '2017-04-13 16:30:29');
INSERT INTO `system_node` VALUES ('99', 'wechat/menu/edit', '编辑微信菜单', '0', '1', '2017-04-19 23:36:52');
INSERT INTO `system_node` VALUES ('100', 'wechat/menu/cancel', '取消微信菜单', '0', '1', '2017-04-19 23:36:54');
INSERT INTO `system_node` VALUES ('101', 'wechat/keys/edit', '编辑关键字', '0', '1', '2017-04-21 10:24:09');
INSERT INTO `system_node` VALUES ('102', 'wechat/keys/add', '添加关键字', '0', '1', '2017-04-21 10:24:09');
INSERT INTO `system_node` VALUES ('103', 'wechat/review/index', null, '0', '1', '2017-04-21 10:24:11');
INSERT INTO `system_node` VALUES ('104', 'wechat/review', '', '0', '1', '2017-04-21 10:24:18');
INSERT INTO `system_node` VALUES ('105', 'wechat/keys/del', '删除关键字', '0', '1', '2017-04-21 14:22:31');
INSERT INTO `system_node` VALUES ('106', 'wechat/news/add', '添加图文', '0', '1', '2017-04-22 22:17:29');
INSERT INTO `system_node` VALUES ('107', 'wechat/news/select', '图文选择器', '1', '1', '2017-04-22 22:17:31');
INSERT INTO `system_node` VALUES ('108', 'wechat/keys/resume', '启用关键字', '0', '1', '2017-04-25 11:03:52');
INSERT INTO `system_node` VALUES ('109', 'wechat/news/edit', '编辑图文', '0', '1', '2017-04-25 16:15:23');
INSERT INTO `system_node` VALUES ('110', 'wechat/news/push', '推送图文', '0', '1', '2017-04-25 22:32:08');
INSERT INTO `system_node` VALUES ('111', 'wechat/news/del', '删除图文', '0', '1', '2017-04-26 10:48:24');
INSERT INTO `system_node` VALUES ('112', 'wechat/keys/forbid', '禁用关键字', '0', '1', '2017-04-26 10:48:28');
INSERT INTO `system_node` VALUES ('113', 'wechat/tags/index', '标签列表', '1', '1', '2017-05-04 16:03:37');
INSERT INTO `system_node` VALUES ('114', 'wechat/tags/add', '添加标签', '0', '1', '2017-05-05 12:48:28');
INSERT INTO `system_node` VALUES ('115', 'wechat/tags/edit', '编辑标签', '0', '1', '2017-05-05 12:48:29');
INSERT INTO `system_node` VALUES ('116', 'wechat/tags/sync', '同步标签', '0', '1', '2017-05-05 12:48:30');
INSERT INTO `system_node` VALUES ('117', 'wechat/tags', '粉丝标签管理', '0', '1', '2017-05-05 13:17:12');
INSERT INTO `system_node` VALUES ('118', 'wechat/fans/backdel', '移除粉丝黑名单', '0', '1', '2017-05-05 16:56:23');
INSERT INTO `system_node` VALUES ('119', 'wechat/fans/backadd', '移入粉丝黑名单', '0', '1', '2017-05-05 16:56:30');
INSERT INTO `system_node` VALUES ('120', 'wechat/fans/back', '粉丝黑名单列表', '1', '1', '2017-05-05 16:56:38');
INSERT INTO `system_node` VALUES ('121', 'wechat/fans/tagadd', '添加粉丝标签', '0', '1', '2017-05-08 14:46:13');
INSERT INTO `system_node` VALUES ('122', 'wechat/fans/tagdel', '删除粉丝标签', '0', '1', '2017-05-08 14:46:20');

-- ----------------------------
-- Table structure for system_sequence
-- ----------------------------
DROP TABLE IF EXISTS `system_sequence`;
CREATE TABLE `system_sequence` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL COMMENT '序号类型',
  `sequence` char(50) NOT NULL COMMENT '序号值',
  `create_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_system_sequence_unique` (`type`,`sequence`) USING BTREE,
  KEY `index_system_sequence_type` (`type`) USING BTREE,
  KEY `index_system_sequence_number` (`sequence`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统序号表';

-- ----------------------------
-- Records of system_sequence
-- ----------------------------
